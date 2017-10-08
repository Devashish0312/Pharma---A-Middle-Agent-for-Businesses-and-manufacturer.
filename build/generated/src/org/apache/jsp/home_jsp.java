package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css\">\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js\"></script>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            background-color: #ef9a9a;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            background-size: 100%;\n");
      out.write("            font-family: 'Raleway', sans-serif;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("\n");
      out.write("        #main {\n");
      out.write("            background-color: white;\n");
      out.write("            padding: 30px;\n");
      out.write("            opacity: 20%;\n");
      out.write("            height: 100%;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .one {\n");
      out.write("            background-color: #e0e0e0;\n");
      out.write("            padding: 20px;\n");
      out.write("        }\n");
      out.write("        .two {\n");
      out.write("            background-color: #eeeeee;\n");
      out.write("            padding: 20px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <nav>\n");
      out.write("        <div class=\"nav-wrapper\">\n");
      out.write("            <a href=\"new.jsp\" class=\"brand-logo center\">Pharma</a>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <div class=\"container\" id=\"main\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col s12\">\n");
      out.write("                <ul class=\"tabs\">\n");
      out.write("                    <li class=\"tab col s6\"><a class=\"active\" href=\"#test1\">ADMIN</a></li>\n");
      out.write("                    <li class=\"tab col s6\"><a href=\"#test2\">EMPLOYEE</a></li>\n");
      out.write("                </ul>\n");
      out.write("                <br>\n");
      out.write("\n");
      out.write("                <div id=\"test1\" class=\"col s12\">\n");
      out.write("                    <div class=\"one\">\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("                        <center>\n");
      out.write("                            <h3>ADMIN LOGIN</h3>\n");
      out.write("\n");
      out.write("                            <img src=\"http://www.klbs.in/img/lohinavtar.png\" height=\"150\" width=\"150\" />\n");
      out.write("                            <img src=\"http://www.nbkrist.org/img_avatar2.png\" height=\"150\" width=\"150\" />\n");
      out.write("                            <img src=\"http://www.slbc.lk/ta/images/services/thendral/announcers/default-avatar-rapper-guy.png\" height=\"150\" width=\"150\"\n");
      out.write("                            />\n");
      out.write("                            <link href=\"https://fonts.googleapis.com/css?family=Raleway\" rel=\"stylesheet\">\n");
      out.write("                        </center>\n");
      out.write("                        <br>\n");
      out.write("                        <form action=\"access_admin.jsp\">\n");
      out.write("                            <p>Enter the Username :</p>\n");
      out.write("                            <input type=\"text\" name=\"user\">\n");
      out.write("                            <p>Enter the Password :</p>\n");
      out.write("                            <input type=\"text\" name=\"pwd\">\n");
      out.write("                            <input type=\"submit\" value=\"submit\">\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"test2\" class=\"col s12\">\n");
      out.write("\n");
      out.write("                    <div class=\"two\">\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("                        <center>\n");
      out.write("                            <h3>EMPLOYEE LOGIN</h3>\n");
      out.write("\n");
      out.write("                            <img src=\"http://www.tkbm.se/wp-content/uploads/2015/09/man_green2.jpg\" height=\"150\" width=\"150\" />\n");
      out.write("                            <img src=\"http://www.rainbow180.com/public/images/avatar6.png\" height=\"150\" width=\"150\" />\n");
      out.write("                            <img src=\"http://www.it-souk.com/asset/img/avatar.jpg\" height=\"150\" width=\"150\"\n");
      out.write("                            />\n");
      out.write("                            <link href=\"https://fonts.googleapis.com/css?family=Raleway\" rel=\"stylesheet\">\n");
      out.write("                        </center>\n");
      out.write("                        <br>\n");
      out.write("                        <form action=\"access_emp.jsp\">\n");
      out.write("                            <p>Enter the Username :</p>\n");
      out.write("                            <input type=\"text\" name=\"user\">\n");
      out.write("                            <p>Enter the Password :</p>\n");
      out.write("                            <input type=\"text\" name=\"pwd\">\n");
      out.write("                            <input type=\"submit\" value=\"submit\">\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
