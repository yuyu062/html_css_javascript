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
      <!-- 
      [정규 표현식]
      /pattern/modifier
      
      [pattern 문법]
      1. /xxx/	: 문자열 전체에서 xxx를 찾는 것
      2. /^xxx/	: 문자열 처음이 xxx 인 것 
      3. /xxx$/	: 문자열 끝이 xxx 인 것
      4. /^xxx$/: 정확하게 문자열이 xxx인 것(유효성 검사할 때 주로 사용)
      
      [modifier]
      i: 대소문자를 구분하지 않음
      g: 다 찾아라 
      
      [정규 표현식을 사용하는 메소드 종류]
      String: match(), search(), replace()
      RegExp: test()(유효성 감사할 때 주로 사용)
       -->
       
       <div class="card">
       		<div class="card-header">RegExp.test()메소드</div>
       		<div class="card-body">
       			<button class="btn btn-info btn-sm" onclick="checkTel()">전화번호 유효성(validation) 검사</button>
       			<button class="btn btn-info btn-sm" onclick="checkEmail()">이메일 유효성(validation) 검사</button>
       		</div>
       		<script>
       		function checkTel(){
	        	var tel1 = "010-123-1234";
	        	var tel2 = "011-123-1234";
	        	var pattern = /^(010|011)-\d{3,4}-\d{4}$/;
	        	var result = pattern.test(tel2);
	        	console.log(result);
	        	if(result){
	        		console.log("전화번호 형식이 맞습니다.");
	        	}else{
	        		console.log("전화번호 형식이 아닙니다.");
	        	}
       		}
       		
       		function checkEmail(){
       			var email = "user1@smail.kongju.ac.kr";
       			var pattern =  /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
       			var result = pattern.test(email);
       			if(result){
	        		console.log("이메일 형식이 맞습니다.");
	        	}else{
	        		console.log("이메일 형식이 아닙니다.");
	        	}
       		}
       		</script>
       </div>
       <div class="card">
       		<div class="card-header">String에서 정규 표현식을 사용하는 메소드</div>
       		<div class="card-body">
       			<button class="btn btn-info btn-sm" onclick="testMatch()">match() 메소드</button>
       			<button class="btn btn-info btn-sm" onclick="testSearch()">search() 메소드</button>
       			<button class="btn btn-info btn-sm" onclick="testReplace()">replace() 메소드</button>
       		</div>
       		<script>
       		function testMatch(){
	        	var str = "자바스크립트는 자바와 문법이 비슷합니다.";
	        	var result = str.match(/자바/);
	        	if(result != null){
	        		console.log("찾는 문자열이 있습니다.");
	        		console.log(result);
	        	}else{
	        		console.log("찾는 문자열이 없습니다.");
	        	}
       		}
       		
       		function testSearch(){
       			var str = "자바스크립트는 자바와 문법이 비슷합니다.";
	        	var result = str.match(/스크립트/);
	        	if(result != -1){
	        		console.log("찾는 문자열이 있습니다.");
	        		console.log(result);
	        	}else{
	        		console.log("찾는 문자열이 없습니다.");
	        	}
       		}
       		
       		function testReplace(){
       			var str = "자바스크립트는 자바와 문법이 비슷합니다.";
       			//var result = str.replace("자바", "Java");//첫번째 일치하는 문자열
       			//var result = str.replaceAll("자바", "Java");//일치하는 모든 문자열
       			var result = str.replace(/자바/g, "Java");//일치하는 모든 문자열
       			console.log(str);
       			console.log(result);
       		}
       		</script>
       </div>
       
       
   </body>
</html>