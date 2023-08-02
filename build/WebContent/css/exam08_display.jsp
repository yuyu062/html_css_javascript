<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="favicon.ico" type="image/x-icon"> 
      <title>Insert title here</title>
      <style>
      	div{
      		width: 200px;
      		height: 100px;
      		border: 1px solid lightgray;
      		margin: 10px
     
      	}
      	#div1{
      		/* visibility: hidden; : 영역은 살아있음 */
      		/* display: none; : 모두 사라짐*/
      		haight: 100px;
      		background-color: lightyellow;
      		color: gray;
      	}
      	#div2{
      		color: gray;
      		display: inline;/* 자기 글씨 크기에 맞게 들어가는 것, 내용물의 크기에 맞게 자동으로 조정(width, height 지정 X) */
      	}
      	ul{
      		padding:0px;
      	}
      	#div3{
      		color: gray;
      		display: inline-block;/* inline인 동시에 width, height를 지정 가능 */
      	}
      	li{
      		border: 1px solid black;
      		display:inline; /* cf) float속성 */
      		margin: 20px
      	}
      	span, a{
      		display: block;
      	}
      </style>
   </head>
   <body>
   		<a href="https://www.w3schools.com/cssref/pr_class_display.php">[참고]</a>	
    	<div id="div1">div1</div> 
    	<img src="../common/image/photo/photo1.jpg" width="100"/> 
    	<img src="../common/image/photo/photo2.jpg" width="100"/> 
    	<div id="div2">div2</div>  
    	<div id="div3">div3</div> 
    	<ul>
    		<li>Item1</li>
    		<li>Item2</li>
    	</ul>
    	<p>
    		this is <span>css</span>. this is html.
    	</p>
    	<div>
    		<a href="#">Menu1</a>
	        <a href="#">Menu2</a>
	        <a href="#">Menu3</a>
	        <a href="#">Menu4</a>
	        <a href="#">Menu5</a>
    	</div>
   </body>
</html>