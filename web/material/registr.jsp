<%@page language="java" import="java.sql.*, java.io.*" 
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Регистрация</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="description" content="Place your description here" />
        <meta name="keywords" content="put, your, keyword, here" />
        <meta name="author" content="Templates.com - website templates provider" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/layout.css" rel="stylesheet" type="text/css" />
    
    </head>
    <body id="page1">
        <%!
            String sSurname, sName, sLastname, sGrup, sLogin, sPass, user, pass, url, sql;
            boolean flagName, flagSurname, flagLastname, flagGrup, flagLogin, flagPass;
            Connection conn;
            Statement stmt;
            ResultSet rs;
            ResultSetMetaData rsm;
            int colCount;
            
            %>
            <%
                sSurname=null;
                sName=null;
                sLastname=null;
                sGrup=null;
                sLogin=null;
                sPass=null; 
                
                flagName=flagSurname=flagLastname=flagGrup=flagLogin=flagPass=false;
                conn=null;
                stmt=null;
                rs=null;
                rsm=null;
                url=null;
                user="root";
                pass="";
                colCount=0;
               
                %>

        <div class="tail-top-right"></div>
        <div class="tail-top">
        <div class="tail-bottom">
        <div id="main">
            
<!-- header -->
      <div id="header">          
      </div>

<!-- content -->
      <div id="content">
        
        <ul class="list4 p2">
         <li>
              <center><h2>Регистрация</h2></center><br>
             <script>
                 
</script>      
              
   <%
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("UTF-8");
            if(request.getParameter("Add") == null){
               out.println("<form action='registr.jsp' method='post' id='registr'>	"+
          "<fieldset>"+
         " <div class='field'>"+
           " <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Фамилия:</label>"+
            "<input type='text' value='' name='surname'/>"+
         " </div>"+
         " <div class='field'>"+
          "  <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Имя:</label>"+
          "  <input type='text' value='' name='name'/>"+
         " </div>    "+     
         " <div class='field'>"+
         "   <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Отчество:</label>"+
         "   <input type='text' value='' name='lastname'/>"+
         " </div>"+
         " <div class='field'>"+
          "  <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Группа:</label>"+
          "  <input type='text' value='' name='grup'/>"+
         " </div>"+
         " <div class='field'>"+
         "   <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Логин:</label>"+
         "   <input type='text' value='' name='login'/>"+
         " </div>"+
         " <div class='field'>"+
         "   <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Пароль:</label>"+
         "   <input type='password' value='' name='password'/>"+
         " </div>"+
          
          "      </fieldset>"+
     
    "<fieldset>      "+ 
    " <div class='wrapper2'>"+
    "     <button type='submit' class='but1' style='width: 200px; height: 40px;' name='Add' id='Add'>Зарегистрироваться</button> "+      
    " </div> "+
    "</fieldset>   "+          
        
            "</form>"); 
            
            
            }
            
            %>           
              
            <%
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
                            
                           
                           if (!sSurname.isEmpty()&&!sName.isEmpty()&&!sLastname.isEmpty()&&!sGrup.isEmpty()&&!sLogin.isEmpty()&&!sPass.isEmpty())
                             flagName=flagSurname=flagLastname=flagGrup=flagLogin=flagPass=true; 
                            else
                              out.println("<font color='red' size=3>Вы ввели не все данные!</font><br><br>"); 
                           
                            
                        }
                        catch (Exception e) {
                            out.println(e.toString());
                        }                    
          
                    if (flagName && flagSurname && flagLastname && flagGrup && flagLogin && flagPass) {
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            url="jdbc:mysql://localhost/students";
                            conn=DriverManager.getConnection(url, user, pass);
                            stmt=conn.createStatement();
                            
rs = stmt.executeQuery("select * from registr WHERE login = '"+sLogin+"'");
int i=0;
while(rs.next()){
    i++;
}

     if(i!=0)
     {
     out.println("<font color='red' size=3>Такой пользователь уже зарегистрирован!</font><br><br>");
     out.println("<form action='registr.jsp' method='post' id='registr'>	"+
          "<fieldset>"+
         " <div class='field'>"+
           " <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Фамилия:</label>"+
            "<input type='text' value='' name='surname'/>"+
         " </div>"+
         " <div class='field'>"+
          "  <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Имя:</label>"+
          "  <input type='text' value='' name='name'/>"+
         " </div>    "+     
         " <div class='field'>"+
         "   <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Отчество:</label>"+
         "   <input type='text' value='' name='lastname'/>"+
         " </div>"+
         " <div class='field'>"+
          "  <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Группа:</label>"+
          "  <input type='text' value='' name='grup'/>"+
         " </div>"+
         " <div class='field'>"+
         "   <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Логин:</label>"+
         "   <input type='text' value='' name='login'/>"+
         " </div>"+
         " <div class='field'>"+
         "   <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Пароль:</label>"+
         "   <input type='password' value='' name='password'/>"+
         " </div>"+
          
          "      </fieldset>"+
     
    "<fieldset>      "+ 
    " <div class='wrapper2'>"+
    "     <button type='submit' class='but1' style='width: 200px; height: 40px;' name='Add' id='Add'>Зарегистрироваться</button> "+      
    " </div> "+
    "</fieldset>   "+          
        
            "</form>");
     }
     else{     
Class.forName("com.mysql.jdbc.Driver");
url = "jdbc:mysql://localhost/students";
conn =DriverManager.getConnection(url,user, pass);
stmt = conn.createStatement();
                            
                            sql="insert into registr (surname, name, lastname, grup, login, password) values ('"+sSurname+"', '"+sName+"', '"+sLastname+"', '"+sGrup+"', '"+sLogin+"', '"+sPass+"')";
                            stmt.execute(sql);
                            stmt.close();
                            conn.close();
out.print("<p align=center><font size=3> Вы успешно зарегистрировались <br> Желаете узнать свой начальный уровень подготовки? <br> </font>"
        + "<a href=n_test.jsp> <button type='button' class='but5' name='Add' id='Add' style='margin-left: 50px;'>Да</button></a> <a href=../index.jsp> <button type='button' class='but5'  name='Add' id='Add'>Нет</button></a> ");


session.setAttribute("idLog", sLogin);
     }
                        }
                        catch (Exception ex) {
                            out.println("<br>Ошибка при работе с БД <br>"+ex.toString());
                        }
                        
                    }
                    else{
                    out.println("<form action='registr.jsp' method='post' id='registr'>	"+
          "<fieldset>"+
         " <div class='field'>"+
           " <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Фамилия:</label>"+
            "<input type='text' value='' name='surname'/>"+
         " </div>"+
         " <div class='field'>"+
          "  <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Имя:</label>"+
          "  <input type='text' value='' name='name'/>"+
         " </div>    "+     
         " <div class='field'>"+
         "   <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Отчество:</label>"+
         "   <input type='text' value='' name='lastname'/>"+
         " </div>"+
         " <div class='field'>"+
          "  <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Группа:</label>"+
          "  <input type='text' value='' name='grup'/>"+
         " </div>"+
         " <div class='field'>"+
         "   <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Логин:</label>"+
         "   <input type='text' value='' name='login'/>"+
         " </div>"+
         " <div class='field'>"+
         "   <label style='font-size:16px; text-indent:20px;'><font color='red'>*</font> Пароль:</label>"+
         "   <input type='password' value='' name='password'/>"+
         " </div>"+
          
          "      </fieldset>"+
     
    "<fieldset>      "+ 
    " <div class='wrapper2'>"+
    "     <button type='submit' class='but1' style='width: 200px; height: 40px;' name='Add' id='Add'>Зарегистрироваться</button> "+      
    " </div> "+
    "</fieldset>   "+          
        
            "</form>"); 
            
                    }
                    
             }
             %>
         </li>
        </ul>
          
      </div>
      
<!-- footer -->
      <div id="footer">
        <div class="indent">
                
        </div>
      </div>
        </div>
        </div>
        </div>
               
                
            
             
    </body>
</html>
