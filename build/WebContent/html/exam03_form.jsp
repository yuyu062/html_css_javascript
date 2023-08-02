<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="favicon.ico" type="image/x-icon"> 
      <title>Insert title here</title>
   </head>
   <body>
   	  <div><a href="https://www.w3schools.com/tags/tag_form.asp">참고</a></div>
   	  <div><a href="https://www.w3schools.com/tags/att_input_type.asp">참고</a></div>
   	  
   	   <hr/>
   	   <h3>[제출버튼]</h3>
   	   <%--
   	   method: 요청방식(GET(default), POST)
   	   action: 
   	   	   - 입력 데이터를 제출할 서버측 리소스(JSP, Servlet, Contorller)
   	   	   - 생략되면 현재 리소스로 입력 데이터를 제출
   	   --%>
      <form method="post" action="exam03_form_data_receive.jsp">
      <!--제출 기능이 있는 태그 -->
      	<input type="submit" value="제출"/>
      	<button type="submit">제출</button>
        <input type="image" src="../common/image/submit.png" width="100"/>
      </form>
      
      <hr/>
      <h3>[다양한 입력양식]</h3>
      <form method="get" action="exam03_form_data_receive.jsp">
      <!-- 입력 양식 -->
      <!--
       id: 전체 HTML에서 유일한 식별값(CSS, Javascript)
       name: 해당 form안에서 유일한 식별값(전송 키 이름으로 사용)
        -->
      <div>
      	<lable for="userId">User ID:</lable>
      	<input id = "userId" name = "userid" type = "text" maxlength = "8" />
      </div>
      <div>
      	<lable for="userPassword">User PW:</lable>
      	<input id = "userPassword" name = "userPassword" type = "password" minlength = "8" maxlength = "12"/>
      </div>
       <div>
      	<lable for="userJoinDate">User Join Date:</lable>
      	<input id = "userJoinDate" name = "userJoinDate" type = "date" value="2023-23-35"/>
      </div>
      
       <div>
      	<lable for="userHobby">User Join Date:</lable>
      	<!-- 
      	 name: 그룹의 이름으로도 사용
      	 -->
      	<input type = "checkbox" name = "userHobby" value = "movie"/>영화
      	<input type = "checkbox" name = "userHobby" value = "music" checked/>음악
      	<input type = "checkbox" name = "userHobby" value = "game"/>게임
      </div>
      
       <div>
      	<lable>User Sex:</lable>
      	<!-- 
      	 name: 그룹의 이름으로도 사용
      	 -->
      	<input type = "radio" name="userSex" value = "movie"/>남자
      	<input type = "radio" name="userSex" value = "music" checked/>여자
      </div>
      
      <div>
      	<lable>User City:</lable>
      	<!-- 
      	 name: 그룹의 이름으로도 사용
      	 -->
      	<input type = "radio" name="userCity" value = "Seoul" checked/>서울
      	<input type = "radio" name="userCity" value = "Busan"/>부산
      	<input type = "radio" name="userCity" value = "Jeju"/>제주
      </div>
      <div>
      	<label for="userAge">User Age</label>
      	<input type="number" name="userAge "min="0" max="200"/>
      </div>
      <div>
      	<label for="userTel">User Tel</label>
      	<input type="Tel" name="userTel" pattern="010-[0-9]{3,4}-[0-9]{3,4}"/>
      </div>
      <!--제출 기능이 있는 태그 -->
      	<input type="submit" value="제출"/>
      </form>
      
      <hr/>
      
      <h3>[첨부파일이 있을 경우]</h3>
      <!--
       method: 반드시 post
       enctype: multipart/form-data
        -->
      <form method="post" action="exam03_form_data_receive.jsp"
            entype="mulpart/form-data">
            <input type="file" name="attach"/>
            <input type="submit" value="제출"/> <br/>            
      </form>
      
      <hr/>
      
      <h3>[form의 기타 속성들]</h3>
      <!--
      id, name: form을 식별하는 값
      novalidate: 기본 유효성 검사 기능 제거
        -->
      <form id="joinForm" name="joinForm" action="exam03_form_data_receive.jsp" novalidate="novalidate">
      	<div>
      		<label for="userEmail">User Email</label>
      		<input type="email" name="userEmail"/>
      	</div>
      	<input type="submit" value="제출"/>
      </form>
      <form id="loginForm" name="loginForm">
      	<div>
      		<label for="userEmail">User Email</label>
      		<input type="email" name="userEmail"/>
      	</div>
      	</div>
      	<input type="submit" value="제출"/>
      </form>
   </body>
</html>