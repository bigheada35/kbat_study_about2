<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form:form action="qmodify_view" method="post">
			<input type="hidden" name="board_id"
				value="${qcontent_view.board_id}">
			<input type="hidden" name="reply_group"
				value="${qcontent_view.reply_group}">
			<tr>
				<td>번호</td>
				<td>${qcontent_view.board_id}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${qcontent_view.board_hit}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${qcontent_view.member_id}</td>
				<%-- <td> <input type="text" name="member_id" value="${content_view.member_id}"></td> --%>
			</tr>
			<tr>
				<td>제목</td>
				<td>${qcontent_view.board_title}</td>
				<%--  <td> <input type="text" name="board_title" value="${content_view.board_title}"></td> --%>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="board_content">${qcontent_view.board_content}</textarea></td>
			</tr>
			<tr>
				<!--             <td colspan="2"> <input type="submit" value="수정"> &nbsp;&nbsp;  -->
				<td colspan="2"><a href="qlist">목록</a> &nbsp;&nbsp; <a
					href="qmodify_view?board_id=${qcontent_view.board_id}">수정</a>
					&nbsp;&nbsp; <a
					href="qreply_view?board_id=${qcontent_view.board_id}">답변</a>
					&nbsp;&nbsp; <a href="qdelete?board_id=${qcontent_view.board_id}">삭제</a>
					&nbsp;&nbsp;
			</tr>
		</form:form>
	</table>
	<table>
         <tr>
            <td> 제목 </td>
            <td> <input type="text" name="board_title" size = "50"> </td>
         </tr>
         <tr> 
            <td> 내용 </td>
            <td> <textarea name="board_content" rows="10" ></textarea> </td>
         </tr>
		<c:forEach begin="1" end="${board.reply_indent}">-
	         <tr>
				<td>제목</td>
				<td>${qcontent_view.board_title}</td>
							<tr>
				<td>내용</td>
				<td><textarea rows="10" name="board_content">${qcontent_view.board_content}</textarea></td>
			</tr>
			</tr>
		</c:forEach>
	</table>
</body>
</html>