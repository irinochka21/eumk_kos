<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Сайт ЭУМК</title>
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

<style>
a
	{
		color: #000000;
		text-decoration:none;
	}
	p
	{
		
		font-size: 15px;
		text-indent: 50px;
	}
	h4
	{
		 font-size: 17px;
	}
	.style1
		{
			color: #b64900;;
			text-decoration:none;
			font-size: 16px;
		}
</style>
	
	<!--[if lt IE 7]>
   <link href="style_ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body id="page2">
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
	  <h3>Навигация по сайту</h3><br>
	  
	  <h2><a href="../index.jsp" >Главная</a></h2><br>
	  <h2><a href="lection/lection.jsp" >Лекции</a></h2><br>
			  <h4 style="text-indent: 70px;"><a href="lection/lec/1.jsp" style="color: #b64900;">ВВЕДЕНИЕ</a></h4>
              <h4 style="text-indent: 70px;">1.<a href="lection/lec/2.jsp" style="color: #b64900;">ОСОБЕННОСТИ И ВОЗМОЖНОСТИ КОМПЬЮТЕРНЫХ СРЕДСТВ ОБУЧЕНИЯ</a></h4>
			  <p style="text-indent: 100px;">1.1. <a href="lection/lec/2.jsp">Классификация компьютерных средств обучения (КСО)</a></p>
			  <p style="text-indent: 100px;">1.2. <a href="lection/lec/3.jsp">Категории разработчиков и пользователей КСО, стадии разработки КСО</a></p>
			  <p style="text-indent: 100px;">1.3. <a href="lection/lec/11.jsp">Выбор инструментальных средств разработки</a></p>
			  <h4 style="text-indent: 70px;">2. <a href="lection/lec/4.jsp" style="color: #b64900;">ПРОЕКТИРОВАНИЕ КОМПЬЮТЕРНЫХ СРЕДСТВ ОБУЧЕНИЯ</a></h4>
			  <p style="text-indent: 100px;">2.1. <a href="lection/lec/4.jsp">Дидактические принципы построения КСО </a></p>
			  <p style="text-indent: 100px;">2.2. <a href="lection/lec/5.jsp">Психолого-педагогические теории усвоения знаний</a> </p>
			  <p style="text-indent: 100px;">2.3. <a href="lection/lec/6.jsp">Целевые показатели проектирования </a></p>
			  <p style="text-indent: 100px;">2.4. <a href="lection/lec/7.jsp">Интерактивная компьютерная графика </a></p>
			  <p style="text-indent: 100px;">2.5. Разработка информационно-логической структуры КСО</p>
				<p style="text-indent: 120px;">2.5.1. <a href="lection/lec/8.jsp">Структурированность учебного материала. Межпредметные связи</a></p>
				<p style="text-indent: 120px;">2.5.2. <a href="lection/lec/9.jsp">Оценка качества логической структуры учебного материала</a></p>
			  <p style="text-indent: 100px;">2.6. <a href="lection/lec/10.jsp">Типизация учебно-тренировочных задач </a></p>
			  <p style="text-indent: 100px;">2.7. <a href="lection/lec/11.jsp">Выбор форм представления учебного материала</a><p>
			  <p style="text-indent: 100px;">2.8. <a href="lection/lec/12.jsp">Организация автоматизированного контроля знаний</a></p>
			  <h4 style="text-indent: 70px;">3. <a href="lection/lec/13.jsp" style="color: #b64900;">ОРГАНИЗАЦИЯ ДЕЯТЕЛЬНОСТИ КОЛЛЕКТИВА РАЗРАБОТЧИКОВ КСО</a></h4>
			  <p style="text-indent: 100px;">3.1. <a href="lection/lec/13.jsp">Состав группы разработчиков, их роли</a></p>
			  <p style="text-indent: 100px;">3.2. <a href="lection/lec/13.jsp">Сетевой график разработки</a></p>
			  <p style="text-indent: 100px;">3.3. <a href="lection/lec/13.jsp">Расписание и координация работ</a></p>
			  <h4 style="text-indent: 70px;">4. <a href="lection/lec/14.jsp" style="color: #b64900;">ПОДГОТОВКА ПРОГРАММНОГО ПРОДУКТА К РАСПРОСТРАНЕНИЮ</a></h4>
			  <p style="text-indent: 100px;">4.1. <a href="lection/lec/14.jsp">Разработка эксплуатационной документации</p></a>
			  <p style="text-indent: 100px;">4.2. <a href="lection/lec/14.jsp">Создание демонстрационной версии и рекламных материалов</p></a>
			  <p style="text-indent: 100px;">4.3. <a href="lection/lec/14.jsp">Разработка лицензионного соглашения</p></a>
			  <p style="text-indent: 100px;">4.4. <a href="lection/lec/14.jsp">Правовые аспекты реализации КСО</p></a>
		<br>	  
	  <h2><a href="practica/pract.jsp" >Лабораторные работы</a></h2><br>
		<p style="text-indent: 70px;"><a href="practica/pr/1.jsp" class="style1">Лабораторная работа №1. Описание КСО</a></p>
		<p style="text-indent: 70px;"><a href="practica/pr/2.jsp" class="style1">Лабораторная работа №2. Техническое задание</a></p>
		<p style="text-indent: 70px;"><a href="practica/pr/3.jsp" class="style1">Лабораторная работа №3. Разработка графа структуры учебного материала КСО</p>
		<p style="text-indent: 70px;"><a href="practica/pr/4.jsp" class="style1">Лабораторная работа №4. Вычисление образовательной траектории по разделу дисциплины</a></p>
		<p style="text-indent: 70px;"><a href="practica/pr/5.jsp" class="style1">Лабораторная работа №5. Информационно-рекламный материал</a></p>
		<p style="text-indent: 70px;"><a href="practica/pr/6.jsp" class="style1">Лабораторная работа №6. Лицензионное соглашение</a></p>
		<p style="text-indent: 70px;"><a href="practica/pr/7.jsp" class="style1">Лабораторная работа №7. Эксплуатационная документация</a></p>
		<p style="text-indent: 70px;"><a href="practica/pr/8.jsp" class="style1">Лабораторная работа №8. Программа инсталляции и дистрибутив программного продукта</a></p><br>
	  <h2><a href="test/test.jsp" >Контроль знаний</a></h2><br>
		<p style="text-indent: 70px;"><a href="test/tests/01.jsp" class="style1">Тест №1. Введение в обучающие системы</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/02.jsp" class="style1">Тест №2. Классификация компьютерных средств обучения</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/03.jsp" class="style1">Тест №3. Категории разработчиков и пользователей КСО. Стадии и этапы разработки КСО</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/04.jsp" class="style1">Тест №4. Дидактические принципы</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/05.jsp" class="style1">Тест №5. Психолого-педагогические теории усвоения знаний</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/06.jsp" class="style1">Тест №6. Целевые показатели проектирования</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/07.jsp" class="style1">Тест №7. Интерактивная компьютерная графика</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/08.jsp" class="style1">Тест №8. Структурированность учебного материала. Межпредметные связи</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/09.jsp" class="style1">Тест №9. Оценка качества логической структуры учебного материала</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/10.jsp" class="style1">Тест №10. Типизация учебно-тренировочных задач</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/11.jsp" class="style1">Тест №11. Выбор инструментальных средств разработки</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/12.jsp" class="style1">Тест №12. Организация автоматизированного контроля знаний</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/13.jsp" class="style1">Тест №13. Сетевой график разработки</a></p>
		<p style="text-indent: 70px;"><a href="test/tests/14.jsp" class="style1">Тест №14. Подготовка программного продукта к распространению</a></p><br>
	  <h2><a href="metod/metod.jsp">Методические рекомендации и руководство</a></h2><br>
	  <h2><a href="glossary/slov.jsp">Глоссарий</a></h2><br>
	  <h2><a href="info/info.jsp">Полезная информация</a></h2><br>
	  <h2><a href="contact.jsp">Контакты</a></h2><br>
	  <h2><a href="nav.jsp">Навигация по ЭУМК</a></h2><br>
	           
	  </div>
	  
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
