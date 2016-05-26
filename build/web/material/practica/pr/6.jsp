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
    String site = new String("../../autoriz.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
}%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description" content="Place your description here" />
<meta name="keywords" content="put, your, keyword, here" />
<meta name="author" content="Templates.com - website templates provider" />
<link href="../../css/style.css" rel="stylesheet" type="text/css" />
<link href="../../css/layout.css" rel="stylesheet" type="text/css" />

	<style>
		ol
		{
			font-size: 16px;
			margin-left: 50px;
			padding:0; 
			list-style:none; 
			
		}
		.li
		{
			
			line-height: 35px;
		}
		p
		{
			font-size: 16px;
			text-indent:50px;
		}
		
		table
		{
			cellspacing:0;
			border: 1px #8f3900 solid;
			padding:10px;
			background: #fff8f4;
			width: 880px;
			margin: auto;
		}		
		td 
		{ 
			border: 0px white solid;
			text-indent:50px;
		}
		h4 a 
		{ 
		color: #b64900;
		text-decoration:none;
		}
		h4 a:hover { text-decoration:underline;}
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
          <li><a href="../../../index.jsp"><img src="../../../images/icon1.gif" alt="" /></a></li>
          <li><a href="../../contact.jsp"><img src="../../../images/icon2.gif" alt="" /></a></li>
          <li><a href="../../nav.jsp"><img src="../../../images/icon3.gif" alt="" /></a></li>
        </ul>
          <ul class="list5">
          <li><%out.print(session.getAttribute("username"));%></li>
          <li><%out.print("<a href='../../exit.jsp' style='color: #000000; text-decoration:none;'>&nbsp;&nbsp;&nbsp;(Выход)</a>");%></li>
          </ul>
        <ul class="site-nav">
          <li><a href="../../../index.jsp">Главная</a></li>
          <li><a href="../../lection/lection.jsp">Лекции</a></li>
		  <li><a href="../pract.jsp"><center>Практикум</center></a></li>
          <li class="last"><a href="../../test/test.jsp"><center>Контроль знаний</center></a></li>
         
        </ul>
        
      </div>
      <!-- content -->
      <div id="content">
		
		<center><h3>ЛАБОРАТОРНАЯ РАБОТА №6</h3></center>
		
		<p><b>Цель:</b> разработать лицензионное соглашение.</p><br>
			
		<ol>
			<li class="li">1. Создайте документ Word с названием <b>lab6_фио</b>.
			<li class="li">2. В данном ниже документе в местах <i><название КСО></i> и <i><наименование правообладателя></i> необходимо написать ваше полное название КСО и наименование правообладателя (университет, кафедра, лаборатория) на ваш программный продукт. 
		</ol> 
			
		<center><img src="../img/03.png"></center><br><br><br>
				
		<hr style="color: #ededed;"><br>
	<h4><a href="../img/license.docx" target="_blank" download="">Лицензионное соглашение</a><br></h4>
		  
      </div>
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
