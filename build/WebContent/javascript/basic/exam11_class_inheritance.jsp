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
	   
	   <script src = "exam11.js"></script>
   </head>
   <body>
      <div class="card m-3">
      		<div class="card-header">클래스 상속</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun1()">fun1 호출</button>      		  		
      		</div>
      		<script>
      			function fun1(){
      				let myCar = new SportsCar("포르쉐");
      				console.log(myCar.name);
      				console.log(myCar.turbo);
      				myCar.run();
      				myCar.turnTurbo();
      				
      				console.log("");
      				let yourCar = new SportsCar("람보르기니", true);
      				console.log(yourCar.name);
      				console.log(yourCar.turbo);
      				yourCar.run();
      				yourCar.turnTurbo();
      			
      			}
      		</script>
      	</div>
   </body>
</html>