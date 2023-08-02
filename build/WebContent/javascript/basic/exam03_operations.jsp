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
    	<script>
    		// 산술 연산자
    		let var1 = 2**3;
    		console.log("var1: " + var1 + "\n");
    		
    		//비교 연산자
    		let var2 = 10;
    		let var3 = "10";
    		console.log(var2 == var3); //true
    		console.log(var2 === var3); //false(타입까지 검사)
    		console.log(var2 != var3); //false
    		console.log(var2 !== var3);//true(타입까지 검사)
    		console.log("");
    		
    		//논리 연산자
    		let var4 = true;
    		let var5 = false;
    		console.log(var4 && var5); // false
    		console.log(var4 || var5); // true
    		
    		//암시적(묵시적)으로 앞 피연산자가 true 또는 false
    		//&&:  앞이 true면 뒤의 값이 최종값
    		//||: 앞이 false면 뒤의 값이 최종값
    		let var6 = true && "홍길동"; //&&: 둘다 true이어야 함
    		console.log("var6: " + var6);
    		let var7 = false && "홍길동"
    		console.log("var7: " + var7);
    		let var8 = true && "홍길동"; //||: 둘중 하나가 true이어야 함(false= 0)
    		console.log("var8: " + var8);
    		let var9 = false || "홍길동"
    		console.log("var9: " + var9);
    		console.log("");
    		
    		//암시적(묵시적) false 간주: 0, null, "",'', undefined
    		//그 이외에는 모두 true
    		console.log(0 && "자바스크립트");
    		console.log(null && "자바스크립트");
    		console.log("" && "자바스크립트");
    		console.log(3 && "자바스크립트");
    		console.log('a' && "자바스크립트");
    		console.log("");
    		console.log(0 || "자바스크립트");
    		console.log(null || "자바스크립트");
    		console.log("" || "자바스크립트");
    		console.log(3 || "자바스크립트");
    		console.log('a' || "자바스크립트");
    	</script>  
   </body>
</html>