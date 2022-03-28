<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%@ include file="/WEB-INF/include/header.jspf"%>
    <title>공부어때 동영상 강의 쇼핑몰</title>
    
	
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/header.jsp"></jsp:include>
    
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />   
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

    <script type="text/javascript">
    
    var input_uid = $("#imp_merchant_uid").val();
	var input_name = "";
	var input_amount = "1";
	var input_buyer_email = "www.ikosmo.co.kr";
	var input_buyer_name = "12강의실1조_공부어때동영상쇼핑몰";
	var input_buyer_tel = "20210930-20220329";
    
    //버튼 클릭하면 실행
    function payment(data) {
        //IMP.init('가맹점 식별코드');//아임포트 관리자 콘솔에서 확인한 '가맹점 식별코드' 입력
        IMP.init('imp35667230');// sjsong 개인 가맹점 식별 코드//www.import.kr -> 회원가입 -> 관리자 콘솔 로그인 -> 시스템설정-> 내정보
        IMP.request_pay({// param
            pg: "kakaopay.TC0ONETIME", //pg사명 or pg사명.CID (잘못 입력할 경우, 기본 PG사가 띄워짐)
            pay_method: "card", //지불 방법
            /* merchant_uid: "iamport_test_id4", //가맹점 주문번호 (아임포트를 사용하는 가맹점에서 중복되지 않은 임의의 문자열을 입력) */
            merchant_uid: input_uid,
            /* name: "도서3", //결제창에 노출될 상품명  */
            name: data,
            amount: input_amount, //금액 
            buyer_email : input_buyer_email, 
            /* buyer_name : "홍길동", */
            buyer_name : input_buyer_name,
            /* buyer_tel : "01012341234" */
            buyer_tel : input_buyer_tel
        }, function (rsp) { // callback
            if (rsp.success) {
                //alert("완료 -> imp_uid : "+rsp.imp_uid+" / merchant_uid(orderKey) : " +rsp.merchant_uid);
            	window.location.href = '${pageContext.request.contextPath}/pay/checkout_import';
            } else {
                alert("실패 : 코드("+rsp.error_code+") / 메세지(" + rsp.error_msg + ")");
            }
        });
    }
	
	//문서가 준비되면 제일먼저 실행
	$(document).ready(function(){
		$("#iamportPayment").click(function(){
			product_name = document.getElementById("imp_product_name").innerHTML;
			payment(product_name.trim().replace(/\r\n|\n|\r|^\s+|\s+$/gm,''));//버튼 클릭하면 호출
		});
	});

    </script>
    
    
  </head>
  <body>
    <header>
 
 		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_header.jsp"></jsp:include>
 
	</header>

<main role="main">
<c:set var="cartProductPriceTotal" value="${0}" />
<c:set var="cartProductNameTotal" value="" />
<c:set var="today" value="<%=new java.util.Date()%>" />
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10 badge-light">
			<h1>장바구니</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-10 text-center">
			<table width="1000" cellpadding="0" cellspacing="0" border="1">
				
				<c:forEach items="${products}" var="prod" varStatus="stat">
					<tr>
						<td><img src="<c:url value="${prod.image_name}"/>" style="max-width:150px;"/></td>
						<td>${prod.product_name} </td>
						<td><fmt:formatNumber value="${prod.product_price}" pattern="#,###" />원 </td>
						<td><a href="/main/checkout_delete?product_id=${prod.product_id}">카트상품삭제</a></td>
					 </tr>
					 <c:set var="cartProductPriceTotal" value="${cartProductPriceTotal + prod.product_price}" />
					 <c:set var="cartProductNameTotal" value="${stat.first ? '' : cartProductNameTotal} ${prod.product_name}" />
				</c:forEach>	
				
			</table>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-2">
			<h1>합계금액</h1>
		</div>
		<div class="col-sm-3">
			<h1 id="imp_price"><fmt:formatNumber value="${cartProductPriceTotal}" pattern="#,###" />원</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-2">
			<h1>주문이름</h1>
		</div>
		<div class="col-sm-8" >
			<h3 id="imp_product_name">
				<c:out value="${cartProductNameTotal}"/>
				<fmt:formatDate type="both" dateStyle="long" timeStyle="short" value="${today}" />
			</h3>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-2">
			<h1>주문시간</h1>
		</div>
		<div class="col-sm-6" id="imp_merchant_uid">
			<h3>
				<fmt:formatDate type="both" dateStyle="long" timeStyle="short" value="${today}" />
			</h3>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-2">
			<h1>결제 하기</h1>
		</div>
		<div class="col-sm-5" style="padding-top: 3rem; padding-bottom: 2rem;">
			<button id="iamportPayment" type="button" style="padding:50px;">아임포트 카카오페이로 결제하기</button>
		</div>
	</div>
<!-- 	
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10 badge-light ">
			<h1>주문 내용</h1>
		</div>
	</div>
		

		
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-10 text-center">
			<table width="1000" cellpadding="0" cellspacing="0" border="1">
				<c:forEach items="${products_order}" var="prod">
					<tr>
						<td>
							<img src="<c:url value="${prod.image_name}"/>" style="max-width:150px;"/>
						</td> 
						<td>${prod.product_name} </td>
						<td><fmt:formatNumber value="${prod.product_price}" pattern="#,###" />원 </td>
						<td>
							<a href="/main/checkout_delete?orders_id=${prod.orders_id}">주문삭제</a> 
						</td>
					</tr>
				</c:forEach>	
			</table>
		</div>
	</div>	

-->

</main>

	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common2ssj/body_footer.jsp"></jsp:include>
<!-- 
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/css/assets/dist/js/bootstrap.bundle.min.js"></script>
 -->
</html>
