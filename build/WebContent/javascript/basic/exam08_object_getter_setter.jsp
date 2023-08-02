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
	   			var car={
	   				//Property
	   				name: null,
	   				
	   				//Method
	   				setName: function(name){
	   					this.name = name;
	   				},
	   				getName(){
	   					return this.name;
	   				}
	   			};
	   			console.log(car);
	   			car.setName("포르쉐");
	   			console.log(car.getName());
	   		}
	   		// setter, getter 매개값 지정 가능
	   		function fun2(){
	   			var car={
	   				//Property
	   				_xxx: null,
	   				
	   				//Method
	   				set name(value){
	   					console.log("set name(value)");
	   					this._xxx = value;
	   				},
	   				get name(){
	   					console.log("get name()");
	   					return this._xxx;
	   				}
		   		};
	   			car.name = "포르쉐"; //setter 호출
	   			console.log(car.name); //getter 호출
	   		}
	   </script>
   </head>
   <body>
   	  <div class="card m-3">
   	  	 <div class="card-header">Object Getter&Setter</div>
   	  		<div class="card-body">
   	  		<div class="container-fluid">
		      	<div class="row">
		      		<div class="col-6">
		      			<button class="btn btn-info btn-sm" onclick="fun1()">fun1() 호출</button>
		      		</div>
		      		<div class="col-6">
		      			<a class="btn btn-info btn-sm" href="javascript:fun2()">fun2() 호출</a>
		      		</div>
		      	</div>
		      </div>
   	  	 </div>
   	  </div>
   </body>
</html>