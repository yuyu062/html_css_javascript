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
   			<div class="card-header">자바스크립트 객체</div>
   			<div class="card-body">
   				<button class="btn btn-info btn-sm" onclick="fun1()">fun1() 호출</button>
   			</div>
   			<script>
   	    	function fun1(){
   	    		//객체 생성후, 객체 참조(번지)를 car 변수에 대입
   	    		var car = {
   	    			//Property 선언(Java에서 Feild에 해당)
   	    			name: "그랜저", 
   	    			price: 50000000,
   	    			speed: 0,
   	    			
   	    			//Method 선언
   	    			run: function(){
   	    				console.log("달립니다.");
   	    			},
   	    			stop: function(){
   	    				console.log("멈춥니다.");
   	    			}
   	    		};
   	    		//객체 속성(propertied)사용
   	    		console.log("자동차 모델명: " + car.name);
   	    		car.speed = 100;
   	    		console.log("자동차 속도:" + car.speed);
   	    		//객체의 메소드 호출
   	    		car.run();
   	    		car.stop();
   	    	}
   	    	</script>
   		</div>  
   		
		<div class="card m-2">
			<div class="card-header">this 키워드</div>
			<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun2()">fun2() 호출</button>
			</div>
			<script>
				function fun2(){
					var member = {
						//Propertiy 선언
						mid: null,
						mname: null,
						mage: 0,
						
						//Method 선언
						setMid: function(mid){
							this.mid = mid;
						},
						getMid: function(){
							return this.mid;
						},
						setMname: function(mname){
							this.mname = mname;
						},
						getMname: function(){
							return this.mname;
						},
						setMage(mage){
							this.mage = mage;
						},
						getMage(){
							return this.mage;
						},
						
						printInfo: function(){
							//객체 내부에서 메소드 호출
							console.log("mid: " + this.getMid());
							console.log("mname: " + this.getMname());
							console.log("mage: " + this.getMage());
						}
					};
					//객체 외부에서 메소드 호출
					member.setMid("summer");
					member.setMname("하여름");
					member.setMage(27);
					member.printInfo();
				}
			</script>
   		</div>
   		
   		<div class="card m-2">
			<div class="card-header">화살표 함수로 메소드를 선언하지 말것 </div>
			<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun3()">fun3() 호출</button>
			</div>
			<script>
				function fun3(){
					var car = {
						//Property
						name: "그랜저",
						speed: 10,
						
						//Method
						getName1: function(){
							return this.name;
						},
						getName2(){
							return this.name
						},
						/* getName3: () => {
							//화살표 함수 내부에 this는 window객체를 참조
							//화살표 함수에는 this를 사용하지 말 것
							return this.name 
						} */
						setSpeed(fun){
							this.speed = fun(this.speed);
						}
					};
					console.log(car.getName1());
					console.log(car.getName2());
					
					car.setSpeed((s) =>{
						return s**2;
					});
					console.log(car.speed);
					
					car.setSpeed(s =>{
						return s**2;
					});
					console.log(car.speed);
					
					car.setSpeed(s => s**2);
					console.log(car.speed);
				}
			</script>
		</div>
   </body>
</html>