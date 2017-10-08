package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class order_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css\">\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js\"></script>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Raleway\" rel=\"stylesheet\">\n");
      out.write("        <style>\n");
      out.write("    \tbody {\n");
      out.write("/*    background-image: url(\"http://www.hec.edu/var/corporate/storage/images/knowledge/strategie-et-management/innovation-et-entrepreneuriat/l-optimisme-des-entrepreneurs/399357-2-eng-GB/Entrepreneurial-Optimism_knowledge_standard.jpg\");*/\n");
      out.write("    \tbackground-color: #ef9a9a;\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    background-size: 100%;\n");
      out.write("    font-family: 'Raleway', sans-serif;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\n");
      out.write("\t#main{\n");
      out.write("\t\tbackground-color: white;\n");
      out.write("\t\tpadding: 30px;\n");
      out.write("\t\topacity: 20%;\n");
      out.write("\t\theight: 100%;\n");
      out.write("\t}\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    <nav>\n");
      out.write("        <div class=\"nav-wrapper\">\n");
      out.write("            <a href=\"new.jsp\" class=\"brand-logo center\">Pharma</a>\n");
      out.write("            <ul id=\"nav-mobile\" class=\"right hide-on-med-and-down\">\n");
      out.write("                <li><a href='logout.jsp'>Log out</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("  <div class=\"container\" id=\"main\">\n");
      out.write("  <center>\n");
      out.write("      <h3>Enter the details below </h3>\n");
      out.write("      <br>\n");
      out.write("  </center>\n");
      out.write("    \n");
      out.write("        <form class=\"col s12\" action=\"bill.jsp\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("                <div class=\"input-field col s6\">\n");
      out.write("                        <select name=\"Customer\">\n");
      out.write("                            <option value=\"\" disabled selected>Customer ID</option>\n");
      out.write("                              \t");
 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from customer id");
    if(rs.next()){

while(rs.next())
{
String fname = rs.getString("customer id") + " - "+rs.getString("Name"); 

      out.write("\n");
      out.write("<option value=\"");
      out.print(fname );
      out.write('"');
      out.write('>');
      out.print(fname );
      out.write("</option>\n");

}

    }

      out.write("\n");
      out.write("</select>\n");
      out.write("\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("          <div class=\"row\">\n");
      out.write("                <div class=\"input-field col s6\">\n");
      out.write("                        <select name=\"product1\">\n");
      out.write("                            <option value=\"\" disabled selected>Product 1</option>\n");
      out.write("                              \t");
 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st1 = con.createStatement();
    ResultSet rs1;
    rs1 = st1.executeQuery("select * from product_gen");
    if(rs1.next()){

while(rs1.next())
{
String fname = rs1.getString("product"); 

      out.write("\n");
      out.write("<option value=\"");
      out.print(fname );
      out.write('"');
      out.write('>');
      out.print(fname );
      out.write("</option>\n");

}

    }

      out.write("\n");
      out.write("</select>\n");
      out.write("\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("<div class=\"input-field col s6\">\n");
      out.write("    <input type =\"text\" name=\"quantity1\" placeholder=\"quantity\">\n");
      out.write("</div>\n");
      out.write("          </div>\n");
      out.write("<div class=\"row\">\n");
      out.write("                <div class=\"input-field col s6\">\n");
      out.write("                        <select name=\"product2\">\n");
      out.write("                            <option value=\"\" disabled selected>Product 2 </option>\n");
      out.write("                              \t");
 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st3 = con.createStatement();
    ResultSet rs3;
    rs3 = st3.executeQuery("select * from product_gen");
    if(rs3.next()){

while(rs3.next())
{
String fname = rs3.getString("product"); 

      out.write("\n");
      out.write("<option value=\"");
      out.print(fname );
      out.write('"');
      out.write('>');
      out.print(fname );
      out.write("</option>\n");

}

    }

      out.write("\n");
      out.write("</select>\n");
      out.write("\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("<div class=\"input-field col s6\">\n");
      out.write("    <input type =\"text\" name=\"quantity1\" placeholder=\"quantity\">\n");
      out.write("</div>\n");
      out.write("          </div>\n");
      out.write("<input type=\"submit\" value =\"submit\">\n");
      out.write("        </form>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("  <script>\n");
      out.write("        $(document).ready(function() {\n");
      out.write("    $('select').material_select();\n");
      out.write("  });\n");
      out.write("     \n");
      out.write("  </script>\n");
      out.write("  </body>\n");
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
