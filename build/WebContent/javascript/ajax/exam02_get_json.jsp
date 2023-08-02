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
    	  // Create an XMLHttpRequest object
    	       const xhttp = new XMLHttpRequest();

    	       // Define a callback function
    	       xhttp.onload = function() {
    	         // Here you can use the Data
    	         var container = document.querySelector("#container");
    	         //console.log(xhttp.responseText);
    	         //console.log(JSON.parse(xhttp.responseText));
    	         let data = JSON.parse(xhttp.responseText);
    	         let html = "";
    	         data.forEach((item, index) => {
    	        	if(index == 0){
    	        		html += '<div class="d-flex">';	
    	        	}
    	        		html += '<div class="card d-inline-block" style="width:200px">';
    	        	    html += '<img class="card-img-top" src="../../common/image/photo/' + item.img +' " height="100">';
    	        		html += ' <div class="card-body">';
    	        		html += '  <h4 class="card-title">' + item.title + '</h4>';
    	        		html += '  <p class="card-text">' + item.text + '</p>';
    	        		html += '  <a href="#" class="btn btn-primary btn-sm">See Profile</a>';
    	        		html += ' <div class="card-body">';
    	        		html += ' </div>';
    	        		html += '</div>';
   
    	        	if(index === (data.length - 1)){
    	        		html += '<div/>';
    	        	}
    	         });
    	         var container = document.querySelector("#container");
    	         container.innerHTML = html;
    	       }

    	       // Send a request
    	       xhttp.open("GET", "exam02_content.jsp");
    	       xhttp.send();
    	       }
      </script>   
   </head>
   
   <body>
      <div class="card m-3">
      		<div class="card-header">new 키워드로 객체생성</div>
      		<div class="card-body">
				<button class="btn btn-info btn-sm" onclick="fun1()">fun1 호출</button>
				<hr/>
				<div id = "container">
				</div>      		     		
      		</div>
      </div>
   </body>
</html>