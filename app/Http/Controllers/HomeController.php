<?php

namespace App\Http\Controllers;

use App\Models\Product;

class HomeController extends Controller
{
    public function index()
    {
        $data = Product::getAllProduct();
        return view('home', compact('data'));
    }
}
