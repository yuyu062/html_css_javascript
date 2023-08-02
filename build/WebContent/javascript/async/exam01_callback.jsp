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
      		function fun1(){
      			timerId = window.setInterval(callback, 1000);
      		}
			
      		function fun2(){
      			timerId = window.setTimeout(callback, 3000);
			}
      		
      		function callback(){
      			var strDate = new Date().toLocaleTimeString();
      			document.querySelector("#container").innerHTML = strDate;
      		}
      </script>
   </head>
   
   <body>
   	  <div class="card ㅡ-2">
         <div class="card-header">주기적 작업 또는 지연 작업</div>
         <div class="card-body">
            <button class="btn btn-info btn-sm" onclick="fun1()">주기적 작업</button>
            <button class="btn btn-info btn-sm" onclick="fun1()">지연 작업</button>
            <hr/>
            <div id="container">
            </div>
          </div> 
      </div>
   </body>
</html>