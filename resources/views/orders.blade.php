@extends('layouts.app')

@section('content')

<div class="container">
    <table class="table table-bordered data-table">
        <thead>
            <tr>
                <th>No</th>
                <th>Order Date</th>
                <th>Customer Name</th>
                <th>Customer Contact</th>
                <th>Supplier Name</th>
                <th>Product Category</th>
                <th>Ordered Products</th>
                <th>Total Quantity</th>
                <th>Total Amount</th>
                <th>Employee Name</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        var table = $('.data-table').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ route('fetch-orders') }}",
            columns: [{
                    data: 'id',
                    name: 'id'
                },
                {
                    data: 'order_date',
                    name: 'order_date'
                },
                {
                    data: 'customer.customer_name',
                    name: 'customer.customer_name'
                },
                {
                    data: 'customer.contact_name',
                    name: 'customer.contact_name'
                },
                {
                    data: 'supplier.supplier_name',
                    name: 'supplier.supplier_name'
                },
                {
                    data: 'category',
                    name: 'category'
                },
                {
                    data: 'ordered_products_list',
                    name: 'ordered_products_list'
                },
                {
                    data: 'total_quantity',
                    name: 'total_quantity'
                },
                {
                    data: 'total_amount',
                    name: 'total_amount'
                },
                {
                    data: 'employee_name',
                    name: 'employee_name'
                },
            ],
            lengthMenu: [
                [20, 50, 100, -1],
                [20, 50, 100, "All"]
            ],
            pageLength: 20
        });

    });
</script>
@endsection