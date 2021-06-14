<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Event - Bootstrap Events Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="{{ asset('/') }}public/admin/dist/img/NHM-logo-square.png" rel="shortcut icon"/>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="{{asset('/')}}public/front/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="{{asset('/')}}public/front/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="{{asset('/')}}public/front/lib/animate/animate.min.css" rel="stylesheet">
  <link href="{{asset('/')}}public/front/lib/venobox/venobox.css" rel="stylesheet">
  <link href="{{asset('/')}}public/front/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="{{asset('/')}}public/front/css/style.css" rel="stylesheet">

</head>

<body>

  <!--==========================
    Header
  ============================-->
  @include('front.layout.header')
  <!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  @include('front.layout.banner')

  <main id="main">

   @yield('body')

  </main>


  <!--==========================
    Footer
  ============================-->
  @include('front.layout.footer')
  <!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="{{asset('/')}}public/front/lib/jquery/jquery.min.js"></script>
  <script src="{{asset('/')}}public/front/lib/jquery/jquery-migrate.min.js"></script>
  <script src="{{asset('/')}}public/front/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="{{asset('/')}}public/front/lib/easing/easing.min.js"></script>
  <script src="{{asset('/')}}public/front/lib/superfish/hoverIntent.js"></script>
  <script src="{{asset('/')}}public/front/lib/superfish/superfish.min.js"></script>
  <script src="{{asset('/')}}public/front/lib/wow/wow.min.js"></script>
  <script src="{{asset('/')}}public/front/lib/venobox/venobox.min.js"></script>
  <script src="{{asset('/')}}public/front/lib/owlcarousel/owl.carousel.min.js"></script>

 

  <!-- Template Main Javascript File -->
  <script src="{{asset('/')}}public/front/js/main.js"></script>
</body>

</html>
