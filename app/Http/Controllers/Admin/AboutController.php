<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\About;
use Brian2694\Toastr\Facades\Toastr;
use Image;

class AboutController extends Controller
{
    public function index(){
    
       
      
        $abouts=About::orderBy('id','desc')->get();
    
    	return view('admin.about.manage',['abouts'=>$abouts]);
    }

     public function create(){
  
     return view('admin.about.add');
    }


  


   

     public function store(Request $request)
    {


       $request->validate([
        
        
        'about'=>'required',
        'venu'=>'required',
        'when_date'=>'required',
        
        ]);



        $video = new About;
      
        $video->about = $request->about;
        $video->venu = $request->venu;
        $video->when_date = $request->when_date;
        $video->save();
       
        Toastr::success('Successully Added :)' ,'Success');
        return redirect()->back();
    }


     public function edit($id)
    {
    	
         $logos=About::where('id',$id)->first();
        
         return view('admin.about.edit',['logos'=>$logos]);
    }


    


    public function destroy($id)
    {
         About::find($id)->delete();
         Toastr::warning('Successfully Deleted :)','Success');
         return redirect()->back();
    }

     public function update(Request $request)
    {
        $video =About::find($request->id);
        $video->about = $request->about;
        $video->venu = $request->venu;
        $video->when_date = $request->when_date;
        $video->save();
       
         Toastr::success('Successfully Updated :)','Success');
        return redirect()->route('admin.about');
}
}
