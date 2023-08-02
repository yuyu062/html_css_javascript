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
	   		//클래스 선언(객체의 설계도)
	   		//관례적으로 클래스 이름의 첫자는 대문자로 작성
	   		//동일한 유형의 객체를 자주 생성해서 사용해야 될 경우에 클래스를 선언하는 것이 좋다
	   		class Car {
	   			//Constructor
	   			constructor(name, price){
	   				//Property 선언(Java에서 Field에 해당)
	   				this.name = name;
	   				this.price = price;
	   				this.speed = 0;
	   			}
	   			//Method
	   			run(){
	   				console.log(this.name + "가" + this.speed + "로 달립니다.");
	   			}
	   			
	   			setSpeed(speed){
	   				this.speed = speed;
	   				console.log("속도가" + this.speed + "로 변경되었습니다.");
	   			}
	   			
	   			toString(){
	   				let str = '{';
	   				str += '"name": "' + this.name +'",';
	   				str += '"price": ' + this.price +',';
	   				str += '"speed": ' + this.speed;
	   				str += '}';
	   				return str;
	   			}
	   		}
	   </script>
   </head>
   <body>
      <div class="card m-3">
      		<div class="card-header">클래스를 이용해서 new 키워드로 객체생성</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun1()">fun1 호출</button>      		  		
      		</div>
      		<script>
      			function fun1(){
      				let myCar = new Car("포르쉐", 2000000000);
      				console.log("myCar.name: " + myCar.name);
      				console.log("myCar.price: " + myCar.price);
      				myCar.setSpeed(100);
      				myCar.run();
      				console.log(myCar.toString());
      				console.log(myCar)
      				
      				console.log("");
      				
      				let yourCar = new Car("제네시스", 1000000000);
      				console.log("yourCar.name: " + yourCar.name);
      				console.log("yourCar.price: " + yourCar.price);
      				myCar.setSpeed(100);
      				myCar.run();
      				console.log(yourCar.toString());
      				console.log(yourCar)
      			}
      		</script>
      </div>
   </body>
</html>