<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Logo;
use App\Banner;
use App\About;
use App\Event;
use App\Gallery;
use App\Sponsor;

class FrontController extends Controller
{
    public function index(){

        $logo = Logo::where('title', 'logo one')->first();
        $banners = Banner::latest()->first();
        $about = About::latest()->first();
        $events = Event::latest()->first();
        $galleries = Gallery::latest()->get();
        $sponsor = Sponsor::latest()->get();
    
        return view('front.index', compact('logo', 'banners', 'about', 'events', 'galleries', 'sponsor'));

    }

    
}
