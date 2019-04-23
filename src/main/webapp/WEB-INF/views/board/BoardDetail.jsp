<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>

<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Pink-Donut One Page Template</title>
<script src="resources/jquery-3.3.1.min.js"></script>
<script>
var userid=  '<c:out value="${sessionScope.loginId}"/>';
var board_num ='<c:out value="${board.board_num }"/>';
board_num = parseInt(board_num);
	//글 삭제를 위한 함수-1
	 $(function(){
	  init();   
	   $('#reply_submit').on('click', replyWrite);   
  });
 
 function init(){
	 // ajax로 전체 데이터를 싹 끌어올것임.
	 var sendData = {
				"board_num" : board_num
			};
	
	 $.ajax({
		method: 'post'
		, url : 'selectAll'
		,data : JSON.stringify(sendData)
		,contentType : "application/json; charset=UTF-8"
		, success : output
		
	 });
 }
 
	function output(resp) {
		var result = '';
			for (var i = 0; i < resp.length; i++) {
					result += '<tr>';
					result += '<td >' + resp[i].userid + '</td>';
					result += '<td >' + resp[i].b_replytext + '</td>';
					result += '<td >' + resp[i].b_regdate + '</td>';
					if(userid==resp[i].userid){
					result += '<td ><img src="resources/images/deletebutton.png" onclick="replyDelete('+resp[i].reply_num+')"  /></td>';
					} else{
						result += '<td></td>';
					}
					result += '</tr>';
			}
		$("#replyout").html(result);
	}
	
	function replyDelete(num){
		
	  	 
	  	  
	  	var sendData = {
				"reply_num" : num,
				"board_num" : board_num
			};
	  	
		var agree = confirm("댓글을 지우시겠습니까?");
		if (agree) {
			$.ajax({
				method : 'POST',
				url : 'replyDelete',
				data : JSON.stringify(sendData),
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					alert("성공");
					init();
				}
			
			})
		}
	}
 
 
	function boardDelete(num) {
		
		alert(num);
		if (confirm('정말 삭제하시겠습니까?')) {
			location.href = "BoardDelete?board_num=" + num;
		}
	}

    
	function boardList() {
		var targetPlace = "Board?currentPage=${navi.currentPage}&searchItem=${searchItem}&searchWord=${searchWord}";
		location.href = targetPlace;
	}
	//글 수정
    function boardUpdate(num) {
		location.href = "BoardUpdate?board_num="+ num;

	}
    
	function replyWrite(num){
		
	  	  var userid=  '<c:out value="${sessionScope.loginId}"/>';
	  	  var replytext = $("#replytext").val();
	  	  var board_num ='<c:out value="${board.board_num }"/>';
	  	  
	  	  if( replytext.length==0){
	  		  alert("댓글을 입력해주세요");
	  		  return;
	  	  }
		var sendData = {
				"userid" : userid , "b_replytext" : replytext , "board_num" : board_num
			};
		var agree = confirm("댓글을 다시겠습니까?");
		if (agree) {
			$.ajax({
				method : 'POST',
				url : 'replyWrite',
				data : JSON.stringify(sendData),
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					alert("성공");
					init();
				}
			
			})
		}
	}
	
	function replyDel() {
		var recordnum = "";
		var memberChk = document.getElementsByClassName("checkbox");
		var chked = false;
		var indexid = false;
		for (i = 0; i < memberChk.length; i++) {
			if (memberChk[i].checked) {
				if (indexid) {
					recordnum = recordnum + '-';
				}
				recordnum = recordnum + memberChk[i].value;
				indexid = true;
			}
		}
		if (!indexid) {
			alert("삭제할 사용자를 체크해 주세요");
			return;
		}

		var agree = confirm("삭제 하시겠습니까?");
		if (agree) {
			$.ajax({
				method : 'post',
				url : 'deleteRecord',
				data : 'recordnum=' + recordnum,
				dataType : 'text',
				success : init
			})
		}
	}

</script>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Poppins');

/* BASIC */
html {
	background-color: #56baed;
}

body {
	font-family: "Poppins", sans-serif;
	height: 100vh;
}

a {
	color: #facc00;
	display: inline-block;
	text-decoration: none;
	font-weight: 400;
}

h2 {
	text-align: center;
	font-weight: 600;
	text-transform: uppercase;
	display: inline-block;
	margin: 40px 8px 10px 8px;
	color: #cccccc;
}

/* STRUCTURE */
.wrapper {
	display: flex;
	align-items: center;
	flex-direction: column;
	justify-content: center;
	width: 100%;
	min-height: 100%;
	padding: 20px;
}

#formContent {
	-webkit-border-radius: 10px 10px 10px 10px;
	border-radius: 10px 10px 10px 10px;
	background: #fff;
	padding: 30px;
	width: 90%;
	max-width: 450px;
	position: relative;
	padding: 0px;
	-webkit-box-shadow: 0 30px 60px 0 #facc005c;
	box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
	text-align: center;
}

#formFooter {
	background-color: #f6f6f6;
	border-top: 1px solid #facc00;
	padding: 25px;
	text-align: center;
	-webkit-border-radius: 0 0 10px 10px;
	border-radius: 0 0 10px 10px;
}

/* TABS */
h2.inactive {
	color: #cccccc;
}

h2.active {
	color: #0d0d0d;
	border-bottom: 2px solid #facc00;
}

/* FORM TYPOGRAPHY*/
input[type=button], input[type=submit], input[type=reset] {
	background-color: #facc00;
	border: none;
	color: white;
	padding: 15px 80px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	text-transform: uppercase;
	font-size: 13px;
	-webkit-box-shadow: 0 10px 30px 0 #facc005c;
	box-shadow: 0 10px 30px 0 #facc005c;
	-webkit-border-radius: 5px 5px 5px 5px;
	border-radius: 5px 5px 5px 5px;
	margin: 5px 20px 40px 20px;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-ms-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover
	{
	background-color: #facc00;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active
	{
	-moz-transform: scale(0.95);
	-webkit-transform: scale(0.95);
	-o-transform: scale(0.95);
	-ms-transform: scale(0.95);
	transform: scale(0.95);
}

input[type=text], input[type=password] {
	background-color: #f6f6f6;
	border: none;
	color: #0d0d0d;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 5px;
	width: 85%;
	border: 2px solid #f6f6f6;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
	-webkit-border-radius: 5px 5px 5px 5px;
	border-radius: 5px 5px 5px 5px;
}

input[type=text]:focus {
	background-color: #fff;
	border-bottom: 2px solid #facc00;
}

input[type=text]:placeholder {
	color: #cccccc;
}

/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
	-webkit-animation-name: fadeInDown;
	animation-name: fadeInDown;
	-webkit-animation-duration: 1s;
	animation-duration: 1s;
	-webkit-animation-fill-mode: both;
	animation-fill-mode: both;
}

@
-webkit-keyframes fadeInDown { 0% {
	opacity: 0;
	-webkit-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
}

100%
{
opacity
:
1;
-webkit-transform
:none;
transform:none;
}
}
@
keyframes fadeInDown { 0% {
	opacity: 0;
	-webkit-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
}
100%
{
opacity:1;
-webkit-transform:none
;
transform:
none
;
}
}

/* Simple CSS3 Fade-in Animation */
@
-webkit-keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
-moz-keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
.fadeIn {
	opacity: 0;
	-webkit-animation: fadeIn ease-in 1;
	-moz-animation: fadeIn ease-in 1;
	animation: fadeIn ease-in 1;
	-webkit-animation-fill-mode: forwards;
	-moz-animation-fill-mode: forwards;
	animation-fill-mode: forwards;
	-webkit-animation-duration: 1s;
	-moz-animation-duration: 1s;
	animation-duration: 1s;
}

.fadeIn.first {
	-webkit-animation-delay: 0.4s;
	-moz-animation-delay: 0.4s;
	animation-delay: 0.4s;
}

.fadeIn.second {
	-webkit-animation-delay: 0.6s;
	-moz-animation-delay: 0.6s;
	animation-delay: 0.6s;
}

.fadeIn.third {
	-webkit-animation-delay: 0.8s;
	-moz-animation-delay: 0.8s;
	animation-delay: 0.8s;
}

.fadeIn.fourth {
	-webkit-animation-delay: 1s;
	-moz-animation-delay: 1s;
	animation-delay: 1s;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
	display: block;
	left: 0;
	bottom: -10px;
	width: 0;
	height: 2px;
	background-color: #facc00;
	content: "";
	transition: width 0.2s;
}

.underlineHover:hover {
	color: #0d0d0d;
}

.underlineHover:hover:after {
	width: 100%;
}

/* OTHERS */
*:focus {
	outline: none;
}

#icon {
	width: 60%;
}

* {
	box-sizing: border-box;
}

.jumbotron {
	background-image: url('');
	background-size: cover;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: green;
}

#wrapper {
 width: 900px;
 text-align: center;
 margin: 0 auto;
 margin-top:20px;
 }
#in {
 display: inline-block;
 }
 
 table.board {
    width: 900px;
    margin: 0 auto;
    border: 5px solid #444444;
    border-collapse: collapse;

  }
  
   th.board {
   	width: 130px;
    border: 5px solid #444444;
    height: 50px;
	text-align: center;
    background-color: #444444;
	color: #ffffff;
  }
  
  td.board {
  	border: 5px solid #444444;
    height: 50px;
  }

 table.reply {
    width: 900px;
    margin: 0 auto;
    border: 5px dotted #c9cacc;
    border-collapse: collapse;

  }
  
  td.reply {
  	border-bottom : 5px dotted #c9cacc;
    height: 50px;
  }
.size {
font-size: 20px;
}

.title {
font-size: 20px;
background-color: #444444;
color: #ffffff;
}

img:hover {
	opacity: 0.5;
	cursor: pointer;
}
</style>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<!--<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,600,700' rel='stylesheet' type='text/css'>-->
<link rel="stylesheet" href="resources/css/fonticons.css">
<link rel="stylesheet" href="resources/fonts/stylesheet.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


<!--For Plugins external css-->
<link rel="stylesheet" href="resources/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="resources/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="resources/css/responsive.css" />

<script src="resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<!--Home page style-->
	<header id="main_menu" class="header">
		<div class="main_menu_bg navbar-fixed-top"
			style="width: 100%; height: 80px; background-color: #fad000;">
			<div class="container">
				<div class="row">
					<div class="nave_menu">
						<nav class="navbar navbar-default">
							<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed"
										data-toggle="collapse"
										data-target="#bs-example-navbar-collapse-1"
										aria-expanded="false">
										<span class="sr-only">Toggle navigation</span> <span
											class="icon-bar"></span> <span class="icon-bar"></span> <span
											class="icon-bar"></span>
									</button>

								</div>

								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">

									<ul class="nav navbar-nav">
										<li><a href="Home">Home</a></li>
										<li><a href="Weather">Weather</a></li>
										<li><a href="Culture">Culture</a></li>
										<li><a href="Socar">Socar</a></li>
										<li><a href="Board">Board</a></li>
										<li><a href="Friends">Search</a></li>
									</ul>

									<ul class="nav navbar-nav navbar-right">

										<c:if test="${sessionScope.loginId == null }">
												<li><a href="Login">Login</a></li>
											</c:if>
	
											<c:if test="${sessionScope.loginId != null }">
												<li><a>${sessionScope.loginName}</a></li>
												<li><a href="MyPage?msg=t"><i class="fa fa-inbox"></i>&nbsp;<span id="output" class="label label-danger"></span></a></li>
												<li><a href="MyPage">My Page</a></li>
												<li><a href="logout">Logout</a></li>
											</c:if>

									</ul>

								</div>
							</div>
						</nav>
					</div>
				</div>

			</div>

		</div>
	</header>

	<div style="width: 100%; height: 50px;"></div>


	<section id="myworks" class="myworks">
		<div id="wrapper">
      	<div style="float: left; height: 60px; padding-left: 20px;">
      		<a href="${pageContext.request.contextPath} "><img src="resources/images/home.png" style="width: 50px; height: 50px;"></a>
      	</div>
      	<div style="float: right; height: 40px; padding: 20px 20px;">
				<a href="javascript:boardList();"><img src="resources/images/list.png" style="padding-right: 10px;"></a>
				<c:if test="${loginId == board.userid }">
					<img src="resources/images/update.png" style="padding-right: 10px;" onclick="boardUpdate(${board.board_num});">
					<img src="resources/images/delete.png" onclick="boardDelete(${board.board_num});">
				</c:if>
      	</div>
		<table class="board">
			<tr>
				<th class="board" style="text-align: center;">번호</th>
				<td class="board">${board.board_num}</td>
			</tr>
			<tr>
				<th class="board" style="text-align: center;">작성자</th>
				<td class="board">${board.userid}</td>
			</tr>
			<tr>
				<th class="board" style="text-align: center;">작성일</th>
				<td class="board">${board.b_regdate }</td>
			</tr>
			<tr>
				<th class="board" style="text-align: center;">조회수</th>
				<td class="board">${board.hitcount }</td>
			</tr>
			<tr>
				<th class="board" style="text-align: center;">제목</th>
				<td class="board">${board.b_title}</td>
			</tr>
			<tr>
				<th class="board" style="height: 200px; text-align: center;">내용</th>
				<td class="board" style="text-align: left;">${board.b_content}</td>
			</tr>
			<tr>
				<th class="board" style="text-align: center;">첨부파일</th>
				<td class="board" style="text-align: left;">
					<!-- 파일이 있을경우. --> <c:if test="${not empty board.b_originalfile}">
						<a href="download?board_num=${board.board_num}">${board.b_originalfile}</a>
						<br />
						<!-- download요청시 보드넘버를 같이 보냄. -->
						<!-- 파일이 사진일 경우만 사진보이게하기. -->
						<c:if test="${not empty type}">
							<img style="width: 100px; height: 100px;"
								src="download?board_num=${board.board_num}" />
						</c:if>
						<!-- 파일이 없을경우. -->
					</c:if> <c:if test="${empty board.b_originalfile}">
		                                  첨부파일 없음.
		       </c:if>

				</td>

			</tr>
			

		</table>
		<div style="width: 100%; height: 30px;"></div>
			<table id="replyout" class="reply">
			</table>
			<div style="height: 100px; width: 900px; padding: 30px;">
				<input id="replytext" type="text" placeholder="댓글 내용을 입력하세요" style=" float: left; width: 550px;" />
				<input id="reply_submit" type="button" value="댓글 입력" style="float: right;" />
			</div>
			

	</div>

	</section>
	<!-- End of contact With Map Section -->









	<script src="resources/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="resources/js/vendor/bootstrap.min.js"></script>
	<script src="resources/js/vendor/isotope.min.js"></script>

	<script src="resources/js/jquery.easypiechart.min.js"></script>
	<script src="resources/js/jquery.mixitup.min.js"></script>


	<script src="resources/js/plugins.js"></script>
	<script src="resources/js/main.js"></script>

</body>
</html>
