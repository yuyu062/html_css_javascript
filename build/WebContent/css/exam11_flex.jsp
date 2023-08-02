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
      	 border: 1px solid black
      	}
      	#div0{
      		display:flex;
      		/* 수직 정렬 */
      		/* align-items: center; */
      		/* 수평 정렬 */
      		/* justify-content: center; */
      		height: 300px;
      	}
      	#div0 div{
      		/* 수평 정렬 테스트 */
    		/*width:100px; */
      		/* 수직 정렬 테스트 */
      		/* height: 100px; */
      	}
      	#div1{flex-gronw: 1;}
      	#div2{flex-gronw: 1;}
      	#div3{flex-gronw: 1;}
      </style>
   </head>
   <body>
   		<a href="https://www.w3schools.com/css/css3_flexbox_container.asp">[참고]</a>
   		<div id="div0">
	   		<div id="div1">1</div>
	      	<div id="div2">2</div>
	      	<div id="div3">3</div>
   		</div>
      
   </body>
</html>