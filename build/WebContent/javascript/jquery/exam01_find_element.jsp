<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="favicon.ico" type="image/x-icon"> 
      <title>Insert title here</title>
       <!-- Bootstrap을 사용하기 위한 외부 라이브러리 가져오기 -->
	   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	   <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
	   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	   
	   <script>
	   		function fun1(){
	   			/* var $div1 = $("#div1");
	   			$div.css("background-color", "orange"); */
	   			
	   			$("#div1").css("background-color", "yellow");
	   		}
	   		
	   		function fun2(){
	   			/* var $div1 = $("#div1");
	   			$div.css("background-color", "orange"); */
	   			
	   			$(".divBox").css("background-color", "orange");
	   		}
	   	
	   		function fun3(){
	   			/* var $div1 = $("#div1");
	   			$div.css("background-color", "orange"); */
	   			
	   			$(".card-body > div").css("background-color", "red");
	   		}
	   	
	   </script>
   </head>
   <body>
   	 <div class="card m-3">
      		<div class="card-header">jQuery 객체 동작 원리 이해</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun1()">아이디로 객체 찾기</button>
				<button class="btn btn-info btn-sm" onclick="fun2()">클래스로 객체 찾기</button>
				<button class="btn btn-info btn-sm" onclick="fun3()">태그명으로 객체 찾기</button>
				<hr/>
				<div id="div1" class="border m-2 d-inline-block" style="width:100px; height:100px"></div>      		  		
				<div class="divBox border m-2 d-inline-block" style="width:100px; height:100px"></div>      		  		
				<div class="divBox border m-2 d-inline-block" style="width:100px; height:100px"></div>      		  		
      		</div>
      	</div>
   </body>
</html>