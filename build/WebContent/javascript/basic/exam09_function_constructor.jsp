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
	   		//생성자 함수 선언(클래스 선언)
	   		//관례적으로 생성자 함수의 이름 첫자는 대문자로 작성(클래스 이름에 해당)
	   		//동일한 유형에 객체를 자주 생성해서 사용해야 될 경우에 생성자 함수를 선언하는 것이 더 좋다.
	   		function Car(){
	   			//Property 
	   			this.name = "포르쉐";
	   			this.price = 200000000;
	   			
	   			//Method
	   			this.run = function(){
	   				console.log("달립니다.");
	   			};
	   			
	   			this.stop = function(){
	   				console.log("멈춥니다.");
	   			}
	   		}
	   </script>
	   <script>
	   		function Board(bno, btitle, bcontent, bwriter ){
	   			//Property
	   			this.bno = bno;
	   			this.btitle = btitle;
	   			this.bcontent = bcontent;
	   			this.bwriter = bwriter;
	   			
	   			//Method
	   			this.toString = function(){
	   				let str = '{';
	   				str += '"bno": ' + this.bno +'",';
	   				str += '"btitle": "' + this.btitle +'",';
	   				str += '"content":"' + this.bcontent +'",';
	   				str += '"bwriter": ' + this.bwriter +'"';
	   				str += '}';
	   				return str;
	   			};
	   		}
	   </script>
   </head>
   <body>
      <div class="card m-3">
      		<div class="card-header">new 키워드로 객체생성</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun1()">fun1 호출</button>      		
				<button class="btn btn-info btn-sm" onclick="fun2()">fun2 호출</button>      		
      		</div>
      		<script>
      			function fun1(){
      				let myCar = new Car();
      				console.log(myCar.name);
      				console.log(myCar.price);
      				myCar.run();
      				myCar.stop();
      			}
      			function fun2(){
      				let board1 = new Board(1,"제목1", "내용1", "글쓴이1");
      				let board2 = new Board(2,"제목2", "내용2", "글쓴이2");
      				
      				console.log(board1);
      				console.log(board1.toString());
      
      				console.log(board2)
      				console.log(board2.toString());
      			}
      		</script>
      </div>
   </body>
</html>