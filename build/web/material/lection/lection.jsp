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
	.img1
	{
		border: 2px solid #ff7800;
		padding: 3px;
		
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
          <li><a href="lection.jsp">Лекции</a></li>
		  <li><a href="../practica/pract.jsp"><center>Практикум</center></a></li>
          <li class="last"><a href="../test/test.jsp"><center>Контроль знаний</center></a></li>
         
        </ul>
        
      </div>
      <!-- content -->
      <div id="content">
		
		
            <h3>Лекции</h3>
			<table width="925">
		<tr><td>
			  <h4><a href="lec/1.jsp" style="color: #b64900;">ВВЕДЕНИЕ</a></h4>
              <h4>1.<a href="lec/2.jsp" style="color: #b64900;">ОСОБЕННОСТИ И ВОЗМОЖНОСТИ КОМПЬЮТЕРНЫХ СРЕДСТВ ОБУЧЕНИЯ</a></h4>
			  <p>1.1. <a href="lec/2.jsp">Классификация компьютерных средств обучения (КСО)</a></p>
			  <p>1.2. <a href="lec/3.jsp">Категории разработчиков и пользователей КСО, стадии разработки КСО</a></p>
			  <p>1.3. <a href="lec/11.jsp">Выбор инструментальных средств разработки</a></p>
			  <h4>2. <a href="lec/4.jsp" style="color: #b64900;">ПРОЕКТИРОВАНИЕ КОМПЬЮТЕРНЫХ СРЕДСТВ ОБУЧЕНИЯ</a></h4>
			  <p>2.1. <a href="lec/4.jsp">Дидактические принципы построения КСО </a></p>
			  <p>2.2. <a href="lec/5.jsp">Психолого-педагогические теории усвоения знаний</a> </p>
			  <p>2.3. <a href="lec/6.jsp">Целевые показатели проектирования </a></p>
			  <p>2.4. <a href="lec/7.jsp">Интерактивная компьютерная графика </a></p>
			  <p>2.5. Разработка информационно-логической структуры КСО</p>
				<p style="text-indent: 80px;">2.5.1. <a href="lec/8.jsp">Структурированность учебного материала. Межпредметные связи</a></p>
				<p style="text-indent: 80px;">2.5.2. <a href="lec/9.jsp">Оценка качества логической структуры учебного материала</a></p>
			  <p>2.6. <a href="lec/10.jsp">Типизация учебно-тренировочных задач </a></p>
			  <p>2.7. <a href="lec/11.jsp">Выбор форм представления учебного материала</a><p>
			  <p>2.8. <a href="lec/12.jsp">Организация автоматизированного контроля знаний</a></p>
			  <h4>3. <a href="lec/13.jsp" style="color: #b64900;">ОРГАНИЗАЦИЯ ДЕЯТЕЛЬНОСТИ КОЛЛЕКТИВА РАЗРАБОТЧИКОВ КСО</a></h4>
			  <p>3.1. <a href="lec/13.jsp">Состав группы разработчиков, их роли</a></p>
			  <p>3.2. <a href="lec/13.jsp">Сетевой график разработки</a></p>
			  <p>3.3. <a href="lec/13.jsp">Расписание и координация работ</a></p>
			  <h4>4. <a href="lec/14.jsp" style="color: #b64900;">ПОДГОТОВКА ПРОГРАММНОГО ПРОДУКТА К РАСПРОСТРАНЕНИЮ</a></h4>
			  <p>4.1. <a href="lec/14.jsp">Разработка эксплуатационной документации</p></a>
			  <p>4.2. <a href="lec/14.jsp">Создание демонстрационной версии и рекламных материалов</p></a>
			  <p>4.3. <a href="lec/14.jsp">Разработка лицензионного соглашения</p></a>
			  <p>4.4. <a href="lec/14.jsp">Правовые аспекты реализации КСО</p></a>
		</td>
			<td>
<img src="img/a01 1.png" class="img1" style="margin-bottom:10px; margin-left:70px;"><br>
<img src="img/a02 1.png" class="img1" style="margin-bottom:10px; margin-right:70px;"><br>
<img src="img/a03 1.png" class="img1" style="margin-bottom:10px; margin-left:70px;"><br>
<img src="img/a04.png"  class="img1" style="margin-bottom:10px; margin-right:70px;"><br>
<img src="img/a01 2.png" class="img1" style="margin-left:70px;"><br>
			</td></tr>
			
		</table>

			
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
