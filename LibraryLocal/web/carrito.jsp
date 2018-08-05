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
                                    <a ng-if="usuario.tipo === 'Cliente'" class="navbar-brand page-scroll sticky-logo" href="PrincipalUsuario.jsp">
                                        <h1><span>L</span>ibraryLocal</h1>
                                    </a>
                                    <a ng-if="usuario.tipo === 'Admin'" class="navbar-brand page-scroll sticky-logo" href="PrincipalGerente.jsp">
                                        <h1><span>L</span>ibraryLocal</h1>
                                    </a>
                                </div>
                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1" id="navbar-example">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active">
                                            <a class="page-scroll" href="#home">Mi carrito</a>
                                        </li>
                                        <li class="" ng-if="usuario.tipo === 'Cliente'">
                                            <a class="page-scroll" href="PrincipalUsuario.jsp">Regresar</a>
                                        </li>
                                        <li class="" ng-if="usuario.tipo === 'Admin'">
                                            <a class="page-scroll" href="PrincipalGerente.jsp">Regresar</a>
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

                <div ng-if="!correcto">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="section-headline text-center">
                                <h2>Mi carrito de libros</h2>
                            </div>
                        </div>
                    </div>

                    <div ng-if="!sugerencia">
                        <div class="row" ng-if="!showTable">
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
                                            <td>$ {{ libro.cantidadCarrito * libro.precio}}</td>
                                            <td>
                                                <button class="btn btn-default" ng-click="eliminar(libro);"><i class="fa fa-close"></i></button>
                                            </td>
                                        </tr>
                                        <tr ng-if="orden.length === 0">
                                            <td colspan="5">Aun no tiene libros en su carrito<td>
                                        <tr>
                                    </tbody>
                                </table>
                                <button ng-click="finalizarCompra()" class="sus-btn" style="margin-left: 0px;">
                                    Finalizar Compra 
                                </button>
                            </div>
                        </div>
                        <!-- Detalles compra para finalizarla --->
                        <div class="row" ng-if="showTable">
                            <div class="col-xs-12">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Libro</th>
                                            <th>Autor</th>
                                            <th>Categoria</th>
                                            <th>Editorial</th>
                                            <th>Cantidad</th>
                                            <th>Subtotal</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr ng-if="orden.length > 0" ng-repeat="libro in orden">
                                            <td>{{ libro.nombre}}</td>
                                            <td>{{ libro.autor}}</td>
                                            <td>{{ libro.categoria}}</td>
                                            <td>{{ libro.editorial}}</td>
                                            <td>{{libro.cantidadCarrito}}</td>
                                            <td>$ {{ libro.cantidadCarrito * libro.precio}}</td>
                                        </tr>
                                        <tr>
                                            <th colspan="5" class="text-right">Subtotal</th>
                                            <th>$ {{ precio.total.toFixed(2)}}</th>
                                        </tr>
                                        <tr ng-if="precio.envio > 0">
                                            <th colspan="5" class="text-right">Envio</th>
                                            <th>$ {{precio.envio}}</th>
                                        </tr>
                                        <tr>
                                            <th colspan="5" class="text-right">IVA</th>
                                            <th>$ {{ (precio.iva).toFixed(2)}}</th>
                                        </tr>
                                        <tr>
                                            <th colspan="5" class="text-right">Total</th>
                                            <th>$ {{ precio.totalCompra.toFixed(2)}}</th>
                                        </tr>
                                        <tr ng-if="orden.length === 0">
                                            <td colspan="5">Aun no tiene libros en su carrito<td>
                                        <tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="row col-xs-12 col-md-7" ng-if="tipoCompra" style="margin-top: 20px;">
                                <div class="col-xs-12">
                                    <h4>Datos de compra</h4>
                                    <form class="contactForm">
                                        <label>Seleccione tipo de pago</label>
                                        <select ng-model="tipopago" ng-change="getDatosTarjeta()" id="tipopago" class="form-control">
                                            <option value="credito">Tarjeta Credito</option>
                                            <option value="prepago">Tarjeta Prepago</option>
                                        </select>
                                        <div class="form-group" style="margin-top: 20px;" ng-if="tipopago">
                                            <label>Numero de tarjeta de {{tipopago}}</label>
                                            <input type="text" disabled class="form-control" ng-model="tarjeta" id="saldoTarjeta" placeholder="Numero de tarjeta">
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <div class="row col-xs-12 col-md-7" style="margin-top: 20px;" ng-if="tipoCompra === 'propia' && verificacionTarjeta === true && end === true">
                                <div class="col-xs-12">
                                    <h4>Confirmacion de datos</h4>
                                    <form>
                                        <label>Envio para:</label>
                                        <input class="form-control" ng-model="usuario.nombre" disabled>
                                        <label style="margin-top: 20px;">Direccion de envio: </label>
                                        <input class="form-control" value="{{usuario.calle}}, {{usuario.colonia}}, {{usuario.municipio}}" disabled>
                                        <label style="margin-top: 20px;">Telefono de contacto: {{usuario.telefono}}</label>
                                        <input class="form-control" ng-model="usuario.telefono" disabled>
                                        <div class="col-xs-12" style="margin-top: 40px;">
                                            <button ng-click="cancelar()" class="sus-btn" style="margin-left: 0px;">
                                                Cancelar 
                                            </button>
                                            <button ng-click="registrarCompra()" class="sus-btn" style="margin-left: 10px;">
                                                Finalizar Compra 
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div> 

                            <div class="row col-xs-12 col-md-7" ng-if="tipoCompra === 'regalo' && end === true && verificacionTarjeta === true" style="margin-top: 20px;">
                                <div class="col-xs-12">
                                    <h4>Llene los campos para el envio del regalo</h4>
                                    <form>
                                        <label>Correo de notificacion</label>
                                        <div>
                                            <input type="email" class="form-control" placeholder="Correo de notificacion" ng-model="datosRegalo.correo">
                                            <label style="margin-top: 20px;">Direccion de envio</label>
                                            <input class="form-control" placeholder="Direccion de envio" ng-model="datosRegalo.direccion">
                                            <label style="margin-top: 20px;">Incluir tarjeta de felicitaciones</label>
                                            <select ng-model="datosRegalo.tarjeta" class="form-control">
                                                <option value="si">Si</option>
                                                <option value="no">No</option>
                                            </select>
                                            <label style="margin-top: 20px;">Seleccionar envoltura</label>
                                            <select ng-model="datosRegalo.envoltura" class="form-control">
                                                <option value="cumpleaños">Cumpleaños</option>
                                                <option value="boda">Boda</option>
                                                <option value="regalo">Regalo</option>
                                            </select>
                                            <div ng-if="datosRegalo.tarjeta === 'si'">
                                                <label style="margin-top: 20px;">Mensaje para la tarjeta: </label>
                                                <input class="form-control" placeholder="Mensaje" ng-model="datosRegalo.mensaje">
                                            </div>
                                            <div class="col-xs-12" style="margin-top: 40px;" ng-if="datosRegalo.envoltura">
                                                <button ng-click="cancelar()" class="sus-btn" style="margin-left: 0px;">
                                                    Cancelar 
                                                </button>
                                                <button ng-click="registrarCompra()" class="sus-btn" style="margin-left: 10px;">
                                                    Finalizar Compra 
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div ng-if="sugerencia" class="row">
                        <div class="row col-xs-12 col-md-7">
                            <form>
                                <h4>Ingrese alguna sugerencia de libros : </h4>
                                <div class="form-group">
                                    <label>Nombre del libro : </label>
                                    <input required="" class="form-control" placeholder="" ng-model="sug.nombre">
                                </div>
                                <div class="form-group">
                                    <label>Autor del libro : </label>
                                    <input required="" class="form-control" placeholder="" ng-model="sug.autor">
                                </div>
                                <div class="form-group">
                                    <label>Editorial del libro : </label>
                                    <input required="" class="form-control" placeholder="" ng-model="sug.editorial">
                                </div>

                                <div class="col-xs-12" style="margin-top: 40px;">
                                    <button ng-click="resetIndex()" class="sus-btn" style="margin-left: 0px;">
                                        Cancelar 
                                    </button>
                                    <button type="submit"  ng-click="registrarSugerencia()" class="sus-btn" style="margin-left: 10px;">
                                        Enviar Sugerencia
                                    </button>
                                </div>
                            </form>
                        </div>
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
                                        <h2><span>L</span>ibraryLocal</h2>
                                    </div>
                                    <ul ng-if="usuario">
                                        <li ng-if="usuario.tipo === 'Admin'">
                                            <a href="PrincipalGerente.jsp">
                                                <i class="fa fa-check"></i> GestionarEventos
                                            </a>
                                        </li>
                                        <li ng-if="usuario.tipo === 'Admin'">
                                            <a href="PrincipalGerente.jsp">
                                                <i class="fa fa-check"></i> GestionarLibros 
                                            </a>
                                        </li>
                                        <li ng-if="usuario.tipo === 'Admin'">
                                            <a href="tarjeta.jsp">
                                                <i class="fa fa-check"></i> SubirTXT Tarjetas 
                                            </a>
                                        </li>
                                        <li ng-if="usuario.tipo === 'Cliente'">
                                            <a href="pagoBoletos.jsp">
                                                <i class="fa fa-check"></i> Pagar Boleto 
                                            </a>
                                        </li>
                                        <li ng-if="usuario.tipo === 'Cliente'">
                                            <a href="PrincipalGerente.jsp">
                                                <i class="fa fa-check"></i> Devolucion 
                                            </a>
                                        </li>
                                        <li ng-if="usuario.tipo === 'Cliente'">
                                            <a href="wishlist.jsp">
                                                <i class="fa fa-check"></i> MiWishList 
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- end single footer -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="footer-content">
                                <div class="footer-head">
                                    <h4>Acerca de Nosotros</h4>
                                    <p>
                                        <strong>CodeLabs</strong> es una empresa que se dedica al desarrollo de sotware ajustado a tu medida
                                        Puedes localizarnos llamando o escribiendo a:
                                    </p>
                                    <div class="footer-contacts">
                                        <p><span>Tel:</span> +52 55 16 36 56 15</p>
                                        <p><span>Email:</span> codelabsoftware@example.com</p>
                                        <p><span>Horas de trabajo:</span> 9am-5pm</p>
                                    </div>
                                    <p>O en nuestras redees sociales</p>
                                    <div class="footer-icons">
                                        <ul>
                                            <li>
                                                <a href="http://www.facebook.com/CodeLabs-1901295480009037/" target="_blank"><i class="fa fa-facebook"></i></a>
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
                                    <h4>Fotos</h4>
                                    <div class="flicker-img">
                                        <a href="#"><img src="img/books/01.png" alt=""></a>
                                        <a href="#"><img src="img/books/02.png" alt=""></a>
                                        <a href="#"><img src="img/books/03.png" alt=""></a>
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
                                    &copy; Copyright <strong>CodeLabs</strong>. All Rights Reserved
                                </p>
                            </div>
                            <div class="credits">
                                <!--
                                  All the links in the footer should remain intact.
                                  You can delete the links only if you purchased the pro version.
                                  Licensing information: https://bootstrapmade.com/license/
                                  Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=eBusiness
                                -->
                                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> editedBy <strong>CodeLabs</strong>.
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
        <script src="js/shortcuts.js"></script>
        <script src="js/views/carrito.js"></script>
    </body>
</html>
