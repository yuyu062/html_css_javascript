<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="favicon.ico" type="image/x-icon">
		<title>Insert title here</title>
		
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	</head>
	<style>
		#inputEmail {
			height: 20px;
		}
		#inputPassword {
			height: 20px;
		}
	</style>
	<body>
		<div>
			<div>
				<img src="../common/image/coupang/coupang로고.jpg">
			</div>
			
			<form>
				<label for="email"><img src="../common/image/coupang/id.png" height="30"></label>
				<input type="email" id="inputEmail" placeholder="아이디(이메일)">
				<br>
				<label for="pwd"><img src="../common/image/coupang/pwd.png" height="30"></label>
				<input type="password" id="inputPassword" placeholder="비밀번호">
				<br>
				
				<input type="checkbox" id="autoLogin">
			</form>
		</div>
	</body>
</html>