package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class registr_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String sSurname, sName, sLastname, sGrup, sLogin, sPass, sPass1, user, pass, url, sql;
            boolean flagName, flagNumber;
            Connection conn;
            Statement stmt;
            ResultSet rs;
            ResultSetMetaData rsm;
            int colCount;
            
            
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
      out.write("        <head>\n");
      out.write("        <title>Регистрация</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <meta name=\"description\" content=\"Place your description here\" />\n");
      out.write("        <meta name=\"keywords\" content=\"put, your, keyword, here\" />\n");
      out.write("        <meta name=\"author\" content=\"Templates.com - website templates provider\" />\n");
      out.write("        <link href=\"material/style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"material/layout.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    </head>\n");
      out.write("    </head>\n");
      out.write("    <body id=\"page1\">\n");
      out.write("        ");
      out.write("\n");
      out.write("            ");

                sSurname=null;
                sName=null;
                sLastname=null;
                sGrup=null;
                sLogin=null;
                sPass=null; 
                sPass1=null;
                flagName=flagNumber=false;
                conn=null;
                stmt=null;
                rs=null;
                rsm=null;
                url=null;
                user="root";
                pass="";
                colCount=0;
               
                
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"tail-top-right\"></div>\n");
      out.write("        <div class=\"tail-top\">\n");
      out.write("        <div class=\"tail-bottom\">\n");
      out.write("        <div id=\"main\">\n");
      out.write("            \n");
      out.write("<!-- header -->\n");
      out.write("      <div id=\"header\">          \n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("<!-- content -->\n");
      out.write("      <div id=\"content\">\n");
      out.write("        \n");
      out.write("        <ul class=\"list4 p2\">\n");
      out.write("         <li>\n");
      out.write("              <center><h2>Регистрация</h2></center><br>\n");
      out.write("            <form id=\"registr\" action=\"index.html\" method=\"get\" name='form'>\t \n");
      out.write("          <fieldset>\n");
      out.write("          <div class=\"field\">\n");
      out.write("            <label style=\"font-size:16px; text-indent:20px;\">Фамилия:</label>\n");
      out.write("            <input type=\"text\" value=\"\" name=\"surname\"/>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"field\">\n");
      out.write("            <label style=\"font-size:16px; text-indent:20px;\">Имя:</label>\n");
      out.write("            <input type=\"text\" value=\"\" name=\"name\"/>\n");
      out.write("          </div>         \n");
      out.write("          <div class=\"field\">\n");
      out.write("            <label style=\"font-size:16px; text-indent:20px;\">Отчество:</label>\n");
      out.write("            <input type=\"text\" value=\"\" name=\"lastname\"/>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"field\">\n");
      out.write("            <label style=\"font-size:16px; text-indent:20px;\">Группа:</label>\n");
      out.write("            <input type=\"text\" value=\"\" name=\"grup\"/>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"field\">\n");
      out.write("            <label style=\"font-size:16px; text-indent:20px;\">Логин:</label>\n");
      out.write("            <input type=\"text\" value=\"\" name=\"login\"/>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"field\">\n");
      out.write("            <label style=\"font-size:16px; text-indent:20px;\">Пароль:</label>\n");
      out.write("            <input type=\"password\" value=\"\" name=\"password\"/>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"field\">\n");
      out.write("            <label style=\"font-size:16px; text-indent:20px;\">Подтвердите пароль:</label>\n");
      out.write("            <input type=\"password\" value=\"\" name=\"pass1\"/>\n");
      out.write("          </div>\n");
      out.write("                </fieldset>\n");
      out.write("     \n");
      out.write("    <fieldset>       \n");
      out.write("     <div class=\"wrapper2\">\n");
      out.write("         <button type=\"submit\" class=\"but1\" style=\"width: 200px; height: 40px;\" \n");
      out.write("                         name=\"Add\" onClick=\"\">Зарегистрироваться</button>       \n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <input type=\"submit\" value=\"Просмотр таблицы\" name=\"Table\">\n");
      out.write("     </div> \n");
      out.write("    </fieldset>             \n");
      out.write("        \n");
      out.write("            </form>\n");
      out.write("         </li>\n");
      out.write("        </ul>\n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("<!-- footer -->\n");
      out.write("      <div id=\"footer\">\n");
      out.write("        <div class=\"indent\">\n");
      out.write("                \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("               \n");
      out.write("                ");

                    response.setContentType("text/html; chrset=UTF-8");
                    request.setCharacterEncoding("UTF-8");
                    if (request.getParameter("Add") != null) {
                        try {
                            sSurname=request.getParameter("surname").toString().trim();
                            sName=request.getParameter("name").toString().trim();
                            sLastname=request.getParameter("lastname").toString().trim();
                            sGrup=request.getParameter("grup").toString().trim();
                            sLogin=request.getParameter("login").toString().trim();
                            sPass=request.getParameter("password").toString().trim();
                            sPass1=request.getParameter("pass1").toString().trim();
                           
                            if (sSurname != "")
                                flagName=true;
                            else
                                out.println("<br>Введите фамилию ");
                            if (sName != "")
                                flagName=true;
                            else
                                out.println("<br>Введите имя ");
                            if (sLastname != "")
                                flagNumber=true;
                            else
                                out.println("<br>Введите отчество ");
                            if (sGrup != "")
                                flagName=true;
                            else
                                out.println("<br>Введите группу ");
                            if (sLogin != "")
                                flagName=true;
                            else
                                out.println("<br>Введите логин ");
                            if (sPass != "")
                                flagName=true;
                            else
                                out.println("<br>Введите пароль ");
                            if (sPass1 != "")
                                flagName=true;
                            else
                                out.println("<br>Подтвердите пароль ");
                        }
                        catch (Exception e) {
                            out.println(e.toString());
                        }                    
                
      out.write("\n");
      out.write("                <br>\n");
      out.write("             ");

                    if (flagName && flagNumber) {
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            url="jdbc:mysql://localhost/students";
                            conn=DriverManager.getConnection(url, user, pass);
                            stmt=conn.createStatement();
                            sql="insert into registr (surname, name, lastname, grup, login, password) values ('"+sSurname+"', '"+sName+"', '"+sLastname+"', '"+sGrup+"', '"+sLogin+"', '"+sPass+"')";
                            stmt.execute(sql);
                            stmt.close();
                            conn.close();
                        }
                        catch (Exception ex) {
                            out.println("<br>Ошибка при работе с БД <br>"+ex.toString());
                        }
                        out.println("<br> Данные успешно добавлены");
                    }
             }
             
      out.write("\n");
      out.write("            ");

                    if (request.getParameter("Table") != null) {
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            url="jdbc:mysql://localhost/students";
                            conn=DriverManager.getConnection(url, user, pass);
                            stmt=conn.createStatement();
                            rs=stmt.executeQuery("select * from registr");
                            rsm=rs.getMetaData();
                            colCount=rsm.getColumnCount();
                            out.println("<table border='1'>");
                            out.println("<th> № </th>");
                            out.println("<th> Фамилия </th>");
                            out.println("<th> Имя </th>");
                            out.println("<th> Отчество </th>");
                            out.println("<th> Группа </th>");
                            out.println("<th> Логин </th>");
                            out.println("<th> Пароль </th>");
                            while (rs.next()) {
                                out.println("<tr>");
                                for (int i=1; i<=colCount; i++) {
                                    out.println("<td>"+rs.getString(i)+"</td>");                                    
                                }
                                out.println("</tr>");
                            }
                            out.println("</table>");
                            stmt.close();
                            conn.close();                            
                        }
                        catch (Exception ex) {
                            out.println("Ошибка при работе с БД <br>"+ex.toString());
                        }
                    }
            
      out.write(" \n");
      out.write("             \n");
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
