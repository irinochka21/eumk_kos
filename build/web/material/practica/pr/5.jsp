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
		
		<center><h3>ЛАБОРАТОРНО-ПРАКТИЧЕСКАЯ РАБОТА №5</h3></center>
		<!--<h4 style="font-size:20px; text-transform:none;"><center>Разработка графа структуры учебного материала КСО</center></h4>-->
		<p><b>Цель:</b> разработать информационно-рекламный материал по авторскому КСО.</p><br>
			
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;">Рекламные материалы по КСО целесообразно подготовить в виде краткого или развернутого рекламных описаний.</p>
				<p style="text-indent:30px;"><b><i>Краткое описание</i></b> предназначено для широкого распространения среди потенциальных пользователей продукта. Оно состоит из 2 страниц (лист, напечатанный с обеих сторон) или 4 страниц (буклет из листа, сложенного пополам). Ограниченный объем обусловлен тем, что читатели, как правило, не вникают в более детальный рекламный материал, если он их серьезно не заинтересовал.</p>
				<p style="text-indent:30px;">В кратком описании отражаются следующие сведения о продукте:</p>
				<p style="text-indent:50px;">– название;</p>
				<p style="text-indent:50px;">– назначение (уровни образования, учебные курсы, специальности и т.д.);</p>
				<p style="text-indent:50px;">– основные объемные характеристики;</p>
				<p style="text-indent:50px;">– требования к конфигурации вычислительной системы;</p>
				<p style="text-indent:50px;">– важнейшие дидактические и функциональные возможности;</p>
				<p style="text-indent:50px;">– программа курса и соответствующая ей иерархическая структура КСО;</p>
				<p style="text-indent:50px;">– перечень авторов и наименование организации-разработчика;</p>
				<p style="text-indent:50px;">– контактная информация для получения дополнительных сведений и приобретения лицензии.</p>
				<p style="text-indent:30px;">При наличии свободного места полезно включить в документ несколько эффектных иллюстраций пользовательского интерфейса КСО. Какие-то из них можно оформить в виде фоновых изображений.</p>
			</td>
		</tr>
		</table><br>
		
		<ol>
			<li class="li">Информационно-рекламный материал можно делать в любом графическом редакторе. Можно так же и в документе Word, создав таблицу и разделив ее на 3 колонки.					
		</ol>		
		<center><img src="../img/buklet1.png" width="700" height="500" style="border: 1px solid #8f3900;"></center>
		<center><p style="font-size: 12px;">Рис. 1. Шаблон буклета внутренней стороны</p></center><br>	
		
		<center><img src="../img/buklet2.png" width="700" height="500" style="border: 1px solid #8f3900;"></center>
		<center><p style="font-size: 12px;">Рис. 2. Шаблон буклета внешней стороны</p></center><br>	
		
		<ol>
			<li class="li">Информационно-рекламный материал также включает диск, на который записан программный продукт, и обложку для диска.					
		</ol>
		<center><img src="../img/disk.jpg" style="border: 1px solid #8f3900;"></center>
		<center><p style="font-size: 12px;">Рис. 3. Пример обложки для диска</p></center><br>	
			
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;"><b><i>Развернутое рекламное описание</i></b> содержит детализированную характеристику продукта. Его объем не должен превышать 10 - 12 страниц. Данный материал предоставляется лицам, заинтересовавшимся КСО и обратившимся к его распространителям для получения дополнительной информации.</p>
				<p style="text-indent:30px;">Для рекламы и дистрибуции KСО через Internet может быть создан web-сайт или его раздел, на нем размещаются:</p>
				<p style="text-indent:50px;">– общие сведения о продукте (интерактивное рекламное описание);</p>
				<p style="text-indent:50px;">– демонстрационная версия, функционирующая в режиме on-line;</p>
				<p style="text-indent:50px;">– ссылки для загрузки дистрибутива демонстрационной версии, электронных представлений рекламных материалов и эксплуатационной документации, а также справки по работе с продуктом (если она реализована и виде автономной подсистемы).</p>
				<p style="text-indent:30px;">На выставках, конференциях, семинарах и презентациях демонстрационная версия распространяется на CD-ROM, а рекламные материалы — на бумажном носителе.</p>
			</td>
		</tr>
		</table><br>
		
		
		
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
