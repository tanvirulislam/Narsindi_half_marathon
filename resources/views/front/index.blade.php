@extends('front.master.master')

@section('title')
NHM 2021
@endsection

@section('style')

@endsection

@section('body')

 <!--==========================
      About Section
      ============================-->
      <section id="about">
        <div class="container">
          <div class="row">
            <div class="col-lg-6">
              <h2>About The <span>Event</span></h2>
              <p>{{$about->about}}</p>
            </div>
            <div class="col-lg-3">
              <h3>Where</h3>
              <p>{{$about->venu}}</p>
            </div>
            <div class="col-lg-3">
              <h3>When</h3>
              <p>{{$about->when_date}}</p>
            </div>
          </div>
        </div>
      </section>

     <!--==========================
      Venue Section
      ============================-->
      <section id="venue" class="wow fadeInUp">

        <div class="container">
          <div class="section-header">
            <h2>Event</h2>
            <!-- <p>Event venue location info and gallery</p> -->
          </div>
        </div>

        <div class="container-fluid">
          <div class="row no-gutters">
            

            <div class="col-lg-12 venue-info">
              <div class="row justify-content-center">
                <div class="col-11 col-lg-8">
                  <h3>{{$events->title}}</h3>
                  
                  <a href="#" type="buton" class="btn btn-info"> see more </a>

                </div>
              </div>
            </div>
          </div>

        </div>

      </section>

      <!-- Gallery -->

      <section id="gallery" class="wow fadeInUp">
        <div class="container">
          <div class="section-header">
           <h2>Gallery</h2>
           <!-- <p>Event venue location info and gallery</p> -->
         </div>
       </div>

       <div class="container-fluid venue-gallery-container">
        <div class="row no-gutters">
          @foreach($galleries as $gallery)
          <div class="col-lg-3 col-md-4">
            <div class="venue-gallery">
              <a  href="#" class="venobox" data-gall="venue-gallery">
                <img style="height: 214px; width:100%" src="{{asset('/')}}{{$gallery->category_image}}" style="" alt="picture" class="img-fluid">
              </a>
            </div>
          </div>
          @endforeach
        </div>
      </div>

    </section>
    
    <!--==========================
      Sponsors Section
      ============================-->
      <section id="sponsors" class="section-with-bg wow fadeInUp">

        <div class="container">
          <div class="section-header">
            <h2>Partner</h2>
          </div>

          <div class="row no-gutters sponsors-wrap clearfix">
            @foreach($sponsor as $sponsors)
            <div class="col-lg-3 col-md-4 col-xs-6">
              <div class="">
                <img style="height: 150px; width:100%"  src="{{asset('/')}}{{$sponsors->category_image}}" class="card-img-top" alt=" image">
              </div>
              
            </div>
            @endforeach

            

          </div>
        </div>

      </section>

    <!--==========================
      Buy Ticket Section
      ============================-->
     

      

      

    <!--==========================
      Contact Section
      ============================-->
      <section id="contact" class="section-bg wow fadeInUp">

        <div class="container">

          <div class="section-header">
            <h2>Contact</h2>
            <p>Nihil officia ut sint molestiae tenetur.</p>
          </div>

          <div class="row contact-info">

            <div class="col-md-4">
              <div class="contact-address">
                <i class="ion-ios-location-outline"></i>
                <h3>Address</h3>
                <address>555 Adam Street San Diego, CA 92105</address>
              </div>
            </div>

            <div class="col-md-4">
              <div class="contact-phone">
                <i class="ion-ios-telephone-outline"></i>
                <h3>Phone Number</h3>
                <p><a href="tel:+155895548855">+1 555 123 4567</a></p>
              </div>
            </div>

            <div class="col-md-4">
              <div class="contact-email">
                <i class="ion-ios-email-outline"></i>
                <h3>Email</h3>
                <p><a href="mailto:info@example.com">info@example.com</a></p>
              </div>
            </div>

          </div>

        </div>
      </section><!-- #contact -->

      @endsection
