<%@page language="java" import="java.sql.*, java.io.*" 
contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
<title>Контакты</title>
<%
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("UTF-8");
if(session.getAttribute("username")==null)
{
    String site = new String("autoriz.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
}%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description" content="Place your description here" />
<meta name="keywords" content="put, your, keyword, here" />
<meta name="author" content="Templates.com - website templates provider" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 7]>
   <link href="style_ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body id="page5">
<div class="tail-top-right"></div>
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <!-- header -->
      <div id="header">
        
        <ul class="list">
          <li><a href="../index.jsp"><img src="../images/icon1.gif" alt="" /></a></li>
          <li><a href="contact.jsp"><img src="../images/icon2.gif" alt="" /></a></li>
          <li><a href="nav.jsp"><img src="../images/icon3.gif" alt="" /></a></li>
        </ul>
          <ul class="list5">
          <li><%out.print(session.getAttribute("username"));%></li>
          <li><%out.print("<a href='exit.jsp' style='color: #000000; text-decoration:none;'>&nbsp;&nbsp;&nbsp;(Выход)</a>");%></li>
          </ul>
        <ul class="site-nav">
          <li><a href="../index.jsp">Главная</a></li>
          <li><a href="lection/lection.jsp">Лекции</a></li>
		  <li><a href="practica/pract.jsp"><center>Практикум</center></a></li>
          <li class="last"><a href="test/test.jsp"><center>Контроль знаний</center></a></li>
         
        </ul>
       
      </div>
      <!-- content -->
      <div id="content">
        <h3>Контакты</h3>
		<h4 style="text-transform: none; font-size:18px;"><i>Кафедра прикладной математики и информатики</i></h4> 
		<p style="font-size:16px; text-indent:30px;"><i>Расположение:</i> каб. 224 корп. "Е" МарГУ</p>
        <p style="font-size:16px; text-indent:30px;"><i>Телефон:</i> (8362) 68-79-56 (внутренний номер 1694)</p>
		<p style="font-size:16px; text-indent:30px;"><i>Адрес:</i> 424002, г. Йошкар-Ола, ул. Машиностроителей, д. 15</p><br><br>
		
		
		<h4 style="text-transform: none; font-size:18px;">Вы можете отправить нам сообщение</h4>
		 <p style="font-size: 16px; text-indent:30px; margin-top:10px; padding-bottom:20px;"><i>Введите Ваши  данные:</i></p>
		
		
		<form id="contacts-form" action="contact.jsp" method="POST" name='form'>	 
          <fieldset>
          <div class="field">
            <label style="font-size:16px; text-indent:30px;">Фамилия Имя:</label>
            <input type="text" value="" name="fio"/>
          </div>
		   <div class="field">
            <label style="font-size:16px; text-indent:30px;">Группа:</label>
            <input type="text" value="" name="grup"/>
          </div>
          <div class="field">
            <label style="font-size:16px; text-indent:30px;">E-mail:</label>
            <input type="text" value="" name="mail"/>
          </div>
          
          <div class="field">
            <label style="font-size:16px; text-indent:30px;">Сообщение:</label>
            <textarea cols="1" rows="1" name="message"></textarea>
          </div>
		  
          <div class="wrapper">
              <button type="submit" class="but3" name="Sun" onClick="">Отправить</button><br><br>
		  </div>
		 
          </fieldset>
        </form>
	
              
   
       
      
       <div id="footer">
        <div class="indent">
          <div><center>&copy; Кафедра прикладной математики и информатики, 2015</center></div>
          
        </div>
      </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
