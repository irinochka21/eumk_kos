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
		
		<center><h3>ЛАБОРАТОРНАЯ РАБОТА №3</h3></center>
		<h4 style="font-size:20px; text-transform:none;"><center>Разработка графа структуры учебного материала КСО</center></h4>

		<p><b>Цель:</b> составить граф полной или локальной структуры КСО и сформировать матрицу логической структуры материала, указав все взаимосвязи.</p><br>
			
		<ol>
			<li class="li">1. Создайте документ Word с названием <b>lab3_фио</b>.
			<li class="li">2. Напишите полное название разрабатываемого КСО.
			<li class="li">3. Представьте иерархическую структуру учебного материала КСО. 
		</ol> 
		
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;">Понятие <i>структуры</i> относится к числу общенаучных категорий. Значение понятия «структура» определяется как «строение и внутренняя форма организации системы, выступающая как единство устойчивых взаимосвязей между ее элементами, а также законов данных взаимосвязей». Элементы системы образуют структуру лишь в том случае, если эти элементы не просто механически объединены, а связаны между собой так, что взаимно влияют друг на друга, причем это влияние достаточно существенно.</b></p>
				<p style="text-indent:30px;">Под <i>структурированностью</i> понимают степень осмысления и выявления основных закономерностей и принципов, действующих в данной предметной области.</p>
			</td>
		</tr>
		</table><br>
		
		<ol>
			<li class="li">4. Составьте граф полной или локальной структуры КСО.					
		</ol>
			
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;">Наиболее удобной формой анализа логической структуры является ее представление в виде графа, как правило, ориентированного, у которого вершинами служат разделы курса, а ребра указывают на их взаимосвязь.</p>	
				<p style="text-indent:30px;">При анализе курса различают его полную и локальную структуры. </p>
				<p style="text-indent:30px;"><b><i>Полная структура</i></b> представляет курс в целом. Соответствующий ей граф содержит все разделы, входящие в данную учебную дисциплину, и отражает их взаимосвязь. </p>	
				<p style="text-indent:30px;">В <b><i>локальной структуре</i></b> рассматриваются фрагменты одного или нескольких разделов. Вершинами графа локальной структуры служат обучающие кадры, а дуги определяют последовательность их изучения. Ребрам можно приписывать некоторые числа (веса), характеризующие определенные параметры структуры, например, объемы информации, содержащиеся в разделах или кадрах, время, необходимое для изучения, и др.</p>	
				<p style="text-indent:30px;">В первую очередь желательно составлять граф полной структуры, а затем разработать графы локальных структур. </p>	
			</td>
		</tr>
		</table><br>
		
		
		<center><img src="../img/pict 3.png" style="border: 1px solid #8f3900;"></center>
		<center><p style="font-size: 12px;">Рис. 1. Пример графа локальной структуры учебного материала по разделу</p></center>		
		<center><p style="font-size: 12px;">«Проектирование компьютерных средств обучения»</p></center>	<br>			
		
		<ol>
		<li class="li">5. Сформируйте матрицу логической структуры учебного материала, укажите все взаимосвязи.		
		</ol>
		
		<center><img src="../img/pict 4.png" style="border: 1px solid #8f3900;"></center>
		<center><p style="font-size: 12px;">Рис. 2. Пример матрицы логической структуры учебного материала по разделу</p></center>		
		<center><p style="font-size: 12px;">«Проектирование компьютерных средств обучения»</p></center>				
		
		  
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
