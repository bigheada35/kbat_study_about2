<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>마이페이지</title>
</head>
<body>
	<h3>
		<strong>내가 쓴 구매후기</strong>
	</h3>
	<hr>

	<table id="report" class="table">
		<thead>
			<tr>
				<th>상품명</th>
				<th>옵션</th>
				<th>구매 / 구매확정일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${reviewMyList}" var="reviewMyList" varStatus="status">
				<tr>
					<td>${reviewMyList.prodcut_name}</td>
					<td>${reviewMyList.order_price}</td>
					<td>${reviewMyList.order_date}</td>
				</tr>
				<tr style="text-align: center;">
					<td colspan="3">
						<h5>후기</h5> ${reviewContent[status.index].board_content}
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>
