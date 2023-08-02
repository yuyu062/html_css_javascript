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
      		<div class="card-header">Object<-> JSON(문자열) 간의 변환</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="testJSON()">JSON의 정적 메소드 이용</button>      		  		     		  		   		  		     		  		   		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
      		</div>
      		<script>
      			function testJSON(){
      				//obj -> JSON 문자열로 변환
      				//목적: 외부로 전송
      				var obj = {bno: 1, btitle: "제목", bcontent: "내용"};
      				var strJson = JSON.stringify(obj);
      				console.log(strJson);
      				
      				//JSOM 문자열 -> obj로 변환
      				//목적: 쉽게 속성값을 읽기 위해서
      				var strJson2 = '{"bno":1,"btitle":"제목","bcontent":"내용"}';
      				var obj2 = JSON.parse(strJson2);
      				console.log(obj2.bno);
      				console.log(obj2.btitle);
      				console.log(obj2.bcontent);
      			}
      		</script>
      	</div>
   </body>
</html>