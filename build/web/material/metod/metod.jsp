<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Методические рекомендации</title>
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
		font-size: 16px;
		text-indent: 50px;
	}
	i{color: #b64900; font-size:18px;}
	h4
	{ 
		color: #b64900;
		font-size: 16px;
		text-transform: none;
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
          <li class="last"><a href="../test/test.jsp"><center>Контроль знаний</center></a></li>
         
        </ul>
        
      </div>
      <!-- content -->
      <div id="content">
		<h3>Методические рекомендации и руководства</h3>
	  
	<h2><center>Краткая характеристика учебной дисциплины</center></h2><br>
	
	<p><i><b>Учебная дисциплина</b></i></p>
	<p>Б. 3.17.  Обучающие системы</p>
	<br>	
	<p><i><b>Направление подготовки</i></b></p>
	<p>010400.62  Прикладная математика и информатика</p>
	<br>
	<p><i><b>Цели освоения дисциплины</p></i></b>
	<p>Дисциплина <b>Обучающие системы</b> нацелена на формирование знаний о технологии проектирования компьютерных систем обучения и условиях их применения в учебном процессе.</p>
	<br>
	<p><i><b>Место дисциплины в структуре ООП</p></i></b>
	<p>Дисциплина <b>Обучающие системы</b> относится к вариативной части профессионального учебного цикла <b>Б3</b>. </p>
	<p>Необходимыми условиями для освоения дисциплины являются: </p>
	<p>Содержание дисциплины служит основой для освоения дисциплины </p>
	<br>
	<p><i><b>Компетенции обучающегося, формируемые в результате освоения дисциплины (модуля) </p></i></b>
	<p>Процесс изучения дисциплины направлен на достижение следующих результатов образования (РО):</p>
	<p><b>знания:</b></p>
	<p>– знать основные принципы проектирования и реализации компьютерных средств обучения.</p>
	<p><b>умения:</b></p>
	<p>– проектировать и разрабатывать компьютерные средства обучения с применением изученных принципов;</p>
	<p>– создавать эксплуатационную документацию по их внедрению в образовательный процесс.</p>
	<br>
	<p><b style="font-size:18px;"><i style="color: black;">Перечисленные РО являются</i> <i>основой для формирования следующих компетенций:</i></b></p>
	<p><b>общекультурных:</b></p> 
	<p>– способность использовать	в научной	и познавательной деятельности, а также в социальной сфере профессиональные навыки работы с информационными и компьютерными технологиями (ОК-14).</p>
	<p><b>профессиональных:</b> </p>
	<p>– способность приобретать новые научные и профессиональные знания, используя современные образовательные и информационные технологии (ПК-2); </p>
	<p>– способность собирать, обрабатывать и интерпретировать данные современных научных исследований, необходимые для формирования выводов по соответствующим научным, профессиональным, социальным и этическим проблемам (ПК-7);</p>
	<p>– способность владеть методикой преподавания учебных дисциплин (ПК-14);</p>
	<p>– способность применять на практике современные методы педагогики и средства обучения (ПК-15).</p>
<br>
	<center><img src="img/01.png"></center><br>
	
	<p style="color: #b64900;"><b>СТРУКТУРА И СОДЕРЖАНИЕ ДИСЦИПЛИНЫ</b></p><br>
	
	<table style="font-size: 16px; text-indent: 50px;" width="800">
		<tr height="25px;">
			<td width="440">Трудоемкость по учебному плану</td>
			<td><center>144/4</center></td>
			<td>часов/зачетных единиц</td>
		</tr>
		<tr height="25px;">
			<td width="440">Лекции</td>
			<td><center>30</center></td>
			<td>часов</td>
		</tr>
		<tr height="25px;">
			<td width="440">Практические (семинарские) занятия</td>
			<td><center>30</center></td>
			<td>часов</td>
		</tr>
		<tr height="25px;">
			<td width="440"><i style="color: black; font-size:16px;"><b>Всего аудиторных занятий</i></b></td>
			<td><center><b>60</b></center></td>
			<td><b>часов</b></td>
		</tr>
		<tr height="25px;">
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr height="25px;">
			<td width="440">Самостоятельная (внеаудиторная) работа студентов</td>
			<td><center>48</center></td>
			<td>часов</td>
		</tr>
		<tr height="25px;">
			<td width="440">Экзамен (1 з. ед. - 36 часов)</td>
			<td><center>7</center></td>
			<td>семестр</td>
		</tr>
	</table>
		<br><br>
		<hr style="color: #ededed;"><br>
	<h4><a href="recom_pr.pdf" target="blank">Методические рекомендации для преподавателей</a><br></h4>
	<h4><a href="recom_st.pdf" target="blank">Методические рекомендации для студентов</a></h4>





	  
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
