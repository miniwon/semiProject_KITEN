/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.68
 * Generated at: 2022-12-01 01:37:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userLogin_005fok_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/semiProject_KITEN/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/KITEN/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1668046159892L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

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
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
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

      out.write('\r');
      out.write('\n');

	String pjName = "/KITEN";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n");
      out.write("<title>KITEN - 로그인 성공</title>\r\n");
      out.write("<link rel=\"icon\" href=\"");
      out.print(pjName);
      out.write("/resources/img/Fevicon.png\" type=\"image/png\">\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/bootstrap/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/fontawesome/css/all.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/themify-icons/themify-icons.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/linericon/style.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/owl-carousel/owl.theme.default.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/owl-carousel/owl.carousel.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/nice-select/nice-select.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/vendors/nouislider/nouislider.min.css\">\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/css/stylej.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(pjName);
      out.write("/resources/css/footer.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<!--================ Start Header Menu Area =================-->\r\n");
      out.write("	<header class=\"header_area\">\r\n");
      out.write("		<div class=\"main_menu\">\r\n");
      out.write("			<nav class=\"navbar navbar-expand-lg navbar-light\">\r\n");
      out.write("				<div class=\"container\">\r\n");
      out.write("					<a class=\"navbar-brand logo_h\" href=\"");
      out.print(pjName);
      out.write("/home.do\"><img src=\"");
      out.print(pjName);
      out.write("/resources/img/logo.png\" alt=\"\"></a>\r\n");
      out.write("					<button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\"\r\n");
      out.write("						aria-label=\"Toggle navigation\">\r\n");
      out.write("						<span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span>\r\n");
      out.write("					</button>\r\n");
      out.write("					<div class=\"collapse navbar-collapse offset\" id=\"navbarSupportedContent\">\r\n");
      out.write("						<ul class=\"nav navbar-nav menu_nav ml-auto mr-auto\">\r\n");
      out.write("							<li class=\"nav-item submenu dropdown\"><a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">쇼핑하기</a>\r\n");
      out.write("								<ul class=\"dropdown-menu\">\r\n");
      out.write("									<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(pjName);
      out.write("/product/getProductList.do?num=1\">전체 상품 보기</a></li>\r\n");
      out.write("									<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(pjName);
      out.write("/product/getCategoryList.do?categoryname=한식\">한식</a></li>\r\n");
      out.write("									<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(pjName);
      out.write("/product/getCategoryList.do?categoryname=중식\">중식</a></li>\r\n");
      out.write("									<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(pjName);
      out.write("/product/getCategoryList.do?categoryname=일식\">일식</a></li>\r\n");
      out.write("									<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(pjName);
      out.write("/product/getCategoryList.do?categoryname=양식\">양식</a></li>\r\n");
      out.write("									<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(pjName);
      out.write("/product/getCategoryList.do?categoryname=동남아\">동남아</a></li>\r\n");
      out.write("									<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(pjName);
      out.write("/product/getCategoryList.do?categoryname=분식\">분식</a></li>\r\n");
      out.write("									<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(pjName);
      out.write("/product/getCategoryList.do?categoryname=기타\">기타</a></li>\r\n");
      out.write("								</ul></li>\r\n");
      out.write("							<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(pjName);
      out.write("/product/bestProductList.do?num=1\">인기 상품</a></li>\r\n");
      out.write("							<li class=\"nav-item submenu dropdown\"><a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">고객센터</a>\r\n");
      out.write("								<ul class=\"dropdown-menu\">\r\n");
      out.write("									<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
      out.print(pjName);
      out.write("/user/notice.do\">공지사항</a></li>\r\n");
      out.write("									<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\">일대일 문의</a></li>\r\n");
      out.write("								</ul></li>\r\n");
      out.write("							<!-- 로그아웃 시 출력할 헤더 -->\r\n");
      out.write("							");
      //  c:if
      org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
      boolean _jspx_th_c_005fif_005f0_reused = false;
      try {
        _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
        _jspx_th_c_005fif_005f0.setParent(null);
        // /WEB-INF/views/user/userLogin_ok.jsp(58,7) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${empty sessionScope.userId}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
        int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
        if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("								<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
            out.print(pjName);
            out.write("/user/userJoin.do\">회원 가입</a></li>\r\n");
            out.write("								<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
            out.print(pjName);
            out.write("/user/userLogin.do\">로그인</a></li>\r\n");
            out.write("							");
            int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
        _jspx_th_c_005fif_005f0_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f0_reused);
      }
      out.write("\r\n");
      out.write("							<!-- 로그인 시 출력할 헤더 -->\r\n");
      out.write("							");
      //  c:if
      org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
      boolean _jspx_th_c_005fif_005f1_reused = false;
      try {
        _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
        _jspx_th_c_005fif_005f1.setParent(null);
        // /WEB-INF/views/user/userLogin_ok.jsp(63,7) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty sessionScope.userId}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
        int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
        if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("								<li class=\"nav-item submenu dropdown\"><a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">마이 페이지</a>\r\n");
            out.write("									<ul class=\"dropdown-menu\">\r\n");
            out.write("										<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
            out.print(pjName);
            out.write("/my/orderHistory.do?m_number=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userNo}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\">주문 내역</a></li>\r\n");
            out.write("										<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
            out.print(pjName);
            out.write("/my/wish.do?m_number=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userNo}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\">찜한 상품</a></li>\r\n");
            out.write("										<li class=\"nav-item\"><a class=\"nav-link\" onclick=\"window.open('");
            out.print(pjName);
            out.write("/user/userAddress.do?m_number=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userNo}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("','배송지 관리','resizable=no width=800 height=800')\">배송지 관리</a></li>\r\n");
            out.write("										<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\">나의 문의</a></li>\r\n");
            out.write("										<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
            out.print(pjName);
            out.write("/user/userModify.do\">회원 정보 수정</a></li>\r\n");
            out.write("										<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
            out.print(pjName);
            out.write("/user/userRemove_before.do\">회원 탈퇴</a></li>\r\n");
            out.write("									</ul></li>\r\n");
            out.write("								<li class=\"nav-item\"><a class=\"nav-link\" href=\"");
            out.print(pjName);
            out.write("/user/userLogout.do\">로그아웃</a></li>\r\n");
            out.write("							");
            int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
        _jspx_th_c_005fif_005f1_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f1_reused);
      }
      out.write("\r\n");
      out.write("						</ul>\r\n");
      out.write("						<ul class=\"nav-shop\">\r\n");
      out.write("							");
      //  c:if
      org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
      boolean _jspx_th_c_005fif_005f2_reused = false;
      try {
        _jspx_th_c_005fif_005f2.setPageContext(_jspx_page_context);
        _jspx_th_c_005fif_005f2.setParent(null);
        // /WEB-INF/views/user/userLogin_ok.jsp(77,7) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fif_005f2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty sessionScope.userId}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
        int _jspx_eval_c_005fif_005f2 = _jspx_th_c_005fif_005f2.doStartTag();
        if (_jspx_eval_c_005fif_005f2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("								<li class=\"nav-item\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("님</li>\r\n");
            out.write("								<li class=\"nav-item\"><button onclick=\"window.open('");
            out.print(pjName);
            out.write("/user/userAddress.do?m_number=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userNo}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("','배송지 관리','resizable=no width=800 height=800')\">\r\n");
            out.write("										<i class=\"ti-location-pin\"></i>\r\n");
            out.write("									</button></li>\r\n");
            out.write("								<li class=\"nav-item\"><a href=\"");
            out.print(pjName);
            out.write("/my/wish.do?m_number=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userNo}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\"><button>\r\n");
            out.write("											<i class=\"ti-heart\"></i>\r\n");
            out.write("										</button></a></li>\r\n");
            out.write("								<li class=\"nav-item\"><a href=\"");
            out.print(pjName);
            out.write("/my/cart.do?m_number=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userNo}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\"><button>\r\n");
            out.write("											<i class=\"ti-shopping-cart\"></i><span class=\"nav-shop__circle\">3</span>\r\n");
            out.write("										</button></a></li>\r\n");
            out.write("							");
            int evalDoAfterBody = _jspx_th_c_005fif_005f2.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fif_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f2);
        _jspx_th_c_005fif_005f2_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f2, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f2_reused);
      }
      out.write("\r\n");
      out.write("						</ul>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</nav>\r\n");
      out.write("		</div>\r\n");
      out.write("	</header>\r\n");
      out.write("	<!--================ End Header Menu Area =================-->\r\n");
      out.write("	<!--================Login Box Area =================-->\r\n");
      out.write("	<section class=\"login_box_area section-margin\">\r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<div class=\"row\">\r\n");
      out.write("				<div class=\"col-lg-1\"></div>\r\n");
      out.write("				<div class=\"col-lg-10\">\r\n");
      out.write("					<div class=\"login_form_inner register_form_inner\">\r\n");
      out.write("						<h3>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(" 님 로그인이 완료되었습니다</h3>\r\n");
      out.write("						<div class=\"form-button\">\r\n");
      out.write("							<a href=\"");
      out.print(pjName);
      out.write("/home.do\"><button type=\"button\" value=\"홈으로\" class=\"button button-login\">홈으로 가기</button></a>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</section>\r\n");
      out.write("	<!--================End Login Box Area =================-->\r\n");
      out.write("	<!--================ Start footer Area  =================-->\r\n");
      out.write("	<footer>\r\n");
      out.write("		<div class=\"footer-area\">\r\n");
      out.write("			<hr></hr>\r\n");
      out.write("			<div class=\"ss\">\r\n");
      out.write("				<div class=\"s1\">\r\n");
      out.write("					<h4 class=\"footer_title large_title\">고객행복센터</h4>\r\n");
      out.write("					<table>\r\n");
      out.write("						<tr>\r\n");
      out.write("							<td class=\"nav-item\"><a class=\"button button-header\" href=\"#\">카톡 문의</a></td>\r\n");
      out.write("							<td><p>월~일요일 | 오전7시~ 오후6시</p></td>\r\n");
      out.write("						</tr>\r\n");
      out.write("						<tr>\r\n");
      out.write("							<td class=\"nav-item\"><a class=\"button button-header\" href=\"#\">개인 문의 </a></td>\r\n");
      out.write("							<td><p>365일 친절하게 문의 받겠습니다.</p></td>\r\n");
      out.write("						</tr>\r\n");
      out.write("						<tr>\r\n");
      out.write("							<td class=\"nav-item\"><a class=\"button button-header\" href=\"#\">대량 문의</a></td>\r\n");
      out.write("							<td><p>월~일요일 | 오전9시~ 오후6시</p></td>\r\n");
      out.write("						</tr>\r\n");
      out.write("						<tr></tr>\r\n");
      out.write("						<tr>\r\n");
      out.write("							<td><p>비회원문의 : help @ kosmo.com</p></td>\r\n");
      out.write("						</tr>\r\n");
      out.write("						<tr>\r\n");
      out.write("							<td><p>비회원대량문의 : gift @ kosmo.com</p></td>\r\n");
      out.write("						</tr>\r\n");
      out.write("					</table>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"ml-40\">\r\n");
      out.write("					<ul class=\"loginul\">\r\n");
      out.write("						<li class=\"loginli\"><a class=\"foot-link\" href=\"\">회사소개</a></li>\r\n");
      out.write("						<li class=\"loginli\"><a class=\"foot-link\" href=\"\">인재채용</a></li>\r\n");
      out.write("						<li class=\"loginli\"><a class=\"foot-link\" href=\"\">이용약관</a></li>\r\n");
      out.write("						<li class=\"loginli\"><a class=\"foot-link\" href=\"\">개인정보처리방침</a></li>\r\n");
      out.write("						<li class=\"loginli\"><a class=\"foot-link\" href=\"\">이용안내</a></li>\r\n");
      out.write("						<br></br>\r\n");
      out.write("					</ul>\r\n");
      out.write("					<p>법인명(상호) : 주식회사 키튼 | 사업자 등록번호 : 123-45-67890 사업자정보확인</p>\r\n");
      out.write("					<p>통신판매업 : 제 2022호-경기안양-00000호 | 개인정보보호책임자 : 강민수</p>\r\n");
      out.write("					<p>주소 : 서울특별시 어디구 어디로 133 101동 3층 | 대표이사 : 정지원</p>\r\n");
      out.write("					<p>채용문의 : job@kosmo.com</p>\r\n");
      out.write("					<p>팩스 : 000- 0000 - 0000</p>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"footer-bottom\">\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<div class=\"row d-flex\">\r\n");
      out.write("					<p class=\"col-lg-12 footer-text text-center\">\r\n");
      out.write("						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\r\n");
      out.write("						Copyright &copy;\r\n");
      out.write("						<script>\r\n");
      out.write("							document.write(new Date().getFullYear());\r\n");
      out.write("						</script>\r\n");
      out.write("						All rights reserved | This template is made with <i class=\"fa fa-heart\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\r\n");
      out.write("						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\r\n");
      out.write("					</p>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</footer>\r\n");
      out.write("	<!--================ End footer Area  =================-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<script src=\"//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js\"></script>\r\n");
      out.write("	<script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/jquery/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("	<script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/bootstrap/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("	<script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/skrollr.min.js\"></script>\r\n");
      out.write("	<script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/owl-carousel/owl.carousel.min.js\"></script>\r\n");
      out.write("	<script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/nice-select/jquery.nice-select.min.js\"></script>\r\n");
      out.write("	<script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/jquery.ajaxchimp.min.js\"></script>\r\n");
      out.write("	<script src=\"");
      out.print(pjName);
      out.write("/resources/vendors/mail-script.js\"></script>\r\n");
      out.write("	<script src=\"");
      out.print(pjName);
      out.write("/resources/js/main.js\"></script>\r\n");
      out.write("	<script src=\"");
      out.print(pjName);
      out.write("/resources/js/userInput.js\"></script>\r\n");
      out.write("\r\n");
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
