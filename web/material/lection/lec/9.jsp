<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Лекции</title>
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
	.img1
	{
		border: 3px solid #ff7800;
		padding: 3px;
	}
	a{color: #b64900; font-weight: bold;}
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
          <li><a href="../lection.jsp">Лекции</a></li>
		  <li><a href="../../practica/pract.jsp"><center>Практикум</center></a></li>
          <li class="last"><a href="../../test/test.jsp"><center>Контроль знаний</center></a></li>
        </ul>
        
      </div>
      <!-- content -->
      <div id="content">
        
		<h2 style="font-size: 26px;"><center><b>Оценка качества логической структуры учебного материала</b></center></h2><br><br>
		<h2>Цели занятия:</h2><br>
		<p style="font-size: 18px;">1. Определить количество и состав связей между учебными элементами</p>
		<p style="font-size: 18px;">2. Рассмотреть методы оценки качества логической структуры учебного материала</p>
		<p style="font-size: 18px;">3. Привести способы вычисления квазиминоров</p>
		<p style="font-size: 18px;">4. Определить значимость учебных элементов в структуре курса</p>
		<p style="font-size: 18px;">5. Рассмотреть методы вычисления рангов</p><br>
		
		<center><a href="../download/pdf/Лекция 9.pdf" target="_blank"><img src="../img/09.png" width="420" height="320"  class="img1"></a></center><br>
				
			<center><a href="../download/ppt/Лекция 9.ppt"><i>Презентация лекции</a> (ppt, 1.93 Мб)
			<a href="../download/doc/Лекция 9.pdf">Конспект лекции</a> (pdf, 469 Кб)</i></center>
				
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
