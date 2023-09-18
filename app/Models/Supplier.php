<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Product;

class Supplier extends Model
{
    use HasFactory;


    protected $fillable = [
        'supplier_name',
        'contact_name',
        'address',
        'city',
        'postal_code',
        'country',
        'phone',
    ];
}
