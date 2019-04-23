<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    .wrap * {padding: 0;margin: 0;}
    .info .title {padding: 5px 0 0 10px;height: 20px;background: #fffa6b;border-bottom: 1px solid #ddd;font-size: 14px;font-weight: bold;}
    .info .body {position: relative;overflow: hidden;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info .link {color: #5085BB;}
</style>
<script src="resources/jquery-3.3.1.min.js"></script>
<script>
/* var cd ='<c:out value="${cd}"/>';

$.ajax({        
    url: 'reservation2',
    type: 'get',
    data: 'cd='+cd,
    dataType: 'json',
    success: function(data){
        var myItem = data.ListPublicReservationCulture.row;
        var output = '';
        var t = true;
        
        for(var i=0; i<myItem.length; i++){
            if(myItem[i].X==""){
            	alert(myItem[i].PLACENM);
            	
            	searchPlaces(myItem[i].PLACENM);
            } else{
            	position.push(new daum.maps.LatLng(myItem[i].X, myItem[i].Y));
            }
            itemEl = getListItem(i, myItem[i]);
            output += '<h4>'+ '장소 : ' +myItem[i].X+'</h4>';
            output += '<h4>'+ '장소 : ' +myItem[i].Y+'</h4>';
            output += '<hr />';
            
        }
         $('#content').html(output);
         
    },
  error: function(XMLHttpRequest, textStatus, errorThrown) { 
      alert("Status: " + textStatus); alert("Error: " + errorThrown); 
  } 
}); */
function reservation(){
	var title = '<c:out value="${title}"/> ';
	$.ajax({        
	    url: 'reservation2',
	    type: 'get',
	    data: 'title='+title,
	    success: function(data){
	    	 window.open("https://www.socar.kr/reserve", "쏘카예약", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
	    }
		})
	}
</script>
</head>
<body>
	<div class="wrap">
		<div class="info">
			<div id="title" class="title">
				${title }
			</div>
			<script>
				var title; 
				title='<c:out value="${title}"/>';
				var length = title.length; 
				if(length>11){
					$('#title').css("font-size","11px");
				}
			</script>
			<div class="body">
				<div class="desc">
					<table>
					<c:forEach var="car" items="${car }" varStatus="status">
						<tr>
							<td class="center" style="font-size: 14px;width: 140px;">${car.car}</td>
							<td class="center" style="font-size: 14px;">${car.reserve}</td>  
						</tr>
						</c:forEach>
						<tr>
							<td style="font-size: 12px;" colspan="2">${date }</td>
						</tr>
						<tr>
							<td style="font-size: 12px;"  colspan="2">${time }&nbsp;&nbsp;&nbsp;&nbsp; 조회함</td>
						</tr>
						<tr>
							<td><a href="" onclick="reservation()">예약하러가기</a></td>
						</tr>
					</table>
						
				</div>
			</div>
		</div>
	</div>
	<input id="title" type="hidden" value="${title }"/>
</body>
</html>