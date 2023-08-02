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
      		<div class="card-header">수학 함수</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="testMath()">Math의 정적 메소드</button>      		  		     		  		   		  		     		  		   		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
      		</div>
      		<script>
      			function testMath(){
      				//실수를 정수로 변환
      				var var1 = 3.15;
      				var var2 = Math.floor(var1);
      				console.log(var2);
      				console.log("");
      				
      				//임의의 주사위 눈(1, 2, 3, 4, 5, 6)
      				var diceNum = Math.floor(Math.random()*6 + 1);
      				console.log(diceNum);
      			}
      		</script>
      	</div>
   </body>
</html>