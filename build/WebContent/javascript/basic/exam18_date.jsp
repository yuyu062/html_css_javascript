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
   </head>
   <body>
      <div class="card m-3">
      		<div class="card-header">날짜 생성</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="testDate()">Date 객체 생성</button>      		  		     		  		   		  		     		  		   		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
      		</div>
      		<script>
      			function testDate(){
      				var now = new Date();
      				console.log(now.toLocaleDateString());
      				
      				let year = now.getFullYear();
      				let month = now.getMonth() + 1;
      				let date = now.getDate();
      				let day = now.getDay(); //요일, 일요일(0)~토요일(6)
      				console.log(year + " - " + month + " - " + date);
      				
      				var christmas = new Date(2023, 11, 25);
      			}
      		</script>
      	</div>
   </body>
</html>