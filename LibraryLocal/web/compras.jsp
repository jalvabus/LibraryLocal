<%-- 
    Document   : compras
    Created on : 6/07/2018, 02:33:26 PM
    Author     : juana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="miscomprasApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

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
    <body data-spy="scroll" data-target="#navbar-example" ng-controller="miscomprasController">

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
                                            <a class="page-scroll" href="#home">Mis compras</a>
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

                <div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="section-headline text-center">
                                <h2>Todas mis compras</h2>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" ng-if="!detalleVenta">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>No Compra</th>
                                <th>Fecha</th>
                                <th>Cantidad de libros</th>
                                <th>Total</th>
                                <th>Tipo Compra</th>
                                <th>Detalles</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-if="compras.length > 0 && compra.cantidadLibros > 0" ng-repeat="compra in compras">
                                <td>{{ compra.codigo_compra}}</td>
                                <td>{{ compra.fecha}}</td>
                                <td>{{ compra.cantidadLibros}}</td>
                                <td>{{ compra.monto}}</td>
                                <td>{{ compra.tipo_pago}}</td>
                                <td>
                                    <button class="btn btn-default" ng-click="getDetalleCompras(compra)"><i class="fa fa-pencil"></i> Detalles</button>
                                </td>
                            </tr>
                            <tr ng-if="compras.length === 0">
                                <td colspan="5">Aun no ah realizado ninguna compra<td>
                            <tr>
                        </tbody>
                    </table>
                </div>

                <div class="row" ng-if="detalleVenta">
                    <h4>Compra No : {{compra.codigo_compra}}</h4>
                    <h4>Fecha: {{compra.fecha}}</h4>
                    <h4>Tipo compra : {{compra.tipo_compra}}</h4>
                    <h4>Direccion envio : {{compra.direccion}}</h4>
                    <h4>Total : {{compra.monto}}</h4>
                    <table class="table">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Nombre</th>
                                <th>Autor</th>
                                <th>Editorial</th>
                                <th>Cantidad</th>
                                <th>Precio</th>
                                <th>Subtotal</th>
                                <th>Opciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="detalle in detalles">
                                <td>
                                    <img style="height: 30%;" src="img/books/{{ detalle.foto}}">
                                </td>
                                <td>{{ detalle.nombre}}</td>
                                <td>{{ detalle.autor}}</td>
                                <td>{{ detalle.editorial}}</td>
                                <td>{{ detalle.cantidad}}</td>
                                <td>{{ detalle.precio}}</td>
                                <td>{{ detalle.subtotal}}</td>
                                <td>
                                    <button class="btn btn-default" ng-click="regresarLibro(detalle)" data-toggle="modal" data-target="#exampleModalCenter">Devolver</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <button class="btn btn-default" ng-click="regresar()">Regresar</button>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" style="text-align: center; padding-top: 10%;">
            <div class="modal-dialog modal-dialog-centered" role="document" style="display: inline-block; vertical-align: middle; text-align: left; height: 100%;">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Devolucion de Libro</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="margin: 20px;">
                        <div>
                            <div class="row">
                                <div clas="form-group">
                                    <h5 class="modal-title" id="">Libro: </h5>
                                    <input disabled name="correo" ng-model="libro.nombre" id="usuario" type="text" placeholder="" class="form-control">
                                    <br>
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="event-content head-team" >
                                                <div>
                                                    <form class="row">
                                                        <div class="form-group col-lg-6">
                                                            <h5>Tipo devoluci&oacute;n</h5>
                                                            <select id="tipoDevolucion" class="form-control" required="required">
                                                                <option value="">Selecciona una opci&oacute;n...</option>
                                                                <option value="Defecto">Defecto</option>
                                                                <option value="Equivocacion">Equivocacion</option>
                                                            </select>    
                                                        </div>
                                                        <div class="form-group col-lg-6">
                                                            <textarea class="form-control" maxlength="250" id="motivo" rows="5" data-rule="required" placeholder="Motivo por el cual quiere devolucion" required="required"></textarea>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal" ng-click="finalizarDevolucion(detalle,compra,usuario)">Devolver libro</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Start Footer bottom Area -->
        <footer style="padding-top: 50px;">
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
        <script src="js/views/miscompras.js"></script>
    </body>
</html>
