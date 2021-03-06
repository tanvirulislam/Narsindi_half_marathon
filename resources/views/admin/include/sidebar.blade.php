<aside class="main-sidebar sidebar-dark-primary elevation-4" style="background: #381A58;">
  @if(Request::is('admin*'))
    <!-- Brand Logo -->
    <a href="{{ route('admin.dashboard') }}" class="brand-link">
      <img src="{{ asset('/') }}public/admin/dist/img/NHM-logo-square.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">NHM 2021</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('user-photo/'. Auth::user()->image) }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="{{ route('admin.dashboard') }}" class="d-block">{{ Auth::user()->name }}</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         
   <li class="nav-header">Main Navigation</li>
          <li class="nav-item">
            <a href="{{ route('admin.dashboard') }}" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>DashBoard</p>
            </a>
          </li>

          <li class="nav-item">
            <a href="{{ route('admin.banner') }}" class="nav-link">
              <i class="nav-icon fas fa-images"></i>
              <p>Banner</p>
            </a>
          </li>


          <li class="nav-item">
            <a href="{{ route('admin.logo') }}" class="nav-link">
              <i class="nav-icon fas fa-image"></i>
              <p>Logo</p>
            </a>
          </li>


          <li class="nav-item">
            <a href="{{ route('admin.about') }}" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>About</p>
            </a>
          </li>


          <li class="nav-item">
            <a href="{{ route('admin.event') }}" class="nav-link">
             <i class="nav-icon fas fa-calendar-week"></i>
              <p>Event</p>
            </a>
          </li>


          <li class="nav-item">
            <a href="{{ route('admin.gallery') }}" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>Gallery</p>
            </a>
          </li>


          <li class="nav-item">
            <a href="{{ route('admin.contact') }}" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>Contact</p>
            </a>
          </li>


          <li class="nav-item">
            <a href="{{ route('admin.sponsor') }}" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>Sponsor</p>
            </a>
          </li>

          <li class="nav-item">
            <a href="{{ route('admin.footer') }}" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>Footer</p>
            </a>
          </li>
         
          <li class="nav-header">Setting</li>
           <li class="nav-item">
                <a href="{{ route('admin.settings') }}" class="nav-link">
                   <i class="nav-icon fas fa-edit"></i>
                  <p>Profile Setting</p>
                </a>
              </li>
          <li class="nav-item">
    <a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                    <i class="nav-icon fas fa-sign-out-alt"></i>
                  <p>Logout</p>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
              </li>
        
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
    @endif
        @if(Request::is('user*'))
         <!-- Brand Logo -->
    <a href="{{ route('user.dashboard') }}" class="brand-link">
      <img src="{{ asset('/') }}public/admin/dist/img/l8.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Buy & Sell </span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('user-photo/'. Auth::user()->image) }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="{{ route('user.dashboard') }}" class="d-block">{{ Auth::user()->name }}</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         
   <li class="nav-header">Main Navigation</li>
          <li class="nav-item">
            <a href="{{ route('user.dashboard') }}" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>DashBoard</p>
            </a>
          </li>
         
          <li class="nav-header">Setting</li>
           <li class="nav-item">
                <a href="{{ route('user.settings') }}" class="nav-link">
                   <i class="nav-icon fas fa-edit"></i>
                  <p>Profile Setting</p>
                </a>
              </li>
          <li class="nav-item">
    <a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                    <i class="nav-icon fas fa-sign-out-alt"></i>
                  <p>Logout</p>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
              </li>
        
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
        @endif
       @if(Request::is('agent*'))
        <!-- Brand Logo -->
    <a href="{{ route('agent.dashboard') }}" class="brand-link">
      <img src="{{ asset('/') }}public/admin/dist/img/l8.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Buy & Sell </span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('user-photo/'. Auth::user()->image) }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="{{ route('agent.dashboard') }}" class="d-block">{{ Auth::user()->name }}</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         
   <li class="nav-header">Main Navigation</li>
          <li class="nav-item">
            <a href="{{ route('agent.dashboard') }}" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>DashBoard</p>
            </a>
          </li>
         
          <li class="nav-header">Setting</li>
           <li class="nav-item">
                <a href="{{ route('agent.settings') }}" class="nav-link">
                   <i class="nav-icon fas fa-edit"></i>
                  <p>Profile Setting</p>
                </a>
              </li>
          <li class="nav-item">
    <a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                    <i class="nav-icon fas fa-sign-out-alt"></i>
                  <p>Logout</p>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
              </li>
        
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
        @endif
         @if(Request::is('merchant*'))
          <!-- Brand Logo -->
    <a href="{{ route('merchant.dashboard') }}" class="brand-link">
      <img src="{{ asset('/') }}public/admin/dist/img/l8.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Buy & Sell </span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('user-photo/'. Auth::user()->image) }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="{{ route('merchant.dashboard') }}" class="d-block">{{ Auth::user()->name }}</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         
   <li class="nav-header">Main Navigation</li>
          <li class="nav-item">
            <a href="{{ route('merchant.dashboard') }}" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>DashBoard</p>
            </a>
          </li>
         
          <li class="nav-header">Setting</li>
           <li class="nav-item">
                <a href="{{ route('merchant.settings') }}" class="nav-link">
                   <i class="nav-icon fas fa-edit"></i>
                  <p>Profile Setting</p>
                </a>
              </li>
          <li class="nav-item">
    <a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                    <i class="nav-icon fas fa-sign-out-alt"></i>
                  <p>Logout</p>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
              </li>
        
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
        @endif
        @if(Request::is('vip*'))
         <!-- Brand Logo -->
    <a href="{{ route('vip.dashboard') }}" class="brand-link">
      <img src="{{ asset('/') }}public/admin/dist/img/l8.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Buy & Sell </span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('user-photo/'. Auth::user()->image) }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="{{ route('vip.dashboard') }}" class="d-block">{{ Auth::user()->name }}</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         
   <li class="nav-header">Main Navigation</li>
          <li class="nav-item">
            <a href="{{ route('vip.dashboard') }}" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>DashBoard</p>
            </a>
          </li>
         
          <li class="nav-header">Setting</li>
           <li class="nav-item">
                <a href="{{ route('vip.settings') }}" class="nav-link">
                   <i class="nav-icon fas fa-edit"></i>
                  <p>Profile Setting</p>
                </a>
              </li>
          <li class="nav-item">
    <a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                    <i class="nav-icon fas fa-sign-out-alt"></i>
                  <p>Logout</p>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
              </li>
        
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
        @endif
  </aside>