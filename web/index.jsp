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
                                    <a class="navbar-brand page-scroll sticky-logo" href="index.html">
                                        <h1><span>e</span>Business</h1>
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
                                            <a class="page-scroll" href="#about">About</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#services">Services</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#team">Team</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#portfolio">Portfolio</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#blog">Blog</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#contact">Contact</a>
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
                    <img src="img/slider/slider1.jpg" alt="" title="#slider-direction-1" />
                    <img src="img/slider/slider2.jpg" alt="" title="#slider-direction-2" />
                    <img src="img/slider/slider3.jpg" alt="" title="#slider-direction-3" />
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
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="ready-btn page-scroll" ng-click="login()">Iniciar Sesion</button>
                        <button type="button" class="ready-btn page-scroll" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>



        <!-- End Slider Area -->

        <!-- Start About area -->
        <div id="about" class="about-area area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h2>About eBusiness</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- single-well start-->
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="well-left">
                            <div class="single-well">
                                <a href="#">
                                    <img src="img/about/1.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- single-well end-->
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="well-middle">
                            <div class="single-well">
                                <a href="#">
                                    <h4 class="sec-head">project Maintenance</h4>
                                </a>
                                <p>
                                    Redug Lagre dolor sit amet, consectetur adipisicing elit. Itaque quas officiis iure aspernatur sit adipisci quaerat unde at nequeRedug Lagre dolor sit amet, consectetur adipisicing elit. Itaque quas officiis iure
                                </p>
                                <ul>
                                    <li>
                                        <i class="fa fa-check"></i> Interior design Package
                                    </li>
                                    <li>
                                        <i class="fa fa-check"></i> Building House
                                    </li>
                                    <li>
                                        <i class="fa fa-check"></i> Reparing of Residentail Roof
                                    </li>
                                    <li>
                                        <i class="fa fa-check"></i> Renovaion of Commercial Office
                                    </li>
                                    <li>
                                        <i class="fa fa-check"></i> Make Quality Products
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End col-->
                </div>
            </div>
        </div>
        <!-- End About area -->

        <!-- Start Service area -->
        <div id="services" class="services-area area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline services-head text-center">
                            <h2>Our Services</h2>
                        </div>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="services-contents">
                        <!-- Start Left services -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="about-move">
                                <div class="services-details">
                                    <div class="single-services">
                                        <a class="services-icon" href="#">
                                            <i class="fa fa-code"></i>
                                        </a>
                                        <h4>Expert Coder</h4>
                                        <p>
                                            will have to make sure the prototype looks finished by inserting text or photo.make sure the prototype looks finished by.
                                        </p>
                                    </div>
                                </div>
                                <!-- end about-details -->
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="about-move">
                                <div class="services-details">
                                    <div class="single-services">
                                        <a class="services-icon" href="#">
                                            <i class="fa fa-camera-retro"></i>
                                        </a>
                                        <h4>Creative Designer</h4>
                                        <p>
                                            will have to make sure the prototype looks finished by inserting text or photo.make sure the prototype looks finished by.
                                        </p>
                                    </div>
                                </div>
                                <!-- end about-details -->
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <!-- end col-md-4 -->
                            <div class=" about-move">
                                <div class="services-details">
                                    <div class="single-services">
                                        <a class="services-icon" href="#">
                                            <i class="fa fa-wordpress"></i>
                                        </a>
                                        <h4>Wordpress Developer</h4>
                                        <p>
                                            will have to make sure the prototype looks finished by inserting text or photo.make sure the prototype looks finished by.
                                        </p>
                                    </div>
                                </div>
                                <!-- end about-details -->
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <!-- end col-md-4 -->
                            <div class=" about-move">
                                <div class="services-details">
                                    <div class="single-services">
                                        <a class="services-icon" href="#">
                                            <i class="fa fa-camera-retro"></i>
                                        </a>
                                        <h4>Social Marketer </h4>
                                        <p>
                                            will have to make sure the prototype looks finished by inserting text or photo.make sure the prototype looks finished by.
                                        </p>
                                    </div>
                                </div>
                                <!-- end about-details -->
                            </div>
                        </div>
                        <!-- End Left services -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <!-- end col-md-4 -->
                            <div class=" about-move">
                                <div class="services-details">
                                    <div class="single-services">
                                        <a class="services-icon" href="#">
                                            <i class="fa fa-bar-chart"></i>
                                        </a>
                                        <h4>Seo Expart</h4>
                                        <p>
                                            will have to make sure the prototype looks finished by inserting text or photo.make sure the prototype looks finished by.
                                        </p>
                                    </div>
                                </div>
                                <!-- end about-details -->
                            </div>
                        </div>
                        <!-- End Left services -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <!-- end col-md-4 -->
                            <div class=" about-move">
                                <div class="services-details">
                                    <div class="single-services">
                                        <a class="services-icon" href="#">
                                            <i class="fa fa-ticket"></i>
                                        </a>
                                        <h4>24/7 Support</h4>
                                        <p>
                                            will have to make sure the prototype looks finished by inserting text or photo.make sure the prototype looks finished by.
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
        <!-- End Service area -->

        <!-- our-skill-area start -->
        <div class="our-skill-area fix hidden-sm">
            <div class="test-overly"></div>
            <div class="skill-bg area-padding-2">
                <div class="container">
                    <!-- section-heading end -->
                    <div class="row">
                        <div class="skill-text">
                            <!-- single-skill start -->
                            <div class="col-xs-12 col-sm-3 col-md-3 text-center">
                                <div class="single-skill">
                                    <div class="progress-circular">
                                        <input type="text" class="knob" value="0" data-rel="95" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled>
                                        <h3 class="progress-h4">Web Design</h3>
                                    </div>
                                </div>
                            </div>
                            <!-- single-skill end -->
                            <!-- single-skill start -->
                            <div class="col-xs-12 col-sm-3 col-md-3 text-center">
                                <div class="single-skill">
                                    <div class="progress-circular">
                                        <input type="text" class="knob" value="0" data-rel="85" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled>
                                        <h3 class="progress-h4">Graphics Design</h3>
                                    </div>
                                </div>
                            </div>
                            <!-- single-skill end -->
                            <!-- single-skill start -->
                            <div class="col-xs-12 col-sm-3 col-md-3 text-center">
                                <div class="single-skill">
                                    <div class="progress-circular">
                                        <input type="text" class="knob" value="0" data-rel="75" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled>
                                        <h3 class="progress-h4">Php Developer</h3>
                                    </div>
                                </div>
                            </div>
                            <!-- single-skill end -->
                            <!-- single-skill start -->
                            <div class="col-xs-12 col-sm-3 col-md-3 text-center">
                                <div class="single-skill">
                                    <div class="progress-circular">
                                        <input type="text" class="knob" value="0" data-rel="65" data-linecap="round" data-width="175" data-bgcolor="#fff" data-fgcolor="#3EC1D5" data-thickness=".20" data-readonly="true" disabled>
                                        <h3 class="progress-h4">Java Script</h3>
                                    </div>
                                </div>
                            </div>
                            <!-- single-skill end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- our-skill-area end -->

        <!-- Faq area start -->
        <div class="faq-area area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h2>Faq Question</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="faq-details">
                            <div class="panel-group" id="accordion">
                                <!-- Panel Default -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="check-title">
                                            <a data-toggle="collapse" class="active" data-parent="#accordion" href="#check1">
                                                <span class="acc-icons"></span>Consectetur adipisicing elit.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="check1" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <p>
                                                Redug Lefes dolor sit amet, consectetur adipisicing elit. Aspernatur, tempore, commodi quas mollitia dolore magnam quidem repellat, culpa voluptates laboriosam maiores alias accusamus recusandae vero
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Panel Default -->
                                <!-- Panel Default -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="check-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#check2">
                                                <span class="acc-icons"></span> Dolore magnam quidem repellat.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="check2" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <p>
                                                Redug Lefes dolor sit amet, consectetur adipisicing elit. Aspernatur, tempore, commodi quas mollitia dolore magnam quidem repellat, culpa voluptates laboriosam maiores alias accusamus recusandae vero aperiam sint nulla beatae eos.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Panel Default -->
                                <!-- Panel Default -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="check-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#check3">
                                                <span class="acc-icons"></span>Redug Lefes dolor sit.
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="check3" class="panel-collapse collapse ">
                                        <div class="panel-body">
                                            <p>
                                                Redug Lefes dolor sit amet, consectetur adipisicing elit. Aspernatur, tempore, commodi quas mollitia dolore magnam quidem repellat, culpa voluptates laboriosam maiores alias accusamus recusandae vero aperiam sint nulla beatae eos.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Panel Default -->
                                <!-- Panel Default -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="check-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#check4">
                                                <span class="acc-icons"></span>Maiores alias accusamus
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="check4" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <p>
                                                Redug Lefes dolor sit amet, consectetur adipisicing elit. Aspernatur, tempore, commodi quas mollitia dolore magnam quidem repellat, culpa voluptates laboriosam maiores alias accusamus recusandae vero aperiam sint nulla beatae eos.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Panel Default -->
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="tab-menu">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="active">
                                    <a href="#p-view-1" role="tab" data-toggle="tab">Project</a>
                                </li>
                                <li>
                                    <a href="#p-view-2" role="tab" data-toggle="tab">Planning</a>
                                </li>
                                <li>
                                    <a href="#p-view-3" role="tab" data-toggle="tab">Success</a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane active" id="p-view-1">
                                <div class="tab-inner">
                                    <div class="event-content head-team">
                                        <h4>Project</h4>
                                        <p>
                                            Redug Lares dolor sit amet, consectetur adipisicing elit. Animi vero excepturi magnam ducimus adipisci voluptas, praesentium maxime necessitatibus in dolor dolores unde ab, libero quo. Aut, laborum sequi.
                                        </p>
                                        <p>
                                            voluptas, praesentium maxime cum fugiat,magnam ducimus adipisci voluptas, praesentium architecto ducimus, doloribus fuga itaque omnis placeat.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="p-view-2">
                                <div class="tab-inner">
                                    <div class="event-content head-team">
                                        <h4>Planning</h4>
                                        <p>
                                            voluptas, praesentium maxime cum fugiat,magnam ducimus adipisci voluptas, praesentium architecto ducimus, doloribus fuga itaque omnis.
                                        </p>
                                        <p>
                                            Redug Lares dolor sit amet, consectetur adipisicing elit. Animi vero excepturi magnam ducimus adipisci voluptas, praesentium maxime necessitatibus in dolor dolores unde ab, libero quo. Aut.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="p-view-3">
                                <div class="tab-inner">
                                    <div class="event-content head-team">
                                        <h4>Success</h4>
                                        <p>
                                            voluptas, praesentium maxime cum fugiat,magnam ducimus adipisci voluptas, praesentium architecto ducimus, doloribus fuga itaque omnis placeat.
                                        </p>
                                        <p>
                                            voluptas, praesentium maxime cum fugiat,magnam ducimus adipisci voluptas, praesentium architecto ducimus, doloribus fuga itaque omnis.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end Row -->
            </div>
        </div>
        <!-- End Faq Area -->

        <!-- Start Wellcome Area -->
        <div class="wellcome-area">
            <div class="well-bg">
                <div class="test-overly"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="wellcome-text">
                                <div class="well-text text-center">
                                    <h2>Welcome To Our eBusiness</h2>
                                    <p>
                                        Busuness Lorem ipsum dolor sit amet, consectetur adipiscing elit.luctus est eget congue.
                                    </p>
                                    <div class="subs-feilds">
                                        <div class="suscribe-input">
                                            <input type="email" class="email form-control width-80" id="sus_email" placeholder="Email">
                                            <button type="submit" id="sus_submit" class="add-btn width-20">Subscribe</button>
                                            <div id="msg_Submit" class="h3 text-center hidden"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Wellcome Area -->

        <!-- Start team Area -->
        <div id="team" class="our-team-area area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h2>Our special Team</h2>
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
                                    <h4>Jhon Mickel</h4>
                                    <p>Seo</p>
                                </div>
                            </div>
                        </div>
                        <!-- End column -->
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="single-team-member">
                                <div class="team-img">
                                    <a href="#">
                                        <img src="img/team/2.jpg" alt="">
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
                                    <h4>Andrew Arnold</h4>
                                    <p>Web Developer</p>
                                </div>
                            </div>
                        </div>
                        <!-- End column -->
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="single-team-member">
                                <div class="team-img">
                                    <a href="#">
                                        <img src="img/team/3.jpg" alt="">
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
                                    <h4>Lellien Linda</h4>
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
                                    <h4>Jhon Powel</h4>
                                    <p>Seo Expert</p>
                                </div>
                            </div>
                        </div>
                        <!-- End column -->
                    </div>
                </div>
            </div>
        </div>
        <!-- End Team Area -->

        <!-- Start reviews Area -->
        <div class="reviews-area hidden-xs">
            <div class="work-us">
                <div class="work-left-text">
                    <a href="#">
                        <img src="img/about/2.jpg" alt="">
                    </a>
                </div>
                <div class="work-right-text text-center">
                    <h2>working with us</h2>
                    <h5>Web Design, Ready Home, Construction and Co-operate Outstanding Buildings.</h5>
                    <a href="#contact" class="ready-btn">Contact us</a>
                </div>
            </div>
        </div>
        <!-- End reviews Area -->

        <!-- Start portfolio Area -->
        <div id="portfolio" class="portfolio-area area-padding fix">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h2>Our Portfolio</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Start Portfolio -page -->
                    <div class="awesome-project-1 fix">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="awesome-menu ">
                                <ul class="project-menu">
                                    <li>
                                        <a href="#" class="active" data-filter="*">All</a>
                                    </li>
                                    <li>
                                        <a href="#" data-filter=".development">Development</a>
                                    </li>
                                    <li>
                                        <a href="#" data-filter=".design">Design</a>
                                    </li>
                                    <li>
                                        <a href="#" data-filter=".photo">Photoshop</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="awesome-project-content">
                        <!-- single-awesome-project start -->
                        <div class="col-md-4 col-sm-4 col-xs-12 design development">
                            <div class="single-awesome-project">
                                <div class="awesome-img">
                                    <a href="#"><img src="img/portfolio/1.jpg" alt="" /></a>
                                    <div class="add-actions text-center">
                                        <div class="project-dec">
                                            <a class="venobox" data-gall="myGallery" href="img/portfolio/1.jpg">
                                                <h4>Business City</h4>
                                                <span>Web Development</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- single-awesome-project end -->
                        <!-- single-awesome-project start -->
                        <div class="col-md-4 col-sm-4 col-xs-12 photo">
                            <div class="single-awesome-project">
                                <div class="awesome-img">
                                    <a href="#"><img src="img/portfolio/2.jpg" alt="" /></a>
                                    <div class="add-actions text-center">
                                        <div class="project-dec">
                                            <a class="venobox" data-gall="myGallery" href="img/portfolio/2.jpg">
                                                <h4>Blue Sea</h4>
                                                <span>Photosho</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- single-awesome-project end -->
                        <!-- single-awesome-project start -->
                        <div class="col-md-4 col-sm-4 col-xs-12 design">
                            <div class="single-awesome-project">
                                <div class="awesome-img">
                                    <a href="#"><img src="img/portfolio/3.jpg" alt="" /></a>
                                    <div class="add-actions text-center">
                                        <div class="project-dec">
                                            <a class="venobox" data-gall="myGallery" href="img/portfolio/3.jpg">
                                                <h4>Beautiful Nature</h4>
                                                <span>Web Design</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- single-awesome-project end -->
                        <!-- single-awesome-project start -->
                        <div class="col-md-4 col-sm-4 col-xs-12 photo development">
                            <div class="single-awesome-project">
                                <div class="awesome-img">
                                    <a href="#"><img src="img/portfolio/4.jpg" alt="" /></a>
                                    <div class="add-actions text-center">
                                        <div class="project-dec">
                                            <a class="venobox" data-gall="myGallery" href="img/portfolio/4.jpg">
                                                <h4>Creative Team</h4>
                                                <span>Web design</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- single-awesome-project end -->
                        <!-- single-awesome-project start -->
                        <div class="col-md-4 col-sm-4 col-xs-12 development">
                            <div class="single-awesome-project">
                                <div class="awesome-img">
                                    <a href="#"><img src="img/portfolio/5.jpg" alt="" /></a>
                                    <div class="add-actions text-center text-center">
                                        <div class="project-dec">
                                            <a class="venobox" data-gall="myGallery" href="img/portfolio/5.jpg">
                                                <h4>Beautiful Flower</h4>
                                                <span>Web Development</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- single-awesome-project end -->
                        <!-- single-awesome-project start -->
                        <div class="col-md-4 col-sm-4 col-xs-12 design photo">
                            <div class="single-awesome-project">
                                <div class="awesome-img">
                                    <a href="#"><img src="img/portfolio/6.jpg" alt="" /></a>
                                    <div class="add-actions text-center">
                                        <div class="project-dec">
                                            <a class="venobox" data-gall="myGallery" href="img/portfolio/6.jpg">
                                                <h4>Night Hill</h4>
                                                <span>Photoshop</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- single-awesome-project end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- awesome-portfolio end -->
        <!-- start pricing area -->
        <div id="pricing" class="pricing-area area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h2>Pricing Table</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="pri_table_list">
                            <h3>basic <br/> <span>$80 / month</span></h3>
                            <ol>
                                <li class="check">Online system</li>
                                <li class="check cross">Full access</li>
                                <li class="check">Free apps</li>
                                <li class="check">Multiple slider</li>
                                <li class="check cross">Free domin</li>
                                <li class="check cross">Support unlimited</li>
                                <li class="check">Payment online</li>
                                <li class="check cross">Cash back</li>
                            </ol>
                            <button>sign up now</button>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="pri_table_list active">
                            <span class="saleon">top sale</span>
                            <h3>standard <br/> <span>$110 / month</span></h3>
                            <ol>
                                <li class="check">Online system</li>
                                <li class="check">Full access</li>
                                <li class="check">Free apps</li>
                                <li class="check">Multiple slider</li>
                                <li class="check cross">Free domin</li>
                                <li class="check">Support unlimited</li>
                                <li class="check">Payment online</li>
                                <li class="check cross">Cash back</li>
                            </ol>
                            <button>sign up now</button>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="pri_table_list">
                            <h3>premium <br/> <span>$150 / month</span></h3>
                            <ol>
                                <li class="check">Online system</li>
                                <li class="check">Full access</li>
                                <li class="check">Free apps</li>
                                <li class="check">Multiple slider</li>
                                <li class="check">Free domin</li>
                                <li class="check">Support unlimited</li>
                                <li class="check">Payment online</li>
                                <li class="check">Cash back</li>
                            </ol>
                            <button>sign up now</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End pricing table area -->
        <!-- Start Testimonials -->
        <div class="testimonials-area">
            <div class="testi-inner area-padding">
                <div class="testi-overly"></div>
                <div class="container ">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <!-- Start testimonials Start -->
                            <div class="testimonial-content text-center">
                                <a class="quate" href="#"><i class="fa fa-quote-right"></i></a>
                                <!-- start testimonial carousel -->
                                <div class="testimonial-carousel">
                                    <div class="single-testi">
                                        <div class="testi-text">
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar luctus est eget congue.<br>consectetur adipiscing elit. Sed pulvinar luctus est eget congue.
                                            </p>
                                            <h6>Boby</h6>
                                        </div>
                                    </div>
                                    <!-- End single item -->
                                    <div class="single-testi">
                                        <div class="testi-text">
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar luctus est eget congue.<br>consectetur adipiscing elit. Sed pulvinar luctus est eget congue.
                                            </p>
                                            <h6>Jhon</h6>
                                        </div>
                                    </div>
                                    <!-- End single item -->
                                    <div class="single-testi">
                                        <div class="testi-text">
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar luctus est eget congue.<br>consectetur adipiscing elit. Sed pulvinar luctus est eget congue.
                                            </p>
                                            <h6>Fleming</h6>
                                        </div>
                                    </div>
                                    <!-- End single item -->
                                </div>
                            </div>
                            <!-- End testimonials end -->
                        </div>
                        <!-- End Right Feature -->
                    </div>
                </div>
            </div>
        </div>
        <!-- End Testimonials -->
        <!-- Start Blog Area -->
        <div id="blog" class="blog-area">
            <div class="blog-inner area-padding">
                <div class="blog-overly"></div>
                <div class="container ">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="section-headline text-center">
                                <h2>Latest News</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- Start Left Blog -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="single-blog">
                                <div class="single-blog-img">
                                    <a href="blog.html">
                                        <img src="img/blog/1.jpg" alt="">
                                    </a>
                                </div>
                                <div class="blog-meta">
                                    <span class="comments-type">
                                        <i class="fa fa-comment-o"></i>
                                        <a href="#">13 comments</a>
                                    </span>
                                    <span class="date-type">
                                        <i class="fa fa-calendar"></i>2016-03-05 / 09:10:16
                                    </span>
                                </div>
                                <div class="blog-text">
                                    <h4>
                                        <a href="blog.html">Assumenda repud eum veniam</a>
                                    </h4>
                                    <p>
                                        Lorem ipsum dolor sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.
                                    </p>
                                </div>
                                <span>
                                    <a href="blog.html" class="ready-btn">Read more</a>
                                </span>
                            </div>
                            <!-- Start single blog -->
                        </div>
                        <!-- End Left Blog-->
                        <!-- Start Left Blog -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="single-blog">
                                <div class="single-blog-img">
                                    <a href="blog.html">
                                        <img src="img/blog/2.jpg" alt="">
                                    </a>
                                </div>
                                <div class="blog-meta">
                                    <span class="comments-type">
                                        <i class="fa fa-comment-o"></i>
                                        <a href="#">130 comments</a>
                                    </span>
                                    <span class="date-type">
                                        <i class="fa fa-calendar"></i>2016-03-05 / 09:10:16
                                    </span>
                                </div>
                                <div class="blog-text">
                                    <h4>
                                        <a href="blog.html">Explicabo magnam quibusdam.</a>
                                    </h4>
                                    <p>
                                        Lorem ipsum dolor sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.
                                    </p>
                                </div>
                                <span>
                                    <a href="blog.html" class="ready-btn">Read more</a>
                                </span>
                            </div>
                            <!-- Start single blog -->
                        </div>
                        <!-- End Left Blog-->
                        <!-- Start Right Blog-->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="single-blog">
                                <div class="single-blog-img">
                                    <a href="blog.html">
                                        <img src="img/blog/3.jpg" alt="">
                                    </a>
                                </div>
                                <div class="blog-meta">
                                    <span class="comments-type">
                                        <i class="fa fa-comment-o"></i>
                                        <a href="#">10 comments</a>
                                    </span>
                                    <span class="date-type">
                                        <i class="fa fa-calendar"></i>2016-03-05 / 09:10:16
                                    </span>
                                </div>
                                <div class="blog-text">
                                    <h4>
                                        <a href="blog.html">Lorem ipsum dolor sit amet</a>
                                    </h4>
                                    <p>
                                        Lorem ipsum dolor sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.
                                    </p>
                                </div>
                                <span>
                                    <a href="blog.html" class="ready-btn">Read more</a>
                                </span>
                            </div>
                        </div>
                        <!-- End Right Blog-->
                    </div>
                </div>
            </div>
        </div>
        <!-- End Blog -->
        <!-- Start Suscrive Area -->
        <div class="suscribe-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="suscribe-text text-center">
                            <h3>Welcome to our eBusiness company</h3>
                            <a class="sus-btn" href="#">Get A quate</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Suscrive Area -->
        <!-- Start contact Area -->
        <div id="contact" class="contact-area">
            <div class="contact-inner area-padding">
                <div class="contact-overly"></div>
                <div class="container ">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="section-headline text-center">
                                <h2>Contact us</h2>
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
                                        Call: +1 5589 55488 55<br>
                                        <span>Monday-Friday (9am-5pm)</span>
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
                                        Email: info@example.com<br>
                                        <span>Web: www.example.com</span>
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
                                        Location: A108 Adam Street<br>
                                        <span>NY 535022, USA</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <!-- Start Google Map -->
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <!-- Start Map -->
                            <div id="google-map" data-latitude="40.713732" data-longitude="-74.0092704"></div>
                            <!-- End Map -->
                        </div>
                        <!-- End Google Map -->

                        <!-- Start  contact -->
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form contact-form">
                                <div id="sendmessage">Your message has been sent. Thank you!</div>
                                <div id="errormessage"></div>
                                <form action="" method="post" role="form" class="contactForm">
                                    <div class="form-group">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                        <div class="validation"></div>
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                        <div class="validation"></div>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                        <div class="validation"></div>
                                    </div>
                                    <div class="form-group">
                                        <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                        <div class="validation"></div>
                                    </div>
                                    <div class="text-center"><button type="submit">Send Message</button></div>
                                </form>
                            </div>
                        </div>
                        <!-- End Left contact -->
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
        <script src="js/views/index.js"></script>
    </body>

</html>
