@extends('layouts.master')

@section('content')
    <!-- ======= Hero Section ======= -->
    <section id="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center" data-aos="fade-up">
                <div>
                    <h1>Bolsa Juvenil de Empleos</h1>
                    <h2>Plataforma de empleos del Gobierno Autónomo Departamental del Beni. Oportunidades laborales y crecimiento profesional para jóvenes</h2>
                    <a href="{{ url('register') }}" class="btn-get-started scrollto"><i class="fa fa-edit"></i> Registrarse</a>
                    <a href="{{ url('search') }}" class="btn-get-started scrollto"><i class="fa fa-search"></i> Buscar empleo</a>
                </div>
                </div>
                <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left">
                <img src="assets/img/hero-img.png" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </section><!-- End Hero -->

    <main id="main">

        <!-- ======= About Section ======= -->
        <section id="about" class="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6" data-aos="zoom-in">
                        <img src="assets/img/about.jpg" class="img-fluid" alt="">
                    </div>
                    <div class="col-lg-6 d-flex flex-column justify-contents-center" data-aos="fade-left">
                        <div class="content pt-4 pt-lg-0">
                        <h3>Conoce más acerda de nosotros</h3>
                        <br>
                        <p class="fst-italic">
                            Descubre oportunidades laborales en la plataforma de empleos del Gobierno Autónomo Departamental del Beni. Encuentra el trabajo ideal o publica tus requerimientos de personal. ¡Impulsa tu carrera y contribuye al desarrollo de nuestra región! Únete hoy y construye un futuro prometedor para nuestro amado Beni.
                        </p>
                        <ul>
                            <li><i class="bi bi-check-circle"></i> Encuentra oportunidades laborales, adquiere experiencia y construye un futuro prometedor. ¡Impulsa tu carrera y crece con nosotros.</li>
                            {{-- <li><i class="bi bi-check-circle"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li> --}}
                            {{--<li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperd</li>--}}
                        </ul>
                        {{-- <p>
                            Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate tera noden carma palorp mades tera.
                        </p> --}}
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End About Section -->

        <!-- ======= Counts Section ======= -->
        <section id="counts" class="counts">
            <div class="container" data-aos="fade-up">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="count-box">
                            <i class="fa fa-group"></i>
                            <span data-purecounter-start="0" data-purecounter-end="{{ App\Models\Person::where('type', 2)->count() }}" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Personas registradas</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
                        <div class="count-box">
                            <i class="fa fa-home"></i>
                            @php
                                $count = App\Models\Person::where('type', 2)->count();
                            @endphp
                            <span data-purecounter-start="0" data-purecounter-end="{{ $count > 0 ? $count : 5 }}" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Empresas registradas</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                        <div class="count-box">
                            <i class="bi bi-journal-richtext"></i>
                            @php
                                $count = App\Models\JobOffer::where('deleted_at', NULL)->count();
                            @endphp
                            <span data-purecounter-start="0" data-purecounter-end="{{ $count > 0 ? $count : 12 }}" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Ofertas laborales</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                        <div class="count-box">
                            <i class="fa fa-handshake-o"></i>
                            @php
                                $count = App\Models\JobApplication::where('deleted_at', NULL)->count();
                            @endphp
                            <span data-purecounter-start="0" data-purecounter-end="{{ $count > 0 ? $count : 7 }}" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Personas beneficiadas</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Counts Section -->

        <!-- ======= Features Section ======= -->
        {{-- <section id="features" class="features">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mt-2 mb-tg-0 order-2 order-lg-1">
                        <ul class="nav nav-tabs flex-column">
                        <li class="nav-item" data-aos="fade-up">
                            <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">
                            <h4>Modi sit est</h4>
                            <p>Quis excepturi porro totam sint earum quo nulla perspiciatis eius.</p>
                            </a>
                        </li>
                        <li class="nav-item mt-2" data-aos="fade-up" data-aos-delay="100">
                            <a class="nav-link" data-bs-toggle="tab" href="#tab-2">
                            <h4>Unde praesentium sed</h4>
                            <p>Voluptas vel esse repudiandae quo excepturi.</p>
                            </a>
                        </li>
                        <li class="nav-item mt-2" data-aos="fade-up" data-aos-delay="200">
                            <a class="nav-link" data-bs-toggle="tab" href="#tab-3">
                            <h4>Pariatur explicabo vel</h4>
                            <p>Velit veniam ipsa sit nihil blanditiis mollitia natus.</p>
                            </a>
                        </li>
                        <li class="nav-item mt-2" data-aos="fade-up" data-aos-delay="300">
                            <a class="nav-link" data-bs-toggle="tab" href="#tab-4">
                            <h4>Nostrum qui quasi</h4>
                            <p>Ratione hic sapiente nostrum doloremque illum nulla praesentium id</p>
                            </a>
                        </li>
                        </ul>
                    </div>
                    <div class="col-lg-6 order-1 order-lg-2" data-aos="zoom-in">
                        <div class="tab-content">
                        <div class="tab-pane active show" id="tab-1">
                            <figure>
                            <img src="assets/img/features-1.png" alt="" class="img-fluid">
                            </figure>
                        </div>
                        <div class="tab-pane" id="tab-2">
                            <figure>
                            <img src="assets/img/features-2.png" alt="" class="img-fluid">
                            </figure>
                        </div>
                        <div class="tab-pane" id="tab-3">
                            <figure>
                            <img src="assets/img/features-3.png" alt="" class="img-fluid">
                            </figure>
                        </div>
                        <div class="tab-pane" id="tab-4">
                            <figure>
                            <img src="assets/img/features-4.png" alt="" class="img-fluid">
                            </figure>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> --}}
        <!-- End Features Section -->

        <!-- ======= Services Section ======= -->
        {{-- <section id="services" class="services section-bg">
            <div class="container">

                <div class="section-title" data-aos="fade-up">
                <h2>Servicio</h2>
                <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                </div>

                <div class="row">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in">
                    <div class="icon-box icon-box-pink">
                    <div class="icon"><i class="bx bxl-dribbble"></i></div>
                    <h4 class="title"><a href="">Lorem Ipsum</a></h4>
                    <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in" data-aos-delay="100">
                    <div class="icon-box icon-box-cyan">
                    <div class="icon"><i class="bx bx-file"></i></div>
                    <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
                    <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in" data-aos-delay="200">
                    <div class="icon-box icon-box-green">
                    <div class="icon"><i class="bx bx-tachometer"></i></div>
                    <h4 class="title"><a href="">Magni Dolores</a></h4>
                    <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in" data-aos-delay="300">
                    <div class="icon-box icon-box-blue">
                    <div class="icon"><i class="bx bx-world"></i></div>
                    <h4 class="title"><a href="">Nemo Enim</a></h4>
                    <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum</p>
                    </div>
                </div>

                </div>

            </div>
        </section> --}}
        <!-- End Services Section -->

        <!-- ======= Testimonials Section ======= -->
        <section id="testimonials" class="testimonials">
            <div class="container">

                <div class="section-title" data-aos="fade-up">
                    <h2>Testimonios</h2>
                    <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                </div>

                <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
                <div class="swiper-wrapper">

                    <div class="swiper-slide">
                    <div class="testimonial-item">
                        <p>
                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                        La plataforma de empleos del Gobierno Autónomo Departamental del Beni me ha brindado grandes oportunidades para mi desarrollo profesional. Gracias a ella, pude encontrar el trabajo que tanto deseaba. ¡Totalmente recomendada!.
                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                        </p>
                        <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                        <h3>Juan</h3>
                        {{-- <h4>Ceo &amp; Founder</h4> --}}
                    </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                    <div class="testimonial-item">
                        <p>
                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                        Increíble la cantidad de opciones laborales que encontré en la plataforma del Gobierno Autónomo Departamental del Beni. Además, su interfaz es amigable y fácil de usar. ¡Definitivamente la mejor herramienta para encontrar empleo en la región!.
                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                        </p>
                        <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                        <h3>María</h3>
                        {{-- <h4>Designer</h4> --}}
                    </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                    <div class="testimonial-item">
                        <p>
                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                        Como joven en busca de empleo, la plataforma del Gobierno Autónomo Departamental del Beni ha sido fundamental. Encontré empleos acordes a mis intereses y pude postularme de manera sencilla. Estoy muy agradecida por esta iniciativa.
                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                        </p>
                        <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                        <h3>Andrea</h3>
                        {{-- <h4>Store Owner</h4> --}}
                    </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                    <div class="testimonial-item">
                        <p>
                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                        La plataforma de empleos del Gobierno Autónomo Departamental del Beni no solo me permitió encontrar empleo, sino también conectarme con empresas que valoran a los jóvenes talentos. Ha sido una experiencia gratificante y enriquecedora para mi carrera.
                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                        </p>
                        <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                        <h3>Pedro</h3>
                        {{-- <h4>Freelancer</h4> --}}
                    </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                    <div class="testimonial-item">
                        <p>
                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                        No puedo expresar lo emocionada que estoy por haber conseguido mi empleo a través de la plataforma del Gobierno Autónomo Departamental del Beni. Es un gran respaldo para los jóvenes que buscamos oportunidades en nuestra región. ¡Muy recomendable!
                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                        </p>
                        <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                        <h3>Laura</h3>
                        {{-- <h4>Entrepreneur</h4> --}}
                    </div>
                    </div><!-- End testimonial item -->

                </div>
                <div class="swiper-pagination"></div>
                </div>

            </div>
        </section>
        <!-- End Testimonials Section -->

        <!-- ======= Clients Section ======= -->
        <section id="clients" class="clients">
            <div class="container">

                <div class="section-title" data-aos="fade-up">
                <h2>Empresas</h2>
                <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                </div>

                <div class="row no-gutters clients-wrap clearfix wow fadeInUp">

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo" data-aos="zoom-in">
                    <img src="assets/img/clients/client-1.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo" data-aos="zoom-in" data-aos-delay="100">
                    <img src="assets/img/clients/client-2.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo" data-aos="zoom-in" data-aos-delay="150">
                    <img src="assets/img/clients/client-3.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo" data-aos="zoom-in" data-aos-delay="200">
                    <img src="assets/img/clients/client-4.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo" data-aos="zoom-in" data-aos-delay="250">
                    <img src="assets/img/clients/client-5.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo" data-aos="zoom-in" data-aos-delay="300">
                    <img src="assets/img/clients/client-6.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6">
                    <div class="client-logo" data-aos="zoom-in" data-aos-delay="350">
                    <img src="assets/img/clients/client-7.png" class="img-fluid" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-xs-6" data-aos="zoom-in" data-aos-delay="400">
                    <div class="client-logo">
                    <img src="assets/img/clients/client-8.png" class="img-fluid" alt="">
                    </div>
                </div>

                </div>

            </div>
        </section>
        <!-- End Clients Section -->

        <!-- ======= F.A.Q Section ======= -->
        <section id="faq" class="faq">
            <div class="container">

                <div class="section-title" data-aos="fade-up">
                <h2>Preguntas frecuentes</h2>
                </div>

                <ul class="faq-list">

                <li>
                    <div data-bs-toggle="collapse" class="collapsed question" href="#faq1">Non consectetur a erat nam at lectus urna duis? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                    <div id="faq1" class="collapse" data-bs-parent=".faq-list">
                    <p>
                        Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non.
                    </p>
                    </div>
                </li>

                <li>
                    <div data-bs-toggle="collapse" href="#faq2" class="collapsed question">Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                    <div id="faq2" class="collapse" data-bs-parent=".faq-list">
                    <p>
                        Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
                    </p>
                    </div>
                </li>

                <li>
                    <div data-bs-toggle="collapse" href="#faq3" class="collapsed question">Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                    <div id="faq3" class="collapse" data-bs-parent=".faq-list">
                    <p>
                        Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna molestie at elementum eu facilisis sed odio morbi quis
                    </p>
                    </div>
                </li>

                <li>
                    <div data-bs-toggle="collapse" href="#faq4" class="collapsed question">Ac odio tempor orci dapibus. Aliquam eleifend mi in nulla? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                    <div id="faq4" class="collapse" data-bs-parent=".faq-list">
                    <p>
                        Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
                    </p>
                    </div>
                </li>

                <li>
                    <div data-bs-toggle="collapse" href="#faq5" class="collapsed question">Tempus quam pellentesque nec nam aliquam sem et tortor consequat? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                    <div id="faq5" class="collapse" data-bs-parent=".faq-list">
                    <p>
                        Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in
                    </p>
                    </div>
                </li>

                <li>
                    <div data-bs-toggle="collapse" href="#faq6" class="collapsed question">Tortor vitae purus faucibus ornare. Varius vel pharetra vel turpis nunc eget lorem dolor? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                    <div id="faq6" class="collapse" data-bs-parent=".faq-list">
                    <p>
                        Laoreet sit amet cursus sit amet dictum sit amet justo. Mauris vitae ultricies leo integer malesuada nunc vel. Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget lorem dolor sed. Ut venenatis tellus in metus vulputate eu scelerisque. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nibh tellus molestie nunc non blandit massa enim nec.
                    </p>
                    </div>
                </li>

                </ul>

            </div>
        </section>
        <!-- End Frequently Asked Questions Section -->

        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact section-bg">
            <div class="container">

                <div class="section-title" data-aos="fade-up">
                <h2>Contáctanos</h2>
                </div>
                <div class="row">
                    <div class="col-lg-5 d-flex align-items-stretch" data-aos="fade-right">
                        <div class="info">
                            <div class="address">
                                <i class="bi bi-geo-alt"></i>
                                <h4>Dirección:</h4>
                                <p>Plaza Principal Mcal. José Ballivián</p>
                            </div>
                            <div class="email">
                                <i class="bi bi-envelope"></i>
                                <h4>Email:</h4>
                                <p>despacho@beni.gob.bo</p>
                            </div>
                            <div class="phone">
                                <i class="bi bi-phone"></i>
                                <h4>Telefonos:</h4>
                                <p>(3)4624226 - 71121084</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch" data-aos="fade-left">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2988.632904548475!2d-64.90643723408675!3d-14.835588575070142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93dd6fd5b87370df%3A0x47918f6983c7c6c8!2sGobierno%20Aut%C3%B3nomo%20Departamental%20Del%20Beni!5e0!3m2!1ses!2sbo!4v1684611544056!5m2!1ses!2sbo" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe>
                    </div>
                </div>

            </div>
        </section>
        <!-- End Contact Section -->

    </main><!-- End #main -->
@endsection