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
	   
	   <!-- JavaScript 코드 작성 -->
	   <script>
	   		// 전역 변수 선언
	   		var var1 = 1;
	   		let var2 = 2;
	   		const var3 = 3;
	   		
	   		console.log("var1: " + var1);
	   		console.log("var2: " + var2);
	   		console.log("var3: " + var3);
	   		console.log("");
	   		
	   		//함수 선언
	   		function fun1(){
	   			//로컬 변수 선언({}블록 내에서만 사용가능)
	   			var var4 = 4;
		   		let var5 = 5;
		   		const var6 = 6;
		   		//전역 변수 선언(키워드 없을 시 전역변수)
		   		var7 = 7;
		   		
		   		console.log("var1: " + var1);
		   		console.log("var2: " + var2);
		   		console.log("var3: " + var3);
		   		console.log("var4: " + var4);
		   		console.log("var5: " + var5);
		   		console.log("var6: " + var6);
		   		console.log("var7: " + var7);
		   	    console.log("");
	   		}
	   		//함수 호출
	   		fun1();
	   		
	   		console.log("var1: " + var1);
	   		console.log("var2: " + var2);
	   		console.log("var3: " + var3);
	   		//console.log("var4: " + var4);
	   		//console.log("var5: " + var5);
	   		//console.log("var6: " + var6);
	   		console.log("var7: " + var7);
	   	    console.log("");
	   </script>
	   
	   <script>
	   		//함수 레벨 로컬 변수 vs 블록 레벨 로컬 변수
	   		function fun2() {
				//함수 레벨 로컬 변수
				var var8 = 8;
				let var9 = 9;
				const var10 = 10;
				
				if(true){
					//블록 레벨 로컬 변수 선언
					let var11 = 11;
					const var12 = 12;
					//함수 레벨 로컬 변수 선언
					var var13 = 13;
					
					console.log("var8: " + var8);
					console.log("var9: " + var9);
					console.log("var10: " + var10);
					console.log("var11: " + var11);
					console.log("var12: " + var12);
					console.log("var13: " + var13);
					console.log("");
				}
				
				console.log("var8: " + var8);
				console.log("var9: " + var9);
				console.log("var10: " + var10);
				//console.log("var11: " + var11);
				//console.log("var12: " + var12);
				console.log("var13: " + var13);
				console.log("");
			}
	   		
	   		fun2();
	   </script>
	   <script>
	   		//값을 변경할 수 없는 상수
	   		var var14 = 14;
	   		let var 15 = 15;
	   		const var16 = 16;
	   		
	   		var14 = var14*10;
	   		var15 = var15*10;
	   		//var16 = var16*10;
	   </script>
   </head>
   <body>
      
   </body>
</html>