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
	   		margin:20px;
	   	}
	   </style>
   </head>
   <body>
    	<div>
	    	<button type="button" class="btn btn-outline-primary">Primary</button>
			<button type="button" class="btn btn-outline-secondary">Secondary</button>
			<button type="button" class="btn btn-outline-success">Success</button>
			<button type="button" class="btn btn-outline-info">Info</button>
			<button type="button" class="btn btn-outline-warning">Warning</button>
			<button type="button" class="btn btn-outline-danger">Danger</button>
			<button type="button" class="btn btn-outline-dark">Dark</button>
			<button type="button" class="btn btn-outline-light text-dark">Light</button>
	    </div> 
	    
	    <div>
		    <button type="button" class="btn btn-primary btn-lg">Large</button>
			<button type="button" class="btn btn-primary">Default</button>
			<button type="button" class="btn btn-primary btn-sm">Small</button>   
	    </div>
	    <!-- 블록레벨: 행 전체를 차지 -->
	    <div>
	    	<button class="btn btn-info btn-sm btn-block" style="width: 500px">확인</button>
	    </div>
	    
	    <div >
	    	<button class="btn btn-success btn-sm">버튼1</button>
	    	<button class="btn btn-success btn-sm active">버튼2</button>
	    	<button class="btn btn-success btn-sm" disabled>버튼3</button>
	    	<a href="#" class="btn btn-success btn-sm disabled">버튼4</a>
	    	<input type="submit" value="제출" class="btn btn-info btn-sm"/>
	    </div>
	    <div>
		    <button class="btn btn-primary">
			  <span class="spinner-border spinner-border-sm"></span>
			</button>
			
			<button class="btn btn-primary">
			  <span class="spinner-border spinner-border-sm"></span>
			  Loading..
			</button>
			
			<button class="btn btn-primary" disabled>
			  <span class="spinner-border spinner-border-sm"></span>
			  Loading..
			</button>
			
			<button class="btn btn-primary" disabled>
			  <span class="spinner-grow spinner-grow-sm"></span>
			  Loading..
			</button>
      </div>
      <div>
         <div class="btn-group">
            <button type="button" class="btn btn-outline-secondary">예</button>
            <button type="button" class="btn btn-outline-success">아니오</button>
            <button type="button" class="btn btn-outline-info">취소</button>
         </div>
      </div>
    
	   <div>
	    	<div class="btn-group btn-group-sm">
		    	<button class="btn btn-warning btn-sm">뉴스</button>
		    	<button class="btn btn-danger btn-sm">쇼핑</button>
			    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
			      Sony
			    </button>
		      <div class="dropdown-menu">
		        <a class="dropdown-item" href="#">Tablet</a>
		        <a class="dropdown-item" href="#">Smartphone</a>
		      </div>
	     </div> 	
	  </div>
	  
	 <div>
         <div class="btn-group-vertical">
            <button type="button" class="btn btn-outline-secondary">예</button>
            <button type="button" class="btn btn-outline-success">아니오</button>
            <button type="button" class="btn btn-outline-info">취소</button>
         </div>
      </div>
      <div class="btn-group btn-group-toggle" data-toggle="buttons">
		  <label class="btn btn-secondary active">
		    <input type="radio" name="options" id="option1" checked> Active
		  </label>
		  <label class="btn btn-secondary">
		    <input type="radio" name="options" id="option2"> Radio
		  </label>
		  <label class="btn btn-secondary">
		    <input type="radio" name="options" id="option3"> Radio
		  </label>
      </div>
      <div class="btn-group btn-group-toggle" data-toggle="buttons">
		  <label class="btn btn-secondary active">
		    <input type="checkbox" name="options" id="option1" checked> Active
		  </label>
		  <label class="btn btn-secondary">
		    <input type="checkbox" name="options" id="option2"> Radio
		  </label>
		  <label class="btn btn-secondary">
		    <input type="checkbox" name="options" id="option3"> Radio
		  </label>
      </div>
   </body>
</html>