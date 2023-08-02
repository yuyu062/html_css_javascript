<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="favicon.ico" type="image/x-icon"> 
      <title>Insert title here</title>
      <style>
      	/*   class속성으로 class1과 class2를 모두 가지는 일레먼트를 선택*/
      	.class1.class2{
      		background-color:red;
      	}
      	/*.class1 또는 .class2를 가지는 엘리먼트 선택*/
      	.class1, .class2{
      		color:blue;
      	}
      	/*.class3 내부에 .class4를 가지는 엘리먼트를 선택*/
      	.class3 .class4{
      		background-color:green;
      	}
      	/*.class5 바로 밑 .class6를 가지는 엘리먼트를 선택*/
      	.class5 >.class6{
      		background-color:red;
      	}
      	/*#div9 바로 뒤에 p를 선택*/
      	#div9+p{
      		background-color:yellow;
      	}
      </style>
   </head>
   <body>
	   <form>
	   		<div><a href="https://www.w3schools.com/cssref/sel_gen_sibling.php">참고</a></div>
	   	  <div>
		      <p class="class1">p1</p>
		      <p class="class1 class2">p2</p>
	      </div>
	      
	      <div class="class3">
	      	<div>
	      		div1
	      		<div class="class4">div2</div>
	      	</div>
	      	<div class="class4">div3</div>
	      	<div>div4</div>
	      </div>
	      
	      <div class="class5">
	      	<div>
	      		div5
	      		<div class="class6">div6</div>
	      	</div>
	      	<div class="class6">div7</div>
	      	<div>div8</div>
	      </div>
	      
	      <div>
	      	<div>div9</div>
	      	<p>p3</p>
	      	<p>p4</p>
	      </div>
	   </form>
   </body>
</html>