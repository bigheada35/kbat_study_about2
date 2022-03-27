<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	img{
		width:200px;
		height:auto
	} 
	
	.input-group{
		margin-left : 15%;
		width : 70%;
	}
	
	.table{
		margin-left : 20%;
		width : 60%;
	}
		
	.button{
		margin-left : 20%;
		text-align : left;
	}

	.title{
		width : 100%;
	}
</style>
<body>
	<br>
	<div class="container">
		<table class="table"> 
			<form:form action="rmodify" method="post">
			<input type="hidden" name="board_id" value="${rmodify_view.board_id}">
			<thead> 
			   	<tr>
			      <th scope="col">번호</th>
			      <td>${rmodify_view.board_id}</td>
			    </tr>			    
			    <tr>  
			      <th scope="col">작성자</th>
			      <td>${rmodify_view.member_id}</td>
			    </tr>
			    <tr>  
			      <th scope="col">작성일자</th>
			      <td>${rmodify_view.board_date}</td>
			    </tr>
			    <tr>   
			      <th scope="col">조회수</th>
			      <td>${rmodify_view.board_hit}</td>
			    </tr>   
			    <tr>  
			      <th scope="col" style="vertical-align:middle">제목</th>			      
			      <td><input type="text" name="board_title" class="title" value="${rmodify_view.board_title}"></td>
			    </tr>
			    <tr>   
			      <th scope="col" class="content" style="vertical-align:top">내용</th>
			      <td><textarea rows="10" name="board_content" style="width:100%" value="${rmodify_view.board_content}">${rmodify_view.board_content}</textarea></td>
			    </tr>  
			    <tr style="border-bottom:2px solid">
			    	<th scope="col" style="vertical-align:top">사진첨부</th>
				    <td><label for="img"></label> 
						<img src="<c:url value="${rmodify_view.attachment_name}"/>" />
						<input type="file" name="file" ></td>
				</tr> 
			</thead>
		</table>		
		<div class="button">	
					<a href="/main/detail?product_id=${rmodify_view.product_id}"><button type="button" class="btn btn-dark" id="b-list">목록</button></a>         
					<button type="submit" class="btn btn-dark">수정</button></a>			
		</div>
			</form:form>		
	</div>
</body>
</html>