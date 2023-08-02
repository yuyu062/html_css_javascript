<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="favicon.ico" type="image/x-icon"> 
      <title>Insert title here</title>
      <style>
      	a{
			margin-right:30px;      	
      	}
      	
      	.menu{
      		list-style: none;
      		padding: 0px;
      	}
      	
      	.menuitem{
      		float: left;
      		margin-right: 20px;
      		cursor: pointer;
      	}
      </style>   
   </head>
   <body>
   		<div><a href="https://www.w3schools.com/css/css_list.asp">[참고]</a></div>
	    <div>
	        <a href="#">Menu1</a>
	        <a href="#">Menu2</a>
	        <a href="#">Menu3</a>
	        <a href="#">Menu4</a>
	        <a href="#">Menu5</a>
	    </div>
	
	    <div>
	        <ul class="menu">
	            <li class="menuitem"><a href="#">Menu1</a></li>
	            <li class="menuitem"><a href="#">Menu2</a></li>
	            <li class="menuitem"><a href="#">Menu3</a></li>
	            <li class="menuitem"><a href="#">Menu4</a></li>
	            <li class="menuitem"><a href="#">Menu5</a></li>
	        </ul>
	    </div>
	    
   </body>
</html>