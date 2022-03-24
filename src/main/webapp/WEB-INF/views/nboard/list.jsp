<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<<<<<<< HEAD
<style>
	.paging{
		text-align : center;
	}
	
	.n-button{
		position : 
	}
</style>
<body>
	<br>
	<div class="container">  
		<table class="table">  
			<h1>공지사항</h1>   
			<thead> 
				<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col" style="text-align:center">작성일자</th>
				<th scope="col" style="text-align:center">조회수</th>
				</tr>
			</thead>
			<tbody>	
				<c:forEach items="${list}" var="board">
					<tr>
						<td>${board.board_id}</td>
						<td>
						<a href="ncontent_view?board_id=${board.board_id}" style="text-decoration:none; color:black">${board.board_title}</a></td>
						<td>${board.member_id}</td>
						<td style="text-align:center">${board.board_date}</td>
						<td style="text-align:center">${board.board_hit}</td>
					</tr>
				</c:forEach>       
			</tbody>
		<br>
		</table>
		<div class="n-button">
			<tr>
				<c:if test="${principal.user.member_id == 'kbatc5'}" >
					<a href="nwrite_view"><button type="button" class="btn btn-dark">공지사항 등록</button></a>
				</c:if>	
			</tr>  
		</div>
		
		<div class="paging">		
			<c:if test="${pageMaker.pre}">
				<a href="nlist${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
			</c:if>		   
			<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				<a href="nlist${pageMaker.makeQuery(idx)}" style="text-decoration:none; color:black">${idx}&nbsp;&nbsp;</a>
			</c:forEach>			      
			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<a href="nlist${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
			</c:if> 
		</div>		
	<div>
</body>
=======
<body>  
<table class="table">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>

   <table width="500" cellpadding="0" cellspacing="0" border="1">
      <tr>
         <td>번호</td>
         <td>제목</td>
         <td>작성자</td>
         <td>작성일자</td>
         <td>조회수</td>
      </tr>
      <c:forEach items="${list}" var="board">
      <tr>
         <td>${board.board_id}</td>
         <td>
            <a href="ncontent_view?board_id=${board.board_id}">${board.board_title}</a></td>
         <td>${board.member_id}</td>
         <td>${board.board_date}</td>
         <td>${board.board_hit}</td>
      </tr>
      </c:forEach>                
   </table>
   
   <tr>
   		<c:if test="${principal.user.member_id == 'kbatc5'}" >
			<td colspan="5"> <a href="nwrite_view">글작성</a> </td>
	    </c:if>	
   </tr>  
   <br>
  
   <c:if test="${pageMaker.pre}">
         <a href="nlist${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
   </c:if>

	<!-- 링크를 걸어준다 1-10페이지까지 페이지를 만들어주는것  -->
	<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
		<a href="nlist${pageMaker.makeQuery(idx)}">${idx}</a>
	</c:forEach>
	      
	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<a href="nlist${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
	</c:if> <br>

</body>

>>>>>>> efc6e90bd5c32093481fe53d03b733fc4629a760
</html>