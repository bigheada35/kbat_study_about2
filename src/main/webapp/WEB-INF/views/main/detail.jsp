<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>공부어때 동영상 강의 쇼핑몰</title>   
</head>
<style>
    img{
        width : 80%;
    }
    
<<<<<<< HEAD
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
      #cart-and-order {
            width:340px; height:300px;
           /* background-color:yellow;  */
           position:fixed;
           top:25%; left:70%;
           opacity:1.0;
      }
      
    </style>
    <!-- Custom styles for this template -->
    <link href="/css/album.css" rel="stylesheet">
    
     
  </head>
  <body>
    <header>
  <div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-md-7 py-4">
          <h4 class="text-white">About</h4>
          <p class="text-muted">Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites or contact information.</p>
        </div>
        <div class="col-sm-4 offset-md-1 py-4">
          <h4 class="text-white">Contact</h4>
          <ul class="list-unstyled">
            <li><a href="#" class="text-white">Follow on Twitter</a></li>
            <li><a href="#" class="text-white">Like on Facebook</a></li>
            <li><a href="#" class="text-white">Email me</a></li>
          </ul>
        </div>
      </div>
=======
    .paging{
		text-align : center;
	}
	
</style>
<body>
<div class="container">
    <section class="ftco-section">
    	<div class="container">
    		<div class="row" style="height:80%">
    			<div class="col-lg-6 ftco-animate">
    				<video autoplay controls style="width:100%; height: 80%;"/>
	         		    <source src="<c:url value="${prod.video_name}"/>" type="video/mp4" >
		    	    </video>
                </div>
    			<div class="col-lg-6 product-details ftco-animate" style="height:500px">
    				<br>
    				<h3>${prod.product_name}</h3>
    				<br>
    				<h1><p><fmt:formatNumber type="currency" value="${prod.product_price}" /></p></h1>				               
    				<br>
    				<p>${prod.product_description}${prod.product_description}${prod.product_description}${prod.product_description}${prod.product_description}${prod.product_description}</p>					
          	        ${prod.product_description}${prod.product_description}
          	        <br><br>
          	        <p>  
						<a href="/main/cartorder?product_id=${prod.product_id}" class="btn btn-primary my-2">장바구니 담기</a>
		              	<a href="/main/checkout?product_id=${prod.product_id}" class="btn btn-primary my-2">구매하기</a>
		              	<%-- <a href="/main/playVideo?product_id=${prod.product_id}" class="btn btn-primary my-2">Play</a> --%>		                     	        
          	        </p>
    			</div>
    		</div>
    	</div>
    </section>
    <br><br>
    <div class="detail" style="text-align: center;">
<!--         <p style="color:gray">상세정보 / 후기게시판 / 문의게시판<p>
        <hr> -->
    </div>    
    <br>
    <div class="info">
        <img src="/resources/assets/img/빙고.png" >
>>>>>>> origin/dev_ush
    </div>
    <div class="info">
        <img src="/resources/assets/img/빙고.png" >
    </div>
    <div class="info">
        <img src="/resources/assets/img/빙고.png" >
    </div>
<<<<<<< HEAD
  </section> 
  

  <div id="cart-and-order">
  		        <div class="col-md-12">
		          <div class="card mb-4 shadow-sm">
		            <img class="bd-placeholder-img card-img-top" src="<c:url value="${prod.image_name}"/>" width="100%" height="160" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">${status.index+1} ${prod.product_name}</text></svg>
		            <div class="card-body">
		              <p class="card-text">${prod.product_description}</p>
		              <p class="card-text">가격 : ${prod.product_price} 원</p>
		              <p class="card-text">${prod.product_date}</p>
		              <div class="d-flex justify-content-between align-items-center">
		              	<a href="/main/cartorder?product_id=${prod.product_id}" class="btn btn-primary my-2">장바구니담기</a>&nbsp
		              	<a href="/main/checkout?product_id=${prod.product_id}" class="btn btn-primary my-2">구매하기</a>&nbsp
		              	<a href="/main/playVideo?product_id=${prod.product_id}" class="btn btn-primary my-2">Play</a>
		              </div>
		            </div>
		          </div>
		        </div>
  </div>


    <div class="container">
    
		
		        <div class="col-md-8">
		        
			      <table class="table table-warning">
			        <thead>
			          <tr>
			            <th scope="col">글번호</th>
			            <th scope="col">제목</th>
			            <th scope="col">작성자</th>
			            <th scope="col">조회수</th>
			          </tr>
			        </thead>
			        <tbody>
			          <tr>
			            <th scope="row">1</th>
			            <td>그때 가 생각나는고 너무 너무 좋아요</td>
			            <td>퇘개미</td>
			            <td>233</td>
			          </tr>
			          <tr>
			            <th scope="row">2</th>
			            <td>감사합니다 좋은 곡이에요</td>
			            <td>익명</td>
			            <td>123</td>
			          </tr>
			          <tr>
			            <th scope="row">3</th>
			            <td colspan="2">30년전 목소리 너무 좋아요</td>
			            <td>566</td>
			          </tr>
			        </tbody>
			      </table>
		          
		          <table class="table table-info">
			        <thead>
			          <tr>
			            <th scope="col">글번호</th>
			            <th scope="col">제목</th>
			            <th scope="col">작성자</th>
			            <th scope="col">조회수</th>
			          </tr>
			        </thead>
			        <tbody>
			          <tr>
			            <th scope="row">1</th>
			            <td>쿠폰 발행 언제 되나요?</td>
			            <td>퇴근합니다</td>
			            <td>78</td>
			          </tr>
			          <tr>
			            <th scope="row">2</th>
			            <td>아 저 시간있으세요?</td>
			            <td>오로라고래</td>
			            <td>56</td>
			          </tr>
			          <tr>
			            <th scope="row">3</th>
			            <td colspan="2">도코에서 만난 전여친도 이노래 좋아해요?</td>
			            <td>9992</td>
			          </tr>
			        </tbody>
			      </table>
		          
		        </div>
=======
</div> 		

<br>
	<div class="container">  
		<table class="table">  
			<h4>후기 게시판</h4>   
			<thead> 
				<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col" style="text-align:center">작성자</th>
				<th scope="col" style="text-align:center">작성일자</th>
				<th scope="col" style="text-align:center">별점</th>
				<th scope="col" style="text-align:center">조회수</th>
				</tr>
			</thead>
			<tbody>	
				<c:forEach items="${rlist}" var="board">
					<input type="hidden" name="rating_check" value="${board.rating_check}">
	      			<input type="hidden" name="review_id" value="${board.review_id}">	      
					<tr>
						<td>${board.board_id}</td>
						<td>
						<a href="rcontent_view?board_id=${board.board_id}&review_id=${board.review_id}" style="text-decoration:none; color:black">${board.board_title}</a></td>
						<td style="text-align:center">${board.member_id}</td>
				        <td style="text-align:center">${board.board_date}</td>
				        <td style="text-align:center">
							<img src="<c:url value="/resources/img/${board.rating_check}.png"/>" style="width:100px; text-align:center;"/>
						</td>
				        <td style="text-align:center">${board.board_hit}</td>
      				</tr>
				</c:forEach>       
			</tbody>
		<br>
		</table>
		
		<div class="paging">		
			<c:if test="${pageMaker.pre}">
				<a href="rlist${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
			</c:if>		   
			<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				<a href="rlist${pageMaker.makeQuery(idx)}" style="text-decoration:none; color:black">${idx}&nbsp;&nbsp;</a>
			</c:forEach>			      
			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<a href="rlist${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
			</c:if> 
		</div>		
	<div>
>>>>>>> origin/dev_ush

	
<br>
	<div class="container">  
		<table class="table">  
			<h4>문의 게시판</h4>   
			<thead> 
				<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col" style="text-align:center">작성자</th>
				<th scope="col" style="text-align:center">작성일자</th>			
				<th scope="col" style="text-align:center">조회수</th>
				</tr>
			</thead>
			<tbody>	
				<c:forEach items="${qlist}" var="qboard">
      	 		<tr>
			       	 <input type="hidden" name="reply_group" value="${qboard.reply_group}">
			       	 <input type="hidden" name="board_enable" value="${qboard.board_enable}">
			         <td>${qboard.board_id}</td>           
			         <td>                 	
	        			<c:if test="${qboard.board_enable=='N'}">
			            <img src="${pageContext.request.contextPath}/resources/img/lock1.png" style="width : 0.8em"/>
			            <c:choose>
			                <c:when test="${qboard.member_id eq principal.user.member_id || principal.user.member_id == 'kbatc5' || principal.user.member_id == 'admin'}">	
			                	<c:forEach begin="1" end="${qboard.reply_indent}">[답변]</c:forEach>
			        			<a href="qcontent_view?board_id=${qboard.board_id}&reply_group=${qboard.reply_group}" style="text-decoration:none; color:black"><c:out value="${qboard.board_title}" /></a>	          
			                </c:when>
			                <c:otherwise>비밀글은 작성자와 크리에이터만 볼 수 있습니다.</c:otherwise>
			            </c:choose>
			       	</c:if>
			        <c:if test="${qboard.board_enable == 'Y'}">
			        	<c:forEach begin="1" end="${qboard.reply_indent}">[답변]</c:forEach>
			        	<a href="qcontent_view?board_id=${qboard.board_id}&reply_group=${qboard.reply_group}" style="text-decoration:none; color:black">
			        	<c:out value="${qboard.board_title}"/></a>
			        </c:if>	
		         	</td>
		         <td style="text-align:center">${qboard.member_id} </td>      
		         <td style="text-align:center">${qboard.board_date}</td>
		         <td style="text-align:center">${qboard.board_hit}</td>
      		 </tr>
     		 </c:forEach>
      		<tr>
      		<c:choose>         	
	                <c:when test="${principal.user.member_number != null}">	
	                	<td colspan="5"> <a href="qwrite_view" style="text-decoration:none; color:black">글작성</a> </td>           
<%-- 			            <a href="nmodify_view?board_id=${content_view.board_id}">수정</a> &nbsp;&nbsp;
			            <a href="ndelete?board_id=${content_view.board_id}">삭제</a> &nbsp;&nbsp;  --%>
	                </c:when>
	                <c:otherwise></c:otherwise>
	            </c:choose>
         <!-- <td colspan="5"> <a href="qwrite_view">글작성</a> </td> -->
      	</tr>  	
				     
			</tbody>
		<br>
		</table>
		
		<div class="paging">		
			<c:if test="${pageMaker.pre}">
				<a href="qlist${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
			</c:if>		   
			<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				<a href="qlist${pageMaker.makeQuery(idx)}" style="text-decoration:none; color:black">${idx}&nbsp;&nbsp;</a>
			</c:forEach>			      
			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<a href="qlist${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
			</c:if> 
		</div>		
	<div>
	
	<br><br><br>	

<<<<<<< HEAD

    </div>


</main>

<footer class="text-muted">
  <div class="container">
    <p class="float-right">
      <a href="#">Back to top</a>
    </p>
    <p>Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p>New to Bootstrap? <a href="https://getbootstrap.com/">Visit the homepage</a> or read our <a href="../getting-started/introduction/">getting started guide</a>.</p>
  </div>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/css/assets/dist/js/bootstrap.bundle.min.js"></script>
=======
</body>
>>>>>>> origin/dev_ush
</html>
