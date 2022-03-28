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
    

	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>

  </head>
  <body>
    <header>
		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>
	</header>

<main role="main">


  	
  	<div class="row">
  		<div class="col-sm-1"></div>
  		<div class="col-sm-10"><h1>장바구니</h1></div>
  	</div>
  	<div class="row">
	  	<div class="col-sm-2"></div>
		<div class="col-sm-9 text-center">
			<table width="1000" cellpadding="0" cellspacing="0" border="1">
				<c:forEach items="${products}" var="prod">
					<tr>
						<td>
							<img src="<c:url value="${prod.image_name}"/>" style="max-width:150px;"/>
						</td>
						<td>${prod.product_name} </td>
						<td><fmt:formatNumber value="${prod.product_price}" pattern="#,###" />원</td>
						<td>
							<a href="/main/cartorder_delete?product_id=${prod.product_id}">삭제</a> 
						</td>
			 		</tr>
				</c:forEach>	
			</table>
		</div>		
	</div>

	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-2">
			<h1>결제 하기</h1>
		</div>
		<div class="col-sm-4" style="padding-top: 3rem; padding-bottom: 2rem;">
			<button type="button" style="padding:50px;"><a href="/main/checkout" >결제페이지로 이동하기</a></button>
			
		</div>
	</div>
</main>


		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/css/assets/dist/js/bootstrap.bundle.min.js"></script>
</html>
