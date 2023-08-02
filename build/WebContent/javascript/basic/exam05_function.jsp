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
   			<div class="card-header">매개변수가 없는 함수</div>
   			<div class="card-body">
   				<button class="btn btn-info btn-sm" onclick="fun1()">fun1() 함수 호출</button>
   			</div>
   			<script>
   				function fun1(){
   					for(let i=0; i<5; i++)
   					console.log("Hello, function: " + i);
   				}
   				//fun1();
   			</script>
   		</div>	
   		
   		<div class="card m-2">
   			<div class="card-header">매개변수가 있는 함수</div>
   			<div class="card-body">
   				<button class="btn btn-info btn-sm" onclick="fun2(2, 'Hello')">fun2() 함수 호출</button>
   				<button class="btn btn-info btn-sm" onclick="fun3(2)">fun3() 함수 호출</button>
   				<button class="btn btn-info btn-sm" onclick="fun3(3,'JavaScript')">fun3() 함수 호출</button>
   			</div>
   			<script>
   				function fun2(count, message){
   					for(let i=0; i<count; i++)
   					console.log(message + ": " + i);
   				}
   				function fun3(count, message="안녕"){//디폴트 값은 뒤에 선언하는 것이 좋음(순차적으로 매개변수 대입)
   					for(let i=0; i<count; i++)
   					console.log(message + ": " + i);
   				}
   			</script>
   		</div>	
   		
   		<div class="card m-2">
   			<div class="card-header">함수 변수와 화살표 함수(Arrow Function, Lambda Expressions)</div>
   			<div class="card-body">
   				<button class="btn btn-info btn-sm" onclick="fun4()">fun4() 함수 호출</button>
   				<button class="btn btn-info btn-sm" onclick="fun5()">fun5() 함수 호출</button>
   				<button class="btn btn-info btn-sm" onclick="fun6(5)">fun6() 함수 호출</button>
   				<button class="btn btn-info btn-sm" onclick="fun7(5)">fun7() 함수 호출</button>
   				<button class="btn btn-info btn-sm" onclick="fun8(5)">fun8() 함수 호출</button>
   				<button class="btn btn-info btn-sm" onclick="fun9(2, 5)">fun9() 함수 호출</button>
   			</div>
   			<script>
   				//function fun4(){. . .};와 동일
   				var fun4 = function(){
   					console.log("fun4() 실행");
   				}; 
   				var fun5 = () => {
   					console.log("fun5() 실행");
   				};
   				//funcrtion fun6(x){. . .};와 동일
   				var fun6 = function(x,y){
   					let result = x**2;
   					console.log("result: " + result);
   				};
   				var fun7 = (x) => {
   					let result = x**2;
   					console.log("result: " + result);
   				}
   				var fun8 = x => {
   					let result = x**2;
   					console.log("result: " + result);
   				};
   				//funcrtion fun9(x, y){. . .};와 동일
   				var fun9 = (x, y) => {
   					let result = x + y;
   					console.log("result: " + result);
   				};
   			</script>
   		</div>	
   		
   		<div class="card m-2">
   			<div class="card-header">리턴값이 있는 함수</div>
   			<div class="card-body">
   				<button class="btn btn-info btn-sm" onclick="fun10()">fun10() 호출</button>
   				<a class="btn btn-info btn-sm" href="javascript:fun10()">fun10() 호출</a>
   			</div>
   			<script>
   	    	function fun10(){
   	    		let result = fun10_1(6, 2);
   	    		console.log("result: " + result);
   	    	}
   	    	function fun10_1(x, y){
   	    		let result = x ** y;
   	    		return result;
   	    	}
   	    	</script>
   		</div>  
   </body>
</html>