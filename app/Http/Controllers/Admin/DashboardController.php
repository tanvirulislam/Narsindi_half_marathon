<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Image;
use PDF;
use Brian2694\Toastr\Facades\Toastr;
use App\Event;
use App\Gallery;
use App\Banner;
use App\Sponsor;

class DashboardController extends Controller
{
    public function index()
 {
    $events = Event::count();
    $galleries = Gallery::count();
    $banners = Banner::count();
    $sponsors = Sponsor::count();
        return view('admin.dashboard', compact('events', 'galleries', 'banners', 'sponsors'));
    }
}
