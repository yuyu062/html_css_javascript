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
   </head>
   <body>
      <div>
	      <div class="card d-inline-block" style="width:200px">
			  <img class="card-img-top" src="../common/image/photo/photo11.jpg" alt="Card image" height="100">
			  <div class="card-body">
			    <h4 class="card-title">John Doe</h4>
			    <p class="card-text">Some example text.</p>
			    <a href="#" class="btn btn-primary btn-sm">See Profile</a>
		   </div>
		</div>
	    <div class="card d-inline-block" style="width:200px">
			  <img class="card-img-top" src="../common/image/photo/photo4.jpg" alt="Card image" height="100">
			  <div class="card-body">
			    <h4 class="card-title">John Doe</h4>
			    <p class="card-text">Some example text.</p>
			    <a href="#" class="btn btn-primary btn-sm btn-danger">See Profile</a>
		   </div>
		</div>
		    <div class="card d-inline-block style="width:200px">
				  <img class="card-img-top" src="../common/image/photo/photo5.jpg" alt="Card image" height="100">
				  <div class="card-body">
				    <h4 class="card-title">John Doe</h4>
				    <p class="card-text">Some example text.</p>
				    <div class="d-flex" style="width:200px">
				    	<a href="#" class="btn btn-primary btn-sm btn-info">See Profile</a>
				    	<a href="#" class="btn btn-primary btn-sm btn-secondary">See Profile</a>
				    </div>
			   </div>
			</div>
	     </div>
   </body>
</html>