/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.68
 * Generated at: 2022-11-15 08:41:01 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    	");
 String pjName = "/KITEN"; 
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n");
      out.write("  <title>Aroma Shop - Login</title>\r\n");
      out.write("<link rel=\"icon\" href=\"");
      out.print(pjName);
      out.write("/resources/img/Fevicon.png\"\r\n");
      out.write("	type=\"image/png\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/bootstrap/bootstrap.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/fontawesome/css/all.min.css\">\r\n");
      out.write("	<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/themify-icons/themify-icons.css\">\r\n");
      out.write("	<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/linericon/style.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/owl-carousel/owl.theme.default.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/owl-carousel/owl.carousel.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/nice-select/nice-select.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/nouislider/nouislider.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/css/style.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<!--================ Start Header Menu Area =================-->\r\n");
      out.write("	<header class=\"header_area\">\r\n");
      out.write("    <div class=\"main_menu\">\r\n");
      out.write("      <nav class=\"navbar navbar-expand-lg navbar-light\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("          <a class=\"navbar-brand logo_h\" href=\"index.html\"><img src=\"");
      out.print(pjName);
      out.write("/resources/img/logo.png\" alt=\"\"></a>\r\n");
      out.write("          <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\r\n");
      out.write("            aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("            <span class=\"icon-bar\"></span>\r\n");
      out.write("            <span class=\"icon-bar\"></span>\r\n");
      out.write("            <span class=\"icon-bar\"></span>\r\n");
      out.write("          </button>\r\n");
      out.write("          <div class=\"collapse navbar-collapse offset\" id=\"navbarSupportedContent\">\r\n");
      out.write("            <ul class=\"nav navbar-nav menu_nav ml-auto mr-auto\">\r\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"index.html\">Home</a></li>\r\n");
      out.write("              <li class=\"nav-item submenu dropdown\">\r\n");
      out.write("                <a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\"\r\n");
      out.write("                  aria-expanded=\"false\">Shop</a>\r\n");
      out.write("                <ul class=\"dropdown-menu\">\r\n");
      out.write("                  <li class=\"nav-item\"><a class=\"nav-link\" href=\"category.html\">Shop Category</a></li>\r\n");
      out.write("                  <li class=\"nav-item\"><a class=\"nav-link\" href=\"single-product.html\">Blog Details</a></li>\r\n");
      out.write("                  <li class=\"nav-item\"><a class=\"nav-link\" href=\"checkout.html\">Product Checkout</a></li>\r\n");
      out.write("                  <li class=\"nav-item\"><a class=\"nav-link\" href=\"confirmation.html\">Confirmation</a></li>\r\n");
      out.write("                  <li class=\"nav-item\"><a class=\"nav-link\" href=\"cart.html\">Shopping Cart</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("							</li>\r\n");
      out.write("              <li class=\"nav-item submenu dropdown\">\r\n");
      out.write("                <a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\"\r\n");
      out.write("                  aria-expanded=\"false\">Blog</a>\r\n");
      out.write("                <ul class=\"dropdown-menu\">\r\n");
      out.write("                  <li class=\"nav-item\"><a class=\"nav-link\" href=\"blog.html\">Blog</a></li>\r\n");
      out.write("                  <li class=\"nav-item\"><a class=\"nav-link\" href=\"single-blog.html\">Blog Details</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("							</li>\r\n");
      out.write("							<li class=\"nav-item active submenu dropdown\">\r\n");
      out.write("                <a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\"\r\n");
      out.write("                  aria-expanded=\"false\">Pages</a>\r\n");
      out.write("                <ul class=\"dropdown-menu\">\r\n");
      out.write("                  <li class=\"nav-item\"><a class=\"nav-link\" href=\"login.html\">Login</a></li>\r\n");
      out.write("                  <li class=\"nav-item\"><a class=\"nav-link\" href=\"register.html\">Register</a></li>\r\n");
      out.write("                  <li class=\"nav-item\"><a class=\"nav-link\" href=\"tracking-order.html\">Tracking</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-item\"><a class=\"nav-link\" href=\"contact.html\">Contact</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("\r\n");
      out.write("            <ul class=\"nav-shop\">\r\n");
      out.write("              <li class=\"nav-item\"><button><i class=\"ti-search\"></i></button></li>\r\n");
      out.write("              <li class=\"nav-item\"><button><i class=\"ti-shopping-cart\"></i><span class=\"nav-shop__circle\">3</span></button> </li>\r\n");
      out.write("              <li class=\"nav-item\"><a class=\"button button-header\" href=\"#\">Buy Now</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </nav>\r\n");
      out.write("    </div>\r\n");
      out.write("  </header>\r\n");
      out.write("	<!--================ End Header Menu Area =================-->\r\n");
      out.write("  \r\n");
      out.write("  <!-- ================ start banner area ================= -->	\r\n");
      out.write("	<section class=\"blog-banner-area\" id=\"category\">\r\n");
      out.write("		<div class=\"container h-100\">\r\n");
      out.write("			<div class=\"blog-banner\">\r\n");
      out.write("				<div class=\"text-center\">\r\n");
      out.write("					<h1>Login / Register</h1>\r\n");
      out.write("					<nav aria-label=\"breadcrumb\" class=\"banner-breadcrumb\">\r\n");
      out.write("            <ol class=\"breadcrumb\">\r\n");
      out.write("              <li class=\"breadcrumb-item\"><a href=\"#\">Home</a></li>\r\n");
      out.write("              <li class=\"breadcrumb-item active\" aria-current=\"page\">Login/Register</li>\r\n");
      out.write("            </ol>\r\n");
      out.write("          </nav>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("    </div>\r\n");
      out.write("	</section>\r\n");
      out.write("	<!-- ================ end banner area ================= -->\r\n");
      out.write("  \r\n");
      out.write("  <!--================Login Box Area =================-->\r\n");
      out.write("	<section class=\"login_box_area section-margin\">\r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<div class=\"row\">\r\n");
      out.write("				<div class=\"col-lg-6\">\r\n");
      out.write("					<div class=\"login_box_img\">\r\n");
      out.write("						<div class=\"hover\">\r\n");
      out.write("							<h4>New to our website?</h4>\r\n");
      out.write("							<p>There are advances being made in science and technology everyday, and a good example of this is the</p>\r\n");
      out.write("							<a class=\"button button-account\" href=\"register.html\">Create an Account</a>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-lg-6\">\r\n");
      out.write("					<div class=\"login_form_inner\">\r\n");
      out.write("						<h3>Log in to enter</h3>\r\n");
      out.write("						<form class=\"row login_form\" action=\"#/\" id=\"contactForm\" >\r\n");
      out.write("							<div class=\"col-md-12 form-group\">\r\n");
      out.write("								<input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"Username\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Username'\">\r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"col-md-12 form-group\">\r\n");
      out.write("								<input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"Password\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Password'\">\r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"col-md-12 form-group\">\r\n");
      out.write("								<div class=\"creat_account\">\r\n");
      out.write("									<input type=\"checkbox\" id=\"f-option2\" name=\"selector\">\r\n");
      out.write("									<label for=\"f-option2\">Keep me logged in</label>\r\n");
      out.write("								</div>\r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"col-md-12 form-group\">\r\n");
      out.write("								<button type=\"submit\" value=\"submit\" class=\"button button-login w-100\">Log In</button>\r\n");
      out.write("								<a href=\"#\">Forgot Password?</a>\r\n");
      out.write("							</div>\r\n");
      out.write("						</form>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</section>\r\n");
      out.write("	<!--================End Login Box Area =================-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <!--================ Start footer Area  =================-->	\r\n");
      out.write("	<footer>\r\n");
      out.write("		<div class=\"footer-area footer-only\">\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<div class=\"row section_gap\">\r\n");
      out.write("					<div class=\"col-lg-3 col-md-6 col-sm-6\">\r\n");
      out.write("						<div class=\"single-footer-widget tp_widgets \">\r\n");
      out.write("							<h4 class=\"footer_title large_title\">Our Mission</h4>\r\n");
      out.write("							<p>\r\n");
      out.write("								So seed seed green that winged cattle in. Gathering thing made fly you're no \r\n");
      out.write("								divided deep moved us lan Gathering thing us land years living.\r\n");
      out.write("							</p>\r\n");
      out.write("							<p>\r\n");
      out.write("								So seed seed green that winged cattle in. Gathering thing made fly you're no divided deep moved \r\n");
      out.write("							</p>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"offset-lg-1 col-lg-2 col-md-6 col-sm-6\">\r\n");
      out.write("						<div class=\"single-footer-widget tp_widgets\">\r\n");
      out.write("							<h4 class=\"footer_title\">Quick Links</h4>\r\n");
      out.write("							<ul class=\"list\">\r\n");
      out.write("								<li><a href=\"#\">Home</a></li>\r\n");
      out.write("								<li><a href=\"#\">Shop</a></li>\r\n");
      out.write("								<li><a href=\"#\">Blog</a></li>\r\n");
      out.write("								<li><a href=\"#\">Product</a></li>\r\n");
      out.write("								<li><a href=\"#\">Brand</a></li>\r\n");
      out.write("								<li><a href=\"#\">Contact</a></li>\r\n");
      out.write("							</ul>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"col-lg-2 col-md-6 col-sm-6\">\r\n");
      out.write("						<div class=\"single-footer-widget instafeed\">\r\n");
      out.write("							<h4 class=\"footer_title\">Gallery</h4>\r\n");
      out.write("							<ul class=\"list instafeed d-flex flex-wrap\">\r\n");
      out.write("								<li><img src=\"");
      out.print(pjName);
      out.write("/resources/img/gallery/r1.jpg\" alt=\"\"></li>\r\n");
      out.write("								<li><img src=\"");
      out.print(pjName);
      out.write("/resources/img/gallery/r2.jpg\" alt=\"\"></li>\r\n");
      out.write("								<li><img src=\"");
      out.print(pjName);
      out.write("/resources/img/gallery/r3.jpg\" alt=\"\"></li>\r\n");
      out.write("								<li><img src=\"");
      out.print(pjName);
      out.write("/resources/img/gallery/r5.jpg\" alt=\"\"></li>\r\n");
      out.write("								<li><img src=\"");
      out.print(pjName);
      out.write("/resources/img/gallery/r7.jpg\" alt=\"\"></li>\r\n");
      out.write("								<li><img src=\"");
      out.print(pjName);
      out.write("/resources/img/gallery/r8.jpg\" alt=\"\"></li>\r\n");
      out.write("							</ul>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"offset-lg-1 col-lg-3 col-md-6 col-sm-6\">\r\n");
      out.write("						<div class=\"single-footer-widget tp_widgets\">\r\n");
      out.write("							<h4 class=\"footer_title\">Contact Us</h4>\r\n");
      out.write("							<div class=\"ml-40\">\r\n");
      out.write("								<p class=\"sm-head\">\r\n");
      out.write("									<span class=\"fa fa-location-arrow\"></span>\r\n");
      out.write("									Head Office\r\n");
      out.write("								</p>\r\n");
      out.write("								<p>123, Main Street, Your City</p>\r\n");
      out.write("	\r\n");
      out.write("								<p class=\"sm-head\">\r\n");
      out.write("									<span class=\"fa fa-phone\"></span>\r\n");
      out.write("									Phone Number\r\n");
      out.write("								</p>\r\n");
      out.write("								<p>\r\n");
      out.write("									+123 456 7890 <br>\r\n");
      out.write("									+123 456 7890\r\n");
      out.write("								</p>\r\n");
      out.write("	\r\n");
      out.write("								<p class=\"sm-head\">\r\n");
      out.write("									<span class=\"fa fa-envelope\"></span>\r\n");
      out.write("									Email\r\n");
      out.write("								</p>\r\n");
      out.write("								<p>\r\n");
      out.write("									free@infoexample.com <br>\r\n");
      out.write("									www.infoexample.com\r\n");
      out.write("								</p>\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("		<div class=\"footer-bottom\">\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<div class=\"row d-flex\">\r\n");
      out.write("					<p class=\"col-lg-12 footer-text text-center\">\r\n");
      out.write("						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\r\n");
      out.write("Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"fa fa-heart\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\r\n");
      out.write("<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</footer>\r\n");
      out.write("	<!--================ End footer Area  =================-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/jquery/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/bootstrap/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/skrollr.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/owl-carousel/owl.carousel.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/nice-select/jquery.nice-select.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/jquery.ajaxchimp.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/mail-script.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.print(pjName);
      out.write("/resources/js/main.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
