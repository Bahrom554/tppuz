<?php

namespace App\Http\Controllers;

use App\Http\Resources\post\PostResource;
use App\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){

        $posts = Post::where('status', 1)->orderBy('id', 'asc')->paginate(15);

        return PostResource::collection($posts);
    }

}
