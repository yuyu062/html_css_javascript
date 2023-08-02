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
      		padding: 0px
      	}
      	
      	#wrapper{
      		background-color: lightblue;
      		width: 700px;
      		margin: 0 auto;
      		padding:50px 0px;
      	}
      	
      	#div1{
      		width: 150px;
      		height: 150px;
      		background-color: pink;
      		margin-bottom:50px;
      	}
      	
      	#div2{
      		width: 150px;
      		height: 150px;
      		background-color: yellow;
      		margin-left: 50px;
      		padding-left: 50px;
      		padding-top: 50px;
      	}
      	
      	#div21{
      		width: 50px;
      		height: 50px;
      		background-color:lightgreen
      	}
      	
      	#div3{
      		width: 150px;
      		height: 150px;
      		background-color:violet;
      		margin:50px
      	}
      </style>
   </head>
   <body>
   	  <div><a href="https://www.w3schools.com/css/css_margin.asp">[참고]</a></div>
      <div id="wrapper">
      	<div id="div1">div1</div>
      	
      	<div id= "div2">
      		div2
      		<div id="div21">div21</div>
      	</div>
      	
      	<div id="div3">div3</div>
      </div>
   </body>
</html>