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
      		<div class="card-header">구조 분해 할당(destructure)</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun1()">fun1 호출</button>      		  		
      		</div>
      		<script>
      			function fun1(){
      				const board = {
      					title: "오늘은 화요일",
      					content: "날씨가 화창하니, 공부하기 좋네요.",
      					writer: "감자바"
      				};
      				
      				/* var title = board.title;
      				var content = board.content;
      				var twriter = board.writer; */
      				
      				//객체의 속성을 분해해서 title 속성의 값만 대입
      				let{title} = board;
      				//객체의 속성을 분해해서 content와 writer 속성의 값만 대입
      				let{content, writer} = board;
      				console.log(title);
      				console.log(content);
      				console.log(writer);
      			}
      		</script>
      	</div>
        
        <div class="card m-3">
      		<div class="card-header">함수의 매개값으로 구조 분해 할당 코드</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun2()">fun2 호출</button>      		  		
      		</div>
      		<script>
      			function fun2(){
      				const board = {
      					title: "오늘은 화요일",
      					content: "날씨가 화창하니, 공부하기 좋네요.",
      					writer: "감자바"
      				};
      				
      				fun2_1(board);
      			}
      			function fun2_1({title}){
      				console.log(title);
      			}
      		</script>
      	</div>
        <div class="card m-3">
      		<div class="card-header">새로운 객체를 생성할 때 구조 분해 할당 사용하기</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun3()">fun3 호출</button>      		  		
      		</div>
      		<script>
      			function fun3(){
      				const board = {
      					title: "오늘은 화요일",
      					content: "날씨가 화창하니, 공부하기 좋네요.",
      					writer: "감자바"
      				};
      				//복제
      				var newBoard1 = {...board};
      				console.log(newBoard1);
      				console.log(board == newBoard1);
      				console.log("");
      				
      				//새로운 속성을 추가하고 복제
      				var newBoard2 = {bno: 1, ...board};
      				console.log(newBoard2);
      				console.log("");

      				//기존 속성값을 변경하고 복제
      				var newBoard3 = {...board, bno: 1, title:"이유없이 기쁜날"};
      				console.log(newBoard3);
      				console.log("");
      				
      				//기존 속성중 몇개와 나머지를 구분할 경우
      				var {title, ...rest} = board;
      				console.log(title);
      				console.log(rest);
      			}
      		
      		</script>
      	</div>
   </body>
</html>