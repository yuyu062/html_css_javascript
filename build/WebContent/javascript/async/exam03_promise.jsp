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
      <script src="https://cdn.jsdelivr.net/npm/axios@1.4.0/dist/axios.min.js"></script>
      
      <script>
      		function pendingWork(){
      			//약속을 생성
      			const promise = new Promise(function(resolve, reject){
      				window.setTimeout(function(){
      					var result = true;
      					if(result){
      						//성공적으로 처리
      						var data = "성공 데이터";
          					resolve(data);
      					}else{
      						var error = "실패 이유";
      						//실패가 발생
          					reject(error);
      					}      				
      				}, 5000);
      			});
      			//약속을 리턴
      			return promise;
      		}
      		
      		function fun1(){
      			pendingWork().then(
      				//resolve(success) callback
      				function(data){
      					var container = document.querySelector("#container");
      					container.innerHTML = "작업처리 성공함: " + data;
      				},
      			//reject(fail) callback
      				function(error){
      					var container = document.querySelector("#container");
      					container.innerHTML = "작업처리 실패함: " + error;
      				} 
      			);
      		}
      		
      		function fun2(){
      			pendingWork()
      				//resolve(success) callback
      				.then(function(data){
      					var container = document.querySelector("#container");
      					container.innerHTML = "작업처리 성공함: " + data;
      				})
      				//reject(fail) callback
      				.catch(function(error){
      					var container = document.querySelector("#container");
      					container.innerHTML = "작업처리 실패함: " + error;
      				})
      				//boss callback
      				.finally(function(){
      					var container = document.querySelector("#container");
      					container.innerHTML += ", 작업처리 마무리";
      				});
      		}
      		
      		async function fun3(){
      			var container = document.querySelector("#container");
      			try{
      				var data = await pendingWork();
  					container.innerHTML = "작업처리 성공함: " + data;
      			}catch(error){
  					container.innerHTML = "작업처리 실패함: " + error;
      			}finally{
  					container.innerHTML += ", 작업처리 마무리";
      			}
      		}
      		
      		function fun4(){
      			axios.get("../ajax/exam01_content.jsp").then(
      				function(response){
      					var container2 = document.querySelector("#container2");
      					container2.innerHTML = response.data;
      				},
      				function(error){
      					console.log(error.message);
      				}
      			);
      		}
      		
      		function fun5(){
      			axios.get("../ajax/exam01_content.jsp")
      			//resolve(success) callback
  				.then(function(response){
  					var container2 = document.querySelector("#container2");
  					container2.innerHTML = response.data;
  				})
  				//reject(fail) callback
   				.catch(function(error){
   					console.log(error.message);
   				});
      		}
      		
      		async function fun6(){
      			var container = document.querySelector("#container2");
      			try{
      				var response = await axios.get("../ajax/exam01_content.jsp");
  					container2.innerHTML = response.data;
      			}catch(error){
  					console.log(error.message);
      			}
      		}
      </script>
   </head>
   
   <body>
   	  <div class="card m-2">
         <div class="card-header">미래에 실행할 것을 약속(Promise)</div>
         <div class="card-body">
            <button class="btn btn-info btn-sm" onclick="fun1()">실행 방법1-then()</button>
            <button class="btn btn-info btn-sm" onclick="fun2()">실행방법2-try-catch-finally</button>
            <button class="btn btn-info btn-sm" onclick="fun3()">지연작업3-async-awake</button>
            <hr/>
            <div id="container">
            </div>
          </div> 
      </div>
   	  
   	  <div class="card m-2">
         <div class="card-header">미래에 실행할 것을 약속(Promise)</div>
         <div class="card-body">
            <button class="btn btn-info btn-sm" onclick="fun4()">실행 방법1-then()</button>
            <button class="btn btn-info btn-sm" onclick="fun5()">실행방법2-try-catch-finally</button>
            <button class="btn btn-info btn-sm" onclick="fun6()">지연작업3-async-await</button>
            <hr/>
            <div id="container2">
            </div>
          </div> 
      </div>
   </body>
</html>