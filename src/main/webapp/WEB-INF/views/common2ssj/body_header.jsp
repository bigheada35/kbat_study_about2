<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 
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
            <li><a href="/main/cartorder" class="text-white">/main/cartorder</a></li>
            <li><a href="/upload/list2" class="text-white">/upload/list2</a></li>
            <li><a href="/index" class="text-white">/index</a></li>
            <li><a href="/login" class="text-white">/login</a></li>
            <sec:authorize access="isAuthenticated()">
				<li><a href="#" class="text-white">아이디: <sec:authentication property="principal.user.member_id"/></a></li>
				<li><a href="#" class="text-white">이름: <sec:authentication property="principal.user.member_name"/></a></li>
			</sec:authorize>
         </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container d-flex justify-content-between">
      <a href="/main/main" class="navbar-brand d-flex align-items-center">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="mr-2" viewBox="0 0 24 24" focusable="false"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
        <strong>공부어때 동영상 강의 쇼핑몰</strong>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </div> 
-->


<!-- fixed-top -->
<nav class="navbar navbar-expand-lg navbar-light bg-light ">
  <div class="container-xl">
    <a class="navbar-brand" href="/main/main">공부어때</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07XL" aria-controls="navbarsExample07XL" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExample07XL">
      <ul class="navbar-nav mr-auto">
      
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="dropdown07XL" data-toggle="dropdown" aria-expanded="false">카테고리</a>
          <div class="dropdown-menu" aria-labelledby="dropdown07XL">
            <a class="dropdown-item" href="#">취미</a>
            <a class="dropdown-item" href="#">가드닝</a>
            <a class="dropdown-item" href="#">고전 읽기</a>
            <a class="dropdown-item" href="#">금융, 재테크</a>
            <a class="dropdown-item" href="#">주식</a>
            <a class="dropdown-item" href="#">부동산</a>
            <a class="dropdown-item" href="#">음악</a>
          </div>
        </li>
      
      
        <li class="nav-item active">
          <a class="nav-link" href="/nlist">공지사항 <span class="sr-only">(current)</span></a>
        </li>
        
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="dropdown07XL" data-toggle="dropdown" aria-expanded="false">Link</a>
          <div class="dropdown-menu" aria-labelledby="dropdown07XL">
            <a class="dropdown-item" href="/logout">logout</a>
            <a class="dropdown-item" href="/index">index</a>
            <a class="dropdown-item" href="/add/addForm">회원가입</a>
            <a class="dropdown-item" href="/add/addFormAdmin">크리에이터 회원가입</a>
            <a class="dropdown-item" href="/user/userHome">유저 홈</a>
            <a class="dropdown-item" href="/admin/adminHome">관리자 홈</a>
            <a class="dropdown-item" href="/myPage/myHome">마이페이지</a>
            <a class="dropdown-item" href="/statistics/income">매출 통계</a>
            <a class="dropdown-item" href="/upload/list2">물건등록삭제</a>
            <a class="dropdown-item" href="/oauth2/authorization/google">구글 로그인</a>
            <a class="dropdown-item" href="/oauth2/authorization/naver">네이버 로그인</a>
            <a class="dropdown-item" href="/oauth2/authorization/kakao">카카오 로그인</a>
          </div>
        </li>
        
        
<!--
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li> 
-->
        

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
        
        
      </ul>
      <form class="form-inline my-2 my-md-0" action="/main/search" method="get">
<!--      
        <input class="form-control" type="text" placeholder="Search" aria-label="Search">
-->
					 
             			<div class="search_input">
             				<select name="type">
             					<option value="N">강의명</option>
             					<option value="D">강의 설명</option>
             					
             				</select>
             				<input type="text" name="keyword">
                 			<button class='btn' style="background-color: #FFA500;">검색</button>
             			</div>
             		
       
      </form>
		<sec:authorize access="isAnonymous()">
			<li style="list-style: none;"><a href="/login" style="color:gray;" class="login-panel">&nbsp;&nbsp;Login</a></li>
		</sec:authorize>
          <sec:authorize access="isAuthenticated()">
			<li style="list-style: none;">&nbsp;&nbsp;<a href="#" style="color:gray;"><sec:authentication property="principal.user.member_id"/>&nbsp;님</a></li>
		<!-- <li><a href="#" class="text-white">이름: <sec:authentication property="principal.user.member_name"/></a></li> -->
		</sec:authorize>
      
      	<sec:authorize access="isAnonymous()">
			<li style="list-style: none;"><a href="/add/add" style="color:gray;" class="login-panel">&nbsp;&nbsp;&nbsp;Sign Up</a></li>
		</sec:authorize>
		
    </div>
  </div>
</nav>
