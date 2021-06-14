<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Contact;
use Brian2694\Toastr\Facades\Toastr;
use Image;

class ContactController extends Controller
{
    public function index(){
    
       
      
        $abouts=Contact::orderBy('id','desc')->get();
    
    	return view('admin.contact.manage',['abouts'=>$abouts]);
    }

     public function create(){
  
     return view('admin.contact.add');
    }


  


   

     public function store(Request $request)
    {


       $request->validate([
        
        
        'address'=>'required',
        'phone'=>'required',
        'email'=>'required',
        'location'=>'required',
        
        ]);



        $video = new Contact;
      
        $video->address = $request->address;
        $video->phone = $request->phone;
        $video->email = $request->email;
        $video->location = $request->location;
        $video->save();
       
        Toastr::success('Successully Added :)' ,'Success');
        return redirect()->back();
    }


     public function edit($id)
    {
    	
         $logos=Contact::where('id',$id)->first();
        
         return view('admin.contact.edit',['logos'=>$logos]);
    }


    


    public function destroy($id)
    {
         Contact::find($id)->delete();
         Toastr::warning('Successfully Deleted :)','Success');
         return redirect()->back();
    }

     public function update(Request $request)
    {
        $video = Contact::find($request->id);
        $video->address = $request->address;
        $video->phone = $request->phone;
        $video->email = $request->email;
        $video->location = $request->location;
        $video->save();
       
         Toastr::success('Successfully Updated :)','Success');
        return redirect()->route('admin.contact');
}
}
