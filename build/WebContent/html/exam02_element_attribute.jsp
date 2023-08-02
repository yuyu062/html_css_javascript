<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=2.0">
      <link rel="icon" href="favicon.ico" type="image/x-icon">
      <title>엘리먼트 속성</title>
      <style>
		table, th, td {
		  border: 1px solid black;
		  border-collapse: collapse;
		}
	</style>
   </head>
   <body>
   	  <!-- <h3>제목글 태그</h3>
      <h1>Heading1</h1>
      <h2>Heading2</h2>
      <h3>Heading3</h3>
      <h4>Heading4</h4>
      <h5>Heading5</h5>
      <h6>Heading6</h6>
      <hr/> -->
      
      <%-- <h3>그림 태그</h3>
      <div><a href="https://www.w3schools.com/tags/tag_img.asp">참고</a></div>
      <img src="/html_css_javascript/common/image/photo/photo1.jpg" width="100" alt="베네치아"/>
      <img src="../common/image/photo/photo1.jpg" width="100"/>
      <img src="../common/image/photo/photo1.jpg" height="100"/>
      <img src="../common/image/photo/photo1.jpg" width="100" height="100"/>
      <img src="../common/image/photo/photo100.jpg" width="100" alt = "베네치아"/> 
      </hr> --%>
     
      
      <%-- <h3>링크태그</h3>
      <div><a href="https://www.w3schools.com/html/html_links.asp"></a></div>
      <a href="https://tomcat.apache.org" target="_blank">_blank 속성</a><br/>
      <a href="https://tomcat.apache.org" target="_blank"><img src="../common/image/face/member01.png"/></a> --%>
     
     <%-- <h3>문단 태그</h3>
      <div><a href="https://www.w3schools.com/html/html_paragraphs.asp">참고</a></div>
      <p>
      1.&nbsp;&nbsp; aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa<br/>
      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa<br/>
      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa<br/>
      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
      </p>
      <p>
      2.&nbsp;&nbsp;bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
      </p> --%>
      
      <%-- 
      <h3>컨테이너 태그(렌더링이 되지 않고, 단지 그루핑을 짓는 역할)</h3>
      <!--검색엔진: 검색어를 찾아서 해당 페이지를 연결해주는 S/W -->
      <div><a href="https://www.w3schools.com/html/html_layout.asp">참고</a></div>
      <div>
        <h4>사진내용1</h4>
      	<img src="../common/image/photo/photo1.jpg" width="200"/>
        <p>아름다운 유럽 풍경1</p>
      </div>
      <section>
        <h4>사진내용2</h4>
      	<img src="../common/image/photo/photo2.jpg" width="200"/>
        <p>아름다운 유럽 풍경2</p>
      </section>
       <article>
        <h4>사진내용3</h4>
      	<img src="../common/image/photo/photo3.jpg" width="200"/>
        <p>아름다운 유럽 풍경3</p>
      </article>
      --%>
    <%--   <h3>테이블 태그</h3>
      <div><a href="https://www.w3schools.com/html/html_tables.asp">참고</a>
           <a href="https://www.w3schools.com/tags/tag_table.asp">참고</a>
      </div>
    
      <table>
		  <tr>
		    <th>Company</th>
		    <th>Contact</th>
		    <th>Country</th>
		  </tr>
		  <tr>
		    <td>Alfreds Futterkiste</td>
		    <td>Maria Anders</td>
		    <td>Germany</td>
		  </tr>
		  <tr>
		    <td>Centro comercial Moctezuma</td>
		    <td>Francisco Chang</td>
		    <td>Mexico</td>
		  </tr>
	</table>
	
	<table>
		<thead style="background-color: lightblue;">
		  <tr>
		    <th>Company</th>
		    <th>Contact</th>
		    <th>Country</th>
		  </tr>
		</thead>
		<br/>
		<tbody style="background-color: pink;">
		  <tr>
		    <td>Alfreds Futterkiste</td>
		    <td>Maria Anders</td>
		    <td>Germany</td>
		  </tr>
		  <tr>
		    <td>Centro comercial Moctezuma</td>
		    <td>Francisco Chang</td>
		    <td>Mexico</td>
		  </tr>
		</tbody>
		<tfoot style="background-color: lightyellow;">
		   <tr>
		     <td colspan="3">[참조]테스트 데이터</td>
		   </tr>
		</tfoot>
	</table>
	
	<br/>
	
	<table>
		  <tr>
		    <th>Company</th>
		    <th>Contact</th>
		    <th>Country</th>
		  </tr>
		  <tr>
		    <td colspan="2">Alfreds Futterkiste</td>
		    <td>Germany</td>
		  </tr>
		  <tr>
		    <td>Centro comercial Moctezuma</td>
		    <td>Francisco Chang</td>
		    <td rowspan="2">Mexico</td>
		  </tr>
		  <tr>
		    <td>Centro comercial Moctezuma</td>
		    <td>Francisco Chang</td>
		  </tr>
	</table> --%>
    
    <h3>목록(목록, 메뉴를 생성)</h3>
    <div>
    	<a href="https://www.w3schools.com/html/html_lists.asp">참고</a>
    	<a href="https://www.w3schools.com/tags/tag_ol.asp">참고</a>
    </div>
    <ul>
	  <li>Coffee</li>
	  <li>Tea</li>
	  <li>Milk</li>
	</ul>
	
	<br/>
	
	<ol type="a" start="3">
	  <li>Coffee</li>
	  <li>Tea</li>
	  <li>Milk</li>
	</ol>
	</body>
</html>