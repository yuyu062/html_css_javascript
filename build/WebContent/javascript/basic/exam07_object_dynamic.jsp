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
      <div class="card m-2">
			<div class="card-header">객체의 구성 멤버(속성과 메소드)를 실행 중에 추가</div>
			<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun1()">fun1() 호출</button>
			</div>
			<script>
				function fun1(){
					var car = {};
					console.log(car);
					console.log("");
					
					//런타임시 속성을 추가
					car.name = "그랜저";
					console.log(car);
					console.log("");
					
					//런타임시 메소드 추가
					car.run = function(){
						console.log("달립니다.");
					};
					console.log(car);
					car.run();
					console.log("");
				}
			</script>
		</div>
   </body>
</html>