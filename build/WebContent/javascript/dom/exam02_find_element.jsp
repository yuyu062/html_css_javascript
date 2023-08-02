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
   		<div  class="p-3">
	   	   <button class="btn btn-info btn-sm" onclick="findBySkillCheck()">
	   	   		joinForm 내부에 name="skill""인 것 중에서 checked 속성이 있는 것
	   	   </button>
	   	   <script>
	   	   		function findBySkillCheck(){
	   	   			var checkedSkills = document.querySelectorAll("#joinForm [name=skill]:checked");
	   	   			console.log(checkedSkills);
	   	   		}
	   	   </script>
   		</div>		
   	  
   	   <div class="p-3">
		  	<button class="btn btn-info btn-sm" onclick="findByCitySelected()">
		  		joinForm 내부에 name="city"인 select내부 항목 중에서 selected된 것을 찾기 
		  	</button>
	   	    <script>
	   	   		function findByCitySelected(){
	   	   			var selectedCity = document.querySelectorAll("#joinForm [name=city] option:checked");
	   	   			console.log(selectedCity);
	   	   		}
	   	    </script>
   	   </div>
   	   
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
			      <input class="form-check-input" type="checkbox" name="skill" value=""> Java
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