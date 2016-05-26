<%@page contentType="text/jsp" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Контроль знаний</title>
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
	.style1
		{
			color: #b64900;;
			text-decoration:none;
			font-size: 16px;
		}
	p
		{		
			font-size: 16px;
			
		}
	
	</style>

<!--[if lt IE 7]>
   <link href="style_ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body id="page6">
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
		  <li><a href="../practica/pract.jsp"><center>Практикум</center></a></li>
          <li class="last"><a href="test.jsp"><center>Контроль знаний</center></a></li>
         
        </ul>
      </div>
      <!-- content -->
      <div id="content">
		
		<h3>Контроль знаний</h3><br>
		<p><a href="tests/01.jsp" class="style1">Тест №1. Введение в обучающие системы</a></p>
		<p><a href="tests/02.jsp" class="style1">Тест №2. Классификация компьютерных средств обучения</a></p>
		<p><a href="tests/03.jsp" class="style1">Тест №3. Категории разработчиков и пользователей КСО. Стадии и этапы разработки КСО</a></p>
		<p><a href="tests/04.jsp" class="style1">Тест №4. Дидактические принципы</a></p>
		<p><a href="tests/05.jsp" class="style1">Тест №5. Психолого-педагогические теории усвоения знаний</a></p>
		<p><a href="tests/06.jsp" class="style1">Тест №6. Целевые показатели проектирования</a></p>
		<p><a href="tests/07.jsp" class="style1">Тест №7. Интерактивная компьютерная графика</a></p>
		<p><a href="tests/08.jsp" class="style1">Тест №8. Структурированность учебного материала. Межпредметные связи</a></p>
		<p><a href="tests/09.jsp" class="style1">Тест №9. Оценка качества логической структуры учебного материала</a></p>
		<p><a href="tests/10.jsp" class="style1">Тест №10. Типизация учебно-тренировочных задач</a></p>
		<p><a href="tests/11.jsp" class="style1">Тест №11. Выбор инструментальных средств разработки</a></p>
		<p><a href="tests/12.jsp" class="style1">Тест №12. Организация автоматизированного контроля знаний</a></p>
		<p><a href="tests/13.jsp" class="style1">Тест №13. Сетевой график разработки</a></p>
		<p><a href="tests/14.jsp" class="style1">Тест №14. Подготовка программного продукта к распространению</a></p>
	  </div><br>
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
