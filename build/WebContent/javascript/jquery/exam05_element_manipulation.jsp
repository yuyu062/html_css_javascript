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
	   		function changeContent(no){
	   			var test1 =$(".test1");
	   			test1.each(function(index, el){
	   				if(no === 1){
	   					$(el).html("변경 내용");
	   				}else if(no === 2){
		   				$(el).html( "<img src='../../common/image/face/member05.png' width='30' height='30'/>");	
	   				}
	   			});
	   		}
	   		
	   		function addAttach1(){
	   			var attachDiv = $("#attachDiv");
	   			attachDiv.append( 
	   				'<div>' +
						'<input type="file" name="attach"/> '+
						'<button class="btn btn-danger btn-sm" onclick="removeAttach()">X</button>' +
					'</div>'
				);
	   		}
	   		
	   		function addAttach2(){
	   			var div = document.createElement("div");
		   			var inputFile = document.createElement("input");
		   				inputFile.setAttribute("type", "file");
		   				inputFile.setAttribute("name", "attach");
		   			var emptxt = document.createTextNode(" ");
		   			var button = document.createElement("button");
		   				button.setAttribute("type", "button");
		   				button.setAttribute("class", "btn btn-danger btn-sm");
		   				button.setAttribute("onclick", "removeAttach()");
		   				button.innerHTML = "X";
		   			div.appendChild(inputFile);
		   			div.appendChild(emptxt);
		   			div.appendChild(button);
	   			
		   		var attachDiv = document.querySelector("#attachDiv");
		   		attachDiv.appendChild(div);
	   		}
	   		
	   		function removeAttach(){
	   			var button = $(event.target);
	   			var div = $(event.target).parent();
	   			div.detach();
	   		}
	   </script>
   </head>
   <body>
   		<div class="card m-3">
      		<div class="card-header">엘리먼트 내용 변경</div>
      		<div class="card-body">
      			<button class="btn btn-info btn-sm" onclick="changeContent(1)">내용 변경하기1</button>
      			<button class="btn btn-info btn-sm" onclick="changeContent(2)">내용 변경하기2</button>
      			<hr/>
				<a class="test1" href="#">링크1</a>
				<hr/>
				<span class="test1">아이콘</span> 
				<hr/>
				<p class="test1">문단1</p>
				<hr/>
				<div class="test1">내용1</div>
			</div>	  		  		     		  		   		  		     		  		   		  		     		  		   		  		     		  				  		     		  		   		  		     		  	
        </div>
   		<div class="card m-3">
      		<div class="card-header">엘리먼트 자체를 추가 및 제거</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="addAttach1()">첨부 추가</button>
				<hr/>
				<form>
					<div id="attachDiv">
						<div>
							<input type="file" name="attach" />
							<button class="btn btn-danger btn-sm" onclick="removeAttach()">X</button>
						</div>
					</div>
				</form>
			</div>	  		  		     		  		   		  		     		  		   		  		     		  		   		  		     		  				  		     		  		   		  		     		  	
        </div>		  		     		  		   		  		     		  		   		  		     		  		   		  		     		  				  		     		  		   		  		     		  	
   </body>
</html>