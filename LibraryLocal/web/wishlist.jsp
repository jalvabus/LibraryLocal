<%-- 
    Document   : PrincipalUsuario
    Created on : 21-jun-2018, 20:57:42
    Author     : kitsu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="appWishlist">
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

        <style>
            .ClassA {
                border-color: red;
            }
        </style>

    </head>
    <body data-spy="scroll" data-target="#navbar-example" ng-controller="ctrlWishlist">

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
                                            <a class="page-scroll" href="#home">Mi Wishlist</a>
                                        </li>
                                        <li class="" ng-if="usuario.tipo === 'Cliente'">
                                            <a class="page-scroll" href="PrincipalUsuario.jsp">Regresar</a>
                                        </li>
                                        <li class="" ng-if="usuario.tipo === 'Admin'">
                                            <a class="page-scroll" href="PrincipalGerente.jsp">Regresar</a>
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

        <!-- Start Slider Area -->
        <div id="home" class="about-area area-padding" style="margin-top: 30px;">
            <div class="bend niceties preview-2"> 
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="section-headline services-head text-center">
                                <h2>Lista de Deseos</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h2>Mi lista de deseos</h2> 
                            <h4> Los libros en rojo los tiene comprados</h4>
                            <br><br>
                            <h5 class="text-center" ng-show="wishlist.length <= 0">Añade libros a tu lista de deseos.</h5>

                            <div class="list-group" ng-repeat="wish in wishlist">
                                <a ng-class='whatClassIsIt(wish.libro)'>
                                    <div class="row">
                                        <div class="col-xs-10">
                                            <br>
                                            <h4 class="list-group-item-heading">{{wish.libro.nombre}}</h4>
                                            <h5 class="list-group-item-text">Autor: {{wish.libro.autor}}</h5>
                                        </div>
                                        <div class="col-xs-2">
                                            <button class="btn btn-default btn-block btn-lg" data-toggle="modal" data-target="#modalCompra" ng-click="comprarLibro('modal', wish.libro)"><i class="fa fa-shopping-cart"></i></button>
                                            <button class="btn btn-default btn-block btn-lg" ng-click="removeToWishList(wish.libro)"><i class="fa fa-trash"></i></button>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <button class="btn btn-default btn-lg" data-toggle="modal" data-target="#modal_share" ng-show="wishlist.length > 0">Compartir WishList</button>

                            <!-- Modal Compra Libro -->
                            <div class="modal fade" id="modalCompra" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" aria-hidden="true" style="text-align: center; padding-top: 10%;">
                                <div class="modal-dialog modal-dialog-centered" role="document" style="display: inline-block; vertical-align: middle; text-align: left; height: 100%;">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title" id="exampleModalCenterTitle">Comprar Libro "{{libro.nombre}}"</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div style="margin-top: 20px;">
                                                <div>
                                                    <h4>Precio del libro: $ {{libro.precio}}</h4>
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
                                                        <div ng-if="tipopago">
                                                            <label>¿Desea regalar Libro?</label>
                                                            <select ng-model="datosRegalo.opcion" class="form-control">
                                                                <option value="si">SI</option>
                                                                <option value="no">No</option>
                                                            </select>
                                                        </div>
                                                    </form>
                                                    <form ng-if="datosRegalo.opcion === 'si'">
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
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary" data-dismiss="modal" ng-if="verificacionTarjeta === true" ng-click="comprarLibro('comprar', null)">Comprar Libro</button>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <!-- Modal -->
                            <div class="modal fade" id="modal_share" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="sec-head"></h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">

                                            <div clas="form-group">
                                                <h5 class="modal-title" id="exampleModalLabel">Correo de tu amigo</h5>
                                                <input type="text" placeholder="Correo@gmail.com" class="form-control" ng-model="share.correo">
                                                <p>Ingresa el correo electronico de la persona a quien quieras compartir esta lista de deseos</p>
                                            </div>
                                            <button class="btn btn-secondary btn-block" ng-click="shareWishlist()">Compartir</button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Modal-->
                        </div>
                        <div class="col-md-6">

                            <h2>Listas compartidas con migo</h2> 

                            <h5 class="text-center" ng-show="wishlist.length <= 0">Parece que aun nadie ha compartido su lista de deseos contigo.</h5>

                            <div class="list-group" ng-repeat="wish in sharedwishlist">
                                <a class="list-group-item"  href="#" data-toggle="modal" data-target="#modal_sharedwishlist" ng-click="getSharedWishListByIdUsuario(wish.id_usuario)">
                                    <h4 class="list-group-item-heading">Lista de {{wish.usuario.nombre}}</h4>
                                </a>
                            </div>

                            <!-- Modal -->
                            <div class="modal fade" id="modal_sharedwishlist" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="sec-head"></h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">

                                            <div class="list-group" ng-repeat="wish in sharedwishlistbyusuario">
                                                <a class="list-group-item">
                                                    <h4 class="list-group-item-heading">{{wish.libro.nombre}}</h4>
                                                    <h5 class="list-group-item-text">Autor: {{wish.libro.autor}}</h5>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Modal-->

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="section-headline services-head text-center">
                                <h2>Añadir Libros Wishlist</h2>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12" ng-repeat="libro in listlibros" style="margin-top: 2em">
                            <div class="single-team-member">
                                <div class="team-img">
                                    <a href="#" class="text-center">
                                        <img src="img/books/{{libro.foto}}" alt="">
                                    </a>
                                </div>
                                <div class="team-content text-center">
                                    <h4>{{libro.nombre}}</h4>
                                    <p>{{libro.autor}}</p>
                                    <button class="btn btn-secondary btn-sm btn-block" ng-click="addToWishlist(libro.id_libro)">Añadir a mi lista </button>
                                    <button class="btn btn-secondary btn-sm btn-block" ng-click="seeBook(libro)" data-toggle="modal" data-target="#modalDetails">Detalles del libro</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Slider Area -->

        <!-- Modal Compra Libro -->
        <div class="modal fade" id="modalDetails" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" aria-hidden="true" style="text-align: center; padding-top: 10%;">
            <div class="modal-dialog modal-dialog-centered" role="document" style="display: inline-block; vertical-align: middle; text-align: left; height: 100%;">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title" id="exampleModalCenterTitle">Detalles del Libro</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div style="margin-top: 20px;">
                            <div class="row">
                                <!-- single-well start-->
                                <div class="col-md-6 col-sm-6 col-xs-12 text-center">
                                    <img src="img/books/{{libro.foto}}">
                                </div>

                                <!-- single-well end-->
                                <div class="col-md-6 col-sm-6 col-xs-12 text-left">
                                    <div class="well-middle">
                                        <div class="single-well">
                                            <strong><p>Nombre del libro: {{libro.nombre}}</p></strong>
                                            <strong><p>Autores del libro: {{libro.autor}}</p></strong>
                                            <strong><p>Editorial del libro: {{libro.editorial}}</p></strong>
                                            <strong><p>Precio del libro: {{libro.precio}}</p></strong>
                                            <strong><p>Categoria del libro: {{libro.categoria}}</p></strong>
                                            <strong><p>Año de publicacion del libro: {{libro.ano_publicacion}}</p></strong>
                                            <strong><p>Descripcion del libro: {{libro.descripcion}}</p></strong>
                                        </div>
                                    </div>                            
                                </div>
                                <!-- End col-->
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal" ng-if="verificacionTarjeta === true" ng-click="comprarLibro('comprar', null)">Comprar Libro</button>
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
        <script src="js/modulo3/wishlist.js"></script>
    </body>

</html>
