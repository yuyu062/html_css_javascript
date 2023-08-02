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
   			let var1 = 1;
   			let var2 = 1.5;
   			let var3 = {}; // 객체
   			let var4 = []; // 배열
   			let var5 = function(){};
   			let var6 = () => {};
   			let var7 = '홍';
   			let var8 = "홍";
   			let var9 = null; //번지가 아직 없다.
   			let var10; //undefined(메모리에 변수가 생성되지않음-> 메모리가 없음 = undefined)
   			
   			console.log("var1의 값의 타입: " + (typeof var1));
   			console.log("var2의 값의 타입: " + (typeof var2));
   			console.log("var3의 값의 타입: " + (typeof var3));
   			console.log("var4의 값의 타입: " + (typeof var4));
   			console.log("var5의 값의 타입: " + (typeof var5));
   			console.log("var6의 값의 타입: " + (typeof var6));
   			console.log("var7의 값의 타입: " + (typeof var7));
   			console.log("var8의 값의 타입: " + (typeof var8));
   			console.log("var9의 값의 타입: " + (typeof var9));   			
   			console.log("var10의 값의 타입: " + (typeof var10));   			
   		</script>
   </body>
</html>