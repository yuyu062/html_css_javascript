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
		 //클래스 선언
		   class Car{
		   	//Static Property
		   	static company = "포르쉐 인더스트리";
		   	
		   	//생성자 선언
		   	constructor(name="포르쉐", color="흰색"){
		   		//Instance Property
		   		this.name = name;
		   		this.color = color;
		   	}
		   	
		   	//Instance Method
		   	run(){
		   		console.log("달립니다.");
		   	}
		   	
		   	//Static Method
		   	static info(){
		   		console.log("제작회사: " + Car.company);
		   	}
		   }
	   </script>
   </head>
   <body>
        <div class="card m-3">
      		<div class="card-header">인스턴스 멤버와 정적멤버</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun1()">fun1 호출</button>      		  		
      		</div>
      		<script>
      			function fun1(){
      				var myCar = new Car();
      				
      				//정적 멤버 사용
      				console.log(Car.company);
      				Car.info();
      				
      				//인스턴스 멤버 사용
      				console.log(myCar.name);
      				myCar.run();
      			}
      		</script>
      	</div>
   </body>
</html>