<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Gallery;
use Brian2694\Toastr\Facades\Toastr;
use Image;

class GalleryController extends Controller
{
    public function index(){
    
       
      
        $logos=Gallery::orderBy('id','desc')->get();
    
    	return view('admin.gallery.manage',['logos'=>$logos]);
    }

     public function create(){
  
     return view('admin.gallery.add');
    }


  


    protected function imageUpload($request){
        $productImage = $request->file('category_image');
        $imageName = $productImage->getClientOriginalName();
        $directory = 'public/uploads/';
        $imageUrl = $directory.$imageName;
    
        Image::make($productImage)->save($imageUrl);

        return $imageUrl;
    }

     public function store(Request $request)
    {


       $request->validate([
        
        'category_image'=>'required',
        
        ]);



        $video = new Gallery;
        $video->title = $request->title;
      if($request->hasfile('category_image')){
            $file = $request->file('category_image');
            $extension = $file->getClientOriginalExtension();
            $filename=time().'.'.$extension;
            $file->move('public/uploads/',$filename);
            $video->category_image ='public/uploads/'.$filename;
        }

        $video->save();
       
        Toastr::success('Successully Added :)' ,'Success');
        return redirect()->back();
    }


     public function edit($id)
    {
    	
         $logos=Gallery::where('id',$id)->first();
        
         return view('admin.gallery.edit',['logos'=>$logos]);
    }


    


    public function destroy($id)
    {
        Gallery::find($id)->delete();
         Toastr::warning('Successfully Deleted :)','Success');
         return redirect()->back();
    }

     public function update(Request $request)
    {
        $video = Gallery::find($request->id);
        $video->title = $request->title;
      if($request->hasfile('category_image')){
            $file = $request->file('category_image');
            $extension = $file->getClientOriginalExtension();
            $filename=time().'.'.$extension;
            $file->move('public/uploads/',$filename);
            $video->category_image ='public/uploads/'.$filename;
        }

        $video->save();
       
         Toastr::success('Successfully Updated :)','Success');
        return redirect()->route('admin.gallery');
    }
}
