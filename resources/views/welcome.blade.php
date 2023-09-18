
@include('layouts.header')

    <div class="wrap">
        <header id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <button id="primary-nav-button" type="button">Menu</button>
                        <nav id="primary-nav" class="dropdown cf">
                            <ul class="dropdown menu">
                                
                                @if (Route::has('login'))
                                @auth
                               <li> <a href="{{ url('/home') }}" class='active'>Home</a> </li>

                                <!-- <a href="{{ url('/home') }}" class="font-semibold text-gray-600 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white focus:outline focus:outline-2 focus:rounded-sm focus:outline-red-500">Home</a> -->
                                @else
                                <li> <a href="{{ route('login') }}">Log in</a> </li>
                                <!-- <a href="{{ route('login') }}" class="font-semibold text-gray-600 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white focus:outline focus:outline-2 focus:rounded-sm focus:outline-red-500">Log in</a> -->
                                @if (Route::has('register'))
                                <li><a href="{{ route('register') }}">Register</a></li>
                                <!-- <a href="{{ route('register') }}" class="ml-4 font-semibold text-gray-600 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white focus:outline focus:outline-2 focus:rounded-sm focus:outline-red-500">Register</a> -->
                                @endif
                                @endauth
                                @endif
                            </ul>
                        </nav><!-- / #primary-nav -->
                    </div>
                </div>
            </div>
        </header>
    </div>

    <section class="banner" id="top" style="background-image: url(Frontend/img/homepage-banner-image-1920x700.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="banner-caption">
                        <div class="line-dec"></div>
                        <h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</h2>
                        <div class="blue-button">
                            <a href="contact.html">Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <main>
        <section class="our-services">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="left-content">
                            <br>
                            <h4>About us</h4>
                            <p>Aenean hendrerit metus leo, quis viverra purus condimentum nec. Pellentesque a sem semper, lobortis mauris non, varius urna. Quisque sodales purus eu tellus fringilla.<br><br>Mauris sit amet quam congue, pulvinar urna et, congue diam. Suspendisse eu lorem massa. Integer sit amet posuere tellus, id efficitur leo. In hac habitasse platea dictumst. Vel sequi odit similique repudiandae ipsum iste, quidem tenetur id impedit, eaque et, aliquam quod.</p>
                            <div class="blue-button">
                                <a href="about-us.html">Discover More</a>
                            </div>

                            <br>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <img src="{{url('Frontend/img/about-1-720x480.jpg')}}" class="img-fluid" alt="">
                    </div>
                </div>
            </div>
        </section>
    </main>

    @include('layouts.footer')