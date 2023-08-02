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
      		<div class="card-header">내장 함수(선언없이 언어에서 제공하는 함수)</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="testConvert()">문자열을 숫자로 변환</button>      		  		     		  		   		  		     		  		   		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
				<button class="btn btn-info btn-sm" onclick="testEval()">문자열을 JavaScript 코드로 변환</button>      		  		     		  		   		  		     		  		   		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
				<button class="btn btn-info btn-sm" onclick="testEncodeURI()">URI형식으로 변환</button>      		  		     		  		   		  		     		  		   		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
      		</div>
      		<script>
      			function testConvert(){
      				var str1 = "10";
      				var str2 = "3.5";
      				
      				var num1 = parseInt(str1);
      				var num2 = parseFloat(str2);
      				console.log(typeof num1, num1);
      				console.log(typeof num2, num2);
      				
      			}
      			
      			function testEval(){
      				var strCode = "1 + 2";
      				var result = eval(strCode);
      				console.log(result);
      			}
      			
      			function testEncodeURI(){
      				let uri = "http://www.mycompany.com/my test.asp?name=ståle&car=saab";
      				let encoded = encodeURI(uri);
      				console.log(encoded);
      			}
      		</script>
      	</div>
   </body>
</html>