<?php

namespace App\Http\Controllers;

use Yajra\DataTables\Facades\Datatables;
use Illuminate\Http\Request;
use App\Models\Order;

class OrderController extends Controller
{
    public function index()
    {
        return view('orders');
    }

    public function fetchOrders(Request $request)
    {
        if ($request->ajax()) {
            $orders = Order::with(['customer', 'supplier', 'employee', 'orderDetails.product.category'])->get();
            return DataTables::of($orders)
                ->addColumn('order_date', function ($order) {
                    return \Carbon\Carbon::parse($order->order_date)->diffForHumans();
                })
                ->addColumn('customer_name', function ($order) {
                    return $order->customer->customer_name;
                })
                ->addColumn('contact', function ($order) {
                    return $order->customer->contact;
                })
                ->addColumn('supplier_name', function ($order) {
                    return $order->supplier->supplier_name;
                })
                ->addColumn('category', function ($order) {
                    $firstOrderDetail = $order->orderDetails->first();
                    if ($firstOrderDetail && $firstOrderDetail->product && $firstOrderDetail->product->category) {
                        return $firstOrderDetail->product->category->category_name;
                    } else {
                        return 'N/A';
                    }
                })
                ->addColumn('ordered_products_list', function ($order) {
                    return $order->orderDetails->pluck('product.product_name')->implode(', ');
                })
                ->addColumn('total_quantity', function ($order) {
                    return $order->orderDetails->sum('quantity');
                })
                ->addColumn('total_amount', function ($order) {
                    return $order->orderDetails->sum(function ($orderDetail) {
                        return $orderDetail->quantity * $orderDetail->product->price;
                    });
                })
                ->addColumn('employee_name', function ($order) {
                    $name = $order->employee->first_name . ' ' . $order->employee->last_name;
                    return $name;
                })
                ->rawColumns(['action'])
                ->make(true);
        }

        return view('orders');
    }
}
