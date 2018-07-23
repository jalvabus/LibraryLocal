package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class wishlist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html ng-app=\"appWishlist\">\n");
      out.write("    <head>\n");
      out.write("        <title>Library-Local</title>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n");
      out.write("\n");
      out.write("        <!-- AngularJS -->\n");
      out.write("        <script src=\"js/angular/angular.js\"></script>\n");
      out.write("        <!-- SweetAlert -->\n");
      out.write("        <script src=\"js/sweetalert/sweetalert.js\"></script>\n");
      out.write("        <!-- Iconos -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"font-awesome/css/font-awesome.css\">\n");
      out.write("\n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link href=\"img/favicon.png\" rel=\"icon\">\n");
      out.write("        <link href=\"img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("        <!-- Google Fonts -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS File -->\n");
      out.write("        <link href=\"lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Libraries CSS Files -->\n");
      out.write("        <link href=\"lib/nivo-slider/css/nivo-slider.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"lib/owlcarousel/owl.carousel.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"lib/owlcarousel/owl.transitions.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"lib/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"lib/animate/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"lib/venobox/venobox.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Nivo Slider Theme -->\n");
      out.write("        <link href=\"css/nivo-slider-theme.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Main Stylesheet File -->\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Responsive Stylesheet File -->\n");
      out.write("        <link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body data-spy=\"scroll\" data-target=\"#navbar-example\" ng-controller=\"ctrlWishlist\">\n");
      out.write("\n");
      out.write("        <div id=\"preloader\"></div>\n");
      out.write("\n");
      out.write("        <header>\n");
      out.write("            <!-- header-area start -->\n");
      out.write("            <div id=\"sticker\" class=\"header-area\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 col-sm-12\">\n");
      out.write("\n");
      out.write("                            <!-- Navigation -->\n");
      out.write("                            <nav class=\"navbar navbar-default\">\n");
      out.write("                                <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("                                <div class=\"navbar-header\">\n");
      out.write("                                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\".bs-example-navbar-collapse-1\" aria-expanded=\"false\">\n");
      out.write("                                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                        <span class=\"icon-bar\"></span>\n");
      out.write("                                        <span class=\"icon-bar\"></span>\n");
      out.write("                                        <span class=\"icon-bar\"></span>\n");
      out.write("                                    </button>\n");
      out.write("                                    <!-- Brand -->\n");
      out.write("                                    <a ng-if=\"usuario.tipo === 'Cliente'\" class=\"navbar-brand page-scroll sticky-logo\" href=\"PrincipalUsuario.jsp\">\n");
      out.write("                                        <h1><span>L</span>ibraryLocal</h1>\n");
      out.write("                                    </a>\n");
      out.write("                                    <a ng-if=\"usuario.tipo === 'Admin'\" class=\"navbar-brand page-scroll sticky-logo\" href=\"PrincipalGerente.jsp\">\n");
      out.write("                                        <h1><span>L</span>ibraryLocal</h1>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("                                <div class=\"collapse navbar-collapse main-menu bs-example-navbar-collapse-1\" id=\"navbar-example\">\n");
      out.write("                                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                                        <li class=\"active\">\n");
      out.write("                                            <a class=\"page-scroll\" href=\"#home\">Mi Wishlist</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"\" ng-if=\"usuario.tipo === 'Cliente'\">\n");
      out.write("                                            <a class=\"page-scroll\" href=\"PrincipalUsuario.jsp\">Regresar</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"\" ng-if=\"usuario.tipo === 'Admin'\">\n");
      out.write("                                            <a class=\"page-scroll\" href=\"PrincipalGerente.jsp\">Regresar</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a class=\"page-scroll\" href=\"/LibraryLocal/carrito.jsp\">Carrito</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a class=\"page-scroll\" href=\"#\" ng-click=\"logout();\">Cerrar Sesion</a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- navbar-collapse -->\n");
      out.write("                            </nav>\n");
      out.write("                            <!-- END: Navigation -->\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- header-area end -->\n");
      out.write("        </header>\n");
      out.write("        <!-- header end -->\n");
      out.write("\n");
      out.write("        <!-- Start Slider Area -->\n");
      out.write("        <div id=\"home\" class=\"about-area area-padding\" style=\"margin-top: 30px;\">\n");
      out.write("            <div class=\"bend niceties preview-2\"> \n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                            <div class=\"section-headline services-head text-center\">\n");
      out.write("                                <h2>Lista de Deseos</h2>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <h4>Mi lista de deseos</h4> \n");
      out.write("\n");
      out.write("                            <h5 class=\"text-center\" ng-show=\"wishlist.length <= 0\">Añade libros a tu lista de deseos.</h5>\n");
      out.write("\n");
      out.write("                            <div class=\"list-group\" ng-repeat=\"wish in wishlist\">\n");
      out.write("                                <a class=\"list-group-item\">\n");
      out.write("                                    <h4 class=\"list-group-item-heading\">{{wish.libro.nombre}}</h4>\n");
      out.write("                                    <h5 class=\"list-group-item-text\">Autor: {{wish.libro.autor}}</h5>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <a href=\"#\" data-toggle=\"modal\" data-target=\"#modal_share\" ng-show=\"wishlist.length > 0\">Compartir</a>\n");
      out.write("\n");
      out.write("                            <!-- Modal -->\n");
      out.write("                            <div class=\"modal fade\" id=\"modal_share\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("                                <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("                                    <div class=\"modal-content\">\n");
      out.write("                                        <div class=\"modal-header\">\n");
      out.write("                                            <h5 class=\"sec-head\"></h5>\n");
      out.write("                                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                                <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                            </button>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"modal-body\">\n");
      out.write("\n");
      out.write("                                            <div clas=\"form-group\">\n");
      out.write("                                                <h5 class=\"modal-title\" id=\"exampleModalLabel\">Correo de tu amigo</h5>\n");
      out.write("                                                <input type=\"text\" placeholder=\"Correo@gmail.com\" class=\"form-control\" ng-model=\"share.correo\">\n");
      out.write("                                                <p>Ingresa el correo electronico de la persona a quien quieras compartir esta lista de deseos</p>\n");
      out.write("                                            </div>\n");
      out.write("                                            <button class=\"btn btn-secondary btn-block\" ng-click=\"shareWishlist()\">Compartir</button>\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Modal-->\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("\n");
      out.write("                            <h4>Listas compartidas con migo</h4> \n");
      out.write("\n");
      out.write("                            <h5 class=\"text-center\" ng-show=\"wishlist.length <= 0\">Parece que aun nadie ha compartido su lista de deseos contigo.</h5>\n");
      out.write("\n");
      out.write("                            <div class=\"list-group\" ng-repeat=\"wish in sharedwishlist\">\n");
      out.write("                                <a class=\"list-group-item\"  href=\"#\" data-toggle=\"modal\" data-target=\"#modal_sharedwishlist\" ng-click=\"getSharedWishListByIdUsuario(wish.id_usuario)\">\n");
      out.write("                                    <h4 class=\"list-group-item-heading\">Lista de {{wish.usuario.nombre}}</h4>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <!-- Modal -->\n");
      out.write("                            <div class=\"modal fade\" id=\"modal_sharedwishlist\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("                                <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("                                    <div class=\"modal-content\">\n");
      out.write("                                        <div class=\"modal-header\">\n");
      out.write("                                            <h5 class=\"sec-head\"></h5>\n");
      out.write("                                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                                <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                            </button>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"modal-body\">\n");
      out.write("\n");
      out.write("                                            <div class=\"list-group\" ng-repeat=\"wish in sharedwishlistbyusuario\">\n");
      out.write("                                                <a class=\"list-group-item\">\n");
      out.write("                                                    <h4 class=\"list-group-item-heading\">{{wish.libro.nombre}}</h4>\n");
      out.write("                                                    <h5 class=\"list-group-item-text\">Autor: {{wish.libro.autor}}</h5>\n");
      out.write("                                                </a>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!--Modal-->\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                            <div class=\"section-headline services-head text-center\">\n");
      out.write("                                <h2>Añadir Libros</h2>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 col-sm-3 col-xs-12\" ng-repeat=\"libro in listlibros\" style=\"margin-top: 2em\">\n");
      out.write("                            <div class=\"single-team-member\">\n");
      out.write("                                <div class=\"team-img\">\n");
      out.write("                                    <a href=\"#\" class=\"text-center\">\n");
      out.write("                                        <img src=\"img/books/{{libro.foto}}\" alt=\"\">\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"team-content text-center\">\n");
      out.write("                                    <h4>{{libro.nombre}}</h4>\n");
      out.write("                                    <p>{{libro.autor}}</p>\n");
      out.write("                                    <button class=\"btn btn-secondary btn-sm btn-block\" ng-click=\"addToWishlist(libro.id_libro)\">Añadir a mi lista </button>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- End Slider Area -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Start Footer bottom Area -->\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"footer-area\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-4 col-sm-4 col-xs-12\">\n");
      out.write("                            <div class=\"footer-content\">\n");
      out.write("                                <div class=\"footer-head\">\n");
      out.write("                                    <div class=\"footer-logo\">\n");
      out.write("                                        <h2><span>e</span>Business</h2>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis.</p>\n");
      out.write("                                    <div class=\"footer-icons\">\n");
      out.write("                                        <ul>\n");
      out.write("                                            <li>\n");
      out.write("                                                <a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("                                            </li>\n");
      out.write("                                            <li>\n");
      out.write("                                                <a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("                                            </li>\n");
      out.write("                                            <li>\n");
      out.write("                                                <a href=\"#\"><i class=\"fa fa-google\"></i></a>\n");
      out.write("                                            </li>\n");
      out.write("                                            <li>\n");
      out.write("                                                <a href=\"#\"><i class=\"fa fa-pinterest\"></i></a>\n");
      out.write("                                            </li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- end single footer -->\n");
      out.write("                        <div class=\"col-md-4 col-sm-4 col-xs-12\">\n");
      out.write("                            <div class=\"footer-content\">\n");
      out.write("                                <div class=\"footer-head\">\n");
      out.write("                                    <h4>information</h4>\n");
      out.write("                                    <p>\n");
      out.write("                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.\n");
      out.write("                                    </p>\n");
      out.write("                                    <div class=\"footer-contacts\">\n");
      out.write("                                        <p><span>Tel:</span> +123 456 789</p>\n");
      out.write("                                        <p><span>Email:</span> contact@example.com</p>\n");
      out.write("                                        <p><span>Working Hours:</span> 9am-5pm</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- end single footer -->\n");
      out.write("                        <div class=\"col-md-4 col-sm-4 col-xs-12\">\n");
      out.write("                            <div class=\"footer-content\">\n");
      out.write("                                <div class=\"footer-head\">\n");
      out.write("                                    <h4>Instagram</h4>\n");
      out.write("                                    <div class=\"flicker-img\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/portfolio/1.jpg\" alt=\"\"></a>\n");
      out.write("                                        <a href=\"#\"><img src=\"img/portfolio/2.jpg\" alt=\"\"></a>\n");
      out.write("                                        <a href=\"#\"><img src=\"img/portfolio/3.jpg\" alt=\"\"></a>\n");
      out.write("                                        <a href=\"#\"><img src=\"img/portfolio/4.jpg\" alt=\"\"></a>\n");
      out.write("                                        <a href=\"#\"><img src=\"img/portfolio/5.jpg\" alt=\"\"></a>\n");
      out.write("                                        <a href=\"#\"><img src=\"img/portfolio/6.jpg\" alt=\"\"></a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer-area-bottom\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                            <div class=\"copyright text-center\">\n");
      out.write("                                <p>\n");
      out.write("                                    &copy; Copyright <strong>eBusiness</strong>. All Rights Reserved\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"credits\">\n");
      out.write("                                <!--\n");
      out.write("                                  All the links in the footer should remain intact.\n");
      out.write("                                  You can delete the links only if you purchased the pro version.\n");
      out.write("                                  Licensing information: https://bootstrapmade.com/license/\n");
      out.write("                                  Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=eBusiness\n");
      out.write("                                -->\n");
      out.write("                                Designed by <a href=\"https://bootstrapmade.com/\">BootstrapMade</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("        <a href=\"#\" class=\"back-to-top\"><i class=\"fa fa-chevron-up\"></i></a>\n");
      out.write("\n");
      out.write("        <!-- JavaScript Libraries -->\n");
      out.write("        <script src=\"lib/jquery/jquery.min.js\"></script>\n");
      out.write("        <script src=\"lib/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"lib/venobox/venobox.min.js\"></script>\n");
      out.write("        <script src=\"lib/knob/jquery.knob.js\"></script>\n");
      out.write("        <script src=\"lib/wow/wow.min.js\"></script>\n");
      out.write("        <script src=\"lib/parallax/parallax.js\"></script>\n");
      out.write("        <script src=\"lib/easing/easing.min.js\"></script>\n");
      out.write("        <script src=\"lib/nivo-slider/js/jquery.nivo.slider.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"lib/appear/jquery.appear.js\"></script>\n");
      out.write("        <script src=\"lib/isotope/isotope.pkgd.min.js\"></script>\n");
      out.write("        <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY\"></script>\n");
      out.write("\n");
      out.write("        <!-- Contact Form JavaScript File -->\n");
      out.write("        <script src=\"contactform/contactform.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("        <script src=\"js/modulo3/wishlist.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}