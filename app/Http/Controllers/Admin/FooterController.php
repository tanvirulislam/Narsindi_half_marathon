<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Footer;
use Brian2694\Toastr\Facades\Toastr;
use Image;

class FooterController extends Controller
{
    public function index(){
      
        $logos=Footer::orderBy('id','desc')->get();
    
    	return view('admin.footer.manage',['logos'=>$logos]);
    }

     public function create(){
  
     return view('admin.footer.add');
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
        
        'it_partner'=>'required',
        'timing_partner'=>'required',
        
        ]);



        $video = new Footer;
        $video->title = $request->title;
      if($request->hasfile('it_partner')){
            $file = $request->file('it_partner');
            $extension = $file->getClientOriginalExtension();
            $filename=time().'.'.$extension;
            $file->move('public/uploads/',$filename);
            $video->it_partner ='public/uploads/'.$filename;
        }

        if($request->hasfile('timing_partner')){
            $file = $request->file('timing_partner');
            $extension = $file->getClientOriginalExtension();
            $filename=time().'.'.$extension;
            $file->move('public/uploads/',$filename);
            $video->timing_partner ='public/uploads/'.$filename;
        }

        $video->save();
       
        Toastr::success('Successully Added :)' ,'Success');
        return redirect()->back();
    }


     public function edit($id)
    {
    	
         $logos=Footer::where('id',$id)->first();
        
         return view('admin.footer.edit',['logos'=>$logos]);
    }


    


    public function destroy($id)
    {
        Footer::find($id)->delete();
         Toastr::warning('Successfully Deleted :)','Success');
         return redirect()->back();
    }

     public function update(Request $request)
    {
        $video = Footer::find($request->id);

        $video->title = $request->title;

      if($request->hasfile('it_partner')){
            $file = $request->file('it_partner');
            $extension = $file->getClientOriginalExtension();
            $filename=time().'.'.$extension;
            $file->move('public/uploads/',$filename);
            $video->it_partner ='public/uploads/'.$filename;
        }

        if($request->hasfile('timing_partner')){
            $file = $request->file('timing_partner');
            $extension = $file->getClientOriginalExtension();
            $filename=time().'.'.$extension;
            $file->move('public/uploads/',$filename);
            $video->timing_partner ='public/uploads/'.$filename;
        }

        $video->save();
       
         Toastr::success('Successfully Updated :)','Success');
        return redirect()->route('admin.footer');
    }
    
}
