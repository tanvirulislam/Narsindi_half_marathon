<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Event;
use Brian2694\Toastr\Facades\Toastr;
use Image;

class EventController extends Controller
{
    public function index(){
      
        $abouts=Event::orderBy('id','desc')->get();
    
    	return view('admin.event.manage',['abouts'=>$abouts]);
    }

     public function create(){
  
     return view('admin.event.add');
    }

     public function store(Request $request)
    {

       $request->validate([
        
        'title'=>'required',
        'des'=>'required',
        'facebook_link'=>'required',
        
        ]);



        $video = new Event;
      
        $video->title = $request->title;
        $video->des = $request->des;
        $video->facebook_link = $request->facebook_link;
        $video->save();
       
        Toastr::success('Successully Added :)' ,'Success');
        return redirect()->back();
    }


     public function edit($id)
    {
    	
         $logos=Event::where('id',$id)->first();
        
         return view('admin.event.edit',['logos'=>$logos]);
    }


    


    public function destroy($id)
    {
         Event::find($id)->delete();
         Toastr::warning('Successfully Deleted :)','Success');
         return redirect()->back();
    }

     public function update(Request $request)
    {
        $video =Event::find($request->id);
          $video->title = $request->title;
        $video->des = $request->des;
        $video->facebook_link = $request->facebook_link;
        $video->save();
       
         Toastr::success('Successfully Updated :)','Success');
        return redirect()->route('admin.event');
}
}
