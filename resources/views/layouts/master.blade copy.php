<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Bienvenido | {{ setting('site.title') }}</title>
        <meta content="{{ setting('site.description') }}" name="description">
        <meta content="{{ setting('site.description') }}" name="keywords">

        <!-- Favicons -->
        @php
            $admin_favicon = Voyager::setting('admin.icon_image', '');
            $icon = $admin_favicon ? Voyager::image($admin_favicon) : asset('images/icon.png');
        @endphp
        <link href="{{ $icon }}" rel="icon">
        {{-- <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"> --}}

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

        @yield('css')

        <!-- =======================================================
        * Template Name: Scaffold
        * Updated: Mar 10 2023 with Bootstrap v5.2.3
        * Template URL: https://bootstrapmade.com/scaffold-bootstrap-metro-style-template/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top d-flex align-items-center">
            <div class="container d-flex align-items-center">
                <div class="logo me-auto">
                    <h1><a href="{{ url('') }}"><img src="{{ $icon }}" alt="{{ setting('site.title') }}" class="img-fluid"> <span>{{ setting('site.title') }}</span></a></h1>
                </div>
                <nav id="navbar" class="navbar order-last order-lg-0">
                    <ul>
                        <li><a class="nav-link scrollto active" href="#hero">Inicio</a></li>
                        <li class="dropdown"><a href="#"><span>Acerca de</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a class="nav-link scrollto" href="#about">Nosotros</a></li>
                                {{-- <li><a class="nav-link scrollto" href="#team">Team</a></li> --}}
                                <li><a class="nav-link scrollto" href="#testimonials">Testimonios</a></li>
                            </ul>
                        </li>
                        {{-- <li><a class="nav-link scrollto" href="#services">Servicio</a></li> --}}
                        <li><a class="nav-link scrollto" href="#contact">Contacto</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav>
                <!-- .navbar -->
                {{-- <div class="header-social-links d-flex align-items-center">
                    <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                    <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                    <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
                </div> --}}
            </div>
        </header><!-- End Header -->

        @yield('content')

        <!-- ======= Footer ======= -->
        <footer id="footer">
            <div class="footer-top">
            <div class="container">
                <div class="row">

                <div class="col-lg-6 col-md-12">
                    <div class="footer-info">
                    <h3>Bolsa Juvenil de Empleo</h3>
                    <p>
                        Plaza Principal Mcal. José Ballivián<br><br>
                        <strong>Telefonos:</strong> (3)4624226 - 71121084<br>
                        <strong>Email:</strong> despacho@beni.gob.bo<br>
                    </p>
                    <div class="social-links mt-3">
                        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                    </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 footer-links">
                    <h4>Enlaces</h4>
                    <ul>
                    <li><i class="bx bx-chevron-right"></i> <a href="{{ url('') }}">Inicio</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Acerca de</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Servicio</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Terminos del servicio</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Políticas de privacidad</a></li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-6 footer-links">
                    <h4>Servicio</h4>
                    <ul>
                    <li><i class="bx bx-chevron-right"></i> <a href="{{ url('register') }}">Busqueda de empleo</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="{{ url('register') }}?tab=2">Busqueda de personal</a></li>
                    {{-- <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li> --}}
                    </ul>
                </div>

                {{-- <div class="col-lg-4 col-md-6 footer-newsletter">
                    <h4>Novedades</h4>
                    <p>Suscribete a nuestro boletín semana</p>
                    <form action="" method="post">
                    <input type="email" name="email"><input type="submit" value="Subscribirse">
                    </form>

                </div> --}}

                </div>
            </div>
            </div>

            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong><span>GADBENI</span></strong>. Todos los derechos reservados
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/scaffold-bootstrap-metro-style-template/ -->
                    Diseñado por <a href="https://beni.gob.bo/">Unidad de Sistemas GADBENI</a>
                </div>
            </div>
        </footer><!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

        @yield('javascript')
        
        <script>
            var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
            var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
                return new bootstrap.Tooltip(tooltipTriggerEl)
            })
        </script>

    </body>
</html>