<%-- 
    Document   : index
    Created on : 19-jun-2018, 19:24:02
    Author     : kitsu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="indexApp">
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

        <script src="https://code.jquery.com/jquery-3.0.0.js"></script>
        <script src="https://rawgit.com/jeresig/jquery.hotkeys/master/jquery.hotkeys.js"></script>

    </head>
    <body data-spy="scroll" data-target="#navbar-example" ng-controller="indexController">

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
                                    <a class="navbar-brand page-scroll sticky-logo" href="index.jsp">
                                        <h1><span>L</span>ibraryLocal</h1>
                                        <!-- Uncomment below if you prefer to use an image logo -->
                                        <!-- <img src="img/logo.png" alt="" title=""> -->
                                    </a>
                                </div>
                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1" id="navbar-example">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active">
                                            <a class="page-scroll" href="#home">Home</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#portfolio">Libros</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#services">Eventos</a>
                                        </li>

                                        <li>
                                            <a class="page-scroll" href="#team">Nosotros</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#myCarousel">Mision - Vision</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#contact">Contacto</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="registrate.jsp">Registrate</a>
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
        <div id="home" class="slider-area">
            <div class="bend niceties preview-2">
                <div id="ensign-nivoslider" class="slides">
                    <img src="img/slider/library.jpeg" alt="" title="#slider-direction-1" />
                    <img src="img/slider/library1.jpeg" alt="" title="#slider-direction-2" />
                    <img src="img/slider/library2.jpeg" alt="" title="#slider-direction-3" />
                </div>

                <!-- direction 1 -->
                <div id="slider-direction-1" class="slider-direction slider-one">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="slider-content">
                                    <!-- layer 1 -->
                                    <div class="layer-1-1 hidden-xs wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
                                        <h2 class="title1">Un lugar Donde podras encontrar variedad de libros y a su vez podras realizar compras,<br/>                                                           
                                            agregar a lista de deseos o hasta enviar libro como regalo a otro usuario. </h2>
                                    </div>
                                    <!-- layer 2 -->
                                    <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                                        <h1 class="title2">Bienvenido a Library-Local</h1>
                                    </div>
                                    <!-- layer 3 -->
                                    <div class="layer-1-3 hidden-xs wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
                                        <a class="ready-btn right-btn page-scroll" href="#services">Ver Libros</a>
                                        <a class="ready-btn page-scroll" data-toggle="modal" data-target="#exampleModal">Iniciar Sesion</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- direction 2 -->
                <div id="slider-direction-2" class="slider-direction slider-two">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="slider-content">
                                    <!-- layer 1 -->
                                    <div class="layer-1-1 hidden-xs wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
                                        <h2 class="title1">Un lugar Donde podras encontrar variedad de libros y a su vez podras realizar compras,<br/>                                                           
                                            agregar a lista de deseos o hasta enviar libro como regalo a otro usuario. </h2>
                                    </div>
                                    <!-- layer 2 -->
                                    <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                                        <h1 class="title2">Bienvenido a Library-Local</h1>
                                    </div>
                                    <!-- layer 3 -->
                                    <div class="layer-1-3 hidden-xs wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
                                        <a class="ready-btn right-btn page-scroll" href="#services">Ver Libros</a>
                                        <a class="ready-btn page-scroll" data-toggle="modal" data-target="#exampleModal">Iniciar Sesion</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- direction 3 -->
                <div id="slider-direction-3" class="slider-direction slider-two">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="slider-content">
                                    <!-- layer 1 -->
                                    <div class="layer-1-1 hidden-xs wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
                                        <h2 class="title1">Un lugar Donde podras encontrar variedad de libros y a su vez podras realizar compras,<br/>                                                           
                                            agregar a lista de deseos o hasta enviar libro como regalo a otro usuario. </h2>
                                    </div>
                                    <!-- layer 2 -->
                                    <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                                        <h1 class="title2">Bienvenido a Library-Local</h1>
                                    </div>
                                    <!-- layer 3 -->
                                    <div class="layer-1-3 hidden-xs wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
                                        <a class="ready-btn right-btn page-scroll" href="#services">Ver Libros</a>
                                        <a class="ready-btn page-scroll" data-toggle="modal" data-target="#exampleModal">Iniciar Sesion</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="sec-head">Inicio de Sesion</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div>
                            <div clas="form-group">
                                <h5 class="modal-title" id="exampleModalLabel">Correo</h5>
                                <input name="correo" id="usuario" type="email" placeholder="Correo@gmail.com" class="form-control">
                            </div>
                            <div clas="form-group">
                                <h5 class="modal-title" id="exampleModalLabel">Password</h5>
                                <input name="pass" id="password" type="password" placeholder="" class="form-control">
                            </div>
                            <div clas="form-group" style="padding-top: 10px;">
                                <a data-dismiss="modal" ng-click="getPassword()">Recuperar Contraseña</a>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="ready-btn page-scroll" ng-click="login()">Iniciar Sesion</button>
                        <button type="button" class="ready-btn page-scroll" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="sec-head">Inicio de Sesion</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div>
                            <div clas="form-group">
                                <h5 class="modal-title" id="exampleModalLabel">Correo</h5>
                                <input name="correo" id="usuario" type="email" placeholder="Correo@gmail.com" class="form-control">
                            </div>
                            <div clas="form-group">
                                <h5 class="modal-title" id="exampleModalLabel">Password</h5>
                                <input name="pass" id="password" type="password" placeholder="" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="ready-btn page-scroll" ng-click="login()">Iniciar Sesion</button>
                        <button type="button" class="ready-btn page-scroll" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- End Slider Area --

        <!-- Todos los libros Area -->
        <div id="portfolio" class="our-team-area area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h2>Todos los libros</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12" ng-hide="showDetails">
                        <div class="row container">
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <div class="single-blog-page">
                                    <!-- search option start -->
                                    <form action="#">
                                        <div class="search-option" style="border: none;">
                                            <input type="text" ng-keyup="getLibrosSearch()" ng-model="searchLibro" placeholder="Ingrese nombre de un libro...">
                                            <button class="button" type="submit">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </div>
                                    </form>
                                    <!-- search option end -->
                                </div>
                            </div>
                        </div>
                        <div class="team-top">
                            <div class="col-md-3 col-sm-3 col-xs-12" ng-repeat="libro in libros">
                                <div class="single-team-member">
                                    <div class="team-img">
                                        <a href="#" class="text-center">
                                            <img src="img/books/{{libro.foto}}" alt="">
                                        </a>
                                        <div class="team-social-icon text-left" style="color: white;">
                                            Inicie sesion para ver el detalle de los libros
                                        </div>
                                    </div>
                                    <div class="team-content text-center">
                                        <h4>{{libro.nombre}}</h4>
                                        <p>{{libro.autor}}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 row" ng-hide="!showDetails">
                        <!-- single-well start-->
                        <div class="col-md-6 col-sm-6 col-xs-12 text-center">
                            <img src="img/books/{{libro.foto}}">
                        </div>

                        <!-- single-well end-->
                        <div class="col-md-6 col-sm-6 col-xs-12 text-left">
                            <div class="well-middle">
                                <div class="single-well">
                                    <a>
                                        <strong><h3>DETALLES DEL LIBRO</h3></strong
                                    </a>
                                    <strong><p>Nombre del libro: {{libro.nombre}}</p></strong>
                                    <strong><p>Autores del libro: {{libro.autor}}</p></strong>
                                    <strong><p>Editorial del libro: {{libro.editorial}}</p></strong>
                                    <strong><p>Precio del libro: {{libro.precio}}</p></strong>
                                    <strong><p>Categoria del libro: {{libro.categoria}}</p></strong>
                                    <strong><p>Año de publicacion del libro: {{libro.ano_publicacion}}</p></strong>
                                    <strong><p>Descripcion del libro: {{libro.descripcion}}</p></strong>
                                </div>
                                <button ng-click="hideDetailsBook();" class="sus-btn" style="margin-left: 0px;">
                                    Regresar 
                                </button>
                                <button ng-click="agregarCarrito(libro)" class="sus-btn">
                                    Add to car 
                                </button>
                            </div>                            
                        </div>
                        <!-- End col-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Todos los libros Area -->

        <!-- Todos los eventos area -->
        <div id="services" class="services-area area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline services-head text-center">
                            <h2>Todos los eventos</h2>
                        </div>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="services-contents">
                        <!-- Start Left services -->
                        <div class="col-md-4 col-sm-4 col-xs-12" ng-repeat="evento in eventos">
                            <div class="about-move">
                                <div class="services-details">
                                    <div class="single-services">
                                        <img src="img/events/{{ evento.foto}}">
                                        <h4>{{ evento.nombre}}</h4>
                                        <p>
                                            {{ evento.descripcion}}
                                        </p>
                                    </div>
                                </div>
                                <!-- end about-details -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Todos los eventos area -->

        <!-- Start Nosotros Area -->
        <div id="team" class="our-team-area area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h2>Nuestro Equipo de Trabajo</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="team-top">
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="single-team-member">
                                <div class="team-img">
                                    <a href="#">
                                        <img src="img/team/1.jpg" alt="">
                                    </a>
                                    <div class="team-social-icon text-center">
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-instagram"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="team-content text-center">
                                    <h4>Enrique Ulises Álvarez Jiménez</h4>
                                    <p>Seo</p>
                                </div>
                            </div>
                        </div>
                        <!-- End column -->
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="single-team-member">
                                <div class="team-img">
                                    <a href="#">
                                        <img src="img/team/Gus1.jpeg" alt="">
                                    </a>
                                    <div class="team-social-icon text-center">
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-instagram"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="team-content text-center">
                                    <h4>Gustavo Padilla Ruiz</h4>
                                    <p>Web Developer</p>
                                </div>
                            </div>
                        </div>
                        <!-- End column -->
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="single-team-member">
                                <div class="team-img">
                                    <a href="#">
                                        <img src="img/team/Vero.jpeg" alt="">
                                    </a>
                                    <div class="team-social-icon text-center">
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-instagram"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="team-content text-center">
                                    <h4>Veronica Chavez Torres</h4>
                                    <p>Web Design</p>
                                </div>
                            </div>
                        </div>
                        <!-- End column -->
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="single-team-member">
                                <div class="team-img">
                                    <a href="#">
                                        <img src="img/team/4.jpg" alt="">
                                    </a>
                                    <div class="team-social-icon text-center">
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-instagram"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="team-content text-center">
                                    <h4>Carbajal macias gustavo</h4>
                                    <p>Seo Expert</p>
                                </div>
                            </div>
                        </div>
                        <!-- End column -->
                    </div>
                </div>
            </div>
        </div>
        <!-- End Nosotros Area -->

        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="img/slider/books.jpg" alt="" style="width: 100%; height: 100%;">
                    <div class="carousel-caption" style="color: white;">
                        <h1 style="color: white; padding-bottom: 100px;">MISION</h1>
                        <h4 class="sec-head" style="color: white; padding-bottom: 200px;">Ofrecer a la comunidad un espacio fisico y virtual 
                            en donde el acceso a recursos y servicios de informacion y la guia de pofesionales de la 
                            informacion posibilitan interaccion, intercambio de ideas, desarrollo de destrezas,
                            describimiento de mievas fuentes y creacion de nue conocimiento resultando en una 
                            experiencia empoderadora de aprendizaje a traves de este sitio web.</h4>
                    </div>
                </div>

                <div class="item">
                    <img src="img/slider/books.jpg" alt="" style="width: 100%; height: 100%;">
                    <div class="carousel-caption">
                        <h1 style="color: white; padding-bottom: 100px;">VISION</h1>
                        <h4 class="sec-head" style="color: white; padding-bottom: 200px;">Ser un espacio moderno, agradable y accesible, orientada al usuario, referente 
                            informativo para la gestion y transmision donde las nuevas tecnologias esten al alance de todos,
                            , siendo asi la empresa mas reconocida por dicho espacio que contribuye al aprendizaje permanente y adaptada a la innovacion educativa.</h4>
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <!-- Start About area 
        <div id="vision" class="about-area area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h2>Vision</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="well-middle">
                            <div class="single-well">
                                <h4 class="sec-head">Ser un espacio moderno, agradable y accesible, orientada al usuario, referente 
                                    informativo para la gestion y transmision donde las nuevas tecnologias esten al alance de todos,
                                    , siendo asi la empresa mas reconocida por dicho espacio que contribuye al aprendizaje permanente y adaptada a la innovacion educativa.</h4>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="well-left">
                            <div class="single-well">
                                <a href="#">
                                    <img src="img/about/1.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- End About area -->


        <!-- Start contact Area -->
        <div id="contact" class="contact-area">
            <div class="contact-inner area-padding">
                <div class="contact-overly"></div>
                <div class="container ">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="section-headline text-center">
                                <h2>Contacta con nosotros</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- Start contact icon column -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="contact-icon text-center">
                                <div class="single-icon">
                                    <i class="fa fa-mobile"></i>
                                    <p>
                                        Llama: +52 55 16 36 56 15<br>
                                        <span>Lunes-Domingo (9am-5pm)</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- Start contact icon column -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="contact-icon text-center">
                                <div class="single-icon">
                                    <i class="fa fa-envelope-o"></i>
                                    <p>
                                        Email: libraryLocal@gmail.com<br>
                                        <span>Web: www.librarylocal.com</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- Start contact icon column -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="contact-icon text-center">
                                <div class="single-icon">
                                    <i class="fa fa-map-marker"></i>
                                    <p>
                                        Ubiaciion: 155 Privada Trevi<br>
                                        <span>Zumpango 55636, MX</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Contact Area -->

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
                                            <a href="PrincipalGerente.jsp">
                                                <i class="fa fa-check"></i> SubirTXT Tarjetas 
                                            </a>
                                        </li>
                                        <li ng-if="usuario.tipo === 'Cliente'">
                                            <a href="PrincipalGerente.jsp">
                                                <i class="fa fa-check"></i> Pagar Boleto 
                                            </a>
                                        </li>
                                        <li ng-if="usuario.tipo === 'Cliente'">
                                            <a href="PrincipalGerente.jsp">
                                                <i class="fa fa-check"></i> Devolucion 
                                            </a>
                                        </li>
                                        <li ng-if="usuario.tipo === 'Cliente'">
                                            <a href="PrincipalGerente.jsp">
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

        <script>
                    var slideIndex = 1;
                    showDivs(slideIndex);

                    function plusDivs(n) {
                        showDivs(slideIndex += n);
                    }

                    function showDivs(n) {
                        var i;
                        var x = document.getElementsByClassName("mySlides");
                        if (n > x.length) {
                            slideIndex = 1
                        }
                        if (n < 1) {
                            slideIndex = x.length
                        }
                        for (i = 0; i < x.length; i++) {
                            x[i].style.display = "none";
                        }
                        x[slideIndex - 1].style.display = "block";
                    }
        </script>

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
        <script src="js/views/index.js"></script>
        <script src="js/shortcuts.js"></script>
    </body>
</html>
