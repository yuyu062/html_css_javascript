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
	   
	   <style>
		   div{
		   		border: 1px solid black;
		   }
	   </style>
   </head>
   <body>
	   <div class="container-fluid" style="background-color: yellow;">
	   		<div class="row">
	   			<div class="col-sm">div1</div>
	   			<div class="col-sm">div2</div>
	   			<div class="col-sm">div3</div>
	   		</div>
	   </div>
	    <div class="container-fluid" style="background-color: yellow;">
	   		<div class="row">
	   			<div class="col-sm-2">div1</div>
	   			<div class="col-sm-2">div2</div>
	   			<div class="col-sm-8">div3</div>
	   		</div>
	   </div> 
	   
	   <hr/>
	   
	   <div class="container-fluid" style="background-color: yellow;">
	   		<div class="row">
	   			<div class="col-md">div1</div>
	   			<div class="col-md">div2</div>
	   			<div class="col-md">div3</div>
	   		</div>
	   </div> 
	   
	   <div class="container-fluid" style="background-color: yellow;">
	   		<div class="row">
	   			<div class="col-md-2">div1</div>
	   			<div class="col-md-2">div2</div>
	   			<div class="col-md-8">div3</div>
	   		</div>
	   </div> 
	   
	   <hr/>
	   
	     <div class="container-fluid" style="background-color: yellow;">
	   		<div class="row">
	   			<div class="col-sm col-md-2">div1</div>
	   			<div class="col-sm col-md-2">div2</div>
	   			<div class="col-sm col-md-8">div3</div>
	   		</div>
	   </div> 
   </body>
</html>