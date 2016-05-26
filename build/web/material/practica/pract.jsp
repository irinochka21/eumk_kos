<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Лабораторные работы</title>
<%
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("UTF-8");
if(session.getAttribute("username")==null)
{
    String site = new String("../autoriz.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
}%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description" content="Place your description here" />
<meta name="keywords" content="put, your, keyword, here" />
<meta name="author" content="Templates.com - website templates provider" />
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/layout.css" rel="stylesheet" type="text/css" />

	<style>
		p
		{
			font-size:16px;
			color: #b64900;
		}
		a
		{
			color: #b64900;
			text-decoration:none;
		}
	</style>
<!--[if lt IE 7]>
   <link href="style_ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body id="page4">
<div class="tail-top-right"></div>
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <!-- header -->
      <div id="header">
        
        <ul class="list">
          <li><a href="../../index.jsp"><img src="../../images/icon1.gif" alt="" /></a></li>
          <li><a href="../contact.jsp"><img src="../../images/icon2.gif" alt="" /></a></li>
          <li><a href="../nav.jsp"><img src="../../images/icon3.gif" alt="" /></a></li>
        </ul>
          <ul class="list5">
          <li><%out.print(session.getAttribute("username"));%></li>
          <li><%out.print("<a href='../exit.jsp' style='color: #000000; text-decoration:none;'>&nbsp;&nbsp;&nbsp;(Выход)</a>");%></li>
          </ul>
        <ul class="site-nav">
          <li><a href="../../index.jsp">Главная</a></li>
          <li><a href="../lection/lection.jsp">Лекции</a></li>
		  <li><a href="pract.jsp"><center>Практикум</center></a></li>
          <li class="last"><a href="../test/test.jsp"><center>Контроль знаний</center></a></li>
         
        </ul>
        
      </div>
      <!-- content -->
      <div id="content">
		<h3>Практикум</h3>
		<p><a href="pr/1.jsp">Лабораторная работа №1. Описание КСО</a></p>
		<p><a href="pr/2.jsp">Лабораторная работа №2. Техническое задание</a></p>
		<p><a href="pr/3.jsp">Лабораторная работа №3. Разработка графа структуры учебного материала КСО</p>
		<p><a href="pr/4.jsp">Лабораторная работа №4. Вычисление образовательной траектории по разделу дисциплины</a></p>
		<p><a href="pr/5.jsp">Лабораторная работа №5. Информационно-рекламный материал</a></p>
		<p><a href="pr/6.jsp">Лабораторная работа №6. Лицензионное соглашение</a></p>
		<p><a href="pr/7.jsp">Лабораторная работа №7. Эксплуатационная документация</a></p>
		<p><a href="pr/8.jsp">Лабораторная работа №8. Программа инсталляции и дистрибутив программного продукта</a></p>
	  
      </div><br><br><br><br><br><br><br><br><br>
      <!-- footer -->
      <div id="footer">
        <div class="indent">
          <div><center>&copy; Кафедра прикладной математики и информатики, 2015</center></div>
          
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
