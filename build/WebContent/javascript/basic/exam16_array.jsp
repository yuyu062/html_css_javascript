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
      		<div class="card-header">배열 생성</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="createArray()">배열 생성 및 길이</button>      		  		
				<button class="btn btn-info btn-sm" onclick="testConcat()">배열 결합</button>      		  		
      		</div>
      		<script>
      			function createArray(){
      				var arr1 = [];
      				var arr2 = new Array();
      				
      				var arr3 = ["a", "b", "c"];
      				var arr4 = new Array("a", "b", "c");
      				
      				//배열의 길이 확인
      				console.log("arr1.length: " + arr1.length); //0
      				console.log("arr3.length: " + arr3.length); //3
      				
      				//배열 항목값 읽기
      				console.log(arr3[1]);
      				for(var i = 0; i<arr3.length; i++){
      					console.log("arr3[" + i + "]: " + arr3[i]);
      				}
      				console.log(arr3);
      			}
      			function testConcat(){
      				var arr1 = ["a", "b"];
      				var arr2 = ["c", "d"];
      				var arr3 = ["e", "f"];
      				
      				var arr4 = arr1.concat(arr2, arr3);
      				console.log(arr4);
      				
      				var arr5 = [...arr1, ...arr2, ...arr3, "g", "h"];
      				console.log(arr5);
      			}
      		</script>
      	</div>
      
      <div class="card m-3">
      		<div class="card-header">배열 항목 일괄처리</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="testFor()">for문으로 일괄 처리(외부만복자)</button>      		  		     		  		
				<button class="btn btn-info btn-sm" onclick="testForEach()">forEach() 메소드로 일괄 처리(내부만복자)</button>      		  		     		  		
      		</div>
      		<script>
      			function testFor(){
      				var arr = ["a", "b", "c"];
      				for(let i = 0; i < arr.length; i++){
      					console.log(arr[i]);
      				}
      			}
      			
      			function testForEach(){
      				var arr = ["a", "b", "c"];
      				arr.forEach(item => console.log(item));
      				/* arr.forEach(function(item){
      					console.log(item);
      				}); */
      			}
      		</script>
      	</div>

       <div class="card m-3">
      		<div class="card-header">배열 항복 추가, 삭제</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="testPush()">push() 메소드</button>      		  		     		  		   		  		     		  		
				<button class="btn btn-info btn-sm" onclick="testSplice()">splice() 메소드</button>      		  		     		  		   		  		     		  		
				<button class="btn btn-info btn-sm" onclick="testSlice()">slice() 메소드</button>      		  		     		  		   		  		     		  		
      		</div>
      		<script>
      			function testPush(){
      				var arr = ["a", "b", "c"];
      				arr.push("d"); //append, 끝 항목으로 추가
      				console.log(arr);
      			}
      			
      			function testSplice(){
      				const fruits = ["Banana", "Orange", "Apple", "Mango"];
      				//fruit.splice(2, 1); //2인덱스부터 1개를 삭제
      				//fruits.splice(fruits,length-1, 1);//제일 마지막 항목 1개를 삭제
      				//fruit.splice(2, 0, "Lemon", "Kiwi"); //2인덱스에 두 개의 항목을 삽입
      				fruits.splice(2, 1, "Lemon", "Kiwi");//2인데스부터 1개를 삭제하고 두개의 항목을 삽입
      				console.log(fruits);
      			}
      			
      			function testSlice(){
      				const fruits = ["Banana", "Orange", "Apple", "Mango"];
      				const subFruits = fruits.slice(0, 2);
      				console.log(fruits);
      				console.log(subFruits);
      			}
      		</script>
      	</div>

       <div class="card m-3">
      		<div class="card-header">배열 항복 정렬</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="testSort()">sort() 메소드로 올림차순 정렬</button>      		  		     		  		   		  		     		  		
				<button class="btn btn-info btn-sm" onclick="testReverse()">reverse() 메소드로 내림차순 정렬</button>      		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
      		</div>
      		<script>
      			function testSort(){
      				const fruits = ["Banana", "Orange", "Apple", "Mango"];
      				fruits.sort();
      				console.log(fruits);
      			}
      			
      			function testReverse(){
      				const fruits = ["Banana", "Orange", "Apple", "Mango"];
      				fruits.sort();
      				fruits.reverse();
      				console.log(fruits);
      			}
      			
      		</script>
      	</div>
        
        <div class="card m-3">
      		<div class="card-header">배열 항복 처리(람다식 사용)</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="testForEach2()">forEach() 메소드로 모든 항목 처리</button>      		  		     		  		   		  		     		  		  		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
				<button class="btn btn-info btn-sm" onclick="testFilter()">filter() 메소드로 조건을 만족하는 항복들(복수) 필터링</button>      		  		     		  		   		  		     		  		  		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
				<button class="btn btn-info btn-sm" onclick="testFind()">find() 메소드로 조건을 만족하는 첫 번째 항목(단수) 찾음</button>      		  		     		  		   		  		     		  		  		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
				<button class="btn btn-info btn-sm" onclick="testMap()">map() 메소드로 다른 타입 항목으로 변경</button>      		  		     		  		   		  		     		  		  		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
      		</div>
      		<script>
	      		function testForEach2(){
	  				var arr = [
	  					{bno:1, btitle:"제목1", bwriter: "홍길동"}, 
	  					{bno:2, btitle:"제목2", bwriter: "홍길서"}, 
	  					{bno:3, btitle:"제목3", bwriter: "홍길남"}, 
	  					{bno:4, btitle:"제목4", bwriter: "홍길서"}, 
	  					{bno:5, btitle:"제목5", bwriter: "홍길북"} 
	  				];
	  				
	  				arr.forEach((board) => {
	  					var bno = board.bno;
	  					var btitle = board.btitle;
	  					var bwriter = board.bwriter;
	  					console.log(bno + ", " + btitle + ", " + bwriter);
	  				});
	  			}

	      		function testFilter(){
	  				var arr = [
	  					{bno:1, btitle:"제목1", bwriter: "홍길동"}, 
	  					{bno:2, btitle:"제목2", bwriter: "홍길서"}, 
	  					{bno:3, btitle:"제목3", bwriter: "홍길남"}, 
	  					{bno:4, btitle:"제목4", bwriter: "홍길서"}, 
	  					{bno:5, btitle:"제목5", bwriter: "홍길북"} 
	  				];
	  				
	  				var arr1 = arr.filter(board => {
	  					return board.bwriter === "홍길서";
	  				});
	  				console.log(arr1);
	  				console.log("");
	  				
	  				//메소드 체이닝(중간 처리 후 최종 처리)
	  				arr	
	  					//중간처리
	  					.filter((board) => board.bwriter === "홍길서")
	  					//최종처리
	  					.forEach(board => {
	  						var bno = board.bno;
	  						var btitle = board.btitle;
	  						var bwriter = board.bwriter;
	  						console.log(bno + ", " + btitle + ", " + bwriter);
	  					});
	  			}
	      		function testFind(){
	  				var arr = [
	  					{bno:1, btitle:"제목1", bwriter: "홍길동"}, 
	  					{bno:2, btitle:"제목2", bwriter: "홍길서"}, 
	  					{bno:3, btitle:"제목3", bwriter: "홍길남"}, 
	  					{bno:4, btitle:"제목4", bwriter: "홍길서"}, 
	  					{bno:5, btitle:"제목5", bwriter: "홍길북"} 
	  				];
	  				
	  				var arr1 = arr.filter(board => {
	  					return board.bwriter === "홍길서";
	  				});
	  				console.log(arr1);
	  				console.log("");
	  				
	  				var board = arr.find(board => board.writer ==="홍길서");
	  				console.log(board);
	  			}
	      		
	      		function testMap(){
	      			var arr = [
	  					{bno:1, btitle:"제목1", bwriter: "홍길동"}, 
	  					{bno:2, btitle:"제목2", bwriter: "홍길서"}, 
	  					{bno:3, btitle:"제목3", bwriter: "홍길남"}, 
	  					{bno:4, btitle:"제목4", bwriter: "홍길서"}, 
	  					{bno:5, btitle:"제목5", bwriter: "홍길북"} 
	  				];
	      			
	      			var arr1 = arr.map(board => {
	      				return {...board, bcontent: "내용"};
	      			});
	      			console.log(arr1);
	      			
	      			//메소드 체이닝
	      			arr	
  					//중간처리
  					.map(board => ({...board, bcontent: "내용"})) //{}를 객체로 인식못함 ->()로 묶어줘야 함 
  					//최종처리
  					.forEach(board => {
  						var bno = board.bno;
  						var btitle = board.btitle;
  						var bwriter = board.bwriter;
  						console.log(bno + ", " + btitle + ", " + bwriter + ", " + bcontent);
  					});
	      		}
      		</script>
      	</div>
   </body>
</html>