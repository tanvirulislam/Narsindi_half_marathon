@extends('admin.master.master')

@section('title')
Contact 
@endsection


@section('body')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-7">
          <h6>Contact <b class="badge badge-success"></b></h6>
        </div>
        <div class="col-sm-5">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Home</a></li>
            <li class="breadcrumb-item active">Contact</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-2">
         <a href="{{ route('admin.contact.create') }}" type="button" class="btn btn-block bg-gradient-success text-light">Add</a>
       </div>
       <div class="col-sm-6">
        
       </div>
       <div class="col-sm-2"></div>
       <div class="col-sm-2">
         
       </div>
     </div>
   </div><!-- /.container-fluid -->
 </section>
 
 <section class="content">
  <div class="row">
    <div class="col-12">
     <div class="card">
      <div class="card-header">
        <h3 class="card-title">Contact Detail</h3>
      </div>
      <!-- /.card-header -->
      <div class="card-body">
        <div class="table-responsive">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Id</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Location</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
             @foreach($abouts as $key=>$category)
             <tr>
              <td>{{ $key + 1 }}</td>
              
              <td>
                {{$category->address}}
                
              </td>
              <td>
                {{$category->phone}}
                
              </td>
              <td>
                {{$category->email}}
                
              </td>

              <td>
               

                <iframe src=" {{$category->location}}" width="300" height="250" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                
              </td>
              
              <td><button  type="button" class="btn btn-danger text-light" onclick="deleteTag({{ $category->id }})"><i class="fas fa-trash-alt" data-toggle="tooltip" data-placement="top" title="Delete"></i></button>
                <form id="delete-form-{{ $category->id }}" action="{{ route('admin.contact.destroy',$category->id) }}" method="POST" style="display: none;">
                  @csrf
                  
                </form>
                <a href="{{ route('admin.contact.edit',$category->id) }}" type="button" class="btn btn-info text-light" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fas fa-edit"></i></a>
                
              </td>
            </tr>
            @endforeach
          </tbody>
          <tfoot>
            <tr>
            <th>Id</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Location</th>
                <th>Action</th>

            </tr>
          </tfoot>
        </table>
      </div>
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
</div>
</section>
</div>
<script type="text/javascript">
  function deleteTag(id) {
    swal({
      title: 'Are you sure?',
      text: "You won't be able to revert this!",
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Yes, delete it!',
      cancelButtonText: 'No, cancel!',
      confirmButtonClass: 'btn btn-success',
      cancelButtonClass: 'btn btn-danger',
      buttonsStyling: false,
      reverseButtons: true
    }).then((result) => {
      if (result.value) {
        event.preventDefault();
        document.getElementById('delete-form-'+id).submit();
      } else if (
                    // Read more about handling dismissals
                    result.dismiss === swal.DismissReason.cancel
                    ) {
        swal(
          'Cancelled',
          'Your data is safe :)',
          'error'
          )
      }
    })
  }
</script>
@endsection