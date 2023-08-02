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
      		padding: 0px;
      	}
        #wrapper{
      		width: 700px;
      		margin: 0px auto;
      		display: flex;
      		flex-direction: column;
      	}
     	header{
     		text-align: center;
     		padding: 30px;
     		color: white;
     		background-color: #977AA5;
     	}
      	section{
      		display: flex;
      		height: 300px;
      	}
      	nav{
      		/* 남은 공간을 비율로 증가 */
      		flex-grow: 1;

      		/* 부족 공간을 비율로 감소 */
      		flex-grow: 1;
      		
      		/* 정확한 비율로 나눌 경우 */
      		flex-basis: 30%;
      		background-color: #DBD1E1;
      		padding: 30px;
      		box-sizing: border-box;
      
      	}
      	ul{
      		list-style: none;
      	}
      	article{
      		/* 남은 공간을 비율로 증가 */
      		flex-grow: 1;

      		/* 부족 공간을 비율로 감소 */
      		flex-grow: 1;
      		
      		/* 정확한 비율로 나눌 경우 */
      		flex-basis: 70%;
      		background-color: #F8F6F9;
      		padding: 30px;
      		box-sizing: border-box;
      		
      	
      	}
      		article > hl{
      		font-size: 30px;
      		margin-bottom: 10px;
      	}
      	
      	article > p{
      		margin-bottom: 10px; 
      	}
      	
		footer{
			background-color: #977AA5;
      		text-align: center;
      		padding: 10px;
      		color: white;
		}
      </style>
   </head>
   <body>
   		<div><a href="https://www.w3schools.com/html/html_layout.asp">[참고]</a></div>
   		<div><a href="https://www.w3schools.com/css/css3_flexbox.asp">[CSS-flexbox]</a></div>
   		<div id="wrapper">
   			<header>
   				<h2>Cities</h2>
   			</header>
   			<section><!-- 블록요소-> 행 전체를 차지 -->
   				<nav>
   					<ul>
	   					<li><a href="https://www.w3schools.com/html/html_layout.asp">layout</a></li>
	   					<li>menu2</li>
	   					<li>menu3</li>
   					</ul>
   				</nav>
   				<article>
   					 <h1>London</h1>
                     <p>London is the capital city of England. It is the most populous city in the  United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
         			 <p>Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
   				</article>
   			</section>
   			
   			<footer>
   				<p>Footer</p>
   			</footer>
   		</div>
      
   </body>
</html>