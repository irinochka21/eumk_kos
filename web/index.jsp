<%@page language="java" import="java.sql.*, java.io.*" 
contentType="text/html" pageEncoding="UTF-8"%>
<%
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("UTF-8");
if(session.getAttribute("username")==null)
{
    String site = new String("material/autoriz.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
}%>

<head>
<title>Главная страница</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="description" content="Place your description here" />
<meta name="keywords" content="put, your, keyword, here" />
<meta name="author" content="Templates.com - website templates provider" />
<link href="material/css/style.css" rel="stylesheet" type="text/css" />
<link href="material/css/layout.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 7]>
   <link href="material/style_ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body id="page1">
<div class="tail-top-right"></div>
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <!-- header -->
      <div id="header">
        
        <ul class="list">
          <li><a href="index.jsp"><img src="images/icon1.gif" alt="" /></a></li>
          <li><a href="material/contact.jsp"><img src="images/icon2.gif" alt="" /></a></li>
          <li><a href="material/nav.jsp"><img src="images/icon3.gif" alt="" /></a></li>
          
        </ul>
          <ul class="list5">
          <li><%out.print(session.getAttribute("username"));%></li>
          <li><%out.print("<a href='material/exit.jsp' style='color: #000000; text-decoration:none;'>&nbsp;&nbsp;&nbsp;(Выход)</a>");%></li>
          </ul>
        <ul class="site-nav">
          <li><a href="index.jsp">Главная</a></li>
          <li><a href="material/lection/lection.jsp">Лекции</a></li>
		  <li><a href="material/practica/pract.jsp"><center>Практикум</center></a></li>
          <li class="last"><a href="material/test/test.jsp"><center>Контроль знаний</center></a></li>
         
        </ul>
       
      </div>
      <!-- content -->
      <div id="content">
        <div class="wrapper">
          <div class="col-1">
            <br><br>
            <ul class="list1 p2">
              <li><img src="images/lection1.jpg"><br>
                <h4><a href="material/lection/lection.jsp" style="color: #d45500">Лекции</a></h4>
                <p class="zoom">Полный курс лекций в виде мультимедиа-презентаций, конспектов</p>
              </li><br><br>
			  <li><img src="images/metod.png"><br>
                <h4><a href="material/metod/metod.jsp" style="color: #d45500">Методические рекомендации</a></h4>      
			   <p class="zoom">Описание курса, рекомендации и инструкции</p>
              </li>              
            </ul>
           </div>
		   
          <div class="col-2">
            <br><br>
            <ul class="list1 p2">
			<li><img src="images/0005.jpg"><br>
                <h4><a href="material/practica/pract.jsp" style="color: #d45500">Практикум</a></h4>
                <p class="zoom">Подробное описание выполнения комплекса практических работ</p>
              </li><br><br>
              <li><img src="images/slov.jpg"><br>
                <h4><a href="material/glossary/slov.jsp" style="color: #d45500"><b>Глоссарий</b></a></h4>
                <p class="zoom">Словарь терминов и определений по всему курсу</p>
              </li>
            </ul>			
			</div>
			
          <div class="col-3">
         <br><br>
            <ul class="list1 p2">
			<li><img src="images/kz.jpg"><br>
                <h4><a href="material/test/test.jsp" style="color: #d45500"><b>Контроль знаний</b></a></h4>
                <p class="zoom">Комплекс тестовых заданий для контроля и оценки знаний</p>
              </li><br><br>
              <li><img src="images/info.png"><br>
                <h4><a href="material/info/info.jsp" style="color: #d45500">Полезная информация</a></h4>
                <p class="zoom">Список литературы и источников, полезные ссылки</p>
              </li>
            </ul>			

		 </div>
        </div>
      </div>
	  
<br><br>
	  
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
