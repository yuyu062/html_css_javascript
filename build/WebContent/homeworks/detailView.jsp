<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>쿠팡! - 무드등</title>
		<link rel="icon" href="../common/image/coupang/아이콘.jpg" type="image/x-icon"> 
		<style>
			*{
               margin: 0;
               padding: 0;
             }
             
             #wrapper {
        		 background-color: #f0f0f0;
         
      		 }
		      #customer{
		         display: inline-block; /* 가로로 나열하기 위해 block레벨 요소를 inline-block레벨로 전환 */
		         background-color: #f0f0f0; 
		         float: right; 
		         width: 20%; 
		         margin-right:20px; 
		      }
		      /* 고객센터 */
		      #center{
		         width: 120px;
		         cursor: pointer;
		         background-color:  #f0f0f0;
		      }
		      #center:hover{
		         width: 120px;
		         text-decoration: none;
		         color: black;
		      }
		      #customer:hover{
		         width: 120px;
		         background-color: white;
		      }
		      #c_list li{
		         width: 120px;
		         display:inline;
		         background-color: white;
		      }
		      .list{
		         background-color: white;
		      }
		      #wrapper2{
		      	 left: 200px;
		         background-color: white;
		         padding-left: 250px;
		      
		      }
		      #category{
		         padding: 0;
		      }
		      /* 로고 */
		      #logo{
		         position: absolute;
		         top: 40px;   
		      }
		   
		      /* 검색 */
		      .search-container{
		            position: absolute;
		            top: 60px;
		            left: 580px;
		            margin-left: 0;
		            width: 700px;
		            height: 37px;
		            margin-right: 22px;
		            border: 2px solid #4285f4;
		            background-position:
		               
		      }
		      /* 검색_input */
		      #p_select{
		         all: unset; 
		         width: 100%;
		         font-size: 14px;
		      }
		      #input{
		         display: flex;
		         width: 276px;
		         padding: 10px; 
		         align-items: center;
		      }
		      /*  검색_image */
		      #submit{
		         all: unset; /* 태그의 기본 스타일 값 모두 초기화 */
		         cursor: pointer;
		      }
		      /* 마이크 아이콘 */
		      #icon1{
		         display: inline-block;
		         cursor: pointer;
		         position: absolute;
		         top: 0px;
		         right: 40px;
		         width: 40px;
		         height: 40px;
		      }
		      /* 돋보기 아이콘 */
		      #icon2{
		         display: inline-block;
		         position: absolute;
		         top:0px;
		         right: 2px;
		         width: 40px;
		         height: 40px;
		      }
		      /* 검색_전체 option */
		      .header_searchSelect{
		      	outline:none;
		         display: inline;
		         float:left;
		         width: 138px;/* 원하는 너비설정 */
		         padding: 9px; /* 원하는 높이 설정*/ 
		         font-family: inherit; /* 폰트 상속 */
		         background: url(../common/image/coupang/전체option_화살표.png) no-repeat 95% 50%; /* 화살표 모양의 이미지 */
		         background-color: #fff;
		         -webkit-appearance: none; /* 네이티브 외형 감추기 */
		         -moz-appearance: none;
		            appearance: none; 
		      }
		      /* IE 10, 11의 네이티브 화살표 숨기기 */
		      .header_searchSelect::-ms-expand{
		         display:none;
		      }
		      #wrapper3{
		         height: 32px;
		         background-color: #f6f6f6;
		         margin: 0;
		      }
		      .choice{
		         float: left;
		         
		      }
		      .choice p {
		         text-align: center;
		         font-size: 15px
		      }
		      #all:hover{
		        background-color: white;   
		        text-decoration: underline;
		        color: #5d8fc3;
		      }
		      div a {
		        text-decoration: none;
		        color: black;
		        font-size: 6px;
		        padding: 10px;
		        display:inline-block;
		      }
		      ul {
		        display: inline;
		        margin: 0;
		        padding: 0;
		      }
		      ul li {display: inline-block;}
		      /*입점신청, 고객센터, 카테고리*/
		      .drawer li:hover {background: white;}
		      .drawer li:hover ul {
		         display: block;
		         background-color: white;
		         box-shadow: 5px 5px 5px lightgray;
		         z-index: 1;
		      }
		      .drawer li ul {
		        position: absolute;
		        width: 100xp;
		        display: none;
		      }
		      .drawer li ul li {  
		        display: block;
		        background-color: white;
		      }
		      
		      .drawer li ul li a:link {
		        text-decoration: none;
		      }
		      
		      .drawer li ul li a:visited {
		        text-decoration: none;
		      }
		      
		      .drawer li ul li a:hover {
		        display:inline-block;
		        background-color: white;
		        text-decoration: underline;
		        color: #5d8fc3;
		      }
		      
		      .drawer li ul li a:active {
		        background-color: white;
		        text-decoration: underline;
		        color: #5d8fc3;
		      }
		      .right{
		         float: right;
		         
		      }
		      
		      /* 마이쿠팡,장바구니 */
		      .h_mine1{
		         position: absolute;
		         right: 335px;/* 360 */
		         top: 53px;
		      }
		      .h_mine2{
		         position: absolute;
		         right: 274px;
		         top: 51px;
		      }
		      /* 장바구니 말풍선 */
		      .basket_wrap{
		         position: relative;
		         display: inline-block;
		         margin: 0px;
		      }
		      /* tooltip: 해당영역에 마우스를 올리면 부가적으로 정보가 나타나게 하는 것*/
		      .task-tooltip {
		         position:absolute; 
		         width: 200px;
		          padding: 50px;
		          padding-left: 0px;
		          visibility: hidden;
		          background-color: #fcfcfc;
		          color: black;
		          text-align: center;
		          z-index: 1;
		          top: 100%;
		          left: 50%;
		          margin-left: -100px;
		      }
		      /* 툴팁 말풍선 삼각형*/
		      .task-tooltip::after {
		          content:"";
		          position: absolute;
		          top: 121px;
		          left: 102px;
		          margin:-133px 0 0 -10px;
		          border-width: 10px;
		          border-style: solid;
		          /* 위는 색 지정, 오른쪽,아래,왼쪽은 색 지정 */
		          border-color: transparent transparent #fcfcfc transparent;  
		      }
		      .task-tooltip::before {
		          content:"";
		          position: absolute;
		          top: 99%;
		          left: 40%;
		          margin:-133px 0 0 -10px;
		          border-width: 12px;
		          border-style: solid;
		          /* 위는 색 지정, 오른쪽,아래,왼쪽은 색 지정 */
		          border-color: transparent transparent #f5f5f5 transparent;  
		         }   
		      /* 장바구니 hover */
		      .basket_wrap:hover .task-tooltip{
		         visibility: visible;
		         box-shadow: 5px 5px 5px 5px lightgray;
		      }
		
		      /* 슬라이드 */
		      .h_section{
		         position: absolute;
		         top: 100px;
		         left:360px;
		      }
		      .h_section input[type=radio]{/* h_section클래스 안에 id값이 slide를 갖고있는 input을 선택*/
		         display: none; 
		      }
		      .h_section .h_slidewrap{
		         max-width: 1057px;
		         margin: 0 auto;
		         overflow: hidden;
		      }
		      .h_section .h_slidelist{
		         white-space:nowrap; /* 줄바꿈 제거 */
		         font-size: 0;
		      }
		      .h_section .h_slidelist > li{
		         display: inline-block;
		         vertical-align: middle;/* 세로정렬 */
		         width: 100%; /* 부모 div 크기에 맞춤 */
		         transition: all .5s; /* 슬라이드 애니매이션(전체 옵션, 시간: 0.5초) */
		      }
		      .h_section .h_slidelist > li > a{
		         display: block;
		         position: relative;
		      }
		      .h_section .h_slidelist > li > a img{
		         width: 100%;
		      }
		      /* 방향 라벨 */
		      .h_section .h_slidelist label{
		         position: absolute;
		         top: 50%;
		         transform: translateY(-50%);/* 자신의 높이의 반만큼 위로 올라감 */
		         padding: 10px;
		         cursor: pointer;
		      }
		      .h_section .h_slidelist .h_left{
		         left: 0px;
		         font-size: 20px;
		      }
		      .h_section .h_slidelist .h_right{
		         right: 0px;
		         font-size: 20px;
		      }
		      .h_section [id="slide01"]:checked ~ .h_slidewrap .h_slidelist > li {
		           transform: translateX(0%);
		       }
		      .h_section [id="slide02"]:checked ~ .h_slidewrap .h_slidelist > li {
		           transform: translateX(-100%);
		       }
		       /*------------------------------------------------------유진 스타일  */
		   
		    #righttop {
				width: 550px;
				height: 900px;
				float: left;
				margin-left: 50px;
			}
			#lefttop {
				width: 455px;
				height: 900px;
				float: left;
				margin-left: 50px;
			}
			#mm:hover {
				transform: scale(1.5);
				transition: .5s;
			}
			#sideimgs {
				height: 455px;
				width: 50px;
				float: left;
			}
			#sideimgs input[type=radio] {
				accent-color: border: 1px solid #366bf9;;
            	display: none;
			}
  			#sideimgs label img:hover {
  				border: 2px solid #366bf9;
  			}
			.sideimg {
				height: 50px;
				width: 50px;
			}
			.sideimg:hover {
				cursor: pointer;
			}
			.topmiddle:hover {
				cursor: pointer;
			}
			
			#company {
				color: #7890d0;
				font-size: 6px;
				text-decoration: none;
				font-weight: bold;
			}
			#company:visited {
				text-decoration: none;
			}
			#star {
				color: #7890d0;
				font-size: 12px;
				font-weight: bold;
				text-decoration: none;
			}
			#star:hover {
				cursor: pointer;
			}
			#star:visited {
				text-decoration: none;
			}
			#detailbox {
				width: 455px;
				font-size: 15px;
				background-color: #fafafa;
				border: 1px lightgray solid;
				padding: 10px;
			}
			#rocketwow {
				display: inline;
				width: 250px;
				border: 1px #5f76d3 solid;
				color: #5f76d3;
				padding: 5px;
				margin-left: 7px;
			}
			#rocketwow:hover {
				cursor: pointer;
			}
			#rocketwow:visited {
				text-decoration: none;
			}
			#rocketwow a {
				text-decoration: none;
				color: #5f76d3;
			}
			#quantity {
				width: 70px;
				height: 50px;
				font-size: 25px;
				text-align: center;
			}
			
			.boxin {
				margin: 10px;
			}
			.lround {
           		font-size: 15px; 
           		border: 1px solid #e4e6e5; 
           		border-radius:20px; 
           		display:inline-block;
           		margin-top: 5px;
           	}
           	.lcash {
           		height: 15px; 
           		margin-left: 4px; 
           		margin-right: 4px;
           	}
           	.lspace {
           		white-space: pre-wrap;
           	}
           	.hline {
           		width: 455px;
           		margin-top: 10px;
           		margin-bottom: 10px;
           	}
           	.price {
           		margin: 15px;
           	}
           	
           	#cart {
           		height: 54px;
           		width: 180px;
           		color: #3b71ef;
           		background-color: white;
           		text-decoration: none;
           		border: 1px solid #3b71ef;
           		font-size: 15px;
           		font-weight: bold;
           	}
           	#cart:hover{
           		cursor: pointer;
           	}           	
           	#buynow {
           		height: 54px;
           		width: 180px;
           		color: white;
           		background-color: #3b71ef;
           		text-decoration: none;
           		border: 1px;
           		font-size: 15px;
           		font-weight: bold;
           	}
           	#buynow:hover {
           		cursor: pointer;
           	}
           	
           	#details {
           		font-size: 12px;
           		margin-left: 20px;
           	}
           	
           	/* ---------------------------------------------------------우주 스타일 */
           	
           .d_section{
            width: 1000px;
           	margin-left: 300px;
         }
         .d_section input[type=radio]{
            display: none; 
         }
         .d_section .d_slidewrap{
            max-width: 867px;
            margin: 0 auto;
            overflow: hidden;
         }
         .d_section .d_slidelist{
            white-space:nowrap; /* 줄바꿈 제거 */
            font-size: 0;
         }
         .d_section .d_slidelist > li{
            display: inline-block;
            vertical-align: middle;/* 세로정렬 */
            width: 100%; /* 부모 div 크기에 맞춤 */
            transition: all .5s; /* 슬라이드 애니매이션(전체 옵션, 시간: 0.5초) */
         }
         .d_section .d_slidelist > li > a{
            display: block;
            position: relative;
         }
         .d_section .d_slidelist > li > a img{
            width: 100%;
         }
         /* 방향 라벨 */
         .d_section .d_slidelist label{
            position: absolute;
            top: 50%;
            transform: translateY(-50%);/* 자신의 높이의 반만큼 위로 올라감 */
            padding: 10px;
            cursor: pointer;
         }
         .d_section .d_slidelist .d_left{
            left: 0px;
            background: url("../common/image/coupang/d_왼쪽 화살표.png");
            width: 20px;
            height: 40px;
         }
         .d_section .d_slidelist .d_right{
            right: 0px;
            background: url("../common/image/coupang/d_오른쪽 화살표.png");
            width: 20px;
            height: 40px;
         }
         .d_section [id="d_slide01"]:checked ~ .d_slidewrap .d_slidelist > li {
              transform: translateX(0%);
          }
         .d_section [id="d_slide02"]:checked ~ .d_slidewrap .d_slidelist > li {
              transform: translateX(-100%);
           }   
         .d_section [id="d_slide03"]:checked ~ .d_slidewrap .d_slidelist > li {
              transform: translateX(-200%);
           }   
         .d_section [id="d_slide04"]:checked ~ .d_slidewrap .d_slidelist > li {
              transform: translateX(-300%);
           }
           	/* -----------------------------------------------------------------------------유진 스타일 */
            /* .ul1 {
		        list-style: none;
		        text-align: center;  
		        border: 1px solid black;
		        height: 60px;
			    padding: 0px;
			    width: 50%;
			    margin: 0 auto; 
			    width: 1000px;
     		 }
      
		     .plist {
		        display:inline-block;
		        margin-right: 10px;
		        padding: 20px; 
		        margin-left: 20px;
		     } */
		     .hr1 {
		        width: 100%;
		     }
		     .review, .review1 {
		         text-align: left;
		         height: 300px;
			   	 padding: 0px;
			     width: 80%;
			     margin: 0 auto; 
		     }
		     .review1 {
		        height: 40px;
		        background-color: #555555;
		       
		     }
		     .h4, .span1 {
		         margin-left: 10px;
		         margin-bottom: 10px;
		     }
		     .span1 {
		         font-size: small;
		     } 
		     .rank {
		         display:block;
		         width: 40%;
		         height: 50px;
		         margin-top: 10px;
		         margin-bottom: 20px;
		      }
		     .reviewphoto1 {
		        width: 100%;
		        height: 90px;
		        margin-bottom: 30px;
		     }
		     .detail {
		        color: blue;
		     }
		     
		     .detail:hover {
		        color: black;
		     }
		     .look {
		        display: flex;
		        justify-content: flex-end;
		        align-items: center;
		     }
		     .review2 {
		        text-align: center;
		     }
		     .bestrecent {
		        color: white;
		     }
		     
		     .p{
              float: left;
              border: 1px solid black;
              width: 180px;
              text-align: center;
              padding: 25px;
           	}
           	
           	.p:hover{
           		cursor: pointer;
           	}		     
           	/* -------------------------------------------------------------------------------승주 스타일 */
           	 .ful {
           		text-align: center;
           		
           }
           .ful li {
           		display: inline-block;
           		padding: 10px;
           		font-size: 6px;
           }
           .ful li:hover {
           		cursor: pointer;
           }
           .foota:visited {
           		color: black;
           }
           .foota2 {
           		text-decoration: none;
           }
           .foota2:visited {
           		color: black;
           		text-decoration: none;
           }
           .footer div {
           		margin: 10px;
           }
           #service {
           		text-decoration: underline;
           }
           #service:hover{
				cursor: pointer;
           }
           #service:visited {
           		color: black;
           		text-decoration: underline;
           }
		</style>
	</head>
	<body>
		<div id="wrapper">
           <div>
            <div>
              <a class="left" href="#" style="padding-left: 250px;">즐겨찾기</a>
              <ul class = "drawer">
                <li>
                <!-- 입점신청 -->
                  <a class="left" href="#" style="background-color: #f0f0f0;">입점신청</a> 
                  <ul>
                    <li><a class="list" href="https://marketplace.coupangcorp.com/s/" target="_blank">오픈마켓</a></li>
                    <li><a class="list" href="https://travel-sellers.coupang.com/" target="_blank">여행·티켓</a></li>
                    <li><a class="list" href="https://supplier.coupang.com/welcome/join/" target="_blank">로켓배송</a></li>
                    <li><a class="list" href="https://partners.coupang.com/" target="_blank">제휴마켓팅</a></li>
                  </ul>
                </li>
              </ul>
              <div id="customer" style="width: 8%; height: 10px; text-align: left;">
               <ul class = "drawer">
                    <li>
                    <!-- 고객센터 -->
                    <a class="right" href="#" style="background-color: #f0f0f0; width: 120px;">고객센터</a>
                    <ul id="c_list">
                       <li><a id="center"class="list" target="_blank" \>고객센터</a></li>
                       <li><a class="list" href="https://marketplace.coupangcorp.com/s/" target="_blank">자주묻는 질문</a></li>
                      <li><a class="list" href="https://travel-sellers.coupang.com/" target="_blank">1:1 채팅문의</a></li>
                         <li><a class="list" href="https://supplier.coupang.com/welcome/join/" target="_blank">고객의 소리</a></li>
                      <li><a class="list" href="https://partners.coupang.com/" target="_blank">최소/ 반품 안내</a></li>
                   </ul>
                   </li>
               </ul>
            </div>
              <a  class="right" href="#">로그인</a>
              <a class="right" href="#">회원가입</a>
            </div>
           </div>
           
            
            <div id="wrapper2" >
               <nav>
                  <div>
                    <ul class = "drawer">
                      <li>
                        <a id=category href="#">
                        <img src="../common/image/coupang/카테고리.jpg" style="width:110px;height:110px;">
                        </a> 
                        <ul>
                          <li><a class="list" href=# target="_blank">패션의류/잡화</a></li>
                          <li><a class="list" href=# target="_blank">뷰티</a></li>
                          <li><a class="list" href=# target="_blank">출산/유아동</a></li>
                          <li><a class="list" href=# target="_blank">식품</a></li>
                          <li><a class="list" href=# target="_blank">주방용품</a></li>
                          <li><a class="list" href=# target="_blank">생활용품</a></li>
                          <li><a class="list" href=# target="_blank">홈인테리어</a></li>
                          <li><a class="list" href=# target="_blank">가전디지털</a></li>
                          <li><a class="list" href=# target="_blank">스포츠/레저</a></li>
                          <li><a class="list" href=# target="_blank">자동차용품</a></li>
                          <li><a class="list" href=# target="_blank">도서/음반/DVD</a></li>
                          <li><a class="list" href=# target="_blank">완구/취미</a></li>
                          <li><a class="list" href=# target="_blank">문구/오피스</a></li>
                          <li><a class="list" href=# target="_blank">반려동물용품</a></li>
                          <li><a class="list" href=# target="_blank">헬스/건강식품</a></li>
                          <li><a class="list" href=# target="_blank">여행/티켓</a></li>
                          <li><a class="list" href=# target="_blank">테마관</a></li>
                        </ul>
                      </li>
                    </ul>
                    <a id=logo href="#" title="Coupang - 내가 잘사는 이유">
                        <img src="../common/image/coupang/coupang로고.jpg" style="width:200px;height:50px;">
                    </a> 
                  </div>
                  <div id="wrapper2_h">
                     <!-- 검색 -->
                     <div class="search-container">
                        <form action="https://www.coupang.com/np/search" style="padding:0px;">
                           <div> 
                              <!-- 전체option -->
                              <select class="header_searchSelect" >
                                 <option value="All" selected>전체</option>
                                 <option value="SRP">출산/유아동</option>
                                 <option value="All">식품</option>
                                 <option value="All">주방용품</option>
                                 <option value="All">홈인테리어</option>
                                 <option value="All">가전디지털</option>
                                 <option value="All">스포츠/레저</option>
                                 <option value="All">자동차용품</option>
                                 <option value="All">도서/음반/DVD</option>
                                 <option value="All">완구/취미</option>
                                 <option value="All">문구/오피스</option>
                                 <option value="All">반려동물용품</option>
                                 <option value="All">헬스/건강식품</option>
                                 <option value="All">국내여행</option>
                                 <option value="All">해외여행</option>
                                 <option value="All">장마준비</option>
                                 <option value="All">로켓설치</option>
                                 <option value="All">쿠팡Only</option>
                                 <option value="All">싱글라이프</option>
                                 <option value="All">악기전문관</option>
                                 <option value="All">결혼준비</option>
                                 <option value="All">아트/공예</option>
                                 <option value="All">미세먼지용품</option>
                                 <option value="All">홈카페</option>
                                 <option value="All">실버스토어</option>
                                 <option value="All">로켓펫닥터</option>                  
                              </select>
                              <div id="input">
                                 <a title="쿠팡 상품 검색" style="margin: 0; padding: 0 ; float: right">
                                    <input id = "p_select" name = "p_select" type = "text" placeholder="찾고 싶은 상품을 검색해보세요!"> 
                                 </a>
                              </div>
                             <div>
                                 <img id="icon1" src="../common/image/coupang/검색_녹음.png" class="s_coupang">
                                 <button id="submit" type="submit">
                                    <a href="#" title="검색" style="margin: 0px; padding: 0px;">
                                       <img id="icon2" src="../common/image/coupang/검색_돋보기.png"  class="s_coupang">
                                    </a>
                                 </button>
                             </div>
                           </div>
                        </form>
                     </div>
                     <!-- 마이쿠팡,장바구니 -->
                     <div>
                        <ul class="drawer">
                           <li class="h_mine1"> <!--마이쿠팡 -->
                              <a  href="#" style="padding: 0;">
                              <img src="../common/image/coupang/마이쿠팡.jpg" width="62">
                              </a>
                              <ul style="z-index: 1;">
                                 <li><a class="list" href=# target="_blank">주문목록</a></li>
                                   <li><a class="list" href=# target="_blank">취소/반품</a></li>
                                   <li><a class="list" href=# target="_blank">찜 리스트</a></li>
                              </ul>
                           </li>
                           <li class="h_mine2"><!-- 장바구니 -->
                              <div class="basket_wrap">
                                 <div class="h_basket"> 
                                    <img src="../common/image/coupang/장바구니.jpg" width="62">
                                 </div>
                                 <div class="task-tooltip" style="font-size: 12px">
                                    장바구니에 담긴 상품이 없습니다.
                                 </div>
                              </div>
                           </li>
                        </ul>   
                     </div>
                  </div>   
                  <!-- 슬라이드 -->
                  <div class="h_section">
                     <!-- 한개의 input = page 수 -->
                     <input type="radio" name="slide" id="slide01" checked>
                     <input type="radio" name="slide" id="slide02">   
                     
                     <div class="h_slidewrap">
                        <ul class="h_slidelist">
                           <!-- 첫번째 슬라이드 내용 -->
                           <li>
                              <a>
                                 <label for="slide01" class="h_left"></label>
                                 <img src="../common/image/coupang/슬라이드1.png"/>
                                 <label for="slide02" class="h_right"></label>
                              </a>
                          </li>
                           <!-- 두번째 슬라이드 내용 -->
                           <li>
                              <a>
                                 <label for="slide01" class="h_left"></label>
                                 <img src="../common/image/coupang/슬라이드2.png"/>
                                 <label for="slide02" class="h_right"></label>
                              </a>
                          </li>
                        </ul>
                     </div>
                  </div>
               </nav>
             
               <div id="wrapper3">   
                   <ul>
                     <li class="choice"><a id="all" href=# target="_blank" style="background-color: #f6f6f6;" >전체</a></li>
                      <li class="choice"><p style="font-size: 6px; margin-top: 10px; background-color: #f6f6f6">> '무드등'</p></li>
                   </ul>      
               </div>
               
            </div>
         </div>
         <!-- ---------------------------------------------------------우주 -->
         <div class="top">
			<div id="lefttop">
				<div id="sideimgs">
					<input type="radio" id="img1" name="img" checked="checked">
					<div>
						<label for="img1"><img src="../common/image/coupang/1st.png" class="sideimg"></label>
					</div>
	   				<input type="radio" id="img2" name="img">
	   				<label for="img2"><img src="../common/image/coupang/2nd.png" class="sideimg"></label>
	   				<input type="radio" id="img3" name="img">
	   				<label for="img3"><img src="../common/image/coupang/3rd.png" class="sideimg"></label>
	   				<input type="radio" id="img4" name="img">
	   				<label for="img4"><img src="../common/image/coupang/4th.png" class="sideimg"></label>
	   				<input type="radio" id="img5" name="img">
	   				<label for="img5"><img src="../common/image/coupang/5th.png" class="sideimg"></label>
	   				<input type="radio" id="img6" name="img">
	   				<label for="img5"><img src="../common/image/coupang/6th.png" class="sideimg"></label>
										
				</div>
				<div id="lefttopmainimg">
					<img src="../common/image/coupang/1st.png" style="height: 400px; width: 400px; margin-left: 5px;" id="mm">
					<img src="../common/image/coupang/advts.png" style="height: 100px; width: 400px; margin-left: 5px;">
				</div>
			</div>
			
			<div id="righttop">
				<img src="../common/image/coupang/recommand.png" style="height: 20px; width: 60px;">
				<br>
				<a href="#" id="company"> 무아스 </a>
				
				<div style="display: flex; flex-direction: row;">
					<div>
						<h4>무아스 철푸덕 LED 충전식 실리콘 무드등</h4>
						<img src="../common/image/coupang/별점5.jpg" style="height: 20px; width: 80px; padding-top: 1px;">
						<span id="star" onclick="#">235개 상품평</span>
					</div>
					<div>
						<a href="#">
							<img src="../common/image/coupang/heart.png" style="height: 50px; width: 50px;">
						</a>
						<a href="#">
							<img src="../common/image/coupang/share.png" style="height: 50px; width: 50px;">
						</a>
					</div>
				</div>
				<hr class="hline">
				
				<div class="topmiddle">
					<a style="font-size: 15px;">18%</a> <span style="color: gray; text-decoration: line-through;">19,900원</span> <br>
					<span style="font-weight: bold; font-size: 20px;">16,800원</span> <span>쿠팡판매가</span> <br>
					<span style="font-weight: bold; font-size: 20px; color: #be1a00">16,290원</span> <span style="color: #be1a00">와우할인가</span>
					<span><img src="../common/image/coupang/상품_로켓배송.jpg" style="height: 17px;"></span> <br>
					<div class="lround">
						<img src="../common/image/coupang/cash.png" class="lcash">
						<span class="lspace">최대 815원 적립  </span>
					</div>
				</div>
				<hr class="hline">
				
				<div class="topmiddle">
					<span style="font-weight: bold; font-size: 12px;">무료배송</span>
					<span style="font-size: 12px;"> (로켓배송 상품 19,800원 이상 구매 시)</span> <br>
					
					<span style="font-weight: bold; font-size: 16px; color: #4c9657;">내일(금) </span>
					<span style="font-weight: bold; font-size: 15px; color: #4c9657;">6/23 </span>
					<span style="font-size: 13px;">(13시간  내 주문 시 / 서울⋅경기 기준) </span>
					<br>
				</div>
				<hr class="hline">
				<div>
					<span style="font-size: 12px;">색상:</span>
					<span style="font-size: 12px; font-weight: bold;">화이트</span>
				</div>
				<hr class="hline">	
				<div>
					<img src="../common/image/coupang/bigcash.png" style="height: 30px; width: 30px; float: left;">
					<div style="padding:5px; float: left;">캐시적립 혜택 </div> 
					<div style="padding:5px;">| 최대 <span style="font-weight: bold;">815</span>원 적립</div>
				</div>
				
				<div id=detailbox>
					<div class="boxin">쿠페이 머니 결제 시 1% 적립 </div>

					<div class="boxin">[로켓와우 + 쿠페이 계좌이체] 결제 시 2% 적립</div>

					<div class="boxin">[로켓와우 + 쿠페이 머니] 결제 시 4% 추가적립 <span style="font-weight:bold">2807</span>일 남음</div>
					
					<div id="rocketwow"> <a href="#">로켓와우 무료체험 신청하기</a> </div>
				</div>
				<hr class="hline">	
				
				<div style="margin: 10px;">
					<input type="radio" id="price1" name="price" checked="checked" >
					<label for="price1"><span style="font-weight: bold">16,800원</span> | 쿠팡판매가</label> <br>
   					<input type="radio" id="price2" name="price">
   					<label for="price2" style="color: #be1a00;"><span style="font-weight: bold">16,290원</span> | 와우회원가</label>
				</div>
				<hr class="hline">
				<div style="display:flex; flex-direction:row">
					<input type="number" id=quantity value="1" min="1">
					<button name="cart" type="submit" id="cart">장바구니 담기</button>
					<button name="buy" type="submit" id="buynow">바로구매＞</button>
				</div>
				<br/>
				<div>
					<div id="details">
						<div>● 조명 무선여부: 무선</div> 
						<div>● 전구 포함여부: 전구일체형</div>
						<div>● LED 여부: LED 발광</div>
						<div>● 버튼방식: On/Off버튼식</div>
						<div>● 구성품: 본체 + 타입C USB 케이블</div>
						<div>● 쿠팡상품번호: 6761685642 - 15847736251</div>
					</div>
					<br/>
				</div>
			</div>
		</div>
		<br/>
		<div class="d_section">
            <h3 id="how?">이런 상품은 어때요?</h3>
           <!-- 한개의 input = page 수 -->
           <input type="radio" name="slide" id="d_slide01" checked>
           <input type="radio" name="slide" id="d_slide02">   
           <input type="radio" name="slide" id="d_slide03">   
           <input type="radio" name="slide" id="d_slide04">   
           <input type="radio" name="slide" id="d_slide05">   
           
           <div class="d_slidewrap">
              <ul class="d_slidelist">
                 <!-- 첫번째 슬라이드 내용 -->
                 <li>
                    <a>
                     <label for="d_slide05" class="d_left"></label>
                     <img src="../common/image/coupang/d_슬라이드1.png"/>
                     <label for="d_slide02" class="d_right"></label>
                    </a>
                </li>
                 <!-- 두번째 슬라이드 내용 -->
                 <li>
                    <a>
                       <label for="d_slide01" class="d_left"></label>
                       <img src="../common/image/coupang/d_슬라이드2.png"/>
                       <label for="d_slide03" class="d_right"></label>
                    </a>
                </li>
                 <!-- 세번째 슬라이드 내용 -->
                 <li>
                    <a>
                       <label for="d_slide02" class="d_left"></label>
                       <img src="../common/image/coupang/d_슬라이드3.png"/>
                       <label for="d_slide04" class="d_right"></label>
                    </a>
                </li>
                 <!-- 네번째 슬라이드 내용 -->
                 <li>
                    <a>
                       <label for="d_slide03" class="d_left"></label>
                       <img src="../common/image/coupang/d_슬라이드4.png"/>
                       <label for="d_slide05" class="d_right"></label>
                    </a>
                </li>
                 <!-- 다섯번째 슬라이드 내용 -->
                 <li>
                    <a>
                       <label for="d_slide04" class="d_left"></label>
                       <img src="../common/image/coupang/d_슬라이드5.png"/>
                       <label for="d_slide01" class="d_right"></label>
                    </a>
                </li>
              </ul>
           </div>
        </div>
		
		<div style="width: 1000px; margin-left: 300px; padding-top:20px; margin-top: 50px;">
	      		
	      		<div id="p1" class="p" style="margin-left:40px;" onclick="#">상품상세</div>
		        <div id="p2"class="p" onclick="#">상품평</div>
		        <div id="p3" class="p" onclick="#">상품문의</div>
		        <div id="p4" class="p" onclick="#">배송/교환/반품 안내</div>

	      		<div>
	      			<img src="../common/image/coupang/detail.png" style="margin-left: 150px; width:700px;">
	      		</div>
		      <hr class="hr1">
		       <div class="review">
			       <h4 class="h4">상품평</h4>
			       <span class="span1">동일한 상품에 대해 작성된 상품평으로, 판매자는 다를 수 있습니다.</span>
			       <img class="rank" src="../common/image/coupang/별점.png"> 
			       <div class="look"><a class="detail" href="#">자세히 보기></a></div>
			       <img class="reviewphoto1" src="../common/image/coupang/상품리뷰사진들.png">
		      </div>
	      
		      <div class="review1">
		          <span class="bestrecent">베스트순 | 최신순 </span>
		          <input type="text" id="search" name="search" placeholder="상품평을 검색해보세요." onfocus="this.placeholder=''"/>
		      </div>
		      
		      <div class="review2">
		         <img src="../common/image/coupang/쿠팡리뷰1.png" style="width: 80%" >
		         <hr class="hr1">
		         <img src="../common/image/coupang/쿠팡리뷰2.png" style="width: 80%">
		             <hr class="hr1">
		         <img src="../common/image/coupang/쿠팡리뷰3.png" style="width: 80%">
		      </div>
		</div>
		
		<hr style="width: 100%;">
		<div>
			<ul class="ful" style="display: flex; justify-content: center;">
				<li onclick="#">회사소개</li>
				<li onclick="#">Investor Relations</li>
				<li onclick="#">인재채용</li>
				<li onclick="#">입점/제휴문의</li>
				<li onclick="#">공지사항</li>
				<li onclick="#" style="font-weight: bold">고객의 소리</li>
				<li onclick="#">이용약관</li>
				<li onclick="#">개인정보 처리방침</li>
				<li onclick="#">쿠팡페이 이용약관</li>
				<li onclick="#" style="font-weight: bold">쿠팡페이 개인정보처리방침</li>
				<li onclick="#">신뢰관리센터</li>
				<li onclick="#">제휴마케팅</li>
				<li style="border-right: white;">광고안내</li>
			</ul>
		</div>
		<hr style="width: 100%;">
		
		<div class="footer" style="width: 70%; display: flex; flex-direction: row; margin: 0 300px;">
			<div style="width: 33%;">
				<img src="../common/image/coupang/coupangfoot.png" style="float: left; width: 150px;">
				<p style="margin-top: 10px; font-size: 6px;">
					상호명 및 호스팅 서비스 제공 : 쿠팡(주) <br>
					대표이사 : 강한승,박대준 <br>
					서울시 송파구 송파대로 570 <br>
					사업자 등록번호 : 120-88-00767 <br>
					통신판매업신고 : 2017-서울송파-0680 <br>
					<a class="foota" href="#">사업자정보 확인> </a>
				</p>
			</div>
			<div style="width: 33%;">
				<a href="#" class="foota2">
					<span style="font-weight: bold;">365 고객센터</span> | 전자금융거래분쟁처리담당<br>
					<span style="font-weight: bold;">1577-7011(유료)</span><br>
					서울시 송파구 송파대로 570<br>
					email: help@coupang.com
				</a>
			</div>
			<div style="width: 33%; font-size: 6px;">
				<a style="font-size: 10px; font-weight: bold; margin-top: 20px;">우리은행 채무지급보증 안내</a> <br>
				당사는 고객님이 현금 결제한 금액에 대해 <br>
				우리은행과 채무지급보증 계약을 체결하여 <br>
				안전거래를 보장하고 있습니다. <br>
				<span onclick="#" id="service">서비스 가입사실 확인 ></span>
			</div>
		</div>
		<hr>
		<img src="../common/image/coupang/footlong.png" style="width: 70%; margin:0 250px;">
		
		<div style="background-color: #333333; display: flex; flex-direction: row; justify-content: center">
			<div style=" color: gray; font-size: 5pt; padding-top: 2px;">
				사이버몰 내 판매되는 상품 중에는 쿠팡에 등록한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어 있습니다. <br>
				마켓플레이스(오픈마켓) 상품의 경우 쿠팡은 통신판매중개자이며 통신판매의 당사자가 아닙니다.<br>
				쿠팡은 마켓플레이스(오픈마켓) 상품, 거래정보 및 거래 등에 대하여 책임을 지지 않습니다.<br>
				쿠팡은 소비자 보호와 안전거래를 위해 신뢰관리센터(CM112@coupang.com)를 운영하고 있으며, 관련 분쟁이 발생할 경우 별도의 분쟁 처리절차에 의거 분쟁이 처리됩니다. <br>
				Copyright © Coupang Corp. 2010-2022 All Rights Reserved.
			</div>
			<div style="padding: 10px;">
				<a href="#">
					<img src="../common/image/coupang/facebook.png" style="width: 40px; height: 40px; float: left">
				</a>
				<a href="#">
					<img src="../common/image/coupang/blog.png" style="width: 40px; height: 40px; float: left">
				</a>
				<a href="#">
					<img src="../common/image/coupang/insta.png" style="width: 40px; height: 40px; float: left">
				</a>
			</div>
		</div>
	</body>
</html>