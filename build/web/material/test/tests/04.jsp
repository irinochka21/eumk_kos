<%@page language="java" import="java.sql.*, java.io.*" 
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Контроль знаний</title>
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
<Script Language="JavaScript">  
<!-- Начало сценария 
var time1= new Date();
var rez=[2,4,1,8,2,6,4,5,2,10];
var qwert=[0,0,0,0,0,0,0,0,0,0];
var vinq=[3,3,3,4,4,3,4,3,4,4];
var kfQ=[1,1,1,1,1,1,1,1,1,1];
var kfS=[];
var kfFalse=[2,2,2,2,2,2,2,2,2,2];
var svob=[ [] ];
// PerVop
var mix=true;
</script>  

<style>

	h4
		{
			font-size: 16px;
			font-weight: bold;
			text-transform: none;
			
		}
	p
		{
			font-size:14px;
			align: justify;
			text-indent:20px;
		}

.onetest {
    position: relative;
    box-shadow: 0 0 6px #ffffff;
    border-radius: 6px 6px 6px 6px;  
    padding: 0px 5px;
    margin-bottom: 5px;
	background-color: #FFFFFF;
	
}
.onetest img {
max-width:600px;
}
.onetest a {
color: #000000;
text-decoration:none;
}
.testclass {
    font: italic 14px 'Arial';
	margin: 2px 0 0 0px;
}
.otv {
    left: 150px;
    position: absolute;
    top: 15px;
}
#winotv {
    background-color: #FFFFFF;
    border-radius: 6px 6px 6px 6px;
    box-shadow: 0 0 6px #000000;
    display: none;
    margin: 0 auto;
    padding: 15px 50px 15px 50px;
    width: 550px;
	text-align: left;
}

.svob {
	font-style: italic;
	font-weight: bold;
	font-size: 14px;
}
.aspan {
	font-size: 14px;
	align: justify;
	
}

.niceCheck {
	align: justify;
	margin: 5px;
}

</style>

<Script Language="JavaScript">
function isNumeric(n) {return !isNaN(parseFloat(n)) && isFinite(n);}
function getchecked(a,b){
	var tt = document.getElementsByName("Q"+a);
	if(tt[b].checked) tt[b].checked = false;
	else tt[b].checked = true;}
function code(strIn){	
	var strOut=[],ii,jj;
	for(ii=0; ii<strIn.length; ii++) {
		var strTmp=[];
		for(jj=0; jj<strIn[ii].length; jj++){strTmp[jj] = strIn[ii].charCodeAt(jj)-1;if (strTmp[jj]==1039) {strTmp[jj]=1103};}
		strOut[ii]='';
		for(jj=0; jj<strTmp.length; jj++){strOut[ii] += String.fromCharCode(strTmp[jj]);}}
	return strOut;}
function check_me(){
	var otv=[],i,j,tmp,str1,names,vah=false,totaltrueQ=[],totalS=[],total=0,totalQAll=0,totalSAll=0,answerQ=[],answerTrue=0;
	if(document.getElementById("torf1") != null){
		for(i=0;i<vinq.length;i++){
			otv[i]=[];
			for(j=0;j<vinq[i];j++){
				names=document.getElementsByName("Q"+(i+1));
				if(names[j].checked){otv[i][j]=1;
                }
				else otv[i][j]=0;}
			if(parseInt(otv[i].join(''),2)==0)vah=true;}}
	if(document.getElementById("svobod1") != null){
		for(i=0;i<svob.length;i++){
			names=document.getElementsByName("S"+(i+1));
			if(names[0].value=='')vah=true;}}
	if(vah) alert("Вы выполнили не все задания. Проверьте себя.");
	else{
		if(document.getElementById("torf1") != null){
			for(i=0;i<rez.length;i++){
				str1 = rez[i].toString(2);
				while(str1.length < vinq[i]) str1="0"+str1;
				totaltrueQ[i]=0;
				for(j=0;j<str1.length;j++){totaltrueQ[i] += parseInt(str1[j]);}
				totalQAll += kfQ[i];
				if(parseInt(otv[i].join(''),2)==rez[i])	{
                    qwert[i]=1;
					document.getElementById("torf"+(i+1)).innerHTML='<div class="imgtrue"></div>';
					total += kfQ[i];
					answerTrue += kfQ[i];}
				else {
					for(j=0;j<str1.length;j++){
						answerQ[j] = otv[i][j]/parseInt(str1[j]);
						if(isNaN(answerQ[j])) answerQ[j]=2;}
					if(!isNumeric(answerQ.join(''))) {
                    qwert[i]=0;
						document.getElementById("torf"+(i+1)).innerHTML='<div class="imgfalse"></div>';
						tmp=0;
						for(j=0;j<answerQ.length;j++){
							if(answerQ[j]<2) tmp += answerQ[j];
							if(answerQ[j]>2) tmp -= kfFalse[i];}
						if(tmp<0) tmp=0;
						answerTrue += kfQ[i]*tmp/totaltrueQ[i];}
					else {
                   
						document.getElementById("torf"+(i+1)).innerHTML='<div class="img_nearly_true"></div>';
						tmp=0;
						for(j=0;j<answerQ.length;j++){if(answerQ[j]<2) tmp += answerQ[j];}
						total += kfQ[i]*tmp/totaltrueQ[i];
						answerTrue += kfQ[i]*tmp/totaltrueQ[i];
                                                 qwert[i]=kfQ[i]*tmp/totaltrueQ[i];
                                            }}}}
		if(document.getElementById("svobod1") != null){
			for(i=0;i<svob.length;i++){
				totalS[i]=0;
				names=document.getElementsByName("S"+(i+1));
				truerez = code(svob[i]);
				for(j=0;j<truerez.length;j++){if(names[0].value==truerez[j]){totalS[i]=1;}}
				totalSAll += kfS[i];
				if(totalS[i]==1){
					document.getElementById("svobod"+(i+1)).innerHTML="<div class=imgtrue></div>";
					total += kfS[i];
					answerTrue += kfS[i];}
				else document.getElementById("svobod"+(i+1)).innerHTML="<div class=imgfalse></div>";}}
		showResult(totalQAll + totalSAll, answerTrue, total);}}
function showResult(totalQS, answerTrue, total){
	var i,maxQS=0,vv,ii,jj,ss;
	for(i=0;i<kfQ.length;i++) maxQS += kfQ[i];
	for(i=0;i<kfS.length;i++) maxQS += kfS[i];
	vv = total*100/maxQS;
    if (vv>=85)
    {
    ocen=5;
    }
      if (vv>=70&&vv<85)
    {
    ocen=4;
    }
      if (vv>=50&&vv<70)
    {
    ocen=3;
    }
      if (vv<50)
    {
    ocen=2;
    }
    time2= new Date();
    time=time2-time1;

   // hour=time.getHours();
   hour=0;
   // minut=time.getMinutes();
   minut=time/60000|0;
  //  sec=time.getSeconds();
  sec=(time-minut*60000)/1000|0;
koef=answerTrue/totalQS;





	document.getElementById("winotv").innerHTML=
    '<span style="font-size: 18px;">&nbsp&nbsp&nbsp&nbsp&nbspВаш результат:</span><br/>Общее количество вопросов: <b>'+totalQS+'</b> <br> Максимально возможный балл:<b>'+totalQS.toFixed(1)+
    '</b> <br> Количество вопросов, на которые был дан ответ: <b>'+totalQS+
    '</b> <br> Количество правильных ответов: <b>'+answerTrue.toFixed(1)+
    '</b><br>Процент выполнения теста: <b>'+vv.toFixed(1)+
    '%</b> <br>Оценка: <b>'+ocen+ 
    '</b> <br> Коэффициент усвоения учебного материала: <b>'+koef.toFixed(1)+
    '</b> <br> Время прохождения теста: <b>'+hour+'</b> часов <b>'+minut+'</b> минут <b> '+sec+'</b> секунд <br><br><br>'+document.getElementById("winotv").innerHTML;
    
document.getElementById("butSave").style.display = "block";
document.getElementById("qw1").value=qwert[0];
document.getElementById("qw2").value=qwert[1];
document.getElementById('qw3').value=qwert[2];
document.getElementById("qw4").value=qwert[3];
document.getElementById("qw5").value=qwert[4];
document.getElementById("qw6").value=qwert[5];
document.getElementById("qw7").value=qwert[6];
document.getElementById("qw8").value=qwert[7];
document.getElementById("qw9").value=qwert[8];
document.getElementById("qw10").value=qwert[9];
document.getElementById("qwMa").value=ocen;
document.getElementById("qwRi").value=answerTrue.toFixed(1);
	document.getElementById("rezbutton").style.display="none"; 
	document.getElementById("winotv").style.display="block"; 
	aspan = document.getElementsByName("aspan");
	for(i=0;i<aspan.length;i++)	{
		aspan[i].onclick = '';
		aspan[i].className = '';}
	if(document.getElementById("svobod1") != null){
		for(i=0;i<svob.length;i++){
			names=document.getElementsByName("S"+(i+1));
			names[0].disabled = true;}}
	if(document.getElementById("torf1") != null){
		for (ii=1;ii<=rez.length;ii++){ 
			ss = document.getElementsByName("Q"+ii.toString());
			for (jj=0;jj < ss.length;jj++){ss[jj].disabled = "disabled";}}}
	if(vv==100){ document.getElementById("winotv").style.backgroundColor="#E1FFE1"; 
    document.getElementById("td1").height=225;
    }  
	else { 
        
        document.getElementById("td1").height=300+(totalQS-answerTrue.toFixed(0))*23;
        //document.getElementById("td1").
		document.getElementById("winotv").style.color="#000000";
		document.getElementById("winotv").style.boxShadow="0 0 6px #000000"; 
		document.getElementById("winotv").style.backgroundColor="#eeeeee";}}
Array.prototype.shuffle = function( deep ){
  var i = this.length, j, t;
  while(i){
   j = Math.floor( (i--) * Math.random() );
   t = deep && typeof this[i].shuffle!=='undefined' ? this[i].shuffle():this[i];
   this[i] = this[j];
   this[j] = t;}
  return this;};
<!--Окончание сценария -->
</script>


</head>
<body id="page6">
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
		  <li><a href="../../practica/pract.jsp"><center>Практикум</center></a></li>
          <li class="last"><a href="../../test/test.jsp"><center>Контроль знаний</center></a></li>
         
        </ul>
      </div>
      <!-- content -->
      <div id="content">
<div class="onetest">
<div class="testname">

<!-- name -->
<h3 align="center">Дидактические принципы</h3>
</div>

<!-- kol vop
10
kol vop end-->

<form name="test" method="post">
<!-- vopr i otveti -->
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Что такое дидактика?
vopros end -->

<!-- otvet
1
3
0
6
процесс и результат усвоения систематизированных знаний, умений, навыков и обеспечение на этой основе соответствующего уровня развития личности;
наука об обучении и образовании, исследующая принципы и закономерности, формы и методы обучения; 
совокупность теоретических, прикладных наук, изучающих воспитание, образование, обучение.




otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Выберите определение, характеризующее дидактические принципы?
vopros end -->

<!-- otvet
1
3
0
7
основные правила, определяющие содержание, организационные формы и методы учебного процесса в соответствии с его общими целями и закономерностями;
положения, определяющие закономерности и методы обучения, воспитания и развития людей;
основные виды воспитательного процесса в единстве их формы и содержания и в функциональном проявлении.




otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Какое из высказываний относится к реализации принципа доступности в КСО?
vopros end -->

<!-- otvet
1
3
0
5
Позволяет увидеть визуализацию того, что не всегда можно заметить в реальной жизни даже с помощью самых чувствительных и точных приборов.
В зависимости от содержания учебного материала и последовательности его предоставления обучение в КСО может строиться по индуктивному или  
Учебный материал, реализованный в КСО, предполагает наличие разветвлений, различных путей и скоростей прохождения учебного курса.




otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
К какому дидактическому принципу относится высказывание: процессы, моделируемые и визуализируемые компьютерной обучающей программой, могут быть разнообразными по форме и содержанию, относиться к физическим, социальным, историческим, экологическим и другим процессам?
vopros end -->

<!-- otvet
1
4
0
7
принцип наглядности;
принцип доступности;
принцип научности;
принцип сознательности.



otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
К какому принципу относится высказывание: содержание КСО позволяет включать не только те темы, которые обеспечивают обязательный минимальный уровень знаний, но и рассматривать более широкое понятие данного 
предмета, а также связывать эти понятия с другими предметами, 
изучая их во взаимосвязи и строя более полную и научную картину 
мира?
vopros end -->

<!-- otvet
1
4
0
5
принцип наглядности;
принцип доступности;
принцип научности;
принцип сознательности.



otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Выберите характеристики реализации принципа систематичности и последовательности в КСО: 
vopros end -->

<!-- otvet
1
3
1
6
очередность выдачи КСО учебных фрагментов;
построение и корректировка наиболее эффективной образовательной траектории при самостоятельной работе обучаемого;
обеспечение потребности обучающегося увидеть в какой-либо форме предмет или явление.






otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Данный принцип при обучении с использованием КСО играет роль фильтра учебного содержания и обеспечивает достижение цели обучения студентами с различным начальным уровнем подготовленности:
vopros end -->

<!-- otvet
1
4
0
6
принцип наглядности;
принцип доступности;
принцип научности;
принцип сознательности.



otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Выберите характеристики реализации принципа сознательности в КСО:
vopros end -->

<!-- otvet
1
3
1
5
обеспечение КСО самостоятельных действий обучающихся по извлечению учебной информации при четком понимании конечных целей и задач учебной деятельности;
очередность выдачи КСО учебных фрагментов;
предоставление обучающемуся возможность выбора траектории обучения в зависимости от образовательных целей.






otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Какое из высказываний относится к описанию принципа систематичности и последовательности?
vopros end -->

<!-- otvet
1
4
0
5
Определяет содержание, требует включения в него не только традиционных научных знаний, но и наиболее фундаментальных положений современной науки.
Позволяет увидеть визуализацию того, что не всегда можно заметить в реальной жизни даже с помощью самых чувствительных и точных приборов.
В зависимости от содержания учебного материала и последовательности его предоставления обучение в КСО может строиться по индуктивному или  
Учебный материал, реализованный в КСО, предполагает наличие разветвлений, различных путей и скоростей прохождения учебного курса.



otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Выберите характеристики реализации принципа связи теории с практикой в КСО:
vopros end -->

<!-- otvet
1
4
1
10
формирование умений применять усвоенные знания для решения задач практического характера;
последовательная логика развертывания содержания обучения;
осмысление процесса и результатов практической деятельности на основе имеющихся теоретических знаний;
предоставление обучающемуся возможность выбора траектории обучения в зависимости от образовательных целей.





otvet end -->
</b></font><br />

</div>
<br>
</form>

<div id="winotv">
<form action="04.jsp"  method="post"> <!--stranica testa!-->
    <input type="text" name="qw1" id="qw1" hidden="true">
<input type="text" name="qw2" id="qw2" hidden="true">
<input type="text" name="qw3" id="qw3" hidden="true">
<input type="text" name="qw4" id="qw4" hidden="true">
<input type="text" name="qw5" id="qw5" hidden="true">
<input type="text" name="qw6" id="qw6" hidden="true">
<input type="text" name="qw7" id="qw7" hidden="true">
<input type="text" name="qw8" id="qw8" hidden="true">
<input type="text" name="qw9" id="qw9" hidden="true">
<input type="text" name="qw10" id="qw10" hidden="true">
<input type="text" name="qwMa" id="qwMa" hidden="true">
<input type="text" name="qwRi" id="qwRi" hidden="true">    
<button type="submit" class="but2" style="width: 200px; height: 35px; margin-left: 100px;" name="butSave" id="butSave">Сохранить результат</button>
        </form>    
  </div>  
        
  <%
  if(request.getParameter("butSave") != null)
  {
  String q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,mar,riA;
  int idU, idT;
  q1 = null; q1=request.getParameter("qw1").toString().trim();
  q2 = null; q2=request.getParameter("qw2").toString().trim();
  q3 = null; q3=request.getParameter("qw3").toString().trim();
  q4 = null; q4=request.getParameter("qw4").toString().trim();
  q5 = null; q5=request.getParameter("qw5").toString().trim();
  q6 = null; q6=request.getParameter("qw6").toString().trim();
  q7 = null; q7=request.getParameter("qw7").toString().trim();
  q8 = null; q8=request.getParameter("qw8").toString().trim();
  q9 = null; q9=request.getParameter("qw9").toString().trim();
  q10 = null; q10=request.getParameter("qw10").toString().trim();
  mar = null; mar=request.getParameter("qwMa").toString().trim();
  riA = null;  riA=request.getParameter("qwRi").toString().trim();
  idU=0; idU= Integer.parseInt(session.getAttribute("idUser").toString());
  idT=0; idT=4; //nomer testa
  try
  {
      String url, sql, user, pass;
      Connection conn;
      Statement stmt;
      user="root";
      pass="";
  Class.forName("com.mysql.jdbc.Driver");
url = "jdbc:mysql://localhost/students";
conn =DriverManager.getConnection(url,user, pass);
stmt = conn.createStatement();
sql="insert into otv (test_ID, user_ID, question1, question2, question3, question4,"
        + " question5, question6, question7, question8, question9, question10, right_answer, mark"
        + ") values('"+idT+"', '"+idU+"', '"+q1+"', '"+q2+"', '"+q3+"', '"+q4+"', '"+q5+"', '"+q6+"',"
        + " '"+q7+"', '"+q8+"', '"+q9+"', '"+q10+"', '"+riA+"', '"+mar+"')";
stmt.execute(sql);
stmt.close();
conn.close();
  }
  catch(Exception ex)
  {
      out.println("error");
              }
  }
  %>      

<div id="rezbutton" align="center">
<input type="button" class="but2" name="simb" onClick="check_me()" value="Закончить тест"><br><br><br>
</div>
  
<Script Language="JavaScript">
var vopr_otv = [
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Что такое дидактика?</h4>'+
'</p></font><div class="otv" id="torf1"></div>'+
'<input type=radio name=Q1 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(1,0)"> процесс и результат усвоения систематизированных знаний, умений, навыков и обеспечение на этой основе соответствующего уровня развития личности;</span><br>'
+'<input type=radio name=Q1 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(1,1)"> наука об обучении и образовании, исследующая принципы и закономерности, формы и методы обучения; </span><br>'
+'<input type=radio name=Q1 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(1,2)"> совокупность теоретических, прикладных наук, изучающих воспитание, образование, обучение.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Выберите определение, характеризующее дидактические принципы?</h4>'+
'</p></font><div class="otv" id="torf2"></div>'+
'<input type=radio name=Q2 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(2,0)"> основные правила, определяющие содержание, организационные формы и методы учебного процесса в соответствии с его общими целями и закономерностями;</span><br>'
+'<input type=radio name=Q2 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(2,1)"> положения, определяющие закономерности и методы обучения, воспитания и развития людей;</span><br>'
+'<input type=radio name=Q2 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(2,2)"> основные виды воспитательного процесса в единстве их формы и содержания и в функциональном проявлении.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Какое из высказываний относится к реализации принципа доступности в КСО?</h4>'+
'</p></font><div class="otv" id="torf3"></div>'+
'<input type=radio name=Q3 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(3,0)"> Позволяет увидеть визуализацию того, что не всегда можно заметить в реальной жизни даже с помощью самых чувствительных и точных приборов.</span><br>'
+'<input type=radio name=Q3 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(3,1)"> В зависимости от содержания учебного материала и последовательности его предоставления обучение в КСО может строиться по индуктивному или  дедуктивному методу.</span><br>'
+'<input type=radio name=Q3 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(3,2)"> Учебный материал, реализованный в КСО, предполагает наличие разветвлений, различных путей и скоростей прохождения учебного курса.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>К какому дидактическому принципу относится высказывание: процессы, моделируемые и визуализируемые компьютерной обучающей программой, могут быть разнообразными по форме и содержанию, относиться к физическим, социальным, историческим, экологическим и другим процессам?</h4>'+
'</p></font><div class="otv" id="torf4"></div>'+
'<input type=radio name=Q4 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(4,0)"> принцип наглядности;</span><br>'
+'<input type=radio name=Q4 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(4,1)"> принцип доступности;</span><br>'
+'<input type=radio name=Q4 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(4,2)"> принцип научности;</span><br>'
+'<input type=radio name=Q4 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(4,3)"> принцип сознательности.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>К какому принципу относится высказывание: содержание КСО позволяет включать не только те темы, которые обеспечивают обязательный минимальный уровень знаний, но и рассматривать более широкое понятие данного предмета, а также связывать эти понятия с другими предметами, изучая их во взаимосвязи и строя более полную и научную картину мира?</h4>'+
'</p></font><div class="otv" id="torf5"></div>'+
'<input type=radio name=Q5 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(5,0)"> принцип наглядности;</span><br>'
+'<input type=radio name=Q5 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(5,1)"> принцип доступности;</span><br>'
+'<input type=radio name=Q5 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(5,2)"> принцип научности;</span><br>'
+'<input type=radio name=Q5 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(5,3)"> принцип сознательности.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Выберите характеристики реализации принципа систематичности и последовательности в КСО:</h4> '+
'</p></font><div class="otv" id="torf6"></div>'+
'\<!-- otvet--\>\r\n'+
'<input type=checkbox name=Q6 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(6,0)"> очередность выдачи КСО учебных фрагментов;</span><br>'
+'<input type=checkbox name=Q6 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(6,1)"> построение и корректировка наиболее эффективной образовательной траектории при самостоятельной работе обучаемого;</span><br>'
+'<input type=checkbox name=Q6 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(6,2)"> обеспечение потребности обучающегося увидеть в какой-либо форме предмет или явление.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Данный принцип при обучении с использованием КСО играет роль фильтра учебного содержания и обеспечивает достижение цели обучения студентами с различным начальным уровнем подготовленности:</h4>'+
'</p></font><div class="otv" id="torf7"></div>'+
'<input type=radio name=Q7 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(7,0)"> принцип наглядности;</span><br>'
+'<input type=radio name=Q7 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(7,1)"> принцип доступности;</span><br>'
+'<input type=radio name=Q7 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(7,2)"> принцип научности;</span><br>'
+'<input type=radio name=Q7 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(7,3)"> принцип сознательности.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Выберите характеристики реализации принципа сознательности в КСО:</h4>'+
'</p></font><div class="otv" id="torf8"></div>'+
'\<!-- otvet--\>\r\n'+
'<input type=checkbox name=Q8 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(8,0)"> обеспечение КСО самостоятельных действий обучающихся по извлечению учебной информации при четком понимании конечных целей и задач учебной деятельности;</span><br>'
+'<input type=checkbox name=Q8 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(8,1)"> очередность выдачи КСО учебных фрагментов;</span><br>'
+'<input type=checkbox name=Q8 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(8,2)"> предоставление обучающемуся возможность выбора траектории обучения в зависимости от образовательных целей.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Какое из высказываний относится к описанию принципа систематичности и последовательности?</h4>'+
'</p></font><div class="otv" id="torf9"></div>'+
'<input type=radio name=Q9 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(9,0)"> Определяет содержание, требует включения в него не только традиционных научных знаний, но и наиболее фундаментальных положений современной науки.</span><br>'
+'<input type=radio name=Q9 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(9,1)"> Позволяет увидеть визуализацию того, что не всегда можно заметить в реальной жизни даже с помощью самых чувствительных и точных приборов.</span><br>'
+'<input type=radio name=Q9 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(9,2)"> В зависимости от содержания учебного материала и последовательности его предоставления обучение в КСО может строиться по индуктивному или  дедуктивному методу.</span><br>'
+'<input type=radio name=Q9 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(9,3)"> Учебный материал, реализованный в КСО, предполагает наличие разветвлений, различных путей и скоростей прохождения учебного курса.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Выберите характеристики реализации принципа связи теории с практикой в КСО:</h4>'+
'</p></font><div class="otv" id="torf10"></div>'+
'\<!-- otvet--\>\r\n'+
'<input type=checkbox name=Q10 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(10,0)"> формирование умений применять усвоенные знания для решения задач практического характера;</span><br>'
+'<input type=checkbox name=Q10 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(10,1)"> последовательная логика развертывания содержания обучения;</span><br>'
+'<input type=checkbox name=Q10 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(10,2)"> осмысление процесса и результатов практической деятельности на основе имеющихся теоретических знаний;</span><br>'
+'<input type=checkbox name=Q10 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(10,3)"> предоставление обучающемуся возможность выбора траектории обучения в зависимости от образовательных целей.</span><br>'
];
kodvopr = document.getElementsByName("onetest");
if(mix)vopr_otv.shuffle();
for (jj=0;jj<kodvopr.length;jj++){kodvopr[jj].innerHTML += vopr_otv[jj];}
</script>

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
