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
   			<div class="card-header" >window의 속성과 메소드</div>
   			<div class="card-body">
   				<button class="btn btn-info btn-sm" onclick="openPopup1()">팝업 띄우기1</button>
   				<button class="btn btn-info btn-sm" onclick="openPopup2()">팝업 띄우기2</button>
   				<button class="btn btn-info btn-sm" onclick="openPopup3()">팝업 띄우기3</button>
   			</div>
   			<script>
   				function openPopup1(){
   					//듀얼 모니터에서는 1번 모니터에서 테스트
   					window.open("exam02_popup_content.jsp", "winLogin", "left=100, top=100, width=350, height=500");
   				}
   				function openPopup2(){
   					window.open("exam02_popup_content.jsp", "_blank");
   				}
   				function openPopup3(){
   					window.open("exam02_popup_content.jsp", "winLogin", "_self");
   				}
   			</script>
   		</div>
   		<div class="card m-3">
   			<div class="card-header" >윈도우 크기</div>
   			<div class="card-body">
   				<button class="btn btn-info btn-sm" onclick="checkViewPortSize()">ViewPort의 크기</button>
   			</div>
   			<script>
   				function checkViewPortSize(){
   					var width = window.innerWidth;
   					var height = window.innerHeight;
   					window.console.log("width: " + width + ", height: " + height);
   				}
   			</script>
   		</div>
   		
   		<div class="card m-3">
   			<div class="card-header" >페이지 이동</div>
   			<div class="card-body">
   				<button class="btn btn-info btn-sm" onclick="changeUrl()">자동으로 URL변경</button>
   				<button class="btn btn-info btn-sm" onclick="goBack()">이전 페이지로 이동</button>
   				<button class="btn btn-info btn-sm" onclick="goForward()">다음 페이지로 이동</button>
   			</div>
   			<script>
   				function changeUrl(){
   					window.location.href = "../../index.jsp";
   				}
   				
   				function goBack(){
   					window.history.back();
   				}
   				
   				function goForward(){
   					window.history.forward();
   				}
   			</script>
   		</div>
   		
   		<div class="card m-3">
   			<div class="card-header" >고정된 다이얼로그 띄우기</div>
   			<div class="card-body">
   				<button class="btn btn-info btn-sm" onclick="alterDialog()">알림 다이얼로그</button>
   				<button class="btn btn-info btn-sm" onclick="confirmDialog()">확인 다이얼로그</button>
   				<button class="btn btn-info btn-sm" onclick="promptDialog()">입력 다이얼로그</button>
   				<button class="btn btn-info btn-sm" d data-toggle="modal" data-target="#bootstrapDialog"> 부트스트랩 다이얼로그</button>
   				
   				<!-- The Modal -->
				<div class="modal" id="bootstrapDialog">
				  <div class="modal-dialog">
				    <div class="modal-content">
				    <form action="#" class="m-3">
				      <!-- Modal Header -->
				      <div class="modal-header">
				        <h5 class="modal-title">Modal Heading</h5>
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				      </div>
				
				      <!-- Modal body -->
				      <div class="modal-body">
				      <!--#################################  -->
						  <div class="form-group">
						    <label for="email">Email address:</label>
						    <input type="email" class="form-control" placeholder="Enter email" id="email">
						  </div>
						  <div class="form-group">
						    <label for="pwd">Password:</label>
						    <input type="password" class="form-control" placeholder="Enter password" id="pwd">
						  </div>
						  <div class="form-group form-check">
						    <label class="form-check-label">
						      <input class="form-check-input" type="checkbox"> Remember me
						    </label>
						  </div>
						
						<!--#################################  -->
				      </div>
				
				      <!-- Modal footer -->
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-primary btn-sm">로그인</button>
						<button type="button" class="btn btn-primary btn-sm" data-dismiss="modal"">닫기</button>
				      </div>
				    </form>
				    </div>
				  </div>
				</div>
	   			</div>
   			<script>
   				function alterDialog(){
   					window.alert("로그인을 하셔야 합니다");
   				}
   				
   				function confirmDialog(){
   					var result = window.confirm("정말 주문하시겠습니까?");
   					if(result){
   						console.log("확인 버튼을 클릭했을 때 처리할 내용");
   					}else{
   						console.log("취소 버튼을 클릭했을 때 처리할 내용");
   					}
   				}
   				
   				function promptDialog(){
   					var data = window.prompt("수량을 입력하세요.");
   					if(data != null){
   						console.log("입력된 수량" + data);
   					}else{
   						console.log("수량 입력이 취소됨");
   					}
   				}
   			</script>
   		</div>
   		
   		<div class="card m-3">
   			<div class="card-header" >비동기 처리</div>
   			<div class="card-body">
   				<button class="btn btn-info btn-sm" onclick="startInterval()">주기적 반복 시작</button>
   				<button class="btn btn-info btn-sm" onclick="stopInterval()">주기적 반복 중지</button>
   				<hr/>
   				<button class="btn btn-info btn-sm" onclick="startPending()">지연 작업 시작</button>
   				<button class="btn btn-info btn-sm" onclick="stopPending()">지연 작업 중지</button>
   			</div>
   			<script>
   				function startInterval(){
   					taskNo1 = window.setInterval(function(){
   						//비동기 처리 작업
   						console.log("hello, ");
   						console.log("javascript");
   					}, 1000);
   				
   					taskNo2 = window.setInterval(() => {
   						//비동기 처리 작업
   						console.log("안녕, ");
   						console.log("자바스크립트");
   					}, 2000);
   				}
   				
   				function stopInterval(){
   					window.clearInterval(taskNo1);
   					window.clearInterval(taskNo2);
   					
   				}
   				
   				function startPending(){
   					taskNo3 = window.setTimeout(function(){
   						//지연 작성
   						console.log("잘거야");
   					}, 5000);
   					taskNo4 = window.setTimeout(() => {
   						//지연 작성
   						console.log("집에 갈거야");
   					}, 10000);
   				}

   				function stopPending(){
   					window.clearTimeout(taskNo4);
   				}
   			</script>
   		</div>
   </body>
</html>