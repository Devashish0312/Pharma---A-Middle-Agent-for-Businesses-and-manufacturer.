package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class Products_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("/*\t\theight: 100%;*/\n");
      out.write("\t}\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    <nav>\n");
      out.write("        <div class=\"nav-wrapper\">\n");
      out.write("        <a href=\"new.jsp\" class=\"brand-logo\">Pharma</a>\n");
      out.write("        <ul id=\"nav-mobile\" class=\"right hide-on-med-and-down\">\n");
      out.write("      \t<li><a href=\"ab.jsp\">About Us</a></li>\n");
      out.write("        <li><a href=\"cmn.jsp\">Companies</a></li>\n");
      out.write("        <li><a href=\"job.jsp\">JOB</a></li>\n");
      out.write("        <li><a href=\"contact.jsp\">Contact Us</a></li>\n");
      out.write("        </ul>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("  <div class=\"container\" id=\"main\">\n");
      out.write("      \n");
      out.write("\n");
      out.write("      <form action=\"check.jsp\">\n");
      out.write("      <input type=\"text\" name=\"name\"  placeholder=\"Type the name of medicine....\">\n");
      out.write("  <input type=\"submit\" value=\"Submit\">\n");
      out.write("</form>\n");
      out.write("  <br>\n");
      out.write("  <br>\n");
      out.write("    <h3>This is the list of Products</h3>\n");
      out.write("  \t");
 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from product_gen");
    if(rs.next()){
        
      out.write("                    <table class=\"striped bordered\" style=\"width:100%\">\n");
      out.write("            <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Product ID</th>\n");
      out.write("                            <th>Product</th>\n");
      out.write("                            <th>Company</th>\n");
      out.write("                        </tr>\n");
      out.write("            </thead>\n");
      out.write("                        ");
 while(rs.next()){
      out.write("\n");
      out.write("            <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td> ");
 out.println(rs.getString("product id")); 
      out.write("</td>\n");
      out.write("                            <td> ");
 out.println(rs.getString("product")); 
      out.write("</td>\n");
      out.write("                            <td> ");
 out.println(rs.getString("company")); 
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("            </tbody>\n");
      out.write("     \n");
      out.write("       \n");
      out.write("\n");
      out.write("        ");
}
      out.write("\n");
      out.write("\n");
      out.write("      </table>\n");
      out.write("        ");
}
    else{
        out.println("<h5>" + "Sorry no company names matched" + "</h5>");
    }
    
      out.write("\n");
      out.write("  </div>\n");
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
