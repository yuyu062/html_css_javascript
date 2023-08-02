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
   <body class="p-3">
   	   <button class="btn btn-info btn-sm" onclick="findById()">id로 객체 찾기</button>
   	   <script>
   	   		function findById(){
   	   			var uidElement = window.document.getElementById("uid");
   	   			console.log(uidElement);
   	   			
   	   			var uidElement2 = window.document.querySelector("#uid");
   	   			console.log(uidElement2);
   	   		}
   	   </script>
   	  
   	   <button class="btn btn-info btn-sm" onclick="findByclass()">class로 객체 찾기</button>
   	   <script>
   	   		function findByclass(){
   	   			var uidElements = window.document.getElementsByClassName("userIdentity");
   	   			console.log(uidElements);
   	   			
   	   			var uidElements2 = window.document.querySelectorAll(".userIdentity");
   	   			console.log(uidElements2);
   	   		}
   	   </script>
   	   
   	   <button class="btn btn-info btn-sm" onclick="findByTag()">tag 이름으로 객체 찾기</button>
   	   <script>
   	   		function findByTag(){
   	   			var uidElements = window.document.getElementsByTagName("input");
   	   			console.log(uidElements);
   	   			
   	   			var uidElements2 = window.document.querySelectorAll("input");
   	   			console.log(uidElements2);
   	   		}
   	   </script>
   	   <hr/>
       
       <form id="joinForm" name="joinForm" action="#" class="m-5">
       	  <div class="form-group userIdentity">
		    <label for="uid">User ID:</label>
		    <input type="text" class="form-control" placeholder="Enter User Id" id="uid" name="uid">
		  </div>
       	  <div class="form-group">
		    <label for="uname">User Name:</label>
		    <input type="text" class="form-control" placeholder="Enter User Name" id="uname" name="uname">
		  </div>
		  
		  <div class="form-group userIdentity">
		    <label for="email">Email address:</label>
		    <input type="email" class="form-control" placeholder="Enter email" id="email">
		  </div>
		  <div class="form-group">
		    <label for="pwd">Password:</label>
		    <input type="password" class="form-control" placeholder="Enter password" id="pwd">
		  </div>
		  <div class="form-group form-check">
		    <label class="form-check-label">
		      <input class="form-check-input" type="checkbox" name="skill"> Java
		    </label>
		   </div>
		   <div class="form-group form-check">
		    <label class="form-check-label">
		      <input class="form-check-input" type="checkbox" name="skill" checked> HTML
		    </label>
		    </div>
		   <div class="form-group form-check">
		    <label class="form-check-label">
		      <input class="form-check-input" type="checkbox" name="skill" checked> CSS
		    </label>
		  </div>
		  
		  <div class="form-group">
			  <label for="sel1">도시선택:</label>
			  <select class="form-control" id="city" name="city">
			    <option>서울</option>
			    <option selected>대전</option>
			    <option>부산</option>
			    <option>제주</option>
			  </select>
		 </div>
				  <button type="submit" class="btn btn-primary">Submit</button>
		</form>
   </body>
</html>