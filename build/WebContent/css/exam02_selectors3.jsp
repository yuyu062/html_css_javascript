<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="favicon.ico" type="image/x-icon"> 
      <title>Insert title here</title>
      <style>
      	[type]{
      		background-color:yellow;
      	}
      	
      	[type=text]{
      		bockground-color: orange;
      	}
      	[type=checkbox][checked]{
      		width: 30px;
      		height: 30px;
      	}
      </style>
   </head>
   <body>
   	<form>
   		<div>
   			<input type="text"/>
   			<input type="text"/>
   			<input type="password"/>
   		</div>
   		
   		<div>
	   		<input type="checkbox" name="hobby" value="movie"/>영화
	   		<input type="checkbox" name="hobby" value="music"/>음악
	   		<input type="checkbox" name="hobby" value="game/">게임
   		</div>
   		
   		<div>
	   		<input type="checkbox" name="hobby" value="web" chacked/>웹개발
	   		<input type="checkbox" name="hobby" value="android"/>모바일앱개발
	   		<input type="checkbox" name="hobby" value="game" chacked/>게임개발
   		</div>
   		
   	</form>		
   </body>
</html>