<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%@ include file="/WEB-INF/include/header.jspf"%>
    <title>공부어때 동영상 강의 쇼핑몰</title>
    

	
    
  </head>
  <body>
  
    <header>


 	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>
 

	</header>

<main role="main">



					<!--KDM 검색-->
<!--					
					<div class="search_wrap">
                		<form id="searchForm" action="/main/search" method="get">
                			<div class="search_input">
                			<select name="type">
                					<option value="N">강의명</option>
                					<option value="D">강의 설명</option>
                					
                				</select>
                				<input type="text" name="keyword">
                    			<button class='btn search_btn'>검 색</button>                				
                			</div>
                		</form>
                	</div>
 -->               	
              	
  <%-- <section class="jumbotron text-center"> --%>
  <iframe width="100%" height="700px" src="https://www.youtube.com/embed/-wW-o_7Je9I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>			
   <!--  <div class="container"> -->
      <!-- <h1>공부어때 동영상 강의 쇼핑몰</h1> -->
			<!-- <div class="col-lg-12 ftco-animate" style="border: 1px solid gray"> -->
				<!-- 
				<video autoplay controls style="width:100%; height: 80%;"/>
					<source src="<c:url value="http://localhost:8282/files/What_is_Spring.mp4"/>" type="video/mp4" >
				</video>
				-->
				<!-- 
				<iframe width="420" height="315"
					src="https://www.youtube.com/watch?v=-wW-o_7Je9I">
				</iframe>
				-->
				<!-- <iframe width="560" height="315" src="https://www.youtube.com/embed/_881oO2R0ac" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> -->
				<!-- <iframe width="100%" height="100%" src="https://www.youtube.com/embed/_881oO2R0ac" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				 -->
				
				
				
				
			<!-- </div> -->
<!--       <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don’t simply skip over it entirely.</p> -->
      <p>
<!--         <a href="#" class="btn btn-primary my-2">Main call to action</a>
        <a href="#" class="btn btn-secondary my-2">Secondary action</a> -->
      </p>
   <!--  </div> -->
<%--   </section> --%>


  <div class="album py-5 bg-light">
    <div class="container">
    
 		
	      <div class="row">
	    	<c:forEach items="${products}" var="prod" varStatus="status" >  	
		        <div class="col-md-3">
		          <div class="card mb-3 shadow-sm">
		          	<a href="/main/detail?product_id=${prod.product_id}">
		            	<img class="bd-placeholder-img card-img-top" src="<c:url value="${prod.image_name}"/>" style="width:200;height:100;" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em" id="product_name"> &nbsp&nbsp${prod.product_name}</text></svg>
		            </a>
		            <div class="card-body">
		              <p class="card-text">${prod.product_description}</p>
		              <p id="product_price" class="card-text" id="product_price">가격 : <fmt:formatNumber value="${prod.product_price}" pattern="#,###" /> 원</p>
		            </div>
		          </div>
		        </div>
		  
			</c:forEach>		   
		   </div>
      </div>
    </div>
  </div>


</main>


 
    
</body>
<br/>

	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>
      
</html>
