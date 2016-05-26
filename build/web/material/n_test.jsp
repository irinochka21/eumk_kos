<%@page language="java" import="java.sql.*, java.io.*" 
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description" content="Place your description here" />
<meta name="keywords" content="put, your, keyword, here" />
<meta name="author" content="Templates.com - website templates provider" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<Script Language="JavaScript">  
<!-- Начало сценария 
var time1= new Date();
var qwert=[0,0,0,0,0,0,0,0,0];
var temas=['Математика. Графы','Математика. Квазиминор','Математика. Графы','Педагогика. Дидактика','Педагогикаю Дидактика','Педагогика. Компетентности','Программирование. Клиент-серверная технология','Программирование. Языки программирования','Программирование. Базы данных'];
var rez=[1,4,2,2,4,1,2,1,8];
var vinq=[3,3,3,3,3,3,4,4,4];
var kfQ=[1,1,1,1,1,1,1,1,1];
var kfS=[];
var kfFalse=[2,2,2,2,2,2,2,2,2];
var svob=[ [] ];
// PerVop
var mix=true;
</script>  

<style>
	.img
		{
			border: 2px solid #ff7800;
			padding: 3px;
		}
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


var povt='';
if(totalQS===answerTrue.toFixed(0))
{
povt='Нет тем для повторения';
}
else {
for(i=0;i<qwert.length;i++)
{
if(qwert[i]===0)
{
povt+=temas[i]+'<br>';
}
}
}



document.getElementById("winotv").innerHTML=
    '<span style="font-size: 18px;">&nbsp&nbsp&nbsp&nbsp&nbspВаш результат:</span><br/>Общее количество вопросов: <b>'+totalQS+'</b> <br> Максимально возможный балл:<b>'+totalQS.toFixed(1)+
    '</b> <br> Количество вопросов, на которые был дан ответ: <b>'+totalQS+
    '</b> <br> Количество правильных ответов: <b>'+answerTrue.toFixed(1)+
    '</b><br>Процент выполнения теста: <b>'+vv.toFixed(1)+
    '%</b> <br>Оценка: <b>'+ocen+ 
    '</b> <br> Коэффициент усвоения учебного материала: <b>'+koef.toFixed(1)+
    '</b> <br> Время прохождения теста: <b>'+hour+'</b> часов <b>'+minut+'</b> минут <b> '+sec+'</b> секунд <br><br> Темы для повторения: <br><b><span style="font-size: 13px;">'+povt+'</b> </span>'+document.getElementById("winotv").innerHTML;
    

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
          
        </ul>
        <ul class="site-nav">
          
         
        </ul>
      </div>
	  
      <!-- content -->
      <div id="content">
	  <div class="onetest">
	  <div class="testname">

	  <!-- name -->
<h3 align="center">Начальный тест</h3>
</div>

<!-- kol vop
9
kol vop end-->

<form name="test" method="post">
<!-- vopr i otveti -->
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Что такое граф?
vopros end -->

<!-- otvet
1
3
0
5
графом G называется E(G) - конечное семейство неупорядоченных пар элементов из V(G), называемых ребрами;
графом G называется V(G) - непустое конечное множество элементов, называемых вершинами;
совокупность непустого множества вершин и связей между вершинами.




otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Выберите верное определение квазиминора:
vopros end -->

<!-- otvet
1
3
0
7
беззнаковый определитель матрицы, получаемой из матрицы   путем вычеркивания k-го столбца и l-й строки;
определитель особого рода матрицы, получаемой из матрицы путем вычеркивания первого столбца и первой строки;
определитель матрицы.




otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Что называется степенью вершины графа?
vopros end -->

<!-- otvet
1
3
0
6
степенью вершины называется число вершин в графе;
степенью вершины x графа G называется число ребер, инцидентных x;
степенью вершины называется число ребер и вершин графа.




otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Дидактика - это:
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
Компетентность - это: 
vopros end -->

<!-- otvet
1
3
0
5
процесс становления культурного человека и результат обучения, система приобретенных знаний, умений, навыков, способов мышления, мировоззрения, нравственности и культуры;
система знаний, умений, навыков, способов деятельности и мышления, ценностных отношений, которыми учащиеся овладевают в процессе обучения;
наличие знаний и опыта, необходимых для эффективной деятельности в заданной предметной области.




otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Схема клиент-серверной архитектуры включает в себя 3 уровня представления. Какой из уровней является лишним? 
vopros end -->

<!-- otvet
1
4
0
5
уровень представления данных пользователя;
уровень обработки данных приложением;
уровень доступа к файловым ресурсам;
уровень взаимодействия с БД.



otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
К языкам программирования высокого уровня не относится:
vopros end -->

<!-- otvet
1
4
0
4
Java;
С++;
Delphi;
ассемблер.



otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->

<!-- vopros
Какое из определений неверно?
vopros end -->

<!-- otvet
1
4
0
7
База данных (БД) - это взаимосвязанная информация об объектах, представляемая в краткой форме и строго фиксированных форматах.
Информационная система (ИС) - программно-аппаратный комплекс, предназначенный для хранения и обработки информации какой-либо предметной области;
Система управления базами данных (СУБД) - это совокупность языковых и программных средств, предназначенных для создания, ведения и совместного использования БД многими пользователями;
Язык SQL (Structured Query Language) - универсальный язык работы с базами данных, включающий возможности ее создания, модификации структуры, отбора данных по запросам, модификации информации в базе и прочие операции манипулирования базой данных.



otvet end -->
</b></font><br />

</div>
<br>
</form>

<div id="winotv">
<form action="n_test.jsp"  method="post"> <!--stranica testa!-->
<input type="text" name="qw1" id="qw1" hidden="true">
<input type="text" name="qw2" id="qw2" hidden="true">
<input type="text" name="qw3" id="qw3" hidden="true">
<input type="text" name="qw4" id="qw4" hidden="true">
<input type="text" name="qw5" id="qw5" hidden="true">
<input type="text" name="qw6" id="qw6" hidden="true">
<input type="text" name="qw7" id="qw7" hidden="true">
<input type="text" name="qw8" id="qw8" hidden="true">
<input type="text" name="qw9" id="qw9" hidden="true">
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
  q10 = null; q9=request.getParameter("1");
  mar = null; mar=request.getParameter("qwMa").toString().trim();
  riA = null;  riA=request.getParameter("qwRi").toString().trim();
  idU=0; idU= Integer.parseInt(session.getAttribute("idUser").toString());
  idT=0; idT=15; //nomer testa
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
'<h4>Что такое граф?</h4>'+
'</p></font><div class="otv" id="torf1"></div>'+
'<input type=radio name=Q1 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(1,0)"> графом G называется E(G) - конечное семейство неупорядоченных пар элементов из V(G), называемых ребрами;</span><br>'
+'<input type=radio name=Q1 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(1,1)"> графом G называется V(G) - непустое конечное множество элементов, называемых вершинами;</span><br>'
+'<input type=radio name=Q1 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(1,2)"> совокупность непустого множества вершин и связей между вершинами.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Выберите верное определение квазиминора:</h4>'+
'</p></font><div class="otv" id="torf2"></div>'+
'<input type=radio name=Q2 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(2,0)"> беззнаковый определитель матрицы, получаемой из матрицы   путем вычеркивания k-го столбца и l-й строки;</span><br>'
+'<input type=radio name=Q2 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(2,1)"> определитель особого рода матрицы, получаемой из матрицы путем вычеркивания первого столбца и первой строки;</span><br>'
+'<input type=radio name=Q2 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(2,2)"> определитель матрицы.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Что называется степенью вершины графа?</h4>'+
'</p></font><div class="otv" id="torf3"></div>'+
'<input type=radio name=Q3 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(3,0)"> степенью вершины называется число вершин в графе;</span><br>'
+'<input type=radio name=Q3 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(3,1)"> степенью вершины x графа G называется число ребер, инцидентных x;</span><br>'
+'<input type=radio name=Q3 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(3,2)"> степенью вершины называется число ребер и вершин графа.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Дидактика - это:</h4>'+
'</p></font><div class="otv" id="torf4"></div>'+
'<input type=radio name=Q4 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(4,0)"> процесс и результат усвоения систематизированных знаний, умений, навыков и обеспечение на этой основе соответствующего уровня развития личности;</span><br>'
+'<input type=radio name=Q4 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(4,1)"> наука об обучении и образовании, исследующая принципы и закономерности, формы и методы обучения; </span><br>'
+'<input type=radio name=Q4 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(4,2)"> совокупность теоретических, прикладных наук, изучающих воспитание, образование, обучение.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Выберите определение, характеризующее дидактические принципы?</h4>'+
'</p></font><div class="otv" id="torf5"></div>'+
'<input type=radio name=Q5 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(5,0)"> основные правила, определяющие содержание, организационные формы и методы учебного процесса в соответствии с его общими целями и закономерностями;</span><br>'
+'<input type=radio name=Q5 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(5,1)"> положения, определяющие закономерности и методы обучения, воспитания и развития людей;</span><br>'
+'<input type=radio name=Q5 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(5,2)"> основные виды воспитательного процесса в единстве их формы и содержания и в функциональном проявлении.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Компетентность - это: </h4>'+
'</p></font><div class="otv" id="torf6"></div>'+
'<input type=radio name=Q6 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(6,0)"> процесс становления культурного человека и результат обучения, система приобретенных знаний, умений, навыков, способов мышления, мировоззрения, нравственности и культуры;</span><br>'
+'<input type=radio name=Q6 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(6,1)"> система знаний, умений, навыков, способов деятельности и мышления, ценностных отношений, которыми учащиеся овладевают в процессе обучения;</span><br>'
+'<input type=radio name=Q6 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(6,2)"> наличие знаний и опыта, необходимых для эффективной деятельности в заданной предметной области.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Схема клиент-серверной архитектуры включает в себя 3 уровня представления. Какой из уровней является лишним? </h4>'+
'</p></font><div class="otv" id="torf7"></div>'+
'<input type=radio name=Q7 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(7,0)"> уровень представления данных пользователя;</span><br>'
+'<input type=radio name=Q7 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(7,1)"> уровень обработки данных приложением;</span><br>'
+'<input type=radio name=Q7 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(7,2)"> уровень доступа к файловым ресурсам;</span><br>'
+'<input type=radio name=Q7 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(7,3)"> уровень взаимодействия с БД.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>К языкам программирования высокого уровня не относится:</h4>'+
'</p></font><div class="otv" id="torf8"></div>'+
'<input type=radio name=Q8 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(8,0)"> Java;</span><br>'
+'<input type=radio name=Q8 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(8,1)"> С++;</span><br>'
+'<input type=radio name=Q8 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(8,2)"> Delphi;</span><br>'
+'<input type=radio name=Q8 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(8,3)"> ассемблер.</span><br>'
,
'<font color="#333333" saze="3"><p>\r\n'+
'<h4>Какое из определений неверно?</h4>'+
'</p></font><div class="otv" id="torf9"></div>'+
'<input type=radio name=Q9 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(9,0)"> База данных (БД) - это взаимосвязанная информация об объектах, представляемая в краткой форме и строго фиксированных форматах.</span><br>'
+'<input type=radio name=Q9 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(9,1)"> Информационная система (ИС) - программно-аппаратный комплекс, предназначенный для хранения и обработки информации какой-либо предметной области;</span><br>'
+'<input type=radio name=Q9 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(9,2)"> Система управления базами данных (СУБД) - это совокупность языковых и программных средств, предназначенных для создания, ведения и совместного использования БД многими пользователями;</span><br>'
+'<input type=radio name=Q9 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(9,3)"> Язык SQL (Structured Query Language) - универсальный язык работы с базами данных, включающий возможности ее создания, модификации структуры, отбора данных по запросам, модификации информации в базе и прочие операции манипулирования базой данных.</span><br>'
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
          
          
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
