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
      
      <script>
         function init() {
            console.log("init()");
         }
      </script>
   </head>
   
   <!-- Window의 load 이벤트가 발생했을 때 실행할 핸들러(처리 함수) 지정-->
   <body onload="init()">
      
      <div class="m-3">
         <img src="../../common/image/face/member04.png" width="50">
         <img src="../../common/image/face/member05.png" width="50">
         <img src="../../common/image/face/member06.png" width="50">
      </div>
      
      <div class="card m-3">
          <div class="card-header">마우스 이벤트 처리</div>
          <div class="card-body">
             <div>[클릭 이벤트 처리]</div>
             <button id="btn1" class="btn btn-info btn-sm" onclick="testOnclick()">클릭 이벤트 처리</button>
             <button id="btn2" class="btn btn-info btn-sm" onclick="testOnclick()">클릭 이벤트 처리</button>
            <hr>
             <div>[마우스가 들어갈 때, 나갈 때 이벤트 처리]</div>
             <div class="bg-warning border" style="width: 100px; height: 100px;"
                onmouseover="testMouseOver()" 
                onmouseout="testMouseOut()"
                onmousemove="testMouseMove()"></div>
         </div>
           <script>
            function testOnclick() {
               console.log("testOnclick()");
               console.log(event.target);
               if(event.target.id === "btn1") {
                  console.log("btn1의 클릭 이벤트를 처리함")
               }else if(event.target.id === "btn2") {
                  console.log("btn2의 클릭 이벤트를 처리함")
               }
            }
            
            function testMouseOver() {
               console.log("testMouseOver()");
            }
            
            function testMouseOut() {
               console.log("testMouseOut()");
            }
            
            function testMouseMove() {
               console.log("x: " + event.x + ", y: " + event.y);
            }
          </script>
      </div>
       
       <div class="card m-3">
          <div class="card-header">폼 제출 이벤트 처리</div>
          <div class="card-body">
             <!-- submit 이벤트를 처리하는 핸들러 지정 -->
            <form method="post" action="../../index.jsp" onsubmit="testSubmit()">
               <!-- 양식 태그 작성 -->
               <input type="submit" value="제출" class="btn btn-danger btn-sm"/>
            </form>
         </div>
          <script>
            function testSubmit() {
               console.log("testSubmit()");
               //일반적으로 입력 데이터의 유효성 검사 코드가 옴
               //유효성 검사 실패시 
               
               var validateResult = false;
               if(validateResult == false) {
                  event.preventDefault();
                  console.log(event);
               }
            }
            
          </script>
       </div>
       
       <div class="card m-3">
          <div class="card-header">링크 처리</div>
          <div class="card-body">
             <!-- submit 이벤트를 처리하는 핸들러 지정 -->
            <a href="../../index.jsp" onclick="testLink()">홈페이지</a>
         </div>
          <script>
            function testLink() {
               console.log("testLink()");
               //이동 전에 이동해야할지 검사하는 코드
               
               var isOk = false;
               if(isOk == false) {
                  event.preventDefault(); //a태그와 form 태그에서 주로 사용
               }
            }
          </script>
       </div>
       
       <div class="card m-3">
          <div class="card-header">이벤트 전파(자식(안) -> 부모(밖)) 중지</div>
          <div class="card-body">
             <div class="bg-info border" style="width:100px; height: 100px; padding:25px;" onclick="testParentDivClick()">
                <div class="bg-danger border" style="width:50px; height:50px;" onclick="testChildDivClick()"></div>
             </div>
         </div>
          <script>
            function testParentDivClick() {
               console.log("testParentDivClick()");
            }
            
            function testChildDivClick() {
               console.log("testChildDivClick()");
               event.stopPropagation();
            }
          </script>
       </div>
   </body>
</html>