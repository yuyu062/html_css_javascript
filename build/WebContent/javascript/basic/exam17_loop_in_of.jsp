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
      		<div class="card-header">Loop</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="testLoopIn()">객체의 속성 개수만큼 반복(외부반복자)</button>      		  		     		  		   		  		     		  		
				<button class="btn btn-info btn-sm" onclick="testLoopOf()">배열의 항목 개수만큼 반복(외부반복자)</button>      		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
      		</div>
      		<script>
      			function testLoopIn(){
      				var board = {bno: 1, btitle: "제목", bcontent: "내용"};
      				for(let propName in board){
      					let value = board[propName];
      					console.log(propName + ": " + value);
      				}
      			}
      			
      			function testLoopOf(){
      				const fruits = ["Banana", "Orange", "Apple", "Mango"];
      				for(let fruit of fruits){
      					console.log(fruit);
      				}
      			}
      		</script>
      	</div>
   </body>
</html>