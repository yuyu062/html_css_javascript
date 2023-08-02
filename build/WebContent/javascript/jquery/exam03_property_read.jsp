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
	   		function checkValidation(){
	   			var isValidation = false;
	   			
	   			//uid 검사
	   			var uid = $("#uid").val();
	   			if(uid === ""){
	   				isValidation = false;
	   				console.log("아이디는 필수 입력 사항입니다.");
	   			}
	   			
	   			//uname 검사
				var uname = $("#uname").val();
	   			if(uname === ""){
	   				isValidation = false;
	   				console.log("이름은 필수 입력 사항입니다.")
	   			}
	   			
	   			//email 검사
	   			var email = $("#email").val();
	   			var pattern = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
	   			var result = pattern.test(email)
	   			if(!result){
	        		isValidation = false;
	        		console.log("이메일 형식이 아닙니다.");
	        	}
	   			
	   			//pwd 검사
	   			var pwd = $("#pwd").val();
	   			if(pwd.length < 8){
	   				isValidation = false;
	   				console.log("password는 8자 이상이어야 합니다.");
	   			}
	   			//skill 검사
	   			var skill = $("[name=skill]:checked");
	            var values = [];
	            skill.each((index, el) => values.push(el.value));
	            console.log(values);
	   			
	   			//city 검사
	   			var city = $("#city").val();
	   			console.log(city);
	   		}
	   </script>  
   </head>
   <body>
      <form id="joinForm" name="joinForm" action="#" class="m-5" onsubmit="checkValidation()" novalidate acrion="#" method="post">
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
		    <input type="email" class="form-control" placeholder="Enter email" id="email" name="email"><!-- 입력 양식의 이름: key 값  -->
		  </div>
		  <div class="form-group">
		    <label for="pwd">Password:</label>
		    <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="pwd">
		  </div>
		  <div class="form-group form-check">
		    <label class="form-check-label">
		      <input class="form-check-input" type="checkbox" name="skill" value="java"> Java <!-- 이름이 같다는 것 ->  하나의 그룹 -->
		    </label>
		   </div>
		   <div class="form-group form-check">
		    <label class="form-check-label">
		      <input class="form-check-input" type="checkbox" name="skill" value="html" checked> HTML
		    </label>
		    </div>
		   <div class="form-group form-check">
		    <label class="form-check-label">
		      <input class="form-check-input" type="checkbox" name="skill" value="css" checked> CSS
		    </label>
		  </div>
		  
		  <div class="form-group">
				  <label for="sel1">도시선택:</label>
				  <select class="form-control" id="city" name="city">
				    <option value="seoul">서울</option>
				    <option value="daejeon" selected>대전</option>
				    <option value="busan">부산</option>
				    <option value="jeju">제주</option>
				  </select>
		 </div>
	     <button type="submit" class="btn btn-primary">Submit</button>
	  </form>
   </body>
</html>