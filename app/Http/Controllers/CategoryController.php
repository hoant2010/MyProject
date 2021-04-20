<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function index()
    {
        $data = Category::paginate(1);
        return view('category.index', compact('data'));
    }

    public function view($id)
    {
        return view('category.view');
    }
}
