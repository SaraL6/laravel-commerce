<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(request()->category){
            $products = Product::with('categories')->whereHas('categories',function ($query){
                $query->where('slug', request()->category);
                // request()->category is the slug sent from the front end query
            })->get();
            $categories= Category::all();

        }else {
               $products = Product::inRandomOrder()->take(12)->get();
                $categories= Category::all();
        }


        return view('shop')->with([
            'products'=>$products,
            'categories' => $categories,
        ]);
    }



    /**
     * Display the specified resource.
     *
     * @param  string  $slug
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $product = Product::where('slug', $slug)->firstOrFail();
        $mightAlsoLike = Product::where('slug','!=', $slug)->mightAlsoLike()->get();


        return view('product')->with([

            'product' => $product,
            'mightAlsoLike' => $mightAlsoLike,

        ]);


    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

}
