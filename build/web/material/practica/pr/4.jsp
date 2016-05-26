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
		.colortext
		{
			color: #e46c0a;
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
		
		<center><h3>ЛАБОРАТОРНО-ПРАКТИЧЕСКАЯ РАБОТА №4</h3></center>
		<!--<h4 style="font-size:20px; text-transform:none;"><center>Разработка графа структуры учебного материала КСО</center></h4>-->
		<p><b>Цель:</b> вычислить все образовательные траектории по разделу дисциплины.</p><br>
			
		<ol>
			<li class="li">1. Создайте документ Word с названием <b>lab4_фио</b>.
			<li class="li">2. Напишите полное название разрабатываемого КСО.
			<li class="li">3. Составьте граф локальной структуры учебного раздела КСО.
			<center><img src="../img/pict 5.png" style="border: 1px solid #8f3900;" width="350px" height="200px"></center>
			<center><p style="font-size: 12px;">Рис. 1. Пример графа локальной структуры</p></center>
		
			<li class="li">4. Постройте матрицу смежности.
			<center><img src="../img/matr1.png" style="border: 1px solid #8f3900;"></center>
			<center><p style="font-size: 12px;">Рис. 2. Пример матрицы смежности</p></center>
			
			<li class="li">5. Вычислите все пути (траектории) изучения предмета.
		</ol>
		
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;">Для вычисления путей изучения предмета необходимо вычислить <b><i>квазиминор</i></b>.</p>	
				<p style="text-indent:30px;">Квазиминором элемента a<sub>kl</sub> матрицы <img src="../img/matr 05.png" style="margin-top:-5px;"> называют определитель особого рода (беззнаковый определитель) матрицы, получаемой из матрицы путем вычеркивания k-го столбца и l-й строки. </p>
			</td>
		</tr>
		</table><br>
		  
		<ol>
			<li class="li">Разберем на примере: в исходной матрице смежности вычеркнем <span class="colortext"><b>1-й</b></span> столбец (начало пути) и <span class="colortext"><b>6-ю</b></span> строку (конец пути):
			<center><img src="../img/matr1(2).png" style="border: 1px solid #8f3900;"></center>
			<li class="li">В новой матрице остальные элементы останутся без изменений:
			<center><img src="../img/matr2.png" style="border: 1px solid #8f3900;"></center>
		</ol>	<br><br>	
		
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;">При вычислении квазиминора необходимо помнить:</p>
				<p style="text-indent:30px;">– начать разложение с вершины, откуда начинается путь, и переходить к  той вершине, которая соединена ребрами с исходной вершиной;</p>
				<p style="text-indent:30px;">– величина <i>q<sub>ij</sub>=</i>1, при <i>i=j</i>.	</p>
				<p style="text-indent:30px;">Квазиминор <img src="../img/matr 06.png" style="margin-top:-5px;"> при <i>k &#8800; l</i> может быть вычислен с помощью выражения</p>
				<center><img src="../img/matr 07.png"></center><br>
				<p style="text-indent:30px;">где <i>a<sub>pq</sub> , q = </i>1(1)n<i>, q &#8800; k</i> – элементы <i>p-й</i> строки матрицы <img src="../img/matr 08.png" style="margin-top:-5px;"> за исключением элемента <i>a<sub>pq</sub> , p</i>[1(1)n]<i>, q &#8800; l</i>;</p>
				<center><img src="../img/matr 09.png"></center><br>
				<p style="text-indent:30px;">Сущность рассматриваемого способа определения всех элементарных путей в графе состоит в том, что на основе матрицы смежности вершин графа строится матрица непосредственных путей, а по ней с помощью алгебры квазиминоров находится полная матрица путей.</p>
			</td>
		</tr>
		</table><br>
		
		<center><img src="../img/matr3.png" ></center>
		<center><img src="../img/matr4.png" ></center>
		<center><img src="../img/matr5.png" ></center>
		<center><img src="../img/matr6.png" ></center>
		<center><img src="../img/matr7.png" ></center>
		
		<ol>
			<li class="li">Полученное выражение показывает, что из вершины 1 в вершину 6 существует 4 траектории:		
		</ol>	
		
		<table style="border: 1px white solid; background: white;">
		<tr>
			<td style="padding-left: 110px;"><p><b>1-2-3-4-5-6</p></td>
			<td style="padding-left: 120px;"><p><b>1-2-3-6</p></td>
		</tr>
		<tr>
			<td><img src="../img/matr 01.png" width="310px" height="190px"></td>
			<td><img src="../img/matr 02.png" width="310px" height="190px"></td>
		</tr>
		<tr>
			<td style="padding-left: 120px;"><p><b>1-3-4-5-6</b></p></td>
			<td style="padding-left: 130px;"><p><b>1-3-6</p></td>			
		</tr>
		<tr>
			<td><img src="../img/matr 04.png" width="310px" height="190px"></td>
			<td><img src="../img/matr 03.png" width="310px" height="190px"></td>			
		</tr>
		</table>
		
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
