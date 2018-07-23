<%-- 
    Document   : PrincipalGerente
    Created on : 21-jun-2018, 20:57:25
    Author     : kitsu
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="principalGerenteApp">
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
    <body data-spy="scroll" data-target="#navbar-example" ng-controller="principalGerenteController">

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
                                            <a class="page-scroll" href="miperfil.jsp">Mi Perfil</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#about">Gestionar Libros</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#services">Gestionar Eventos</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#team">Gestionar Premios</a>
                                        </li>
                                        <!-- 
                                        <li>
                                            <a class="page-scroll" href="#portfolio">Mi Tarjeta</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#blog">Blog</a>
                                        </li>
                                        -->
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
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline services-head text-center">
                            <h2>Bienvenido {{usuario.tipo}} {{ usuario.nombre}}</h2>
                        </div>
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
                            <h2>Administracion libros</h2>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="tab-menu">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="active">
                                    <a href="#p-view-1" role="tab" data-toggle="tab" ng-click="showLibros()" >Libros</a>
                                </li>
                                <li>
                                    <a href="#p-view-1" role="tab" data-toggle="tab" ng-click="showFormulario()" >Agregar Nuevo</a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane active" id="p-view-1">
                                <h4></h4>
                                <h4></h4>
                                <div class="tab-inner">
                                    <div class="event-content head-team" ng-if="mostrarLibros">
                                        <div class="row">
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
                                                </div>
                                            </div>
                                        </div>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Nombre</th>
                                                    <th scope="col">Autor</th>
                                                    <th scope="col">Editorial</th>
                                                    <th scope="col">Año</th>
                                                    <th scope="col">Categoria</th>
                                                    <th scope="col">Opciones</th>   
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr ng-repeat="libro in libros">
                                                    <th scope="row">{{ libro.nombre}}</th>
                                                    <td>{{libro.autor}}</td>
                                                    <td>{{ libro.editorial}}</td>
                                                    <td>{{ libro.ano_publicacion}}</td>
                                                    <td>{{ libro.categoria}}</td>
                                                    <td>
                                                        <button class="btn btn-default" ng-click="editar(libro)"><i class="fa fa-pencil" ></i></button>
                                                        <button class="btn btn-default" ng-click="eliminar(libro)"><i class="fa fa-trash"></i></button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="event-content head-team" ng-if="mostrarFormulario">
                                        <h4>{{title}}</h4>
                                        <div>
                                            <form class="row">
                                                <div class="form-group col-lg-6">
                                                    <h5>Nombre</h5>
                                                    <input ng-model="libro.nombre" type="text" name="nombre" class="form-control" placeholder="Nombre del Libro"  />                                                    
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    <h5>Autor</h5>
                                                    <input type="text" ng-model="libro.autor" class="form-control" name="autores" placeholder="Autores del Libro" />
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    <h5> Editorial</h5>
                                                    <input ng-model="libro.editorial" type="text" name="editorial" class="form-control" placeholder="Editorial del Libro"  />                                                    
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    <h5> Precio</h5>
                                                    <input type="number" ng-model="libro.precio" class="form-control" name="precio" placeholder="Precio del Libro" />
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    <h5> Categoria</h5>
                                                    <input ng-model="libro.categoria" type="text" name="categoria" class="form-control" placeholder="Cateogoria del Libro"  />                                                    
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    <h5> Año de Publicacion</h5>
                                                    <input type="number" ng-model="libro.ano_publicacion" class="form-control" name="anio" placeholder="Año del Libro" />
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    <h5>Descripcion</h5>
                                                    <input type="text" ng-model="libro.descripcion" class="form-control" name="descripcion" placeholder="Descripcion del Libro" />
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    <h5> Status</h5>
                                                    <input ng-model="libro.status" type="text" name="editorial" class="form-control" placeholder="Status del Libro"  />                                                    
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    <h5>Cantidad</h5>
                                                    <input type="number" ng-model="libro.cantidad" class="form-control" name="cantidad" placeholder="Cantidad del Libro" />
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <h5> Imagen del Libro</h5>
                                                    <input type="file" name="image" onchange="angular.element(this).scope().uploadFile(this.files)">
                                                    <img src="img/books/{{libro.foto}}">
                                                </div>
                                                <div class="text-center col-lg-6" ng-hide="formVisivility">
                                                    <button ng-click="saveEditBook()" class="ready-btn page-scroll" >Actualizar Libro</button>
                                                </div>
                                                <div class="text-center col-lg-6" ng-hide="!formVisivility">
                                                    <button ng-click="saveBook()" class="ready-btn page-scroll" >Registrar Libro</button>
                                                </div>
                                                <div class="text-center col-lg-6">
                                                    <button ng-click="cancel()" class="ready-btn page-scroll">Cancelar</button>
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
        </div>
        <!-- End About area -->

        <!-- Administracion de Eventos area -->
        <div id="services" class="services-area area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h2>Administracion Eventos</h2>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="tab-menu">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="active">
                                    <a href="#p-view-2" role="tab" data-toggle="tab" ng-click="showEventos()" >Eventos</a>
                                </li>
                                <li>
                                    <a href="#p-view-2" role="tab" data-toggle="tab" ng-click="showFormularioEventos()" >Agregar Nuevo Evento</a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane active" id="p-view-2">
                                <h4></h4>
                                <h4></h4>
                                <div class="tab-inner">
                                    <div class="event-content head-team" ng-if="mostrarEventos">
                                        <div class="row">
                                            <div class="col-md-6 col-sm-6 col-xs-6">
                                                <div class="single-blog-page">
                                                    <!-- search option start -->
                                                    <form action="#">
                                                        <div class="search-option" style="border: none;">
                                                            <input type="text" ng-keyup="getEventosSearch()" ng-model="searchEvento" placeholder="Search...">
                                                            <button class="button" type="submit">
                                                                <i class="fa fa-search"></i>
                                                            </button>
                                                        </div>
                                                    </form>
                                                    <!-- search option end -->
                                                </div>
                                            </div>
                                        </div>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Nombre</th>
                                                    <th scope="col">Tipo</th>
                                                    <th scope="col">Descripcion</th>
                                                    <th scope="col">Fecha</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Cupo</th>
                                                    <th scope="col">Opciones</th>   
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr ng-repeat="evento in eventos">
                                                    <th scope="row">{{ evento.nombre}}</th>
                                                    <td>{{ evento.tipo}}</td>
                                                    <td>{{ evento.descripcion}}</td>
                                                    <td>{{ evento.fecha_evento}}</td>
                                                    <td>{{ evento.status}}</td>
                                                    <td>{{ evento.cupo}}</td>
                                                    <td>
                                                        <button class="btn btn-default" ng-click="editarEvento(evento)"><i class="fa fa-pencil" ></i></button>
                                                        <button class="btn btn-default" ng-click="eliminarEvento(evento)"><i class="fa fa-trash"></i></button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="event-content head-team" ng-if="mostrarFormularioEventos">
                                        <h4>{{titleEvento}}</h4>
                                        <div>
                                            <form class="row">
                                                <div class="form-group ng-pristine ng-untouched ng-valid ng-not-empty col-lg-6">
                                                    <h5>Nombre del Evento</h5>
                                                    <input ng-model="evento.nombre" type="text" id="nombreEvento" class="form-control" placeholder="Nombre del Evento"  />                                                    
                                                </div>
                                                <div class="form-group ng-pristine ng-untouched ng-valid ng-not-empty col-lg-6">
                                                    <h5>Descripcion del evento</h5>
                                                    <input type="text" ng-model="evento.descripcion" class="form-control" name="autores" placeholder="Descripcion del Evento" />
                                                </div>
                                                <div class="form-group ng-pristine ng-untouched ng-valid ng-not-empty col-lg-6">
                                                    <h5>Tipo</h5>
                                                    <select class="form-control" ng-model="evento.tipo">
                                                        <option value="Imagenes">Imagenes</option>
                                                        <option value="FirmaAutografos">Firma Autografos</option>
                                                        <option value="Conferencia">Conferencia</option>
                                                    </select>

                                                    <%-- <input ng-model="evento.tipo" type="text" name="editorial" class="form-control" placeholder="Tipo de evento"  /> --%>
                                                </div>
                                                <div class="form-group ng-pristine ng-untouched ng-valid ng-not-empty col-lg-6">
                                                    <h5>Cupo</h5>
                                                    <input type="number" ng-model="evento.cupo" class="form-control" name="precio" placeholder="Cupo del evento" />
                                                </div>
                                                <div class="form-group ng-pristine ng-untouched ng-valid ng-not-empty col-lg-6">
                                                    <h5>Status</h5>
                                                    <select class="form-control" ng-model="evento.status">
                                                        <option value="Activo">Acivo</option>
                                                        <option value="Cancelado">Cancelado</option>
                                                    </select>
                                                    <%-- <input ng-model="evento.status" type="text" name="categoria" class="form-control" placeholder="Status del evento"  /> --%>
                                                </div>
                                                <div class="form-group ng-pristine ng-untouched ng-valid ng-not-empty col-lg-6">
                                                    <h5>Costo</h5>
                                                    <input type="number" ng-model="evento.costo" class="form-control" name="anio" placeholder="Costo del evento" />
                                                </div>
                                                <div class="form-group ng-pristine ng-untouched ng-valid ng-not-empty col-lg-6">
                                                    <h5>Fecha del Evento</h5>
                                                    <input type="date" id="fecha_evento" class="form-control" name="descripcion" placeholder="Fecha del evento" />
                                                </div>
                                                <div class="form-group ng-pristine ng-untouched ng-valid ng-not-empty col-lg-6">
                                                    <h5>Calificacion</h5>
                                                    <input type="number" ng-model="evento.calificacion" class="form-control" name="cantidad" placeholder="Cantidad del Libro" />
                                                </div>
                                                <div class="form-group ng-pristine ng-untouched ng-valid ng-not-empty col-lg-12">
                                                    <h5>Imagen del Evento</h5>
                                                    <input type="file" name="image" onchange="angular.element(this).scope().uploadFileEvento(this.files)">
                                                    <img src="img/books/{{evento.foto}}">
                                                </div>
                                                <div class="text-center col-lg-6" ng-disabled="!evento.nombre || !evento.calificacion || !evento.status" ng-hide="formVisivilityEvento">
                                                    <button ng-click="saveEditEvento()" class="ready-btn page-scroll" >Actualizar Evento</button>
                                                </div>
                                                <div class="text-center col-lg-6" ng-disabled="!evento.nombre || !evento.calificacion || !evento.status" ng-hide="!formVisivilityEvento">
                                                    <button ng-click="saveEvento()" class="ready-btn page-scroll" >Registrar Evento</button>
                                                </div>
                                                <div class="text-center col-lg-6">
                                                    <button ng-click="cancelEvento()" class="ready-btn page-scroll">Cancelar</button>
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
        </div>
        <!-- Administracion de Eventos end -->

        <!-- Start team Area -->
        <div id="team" class="faq-area area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h2>Todos los Premios</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="tab-menu">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="active">
                                    <a href="#p-view-1" role="tab" data-toggle="tab" ng-click="showPremios()" >Premios</a>
                                </li>
                                <li>
                                    <a href="#p-view-1" role="tab" data-toggle="tab" ng-click="showFormularioP()" >Agregar Nuevo</a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane active" id="p-view-1">
                                <h4></h4>
                                <h4></h4>
                                <div class="tab-inner">
                                    <div class="event-content head-team" ng-if="mostrarPremios">
                                        <div class="row">
                                            <div class="col-md-6 col-sm-6 col-xs-6">
                                                <div class="single-blog-page">
                                                    <!-- search option start -->

                                                    <!-- search option end -->
                                                </div>
                                            </div>
                                        </div>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Nombre</th>
                                                    <th scope="col">Puntos</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Cantidad</th>
                                                    <th scope="col">Descripci&oacute;n</th>
                                                    <th scope="col">Opciones</th>   
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr ng-repeat="premio in premios">
                                                    <th scope="row">{{ premio.nombre}}</th>
                                                    <td>{{ premio.puntos}}</td>
                                                    <td>{{ premio.status}}</td>
                                                    <td>{{ premio.cantidad}}</td>
                                                    <td>{{ premio.descripcion}}</td>
                                                    <td>
                                                        <button class="btn btn-default" ng-click="agregar(premio)"><i class="fa fa-plus" ></i></button>
                                                        <button class="btn btn-default" ng-click="editarPremio(premio)"><i class="fa fa-pencil" ></i></button>
                                                        <button class="btn btn-default" ng-click="cambiar(premio)"><i class="fa fa-toggle-on"></i></button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="event-content head-team" ng-if="mostrarFormularioP">
                                        <h4>{{titleP}}</h4>
                                        <div>
                                            <form class="row">
                                                <div class="form-group col-lg-6">
                                                    Nombre
                                                    <input ng-model="premio.nombre" type="text" name="nombre" class="form-control" placeholder="Nombre del Premio"  />                                                    
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    Puntos
                                                    <input type="text" ng-model="premio.puntos" class="form-control" name="puntos" placeholder="Puntos del Premio" />
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    Cantidad
                                                    <input type="number" ng-model="premio.cantidad" class="form-control" name="cantidad" placeholder="Cantidad de Premios" />
                                                </div>
                                                <div class="form-group col-lg-6">
                                                    Descripci&oacute;n
                                                    <input ng-model="premio.descripcion" type="text" name="descripcion" class="form-control" placeholder="Descripci&oacute;n del Premio"  />                                                    
                                                </div>

                                                <div class="form-group col-lg-12">
                                                    Imagen del Premio
                                                    <input type="file" name="image" onchange="angular.element(this).scope().uploadFileP(this.files)">
                                                    <img src="img/prize/{{premio.fotopremio}}">
                                                </div>
                                                <div class="text-center col-lg-6" ng-hide="formVisivilityP">
                                                    <button ng-click="saveEditPremio()" class="ready-btn page-scroll" >Actualizar Premio</button>
                                                </div>
                                                <div class="text-center col-lg-6" ng-hide="!formVisivilityP">
                                                    <button ng-click="savePremio()" class="ready-btn page-scroll" >Registrar Premio</button>
                                                </div>
                                                <div class="text-center col-lg-6">
                                                    <button ng-click="cancelP()" class="ready-btn page-scroll">Cancelar</button>
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
        </div>
        <!-- End Team Area -->

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
        </footer

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
        <script src="js/views/principalGerente.js"></script>
    </body>
</html>
