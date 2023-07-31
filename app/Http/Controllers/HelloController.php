<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class HelloController extends Controller
{
    //
    public function index(){
        $view = view('welcome');
        $posts = Post::all();
        //dd($posts);
        return view('hello/index')->with(compact('posts'));
        //return response()->json(['last_name'=>'ESSOMBA','first_name'=>'CLEMENT']);
    }
}
