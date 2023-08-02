<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="icon" href="/html_css_javascript/favicon.ico" type="image/x-icon">
         <title>Insert title here</title>
      
    
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
   
     <script>
           function fun1() {
              try {
                 var obj = null;
                 obj.method1();
                 console.log("정상 실행");
              } catch(err) {
                 console.log("예외 처리");
              }finally{
            	  console.log("마무리 작업");
              }
              
              //NaN 처리방법1
              var data = document.querySelector("#data").value;
              var num = parseInt(data);
              if(isNaN(num)){
            	 console.log("숫자화 할 수 없습니다.");
              }
              
              //NaN 처리방법2
              try{
            	  fun2();
              }catch(err){
            	 //console.log(err.message + "를 처리함");
            	 console.log(err + "를 처리함"); //err은 string 타입이고, 에러 메세지임
              }
             
           }
           function fun2(){
        	 //NaN 처리방법2
        	   var data = document.querySelector("#data").value;
               var num = parseInt(data);
               if(isNaN(num)){
             	//Error 발생코드
             	throw "숫자화 할 수 없음";
               } 
           }
     </script>
   </head>

   <body>
      <div class="card">
         <div class="card-header">예외 처리</div>
         <div class="card-body">
            <input id="data" type="text"/>
            <button class="btn btn-info btn-sm" onclick="fun1()">예외 처리</button>
         </div>
      </div>
   </body>
</html>