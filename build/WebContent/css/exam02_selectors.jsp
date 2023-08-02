<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="favicon.ico" type="image/x-icon"> 
      <title>Insert title here</title>
      <style>
        /* 모든 엘리먼트 선택 */
        *{
			font-size: 20px;
			/*브라우저별로 엘리먼트의 기본 여백이 다를 수 있기 때문에 기본 여백을 모두 삭제*/
			margin: 0px;
			padding: 0px;        
        }
        /* 태그 이름으로 선택 */
      	p{	/*내용물 정렬*/
      		text-align: center;
      		/*글자 색상*/
      		color: blue;
      	}
      	/* id 선택(단 한개) */
      	#p3{
      		/*재정의*/
      		text-align: right;
      	}
      	#p4{
      		/*재정의*/
      		color: green;
      	}
      	/* class 값으로 선택(.->그룹 선택) */
      	.news{
      		text-align: left;
      		color: #ffff00;
      		background-color: gray;
      	}
      	.photo{
      		background-color: orange;
      		width: 100px;
      		height: 100px;
      	}
      	/*p.photo: p태그중에서 class="photo" 선택*/
      	p.photo{
      		background-color: orange;
      		width: 50px;
      		height: 50px;
      	}
      	/*  
      	.class1.class2{}: class속성으로 class1과 class2를 모두 가지는 일레먼트를 선택
      	<div class="class1 class2"></div>
      	*/
      </style>
   </head>
   <body>
   	  <div><a href="https://www.w3schools.com/cssref/css_selectors.php">참고</a></div>
   	  <div><a href="https://getbootstrap.com/docs/4.6/components/buttons/">참고</a></div>
      <p>p1</p>
      <p>p2</p>
      <hr/>
      <p id="p3">p3</p>
      <p id="p4" style="color:red;">p4</p>
      <hr/>
      <p id="p5" class="news">p5</p>
      <p id="p6" class="news">p6</p>
      <hr/>
      <p id="p7" class="photo">p7</p>
      <p id="p7" class="photo">p8</p>
      <div id="div1" class="photo">div1</div>
      
   </body>
</html>