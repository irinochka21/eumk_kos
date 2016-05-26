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
		
		<center><h3>ЛАБОРАТОРНАЯ РАБОТА №8</h3></center>
		

		<p><b>Цель:</b> разработать программу инсталляции и сформировать дистрибутив программного продукта.</p><br>
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;"><b><i>Дистрибутивом</i></b> называется вид компоновки программного продукта, предназначенный для распространения среди конечных пользователей.</p>
				<p style="text-indent:30px;">КСО могут распространяться, как на информационных носителях (CD-ROM, DVD-ROM и др.), так и через Internet. В случае применения информационных носителей высокой емкости целесообразно, чтобы дистрибутив содержал не только упакованную версию для установки продукта на компьютер, но и его развернутый вариант, не требующий инсталляции, т.е. запускаемый непосредственно с дистрибутивного диска.	</p>		
				<center><p style="text-indent:30px;"><b>Типовой состав дистрибутива</b></p></center>
				<p><center><img src="../img/02.png"></center></p>
			</td>
		</tr>
		</table><br>
		
		<ol>
			<li class="li">1. Сформировать дистрибутивный диск КСО. Создайте папки, включающие следующие дистрибутивные компоненты.
			<li class="li" style="margin-left: 20px;">1.1. Основные программные и информационные компоненты продукта.		
		</ol>
		
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;">Необходимо, чтобы в дистрибутив входили все общие системные компоненты, нужные для работы КСО: драйверы, кодеки, шрифты и т.п. Их установка на компьютер требуется вне зависимости от того, откуда будет запускаться продукт: с жесткого диска иди с дистрибутивного носителя.</p>			
			</td>
		</tr>
		</table><br>
		
		<ol>
		<li class="li" style="margin-left: 20px;">1.2. Эксплуатационная документация и лицензионное соглашение.
		Для сравнения необходимо выбрать два продукта-конкурента, аналогичных разрабатываемому КСО.  
		</ol>
		
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;"><b><i>Эксплуатационная документация</i></b> включает документы, которые относятся с категориями пользователей КСО и отражает сведения, необходимые для решения стоящих перед ними задач. Ядро эксплуатационной документации составляют:</p>
				<p style="text-indent:40px;">– руководство обучаемого (РО);</p>
				<p style="text-indent:40px;">– руководство преподавателя (РП);</p>
				<p style="text-indent:40px;">– руководство системного администратора (РСА).</p>
				<p style="text-indent:30px;"><b><i>Лицензионное соглашение</i></b> – договор о предоставлении права на использование объекта интеллектуальной собственности.
			</td>
		</tr>
		</table><br>
		
		<ol>
			<li class="li"  style="margin-left: 20px;">1.3. Демонстрационная версия.			
		</ol>
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;">Под <b><i>демонстрационной версией</i></b> понимается бесплатно распространяемая программа, иллюстрирующая основные возможности продукта.</p>
				<p style="text-indent:30px;"><b><i>Пробная</i></b> или <b><i>оценочная версия</i></b> – это реализация КСО с ограничениями по функциям, объему учебного материала или сроку работоспособности. Например, она может содержать только одну главу или по пять первых и пять последних кадров каждого раздела. Срок работоспособности лимитируется, как правило, месяцем со дня инсталляции.</p>
				<p style="text-indent:30px;">Предусматриваемые ограничения не должны искажать представление о продукте и скрывать его достоинства. Например, допустимо, если пробная версия позволяет обращаться ко всем УТЗ, но обеспечивает автоматическое оценивание лишь первых трех задач в каждом блоке контроля. Напротив, неудачным решением является полное исключение доступа к УТЗ.</p>			
			</td>
		</tr>
		</table><br>
		
		
		<ol>
		<li class="li" style="margin-left: 20px;">1.4. Рекламные материалы.
		</ol>
		
		<table>
		<tr>
			<td>
				<p>Информационно-рекламный материал включает буклет, диск, на который записан программный продукт, и обложку для диска.</p>
			</td>
		</tr>
		</table><br>
		
		<ol>
		<li class="li" style="margin-left: 20px;">1.5. Инструментальные средства для развития компонентов продукта и документация по работе с ними (если необходимо).
		</ol>
		
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;">Под <b><i>инструментальными средствами</i></b> понимаются программные системы, используемые для решения задач, связанных с созданием КСО.</p>
				<p style="text-indent:30px;">Например, при разработке программы инсталляции и формировании дистрибутива продукта применяют:</p>
				<p style="text-indent:40px;">– авторские системы;</p>
				<p style="text-indent:40px;">– средства формирования дистрибутива продукта и создания программы установки.</p>
			</td>
		</tr>
		</table><br>
		
		<ol>
		<li class="li" style="margin-left: 20px;">1.6. Общие системные программные информационные компоненты (драйверы, шрифты, кодеки и т.д.) для ручной установки (если необходимо).
		</ol>
		<p style="font-size: 12px;"><center><img src="../img/07.png" style="border: 1px solid #8f3900;"></center>
		<center>Рис. 1. Пример содержания дистрибутивного диска </p></center><br>
		
		<ol>
			<li class="li">2. Сформировать комплект документов по КСО.
			<li class="li" style="margin-left: 20px;">2.1. Представить бумажный вариант содержания учебного материала КСО.	
		</ol>
		
		<p style="font-size: 12px;"><center><img src="../img/06.png" style="border: 1px solid #8f3900; width: 850px; height: 560px;"></center>
		<center>Рис. 2. Пример титульной страницы и содержания учебного материала КСО.</p></center><br>
		
		<ol>
			<li class="li" style="margin-left: 20px;">2.2. Представить комплект эксплуатационной документации:	
		</ol>
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;"><b><i>Эксплуатационная документация</i></b> включает документы, которые относятся с категориями пользователей КСО и отражает сведения, необходимые для решения стоящих перед ними задач. Ядро эксплуатационной документации составляют:</p>
				<p style="text-indent:40px;">– руководство обучаемого (РО);</p>
				<p style="text-indent:40px;">– руководство преподавателя (РП);</p>
				<p style="text-indent:40px;">– руководство системного администратора (РСА).</p>
			</td>
		</tr>
		</table><br>		
		
		<p style="font-size: 12px;"><center><img src="../img/08.png" style="border: 1px solid #8f3900; width: 425px; height: 560px;"></center>
		<center>Рис. 3. Пример титульной страницы эксплуатационной документации</p></center><br>
		
		<p style="font-size: 12px;"><center><img src="../img/09.png" style="border: 1px solid #8f3900; width: 850px; height: 560px;"></center>
		<center>Рис. 4. Пример содержания эксплуатационной документации</p></center><br>
		
		<ol>
			<li class="li" style="margin-left: 20px;">2.3. Представить лицензионное соглашение.
		</ol>
		<p style="font-size: 12px;"><center><img src="../img/10.png" style="border: 1px solid #8f3900; width: 450px; height: 580px;"></center>
		<center>Рис.5. Пример лицензионного соглашения</p></center><br>
		
		<ol>
			<li class="li">3. Разработать программу инсталляции.
		</ol>
		
		<table>
		<tr>
			<td>
				<p style="text-indent:30px;">Для повышения удобства использования дистрибутивного носителя служит программа автозапуска. Она автоматически активируется после вставки носителя в привод для чтения и выводит на экран меню, позволяющее вызвать основные программные компоненты дистрибутива, а также просматривать краткую инструкцию по его составу.</p>
				<p style="text-indent:30px;">Например, программа формирования autorun: AutoRun – это возможность быстро создать AutoRun для диска, проект которого вы создали и собираетесь записать. </p>
				<p style="text-indent:30px;">Программа AutoRun очень легко настраивается, имеет маленький размер и множество настроек. К тому же в архив с программой включён и конфигуратор для программы AutoRun. </p>	
				<p style="text-indent:30px;">Возможности AutoRun – быстрое создание AutoRun-а для записываемого диска. Преимущества: лёгкость в настройках и большой функционал для создания AutoRun-а в сочетании с небольшим размером приложения.</p>					
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
