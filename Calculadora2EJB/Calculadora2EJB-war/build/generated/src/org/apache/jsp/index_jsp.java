package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Cálculo de áreas</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h2>Calculando áreas</h2>\n");
      out.write("        <form action=\"AreaServlet?area=circulo\" method=\"post\">\n");
      out.write("            <fieldset><!--Permite agrupar todo lo que metamos dentro. Lo convierte en un todo-->\n");
      out.write("                <legend>Área del círculo</legend>\n");
      out.write("                Radio: <input type=\"text\" name=\"radio\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.radio}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" />\n");
      out.write("                <input type=\"submit\" value=\"calcular\" />\n");
      out.write("            </fieldset>\n");
      out.write("        </form>\n");
      out.write("                \n");
      out.write("        <form action=\"AreaServlet?area=cuadrado\" method=\"post\">\n");
      out.write("            <fieldset>\n");
      out.write("                <legend>Área del cuadrado</legend>\n");
      out.write("                Lado: <input type=\"text\" name=\"lado\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.lado}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" />\n");
      out.write("                <input type=\"submit\" value=\"calcular\" />\n");
      out.write("            </fieldset>\n");
      out.write("        </form>\n");
      out.write("                \n");
      out.write("        <form action=\"AreaServlet?area=triangulo\" method=\"post\">\n");
      out.write("            <fieldset>\n");
      out.write("                <legend>Área del triangulo</legend>\n");
      out.write("                Base: <input type=\"text\" name=\"base\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.base}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" />\n");
      out.write("                Altura: <input type=\"text\" name=\"altura\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.altura}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" />\n");
      out.write("                <input type=\"submit\" value=\"calcular\" />\n");
      out.write("            </fieldset>\n");
      out.write("        </form>\n");
      out.write("                \n");
      out.write("        <form action=\"AreaServlet?area=trapecio\" method=\"post\">\n");
      out.write("            <fieldset>\n");
      out.write("                <legend>Área del trapecio</legend>\n");
      out.write("                Base1: <input type=\"text\" name=\"base1\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.base1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" />\n");
      out.write("                Base2: <input type=\"text\" name=\"base2\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.base2}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" />\n");
      out.write("                Altura: <input type=\"text\" name=\"altura\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.altura}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" />\n");
      out.write("                <input type=\"submit\" value=\"calcular\" />\n");
      out.write("            </fieldset>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
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
