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
	   </style>
   </head>
   <body>
      	<div class="container-fluid">
      		<header class="row bg-dark  py-3">
   				<h2 class="col text-white text-center">Cities</h2>
   			</header>
   			<section class="row bg-secondary" style="height: 300px;"><!-- 블록요소-> 행 전체를 차지 -->
   				<nav class="col-sm-4 bg-info p-3">
   					<ul>
	   					<li><a href="#" class="text-white">menu1</a></li>
	   					<li><a href="#" class="text-white">menu1</a></li>
	   					<li><a href="#" class="text-white">menu1</a></li>
   					</ul>
   				</nav>
   				<article class="col-sm-8">
   					 <h1>London</h1>
                     <p>London is the capital city of England. It is the most populous city in the  United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
         			 <p>Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
   				</article>
   			</section>
   			
   			<footer class="row bg-dark py-2">
   				<p class="col text-white text-center m-0">Footer</p><!-- p테그에 기본 margin이 들어감 -->
   			</footer>
      	</div>
   </body>
</html>