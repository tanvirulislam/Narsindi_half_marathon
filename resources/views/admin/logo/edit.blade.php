@extends('admin.master.master')

@section('title')
Logo
@endsection


@section('body')
 <div class="content-wrapper">
  <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Logo</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Home</a></li>
              <li class="breadcrumb-item active">Logo</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
      <section class="content">
      <div class="row">
        <div class="col-12">
 <div class="card">
            <div class="card-header">
              <h3 class="card-title">Update Logo</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <form action="{{ route('admin.logo.update') }}" id="form_validation" method="POST" enctype="multipart/form-data">
                @csrf

                       <div class="form-group">
    <label for="exampleFormControlFile1">Title</label>
    <input type="text" class="form-control-file" name="title" value="{{ $logos->title }}" id="exampleFormControlFile1">
  </div>
                
                               <div class="form-group">
    <label for="exampleFormControlFile1">Logo</label>
    <input type="file" class="form-control-file" name="category_image" id="exampleFormControlFile1">
    <input type="hidden" class="form-control-file" name="id" value="{{ $logos->id }}" id="exampleFormControlFile1">
     <img src="{{asset('/')}}{{$logos->category_image}}" width="70px" height="70px">
  </div>

   

                
                  <button type="submit" class="btn btn-success">Update</button>
                   <a href="{{ route('admin.logo') }}" type="button" class="btn btn-danger">Cancel</a>
              </form>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
       </div>
      </div>
    </section>
 </div>
 <script type="text/javascript">

    $(document).ready(function(){

        $('#prod_cat_id').on('change',function(){
            //console.log("hmm its change");

            var cat_id=$(this).val();
             //console.log(cat_id);
             var div=$(this).parent();


             var op=` <label>Department Name</label><select class="form-control productname" name="department_id" id="prod_cat_id1">`;

             $.ajax({
                type:'get',
                url:'{!!URL::to('findProductName')!!}',
                data:{'id':cat_id},
               success:function(data){

                  //console.log('success');

                    //console.log(data);

                    //console.log(data.length);

                   // op+='<option value="0" selected disabled>choose sub-category</option>';
                    for(var i=0;i<data.length;i++){
                    op+='<option value="'+data[i].id+'">'+data[i].department_name+'</option>';
                   }
                  // console.log(op)

                  op+= `</select>`

                 $('#subcategory').html(op);
                  // div.find('#subcategory').append(op);


               },
               error:function(){

                }

             });

        });
    });
   
</script>
<script type="text/javascript">

    $(document).ready(function(){

        $('#prod_cat_id1').on('change',function(){
            //console.log("hmm its change");

            var cat_id1=$(this).val();
             //console.log(cat_id);
             var div=$(this).parent();


             var op=` <label>Section Name</label><select class="form-control productname1" name="section_id">`;

             $.ajax({
                type:'get',
                url:'{!!URL::to('findProductName1')!!}',
                data:{'id':cat_id1},
               success:function(data){

                  //console.log('success');

                    //console.log(data);

                    //console.log(data.length);

                   // op+='<option value="0" selected disabled>choose sub-category</option>';
                    for(var i=0;i<data.length;i++){
                    op+='<option value="'+data[i].id+'">'+data[i].section_name+'</option>';
                   }
                  // console.log(op)

                  op+= `</select>`

                 $('#subcategory1').html(op);
                  // div.find('#subcategory').append(op);


               },
               error:function(){

                }

             });

        });
    });
   
</script>
@endsection
