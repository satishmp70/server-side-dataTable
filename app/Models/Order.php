<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Customer;
use App\Models\OrderDetail;
use App\Models\Employee;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_id',
        'employee_id',
        'order_date',
        'shipper_id',
    ];

    public function customer()
{
    return $this->belongsTo(Customer::class, 'customer_id');
}

public function employee()
{
    return $this->belongsTo(Employee::class, 'employee_id');
}

public function supplier()
{
    return $this->belongsTo(Supplier::class, 'supplier_id');
}

public function orderDetails()
{
    return $this->hasMany(OrderDetail::class, 'order_id');
}
}
