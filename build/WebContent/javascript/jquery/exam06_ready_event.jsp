<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="/html_css_javascript/favicon.ico" type="image/x-icon">
      <title>Insert title here</title>
      
      <!-- Bootstrap을 사용하기 위한 외부 라이브러리 가져오기 -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	  
	  <script>
	    //load 이벤트 핸들러 등록
		window.onload = init1;   
		function init1(){
		    console.log("init1()");
		}
		
		//ready 이벤트 핸들러 등록
		$(document).ready(function{
			console.log("init2()");
		});

		$(function(){
			console.log("init3()");
		});
	  </script>   
   </head>
   <body>
   		<div id="div1"></div>
   		<img src="../../common/image/photo/photo1.jpg" width="50" height="50"/>
   		<img src="../../common/image/photo/photo2.jpg" width="50" height="50"/>
   		<img src="../../common/image/photo/photo3.jpg" width="50" height="50"/>
   		<img src="../../common/image/photo/photo4.jpg" width="50" height="50"/>
   		<img src="../../common/image/photo/photo5.jpg" width="50" height="50"/>
   		<img src="../../common/image/photo/photo6.jpg" width="50" height="50"/>
   		<img src="../../common/image/photo/photo7.jpg" width="50" height="50"/>
   		<img src="../../common/image/photo/photo8.jpg" width="50" height="50"/>
   		<img src="../../common/image/photo/photo9.jpg" width="50" height="50"/>
   		<img src="../../common/image/photo/photo10.jpg" width="50" height="50"/>
   </body>
</html>