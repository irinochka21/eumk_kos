<%@page language="java" import="java.sql.*, java.io.*" 
contentType="text/html" pageEncoding="UTF-8"%>

<html>
     <head>
        <title>Авторизация</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="description" content="Place your description here" />
        <meta name="keywords" content="put, your, keyword, here" />
        <meta name="author" content="Templates.com - website templates provider" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/layout.css" rel="stylesheet" type="text/css" />
    </head>
    <body id="page1">
        <div class="tail-top-right"></div>
        <div class="tail-top">
        <div class="tail-bottom">
        <div id="main">
            
<!-- header -->
      <div id="header">        
       
      </div>

<!-- content -->
      <div id="content">
        
        <ul class="list3 p2">
         <li>
              <center><h2>Авторизация</h2></center><br>
    
             	
 <%
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("UTF-8");
if(session.getAttribute("username")==null)
{
out.println(" <form id='autoriz' action='autoriz.jsp' method='POST' name='form'>"+
         " <fieldset>"+
         " <div class='field'>"+
         "   <label style='font-size:16px; text-indent:30px;'>Логин:</label>"+
           "  <input type='text' name='username' maxlength='20' class='contact_filed' value='Введите логин' onfocus=\"if(this.value == 'Введите логин') this.value = '';\" onblur=\"if(this.value=='') this.value='Введите логин';\" />"+
        
        "  </div>"+
        "  <div class='field'>"+
        "    <label style='font-size:16px; text-indent:30px;'>Пароль:</label>"+
        "  <input type='password' name='password' id='pas' maxlength='20' class='contact_filed' value='Введите пароль' onfocus=\"if(this.value == 'Введите пароль') this.value = '';\" onblur=\"if(this.value=='') this.value='Введите пароль';\"/>"+
        "  </div>"+
         "       </fieldset>"+
     
   " <fieldset>"+
   "  <div class='wrapper1'> "+       
   "      <button type='submit' class='but' style='width: 90px; height: 35px; margin-left: 100px;' name='sub'>Вход</button>"+
   "      <a href='registr.jsp'> <button class='but' type='button' style='width: 130px; height: 35px;'>Регистрация</button></a> "+       
   "  </div> "+
   " </fieldset>  "+           
        
      "      </form>");
}
else
{
    if(request.getParameter("exit") != null){
        session.setAttribute("username", null);
        out.println("<script> location.reload(); </script>");
    }
String site = new String("../index.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site);
}
%>
         
          
          
           <%
                 
String sName, sUser, sPass, user, pass, url,sql;
String idUser;
boolean flagLog, flagPass;
Connection conn;
Statement stmt;
ResultSet rs;
ResultSetMetaData rsm;
int colCount;
sName = null;
idUser = null;
sUser = null;
sPass = null;
flagLog = flagPass = false;
conn = null; //для установки соединения с БД
stmt = null; //для отправки инструкций SQL в базу данных
rs = null;/* содержит возвращенные значения (таблицу
данных) после выполнения SQL-команды */
rsm = null; /*содержит количество, типы и свойства 
столбцов из объекта ResultSet */
url = null; // адрес для соединения с БД
user = "root"; // имя пользователя БД
pass = ""; // пароль пользователя БД
colCount = 0; // количество столбцов в таблице БД

if(request.getParameter("sub") != null && session.getAttribute("username")==null){
//проверка введенных данных
try{
sUser=request.getParameter("username").toString().trim();
sPass=request.getParameter("password").toString().trim();

if (sUser != "") 
flagLog = true;
else 
out.println("<br> Введите имя пользователя");
if(sPass!= "")
flagPass = true;
else 
out.println("<br> Введите пароль");
}
catch(Exception e){ 
out.println(e.toString()); 
}

//Вставка в БД корректных данных
if (flagLog && flagPass){    
 try {
Class.forName("com.mysql.jdbc.Driver");
url = "jdbc:mysql://localhost/students";
conn=DriverManager.getConnection(url, user, pass);
stmt = conn.createStatement();
rs = stmt.executeQuery("select * from registr WHERE login = '"+sUser+"' AND password = '"+sPass+"'");
int i=0;
while(rs.next()){
    i++;
    try{
    sName=rs.getString(3);
    idUser=rs.getString(1);
    }
    catch(Exception e)
    {
    
    }
}

     if(i==0)
     {
     out.println("<font color = red>Такой пользователь не зарегистрирован </font>" );
     }
     else{     
         
    out.println(sName);
    session.setAttribute("username",sName);
    session.setAttribute("idUser", idUser);
    out.println("<script> location.reload(); </script>");
 }
 
 }
 catch(Exception ex){
 out.println("<script>alert('Ошибка при работе с БД'); </script> <br>  <br>"
+ ex.toString());
 }
 
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
