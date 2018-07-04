<%-- 
    Document   : PrincipalUsuario
    Created on : 21-jun-2018, 20:57:42
    Author     : kitsu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="carritoApp">
    <head>
        <title>Library-Local</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

        <!-- AngularJS -->
        <script src="js/angular/angular.js"></script>
        <!-- SweetAlert -->
        <script src="js/sweetalert/sweetalert.js"></script>
        <!-- Iconos -->
        <link rel="stylesheet" href="font-awesome/css/font-awesome.css">

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900" rel="stylesheet">

        <!-- Bootstrap CSS File -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Libraries CSS Files -->
        <link href="lib/nivo-slider/css/nivo-slider.css" rel="stylesheet">
        <link href="lib/owlcarousel/owl.carousel.css" rel="stylesheet">
        <link href="lib/owlcarousel/owl.transitions.css" rel="stylesheet">
        <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/venobox/venobox.css" rel="stylesheet">

        <!-- Nivo Slider Theme -->
        <link href="css/nivo-slider-theme.css" rel="stylesheet">

        <!-- Main Stylesheet File -->
        <link href="css/style.css" rel="stylesheet">

        <!-- Responsive Stylesheet File -->
        <link href="css/responsive.css" rel="stylesheet">

    </head>
    <body data-spy="scroll" data-target="#navbar-example" ng-controller="carritoController">

        <div id="preloader"></div>

        <header>
            <!-- header-area start -->
            <div id="sticker" class="header-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">

                            <!-- Navigation -->
                            <nav class="navbar navbar-default">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <!-- Brand -->
                                    <a class="navbar-brand page-scroll sticky-logo" href="PrincipalUsuario.jsp">
                                        <h1><span>L</span>ibraryLocal</h1>
                                        <!-- Uncomment below if you prefer to use an image logo -->
                                        <!-- <img src="img/logo.png" alt="" title=""> -->
                                    </a>
                                </div>
                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1" id="navbar-example">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active">
                                            <a class="page-scroll" href="#home">Mi Perfil</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#portfolio">Libros</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#services">Eventos</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#team">Premios</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#about">Mi Tarjeta</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="/LibraryLocal/carrito.jsp">Carrito</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#" ng-click="logout();">Cerrar Sesion</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- navbar-collapse -->
                            </nav>
                            <!-- END: Navigation -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- header-area end -->
        </header>
        <!-- header end -->

        <!-- Start Slider Area
        <div id="home" class="about-area area-padding" style="margin-top: 30px;">
            <div class="bend niceties preview-2"> 
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline services-head text-center">
                            <h2>Bienvenido {{ usuario.nombre}}</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        End Slider Area -->

        <!-- Sart carrito Area -->
        <div id="portfolio" class="our-team-area area-padding" style="margin-top: 60px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h2>Mi carrito de libros</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <button class="btn btn-success" ng-click="limpiarOrden()">Vaciar Carrito</button>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Libro</th>
                                    <th>Autor</th>
                                    <th>Categoria</th>
                                    <th>Editorial</th>
                                    <th>Cantidad</th>
                                    <th>Subtotal</th>
                                    <th>Opciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr ng-if="orden.length > 0" ng-repeat="libro in orden">
                                    <td><img src="img/books/{{ libro.foto}}" style="height: 50%;"></td>
                                    <td>{{ libro.nombre}}</td>
                                    <td>{{ libro.autor}}</td>
                                    <td>{{ libro.categoria}}</td>
                                    <td>{{ libro.editorial}}</td>
                                    <td>
                                        <input type="number" id="{{libro.id_libro}}libro" class="form-control" ng-value="{{libro.cantidadCarrito}}" ng-keypress="reCalcular(libro)">
                                    </td>
                                    <td>{{ libro.cantidadCarrito * libro.precio}}</td>
                                    <td>
                                        <button class="btn btn-default" ng-click="eliminar(libro);"><i class="fa fa-close"></i></button>
                                    </td>
                                </tr>
                                <tr ng-if="orden.length === 0">
                                    <td colspan="5">Aun no tiene libros en su carrito<td>
                                <tr>
                            </tbody>
                        </table>
                        <button ng-click="" class="sus-btn" style="margin-left: 0px;">
                            Finalizar Compra 
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Start Footer bottom Area -->
        <footer>
            <div class="footer-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="footer-content">
                                <div class="footer-head">
                                    <div class="footer-logo">
                                        <h2><span>e</span>Business</h2>
                                    </div>

                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis.</p>
                                    <div class="footer-icons">
                                        <ul>
                                            <li>
                                                <a href="#"><i class="fa fa-facebook"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-twitter"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-google"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-pinterest"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end single footer -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="footer-content">
                                <div class="footer-head">
                                    <h4>information</h4>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                                    </p>
                                    <div class="footer-contacts">
                                        <p><span>Tel:</span> +123 456 789</p>
                                        <p><span>Email:</span> contact@example.com</p>
                                        <p><span>Working Hours:</span> 9am-5pm</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end single footer -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="footer-content">
                                <div class="footer-head">
                                    <h4>Instagram</h4>
                                    <div class="flicker-img">
                                        <a href="#"><img src="img/portfolio/1.jpg" alt=""></a>
                                        <a href="#"><img src="img/portfolio/2.jpg" alt=""></a>
                                        <a href="#"><img src="img/portfolio/3.jpg" alt=""></a>
                                        <a href="#"><img src="img/portfolio/4.jpg" alt=""></a>
                                        <a href="#"><img src="img/portfolio/5.jpg" alt=""></a>
                                        <a href="#"><img src="img/portfolio/6.jpg" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-area-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="copyright text-center">
                                <p>
                                    &copy; Copyright <strong>eBusiness</strong>. All Rights Reserved
                                </p>
                            </div>
                            <div class="credits">
                                <!--
                                  All the links in the footer should remain intact.
                                  You can delete the links only if you purchased the pro version.
                                  Licensing information: https://bootstrapmade.com/license/
                                  Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=eBusiness
                                -->
                                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="lib/jquery/jquery.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/venobox/venobox.min.js"></script>
        <script src="lib/knob/jquery.knob.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/parallax/parallax.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
        <script src="lib/appear/jquery.appear.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>

        <!-- Contact Form JavaScript File -->
        <script src="contactform/contactform.js"></script>

        <script src="js/main.js"></script>
        <script src="js/views/carrito.js"></script>
    </body>
</html>
