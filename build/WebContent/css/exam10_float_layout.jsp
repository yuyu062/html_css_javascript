<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="favicon.ico" type="image/x-icon"> 
      <title>Insert title here</title>
      <style>
      	*{
      		margin: 0px;
      		padding: 0px;
      	}
      	#wrapper{
      		width: 700px;
      		margin: 0px auto;
      	      	}
      	header{
      		background-color: #6B8EA3;
      		color:white;
      		text-align: center;
      		padding: 30px;/* 글씨: 수직으로 정렬하는 것X -> heght를 주는 것이 아니라 padding을 준다(위에 아래쪽으로 여백-> 중앙으로 오는 효과) */
      	}
      	nav{
      		width: 30%;
      		height: 300px;
      		background-color:#B4C8D5;
      	    box-sizing: border-box;/*width는 고정이고 안쪽에서만 변화를 주고 싶을 때 사용*/
      		float: left;
      		padding: 30px;
      	}
      	article{
      		width: 70%;
      		height: 300px;
      		background-color: #B3C3CD;
      		background-color: #EDF0F2;
      		float: left;
      		box-sizing: border-box;
      		padding: 20px;
      	}
      	
      	article > hl{
      		font-size: 30px;
      		margin-bottom: 10px;
      	}
      	
      	article > p{
      		margin-bottom: 10px; 
      	}
      	footer{
      		clear: both;
      		background-color:  #6B8EA3;
      		text-align: center;
      		padding: 10px;
      		color: white;
      	}
      	
      </style>
   </head>
   <body>
   		<div><a href="https://www.w3schools.com/html/html_layout.asp">[참고]</a></div>
   		<div><a href="https://www.w3schools.com/css/css_units.asp">[font-size]</a></div>
   		<div id="wrapper">
   			<header>
   				<h2>Cities</h2>
   			</header>
   			<section><!-- 블록요소-> 행 전체를 차지 -->
   				<nav>
   					<li>menu1</li>
   					<li>menu1</li>
   					<li>menu1</li>
   				</nav>
   				<article>
   					 <h1>London</h1>
                     <p>London is the capital city of England. It is the most populous city in the  United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
         			 <p>Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
   				</article>
   			</section>
   			
   			<footer>
   				<p>Footer</p>
   			</footer>
   		</div>
      
   </body>
</html>