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
      		function changePropertyValue(){
      			var photo = $("#photo");
      			 $("#photo").attr("src", "../../common/image/photo/photo2.jpg");
      		}		
      		
      		function handleMouseOver(){
      			var photo = $("#photo");
      			 $("#photo").attr("src", "../../common/image/photo/photo3.jpg");
      		}

      		function handleMouseOut(){
      			var photo = $("#photo");
      			photo.attr("src","../../common/image/photo/photo1.jpg");
      		}
      		
      		function changeStyle(){
      			var colorBox1 = $("#colorBox1");
      			 $("#colorBox1").css("backgroundColor", "orange");
      			colorBox1.css("border","3px solid red");
      		}
      		
      		function changeClass(){
      			var colorBox2 = $("#colorBox2");
      			colorBox2.addClass("bg-warning");
      			colorBox2.addClass("ml-5");
      		}
       </script>
   </head>
   <body>
      <div class="card m-3">
      		<div class="card-header">Property 변경</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="changePropertyValue()">속성 변경하기</button>
				<button class="btn btn-info btn-sm" onclick="changeStyle()">style 속성 값 변경하기</button>
				<button class="btn btn-info btn-sm" onclick="changeClass()">CSS 속성 값 변경하기</button>
				<hr/>
				<div class="d-flex">
					<img id="photo" 
					src="../../common/image/photo/photo1.jpg" 
					width="100" height="100"
					onmouseover="handleMouseOver()"
					onmouseout="handleMouseOut()"/>  
					
				    <div id="colorBox1" style="width: 100px; height: 100px; border: 1px solid black; margin-left: 10px;">
				    </div>  
					
					<div id="colorBox2" class= "border ml-2 border-dark" style="width: 100px; height: 100px;">
				    </div>  
				</div>
				  		  		     		  		   		  		     		  		   		  		     		  		   		  		     		  				  		     		  		   		  		     		  		
      		</div>
      </div>
   </body>
</html>