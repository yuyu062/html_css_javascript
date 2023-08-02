<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="favicon.ico" type="image/x-icon">
      <title>Insert title here</title>
      
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
      
      <script src="exam07.js"></script>
   </head>
   
   <!-- Window의 load 이벤트가 발생했을 때 실행할 핸들러(처리 함수) 지정-->
   <body>
      
      <div class="card m-3">
          <div class="card-header"></div>
          <div class="card-body">
             <div>[클릭 이벤트 처리]</div>
             <button id="btn1" class="btn btn-info btn-sm">클릭 이벤트 처리</button>
             <button id="btn2" class="btn btn-info btn-sm">클릭 이벤트 처리</button>
            <hr>
             <div>[마우스가 들어갈 때, 나갈 때 이벤트 처리]</div>
             <div id="divMouse" class="bg-warning border" style="width: 100px; height: 100px;"></div>
         </div>
           
      </div>
       
       <div class="card m-3">
          <div class="card-header">폼 제출 이벤트 처리</div>
          <div class="card-body">
             <!-- submit 이벤트를 처리하는 핸들러 지정 -->
            <form id="joinForm" name="joinForm" action="#" class="mx-3" novalidate method="post">
           
                 <div class="form-group userIdentity">
                       <label for="uid">User ID:</label>
                       <input type="text" class="form-control" placeholder="Enter User Id" id="uid" name="uid">
                       <span id="uidErr" class="errorMsg text-danger d-none small">아이디는 필수 입력 사항입니다.</span>
                 </div>
                 <div class="form-group">
                       <label for="uname">User Name:</label>
                     <input type="text" class="form-control" placeholder="Enter User Name" id="uname" name="uname">
                       <span id="unameErr" class="errorMsg text-danger d-none small">이름은 필수 입력 사항입니다.</span>
                 </div>
                 <div class="form-group userIdentity">
                     <label for="email">Email address:</label>
                     <input type="email" class="form-control" placeholder="Enter email" id="email" name="email">
                       <span id="emailErr1" class="errorMsg text-danger d-none small">이메일은 필수 입력 사항입니다.</span>
                       <span id="emailErr2" class="errorMsg text-danger d-none small">이메일 형식이 맞지 않습니다.</span>
                 </div>
                 <div class="form-group">
                     <label for="pwd">Password:</label>
                     <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="pwd">
                       <span id="pwdErr1" class="errorMsg text-danger d-none small">패스워드는 필수 입력 사항입니다.</span>
                       <span id="pwdErr2" class="errorMsg text-danger d-none small">8자 이상 입력해야 합니다.</span>
                 </div>
                 
                 <div class="form-group form-check">
                     <label class="form-check-label">
                           <input class="form-check-input" type="checkbox" name="skill" value="java"> Java
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
                    <label for="city">도시 선택: </label>
                    <select class="form-control" id="city" name="city">
                      <option value="seoul">서울</option>
                      <option value="daejeon" selected>대전</option>
                      <option value="busan">부산</option>
                      <option value="jeju">제주</option>
                    </select>
                 </div>
                 <button type="submit" class="btn btn-primary">Submit</button>
            </form>
         </div>
       </div>
       
       <div class="card m-3">
          <div class="card-header">링크 처리</div>
          <div class="card-body">
             <!-- submit 이벤트를 처리하는 핸들러 지정 -->
            <a id="linkHome" href="../../index.jsp">홈페이지</a>
         </div>
       </div>
       
   </body>
</html>