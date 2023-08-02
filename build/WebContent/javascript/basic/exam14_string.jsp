<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="../../favicon.ico" type="image/x-icon"> 
      <title>Insert title here</title>
       <!-- Bootstrap을 사용하기 위한 외부 라이브러리 가져오기 -->
	   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	   <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
	   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
   </head>
   <body>
       <div class = "card m-3">
      	<div class="card-header">문자열 관련 메소드</div>
      	<div class="card-body">
      		<button class="btn btn-info btn-sm" onclick="testLength()">length 속성</button>
      		<button class="btn btn-info btn-sm" onclick="testEscape()">Escape 문자</button>
      		<button class="btn btn-info btn-sm" onclick="testCompare()">문자열 비교</button>
      		<a class="btn btn-info btn-sm" href="javascript:testCharAt()">charAt() 메소드</a>
      		<a class="btn btn-info btn-sm" href="javascript:testIndexOfAndIncludes()">indexOf()와 includes() 메소드</a>
      		<a class="btn btn-info btn-sm" href="javascript:testLastIndexOf()">lastIndexOf() 메소드</a>
      	</div>
      	<script>
      		var var1 = "123456-1234567";
      		//문자열의 길이
      		function testLength(){
    	  		console.log(var1.length);
    	  		console.log("");
      		}
      	   
      		//escape 문자
      		function testEscape(){
    	  		var var2 = "this is \n\"javascript\"";
    	  		console.log(var2);
    	  		console.log("");
      		}

	  		//문자열 비교
	  		function testCompare(){
	  			var var3 = "abc";
		  		var var4 = "abc";
		  		console.log(var3 == var4);
		  		console.log(var3 === var4);
	  		}
	  		
	  		//charAt() 메소드: 특정 위치의 문자를 리턴
	  		function testCharAt(){
	  			var var5 = var1.charAt(7);
		  		if(var5 == "1"|| var5 == "3"){
		  			console.log("남자");
		  		}else{
		  			console.log("여자");
		  		}
		  		console.log("");
	  		}
	  	
	  		//indexOf, includes() 메소드: 문자열에 찾고자하는 문자열이 있는지 검사
	  		function testIndexOfAndIncludes(){
	  			let text = "Hello world, welcome to the universe.";
				let result1 = text.indexOf("welcome");
				if(result1 != -1){
					console.log("문자열 위치: " + result1);
				}else{
					console.log("찾는 문자열이 없음");
				}
				console.log("");
				//how2
				let result2 = text.includes("welcome");
				if(result2 != -1){
					console.log("찾는 문자열이 있음");
				}else{
					console.log("찾는 문자열이 없음");
				}
				console.log("");
	  		}
			
			//lastIndexOf(): 제일 마지막에 있는 문자열의 위치
			function testLastIndexOf(){
				let tel = "010-123-1234";
				let lastIndex = tel.lastIndexOf("-");
				console.log(lastIndex);
				console.log("");
			}
			//match(), search(), replace(): 정규 표현식으로 문자열을 찾거나 대체
			//exam15_regular_expression.jsp에서 설명
      </script>
      </div>
      
      <div class = "card m-3">
      	<div class="card-header">문자열 잘라내기</div>
      	<div class="card-body">
      		<button class="btn btn-info btn-sm" onclick="testSlice()">slice() 메소드</button>
      		<button class="btn btn-info btn-sm" onclick="testSplit()">split() 메소드</button>
      		<button class="btn btn-info btn-sm" onclick="testSubstr()">substr() 메소드</button>
      		<button class="btn btn-info btn-sm" onclick="testSubstring()">substring() 메소드</button>
      	</div>
      	<script>
      		function testSlice(){
      			var ssn = "123456-1234567";
      			var first = ssn.slice(0, 6);
      			var second = ssn.slice(7);
      			console.log(first);
      			console.log(second);
      		}
      		function testSplit(){
      			var ssn = "123456-1234567";
      			var arr = ssn.split("-");
      			console.log(arr[0]);
      			console.log(arr[1]);
      			console.log(arr);
      		}
      		function testSubstr(){
      			var ssn = "123456-1234567";
      			var first = ssn.substr(0, 6); // 6: 6개
      			var second = ssn.substr(7);
      			console.log(first);
      			console.log(second);
      		}
      		function testSubstring(){
      			var ssn = "123456-1234567";
      			var first = ssn.substring(0, 6); // 6: 마지막 index 
      			var second = ssn.substring(7);
    			console.log(first);
    			console.log(second);
      		}
      	</script>
      </div>
      
      <div class="card m-3">
      		<div class="card-header">행복한 쿼카</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun1004()">쿼카를 호출하세요</button>      		  		
      		</div>
      		<script>
      			function fun1004(){
      				alert("유지니는 쿼카에요 뀨우~~!");
      			}
      		</script>
      	</div>
   </body>
</html>