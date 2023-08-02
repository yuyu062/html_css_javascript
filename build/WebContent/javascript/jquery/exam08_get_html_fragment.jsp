<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="/html_css_javascript/favicon.ico" type="image/x-icon">
      <title>Insert title here</title>
      
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	  
	  <script>
      		function fun1() {
    		   $.ajax({
    			   url:"exam08_content.jsp",
    			   method:"get",
    			   success: function(data){
    				   console.log(data);
    				   $("#container").html(data);
    			   },
    			   error:function(error){
    				   console.log(error.status);
    			   }
    		   });
      		}
      		
      		function fun2() {
    		   $.get("exam08_content.jsp", function(data){
    				   console.log(data);
    				   $("#container").html(data);
    		   });
      		}
      		
      		//비동기 
      		function fun3() {
    			$("#container").load("exam08_content.jsp");
      		}
      </script>   
   </head>
   
   <body>
      <div class="card m-3">
      		<div class="card-header">AJAX로 HTML 조각 얻기</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun1()">fun1 호출</button>
				<button class="btn btn-info btn-sm" onclick="fun2()">fun2 호출</button>
				<button class="btn btn-info btn-sm" onclick="fun3()">fun3 호출</button>
				<hr/>
				<div id = "container">
				
				</div>      		     		
      		</div>
      </div>
   </body>
</html>