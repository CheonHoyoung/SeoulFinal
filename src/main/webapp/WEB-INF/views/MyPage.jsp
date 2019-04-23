<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Culture Shocka</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/mypage.css">



<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Poppins');

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
	max-width: 1000px;
	position: relative;
	padding: 0px;
	-webkit-box-shadow: 0 30px 60px 0 #facc005c;
	box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
	text-align: center;
}

#formFooter {
	background-color: #f6f6f6;
	border-top: 1px solid #f8d004;
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
	border-bottom: 2px solid #f8d004;
}

/* FORM TYPOGRAPHY*/
input[type=button], input[type=submit], input[type=reset] {
	background-color: #f8d004;
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
	background-color: #f8d004;
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
	border-bottom: 2px solid #f8d004;
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




:


 


none




;
transform




:


 


none




;
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
opacity




:


 


1;
-webkit-transform




:


 


none




;
transform




:


 


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
	background-color: #f8d004;
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

table.type10 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	margin: 20px 10px;
}

table.type10 tbody th {
	width: 150px;
	padding: 10px;
}

table.type10 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
}

table.type10 .even {
	background: #fdf3f5;
}

table.type10 .even2 {
	background: #e8f4fc;
}

table.type10 .even3 {
	background: #f8e5ff;
}

.f_th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #e7708d;
	margin: 20px 10px;
}

.m_th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #4ca2db;
	margin: 20px 10px;
}

.h_th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #a543c6;
	margin: 20px 10px;
}

#alltable {
	height: 380px;
	overflow: auto;
}

.navbar-fixed-top, .navbar-fixed-bottom {
	padding-top: 0px;
	padding-bottom: 0px;
	position: fixed;
	left: 0;
	right: 0;
	z-index: 1000;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	background-color: #f8d004;
	color: #f8d004;
	height: 80px;
}

.menu-scroll {
	padding-top: 0px;
	padding-bottom: 0px;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	z-index: 300;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	background-color: #f8d004;
	color: #f8d004;
	height: 80px;
}

body {
	background: #ffffff;
	color: #000000;
	font-family: "Roboto", Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: 300;
	letter-spacing: 0.01em;
	line-height: 1.6em;
	margin: 0;
	padding: 100px;
}

h1 {
	font-size: 40px;
	line-height: 0.8em;
	color: rgba(255, 255, 255, 0.2);
}

button:focus, input:focus, textarea:focus, select:focus {
	outline: none;
}

.tabs {
	display: block;
	display: -webkit-flex;
	display: -moz-flex;
	display: flex;
	-webkit-flex-wrap: wrap;
	-moz-flex-wrap: wrap;
	flex-wrap: wrap;
	margin: 0;
	overflow: hidden;
}

.tabs [class^="tab"] label, .tabs [class*=" tab"] label {
	color: #000000;
	cursor: pointer;
	display: block;
	font-size: 1.1em;
	font-weight: 300;
	line-height: 1em;
	padding: 2rem 0;
	text-align: center;
}

.tabs [class^="tab"] [type="radio"], .tabs [class*=" tab"] [type="radio"]
	{
	border-bottom: 1px solid rgba(239, 237, 239, 0.5);
	cursor: pointer;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	display: block;
	width: 100%;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}

.tabs [class^="tab"] [type="radio"]:hover, .tabs [class^="tab"] [type="radio"]:focus,
	.tabs [class*=" tab"] [type="radio"]:hover, .tabs [class*=" tab"] [type="radio"]:focus
	{
	border-bottom: 1px solid #fd264f;
}

.tabs [class^="tab"] [type="radio"]:checked, .tabs [class*=" tab"] [type="radio"]:checked
	{
	border-bottom: 2px solid #fd264f;
}

.tabs [class^="tab"] [type="radio"]:checked+div, .tabs [class*=" tab"] [type="radio"]:checked+div
	{
	opacity: 1;
}

.tabs [class^="tab"] [type="radio"]+div, .tabs [class*=" tab"] [type="radio"]+div
	{
	display: block;
	opacity: 0;
	padding: 2rem 0;
	width: 90%;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}

.tabs .tab-2 {
	width: 50%;
}

.tabs .tab-2 [type="radio"]+div {
	width: 200%;
	margin-left: 200%;
}

.tabs .tab-2 [type="radio"]:checked+div {
	margin-left: 0;
}

.tabs .tab-2:last-child [type="radio"]+div {
	margin-left: 100%;
}

.tabs .tab-2:last-child [type="radio"]:checked+div {
	margin-left: -100%;
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
<script type="text/javascript" src="resources/sockjs-0.3.4.js"></script>
<script src="resources/jquery-3.3.1.min.js"></script>
<script src="resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script>
	var userId = '<c:out value="${sessionScope.loginId}"/>';
	var msgt = '<c:out value="${msg}"/>';
	var sendUserId = new Array();
	var receiveUserId= new Array();
	var roomName= 0;

	$(function() {
		connect();
		init();
		init2();
		init3();
		init4();
		selectRequestFriend();
		if(msgt!=""){
			openCity('Paris');
		}
	});
	
	//남긴 메시지함 
	function init4() {
		$.ajax({
			method : 'post',
			url : 'selectOffMessage',
			success : output4
		});
	}
	
	function output4(resp) {
		var result = resp;
		if(result==""){
			result = "0"
		}
		$("#output5").html(result);
	}
	
	function fn_userDel() {
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
	
	 function allChk(obj){
		        //클릭되었으면
		        if($(obj).prop("checked")){
		            $("input[name=checkbox]").prop("checked",true);
		        }else{
		            $("input[name=checkbox]").prop("checked",false);
		        }
	  } 
	 
	 function allChk2(obj){
	        //클릭되었으면
	        if($(obj).prop("checked")){
	            $("input[name=checkbox2]").prop("checked",true);
	        }else{
	            $("input[name=checkbox2]").prop("checked",false);
	        }
	} 
	 
	 function allChk3(obj){
	        //클릭되었으면
	        if($(obj).prop("checked")){
	            $("input[class=checkbox3]").prop("checked",true);
	        }else{
	            $("input[class=checkbox3]").prop("checked",false);
	        }
	} 

	function fn_msgDel() {
		var msgnum = "";
		var memberChk = document.getElementsByClassName("checkbox3");
		var chked = false;
		var indexid = false;
		for (i = 0; i < memberChk.length; i++) {
			if (memberChk[i].checked) {
				if (indexid) {
					msgnum = msgnum + '-';
				}
				msgnum = msgnum + memberChk[i].value;
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
				url : 'deleteMessage',
				data : 'msgnum=' + msgnum,
				dataType : 'text',
				success : init3
			})
		}
	}

	function fn_frdDel(friend_id) {
		var agree = confirm("삭제 하시겠습니까?");
		if (agree) {
			$.ajax({
				method : 'post',
				url : 'deleteFriend',
				data : 'friend_id=' + friend_id,
				dataType : 'text',
				success : init2
			})
		}
	}

	function init() {
		$.ajax({
			method : 'post',
			url : 'selectRecord',
			success : output
		});
	}

	function init2() {
		$.ajax({
			method : 'post',
			url : 'selectFriend',
			success : output2
		});
	}

	function init3() {
		$.ajax({
			method : 'post',
			url : 'selectMessage',
			success : output3
		});
	}

	function output(resp) {
		var listSvcnm = new Array();
		var listSearchnm = new Array();
		for (var i = 0; i < resp.length; i++) {
			if (resp[i].svcnm != null) {
				listSvcnm.push(resp[i]);
			} else {
				listSearchnm.push(resp[i]);
			}
		}
		var result = '';
		var result2 = '';
		if (listSvcnm.length == 0) {
			result2 += '<tr>';
			/* result2 += '<th scope="row"></th>'; */
			result2 += '<td colspan="3" style="width: 900px; text-align: center;">검색 내역이 없습니다.</td>';
			result2 += '</tr>';
		} else {
			for (var i = 0; i < listSvcnm.length; i++) {

				if (i % 2 == 0) {
					result2 += '<tr>';
					result2 += '<th scope="row" style="width: 100px;"><input name="checkbox2" class="checkbox" type="checkbox" value="'+listSvcnm[i].recordnum +'" /></th>';
					result2 += '<td style="width: 400px;">' + listSvcnm[i].svcnm + '</td>';
					result2 += '<td style="width: 400px;">' + listSvcnm[i].regdate + '</td>';
					result2 += '</tr>';
				}
				if (i % 2 == 1) {
					result2 += '<tr>';
					result2 += '<th scope="row" class="even3"  style="width: 100px;"><input name="checkbox2" class="checkbox" type="checkbox" value="'+listSvcnm[i].recordnum +'" /></th>';
					result2 += '<td class="even3" style="width: 400px;">' + listSvcnm[i].svcnm
							+ '</td>';
					result2 += '<td class="even3" style="width: 400px;">' + listSvcnm[i].regdate
							+ '</td>';
					result2 += '</tr>';
				}
			}
		}

		if (listSearchnm.length == 0) {
			result += '<tr>';
			/* result += '<th scope="row"></th>'; */
			result += '<td colspan="3" style="width: 900px; text-align: center;">검색 내역이 없습니다.</td>';
			result += '</tr>';
		} else {
			for (var i = 0; i < listSearchnm.length; i++) {

				if (i % 2 == 0) {
					result += '<tr>';
					result += '<th scope="row" style="width: 100px;"><input name="checkbox" class="checkbox" type="checkbox" value="'+listSearchnm[i].recordnum +'" /></th>';
					result += '<td style="width: 400px;">' + listSearchnm[i].searchnm + '</td>';
					result += '<td style="width: 400px;">' + listSearchnm[i].regdate + '</td>';
					result += '</tr>';
				}
				if (i % 2 == 1) {
					result += '<tr>';
					result += '<th scope="row" class="even3" style="width: 100px;"><input name="checkbox" class="checkbox" type="checkbox" value="'+listSearchnm[i].recordnum +'" /></th>';
					result += '<td class="even3" style="width: 400px;">' + listSearchnm[i].searchnm
							+ '</td>';
					result += '<td class="even3" style="width: 400px;">' + listSearchnm[i].regdate
							+ '</td>';
					result += '</tr>';
				}
			}
		}

		$("#result").html(result);
		$("#result2").html(result2);
	}

	function output2(resp) {
		var result3 = '';
		if (resp.length == 0) {
			result3 += '<tr>';
			/* result3 += '<th scope="row"></th>'; */
			result3 += '<td colspan="5" style="width: 900px; text-align: center;">등록된 친구가 없습니다.</td>';
			result3 += '</tr>';
		} else {
			for (var i = 0; i < resp.length; i++) {
				var id = "#" + i
				
				if (i % 2 == 0) {
					result3 += '<tr id='+i+'>';
					result3 += '<td scope="row" class="even" style="width: 180px;">'
							+ resp[i].friend_id + '</td>';
					result3 += '<td class="even" style="width: 180px;">' + resp[i].friend_name
							+ '</td>';
					result3 += '<td class="even" style="width: 180px;">' + resp[i].friend_mail
							+ '</td>';
					result3 += '<td class="even" style="width: 180px;">' + resp[i].friend_phone
							+ '</td>';
							if(resp[i].friend_access!=null){
								result3 += '<td class="even" style="width: 180px;"><img style="height:20px; width:20px;" src="resources/images/online.png"></td>';								
							} else{
								result3 += '<td class="even" style="width: 180px;"><img style="height:20px; width:20px;" src="resources/images/offline.png"></td>'
							}
					result3 += '</tr>';
				}
				if (i % 2 == 1) {
					result3 += '<tr id='+i+'>';
					result3 += '<td style="width: 180px;">' + resp[i].friend_id + '</td>';
					result3 += '<td style="width: 180px;">' + resp[i].friend_name + '</td>';
					result3 += '<td style="width: 180px;">' + resp[i].friend_mail + '</td>';
					result3 += '<td style="width: 180px;">' + resp[i].friend_phone + '</td>';
					if(resp[i].friend_access!=null){
						result3 += '<td style="width: 180px;"><img style="height:20px; width:20px;" src="resources/images/online.png"></td>';
					} else{
						result3 += '<td style="width: 180px;"><img style="height:20px; width:20px;" src="resources/images/offline.png"></td>';	
					}
					result3 += '</tr>';
				}
			}
		}

		$("#result3").html(result3);
		chatmenu(resp.length);
	}

	function output3(resp) {
		var result4 = '';
		if (resp.length == 0) {
			result4 += '<tr>';
			/* result4 += '<th scope="row"></th>'; */
			result4 += '<td colspan="4" style="width: 900px; text-align: center;">메시지가 없습니다.</td>';
			result4 += '</tr>';
		} else {
			for (var i = 0; i < resp.length; i++) {
				var id = "#" + i
				if (i % 2 == 0) {
					result4 += '<tr	>';
					result4 += '<th scope="row" class="even" style="width: 150px;"><input class="checkbox3" type="checkbox" value="'+resp[i].msgnum +'" /></th>';
					result4 += '<td class="even" style="width: 250px;">' + resp[i].message + '</td>';
					result4 += '<td class="even" style="width: 250px;">' + resp[i].sendUserId
							+ '</td>';
					result4 += '<td class="even" style="width: 250px;">' + resp[i].msgDate + '</td>';
					result4 += '</tr>';
				}
				if (i % 2 == 1) {
					result4 += '<tr>';
					result4 += '<th scope="row" style="width: 150px;"><input class="checkbox3" type="checkbox" value="'+resp[i].msgnum +'" /></th>';
					result4 += '<td style="width: 250px;">' + resp[i].message + '</td>';
					result4 += '<td style="width: 250px;">' + resp[i].sendUserId + '</td>';
					result4 += '<td style="width: 250px;">' + resp[i].msgDate + '</td>';
					result4 += '</tr>';
				}
			}
		}

		$("#result4").html(result4);
	}

	function chatmenu(length) {
		// 제이쿼리 콘텍스트 메뉴
		for (var i = 0; i < length; i++) {
			var selector = "#" + i;
			$.contextMenu({
				selector : selector,
				callback : function(key, options) {
					var m = "clicked: " + key;
					var cc = options;
					var a = cc.selector
					if (key == 'Message') {
						var receiveuserid = $(a).children('td:eq(0)').text();
						chatOneConnect(receiveuserid);
					}
					if (key == 'Cut') {
						var friend_id = $(a).children('td:eq(0)').text();
						fn_frdDel(friend_id);
					}
				},
				items : {
					"Message" : {
						name : "message",
						icon : "edit"
					},
					"Cut" : {
						name : "Cut",
						icon : "cut"
					},
					

					"sep1" : "---------",
					"quit" : {
						name : "Quit",
						icon : function() {
							return 'context-menu-icon context-menu-icon-quit';
						}
					}
				}
			});
		}

		$('.list-group-item').on('click', function(e) {
			console.log('clicked', this);
		})
	}
	
	function selectRequestFriend(){
		$.ajax({
			method : 'POST',
			url : 'selectRequestFriend',
			success : output6
		})
	}

	function acceptFriend(num){
		var sendData = {
				"sendUserId" : sendUserId[num],
				"receiveUserId" : receiveUserId[num]
			};
		var agree = confirm("수락 하시겠습니까?");
		if (agree) {
			$.ajax({
				method : 'POST',
				url : 'friendAccept',
				data : JSON.stringify(sendData),
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					alert("성공");
					sendUserId.splice(num, 1);
					receiveUserId.splice(num, 1);
					selectRequestFriend();
					init2();
				}
			
			})
		}
	}

	function refuseFriend(num){
		var sendData = {
				"sendUserId" : sendUserId[num],
				"receiveUserId" : receiveUserId[num]
			};
		var agree = confirm("거절 하시겠습니까?");
		if (agree) {
			$.ajax({
				method : 'POST',
				url : 'friendRefuse',
				data : JSON.stringify(sendData),
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					alert("성공");
					sendUserId.splice(num, 1);
					receiveUserId.splice(num, 1);
					selectRequestFriend();
				}
			
			})
		}
	}

	function output6(resp) {
		var result = '';
		if(userId==""){
			result += '<tr><td colspan="4" style="width: 900px; text-align: center;">로그인을 해야 친구 요청받은 내역을 볼 수 있습니다.</td></tr>';
		} else if(resp.length==0){
			result += '<tr><td colspan="4" style="width: 900px; text-align: center;">친구를 요청받은 내역이 없습니다.</td></tr>';
		}
		
		for(var i = 0; i<resp.length; i++){
		sendUserId.push(resp[i].senduserid);
		receiveUserId.push(resp[i].receiveuserid);
		result += '<tr id="request">';
		result += '<td style="width: 200px;" > ' + resp[i].senduserid + '</td>';
		result += '<td style="width: 200px;" > ' + resp[i].receiveuserid + '</td>';
		result += '<td style="width: 250px; text-align: center;"><input type="button" value="수락" onclick="acceptFriend('+i+')" style="margin: 0 auto; padding: 5px 60px;"  /></td>';
		result += '<td style="width: 250px; text-align: center;"><input type="button" value="거절" onclick="refuseFriend('+i+')" style="margin: 0 auto; padding: 5px 60px;"  /></td>';
		result += '</tr>';
		}
		
		
		$("#output6").html(result);
	}
	

	//소켓 스크립트
	function connect() {
		sock = new SockJS("<c:url value="/echo"/>");
		sock.onopen = function() {
			sock.send(":::" + userId);
			console.log('open');
		};
		sock.onmessage = function(evt) {
			var data = evt.data;
			var strArray = data.split('-');
			var message = strArray[0];
			var receiveuserid = strArray[1];
			var senduserid = strArray[2];
			var date = strArray[3];
			chatOneAppend(message, senduserid, receiveuserid, date);
		};
		sock.onclose = function() {
			console.log('close');
		};
	}
	
	function chatConnect(receiveuserid) {
		 
		var url = 'Chat?receiveuserid=' + receiveuserid;
		var openWin = window.open(url, 'testWindow',
				'width=420px, height=340px, scrollbars=no, left=550,  top=150');
	}

	function chatOneConnect(receiveuserid) {
		var url = 'chatOne?receiveuserid=' + receiveuserid;
		var openWin = window.open(url, 'testWindow',
				'width=420px, height=340px, scrollbars=no, left=550,  top=150');
	}
	function chatOneAppend(msg, senduserId, receiveuserid, date) {
		var url = 'chatOne?senduserId=' + senduserId + '&receiveuserid='
				+ receiveuserid + '&msg=' + msg + '&date=' + date;
		var openWin = window.open(url, 'testWindow',
				'width=420px, height=420px, scrollbars=no, left=550,  top=150');
	}

	function setChildText() {
		openWin.document.getElementById("msg").value = document
				.getElementById("pmsg").value;
	}
	function send(msg) {
		sock.send(msg + "-" + userId);
	}
	$(document).ready(function() {
		$('#chatContent').keypress(function(event) {
			var keycode = (event.keyCode ? event.keyCode : event.which);
			if (keycode == '13') { // 엔터 키보드가 13
				send();
			}
			event.stopPropagation(); /// 이벤트 발생 범위 한정하는 코드 
		});
		$('#sendBtn').click(function() {
			send();
		});
	});
</script>

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
		<div class="main_menu_bg navbar-fixed-top">
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
											<li><a href="MyPage?msg=t"><i class="fa fa-inbox"></i>&nbsp;<span
													id="output5" class="label label-danger"></span></a></li>
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
	<!--End of header -->


	<section id="myworks" class="myworks">
		<div class="wrapper fadeInDown">
			<div id="formContent">

				<!-- Tabs Titles -->
				<div class="w3-bar w3-black">
					<button class="w3-bar-item w3-button" onclick="openCity('London')">history</button>
					<button class="w3-bar-item w3-button" onclick="openCity('Paris')">Message</button>
					<button class="w3-bar-item w3-button" onclick="openCity('Tokyo')">Friends</button>
				</div>

				<div id="London" class="w3-container city">
					<h2>history</h2>

					<div class="tabs">
						<div class="tab-2">
							<label for="tab2-1">Search&nbsp;<img
								src="resources/images/search.png"></label> <input id="tab2-1"
								name="tabs-two" type="radio" checked="checked">
							<div>
								<h4>Search</h4>
								<table id="alltable" class="type10"
									style="display: inline-block;">
									<thead>
										<tr>
											<th scope="cols" class="h_th"><input type="checkbox" onchange="allChk(this);">삭제</th>
											<th scope="cols" class="h_th">제목</th>
											<th scope="cols" class="h_th">날짜</th>
										</tr>
									</thead>
									<tbody id="result">
									</tbody>
								</table>
							</div>
							<!-- table 끝 div -->
						</div>
						<!-- class tab-2 끝 div -->

						<div class="tab-2">
							<label for="tab2-2">Reservation&nbsp;<img
								src="resources/images/reservation.png"></label> <input id="tab2-2"
								name="tabs-two" type="radio">
							<div>
								<h4>Reservation</h4>
								<table id="alltable" class="type10"
									style="display: inline-block;">
									<thead>
										<tr>
											<th scope="cols" class="h_th"><input type="checkbox" onchange="allChk2(this);">삭제</th>
											<th scope="cols" class="h_th">제목</th>
											<th scope="cols" class="h_th">날짜</th>
										</tr>
									</thead>
									<tbody id="result2">
									</tbody>
								</table>
							</div>
							<!-- table 끝 div -->
						</div>
						<!-- class tab-2 끝 div -->
					</div>
					<!-- class="tabs" 끝 div -->

					<input type="button" value="삭제하기" onclick="fn_userDel()" />
				</div>

				<div id="Paris" class="w3-container city" style="display: none">
					<h2>Message</h2>
					<div>
						<table id="alltable" class="type10" style="display: inline-block;">
							<thead>
								<tr>
									<th scope="cols" class="m_th"><input type="checkbox" onchange="allChk3(this);">삭제</th>
									<th scope="cols" class="m_th">message</th>
									<th scope="cols" class="m_th">보낸사람</th>
									<th scope="cols" class="m_th">날짜</th>
								</tr>
							</thead>
							<tbody id="result4">
							</tbody>
						</table>
					</div>
					<input type="button" value="삭제하기" onclick="fn_msgDel()" />
				</div>

				<div id="Tokyo" class="w3-container city"
					style="display: none; width: 100%; text-align: center;">
					<h2>Friends</h2>
					<table id="alltable" class="type10" style="display: inline-block;">
						<thead>
							<tr>
								<th scope="cols" class="f_th">id</th>
								<th scope="cols" class="f_th">name</th>
								<th scope="cols" class="f_th">email</th>
								<th scope="cols" class="f_th">phone</th>
								<th scope="cols" class="f_th">access</th>
							</tr>
						</thead>
						<tbody id="result3">
						</tbody>
					</table>
					<table id="alltable" class="type10" style="display: inline-block;">
						<thead>
							<tr>
								<th colspan="4" scope="cols" class="f_th">* 친구 요청 현황 *</th>
							</tr>
							<tr>
								<th scope="cols" class="f_th" style="width:200px;">보낸ID</th>
								<th scope="cols" class="f_th" style="width:200px;">받은사람ID</th>
								<th colspan="2" scope="cols" class="f_th" style="width:500px; text-align: center;">SELECT</th>
							</tr>
						</thead>
						<tbody id="output6">
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!-- End of Features Section -->


	<section id="contact" class="contact">

		<div class="row" style="margin-right: 170px; margin-left: 170px;">
			<div class="footer_copyright">

				<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInDown"
					data-wow-duration="3s">
					<div class="single_copyirgth text-left">
						<p style="font-family: 'big_johnregular';">Copyright 2018
							&copy; by C-4</P>
						<p style="font-size: 12px;">
							+82 1566 - 5114 | ddaaahhiiiii@gmail.com <br>
							Yeongdong-daero 513, Gangnam-gu, Seoul COEX office (06164)
						</p>
					</div>
				</div>

				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="single_copyirgth wow fadeInUp" data-wow-duration="2s">
						<ul class="navbar-right">
							<li class="active" style="font-family: 'big_johnregular';">
								<p>&nbsp;</p> <a href="Socar"><img style="width: 120px;"
									src="resources/images/socar1.png"></a>
							</li>

						</ul>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- End of contact With Map Section -->


	<!-- STRAT SCROLL TO TOP -->

	<div class="scrollup">
		<a href="#"><i class="fa fa-chevron-up"></i></a>
	</div>

	<script src="resources/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="resources/js/vendor/bootstrap.min.js"></script>
	<script src="resources/js/vendor/isotope.min.js"></script>

	<script src="resources/js/jquery.easypiechart.min.js"></script>
	<script src="resources/js/jquery.mixitup.min.js"></script>

	<script type="text/javascript">
		function openCity(cityName) {
			var i;
			var x = document.getElementsByClassName("city");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			document.getElementById(cityName).style.display = "block";
			if (cityName == "Paris") {
				$.ajax({
					method : 'post',
					url : 'updateOffMessage',
					success : function() {
						init4();
					}
				});
				init3();
				
			}
		}
	</script>

	<script src="resources/js/plugins.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/jquery-3.3.1.min.js"></script>
	<!-- 컨텍스트 메뉴 입포트 -->
	<link rel="stylesheet" type="text/css"
		href="resources/css/jquery.contextMenu.min.css" />
	<script type="text/javascript" src="resources/js/contextMenu.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.ui.position.js"></script>

</body>
</html>
