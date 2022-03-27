<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>

<html>
    <script src="http://code.jquery.com/jquery-latest.js"></script> 
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>회원정보수정</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta
            name="keyword"
            content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link
            href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
            rel='stylesheet'
            type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/normalize.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fontello.css">
        <link
            href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
            rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-select.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/price-range.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/wizard.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">

        <style>

            .input-form {
                max-width: 680px;
                margin-top: 80px;
                padding: 32px;
                background: #fff;
                -webkit-border-radius: 10px;
                -moz-border-radius: 10px;
                border-radius: 10px;
                -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
                -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
                box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
            }
        </style>

    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

        <div class="header-connect">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-8  col-xs-12">
                        <div class="header-half header-call">
                            <p>
                                <span>
                                    <i class="pe-7s-call"></i>
                                    +1 234 567 7890</span>
                                <span>
                                    <i class="pe-7s-mail"></i>
                                    your@company.com</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
                        <div class="header-half header-social">
                            <ul class="list-inline">
                                <li>
                                    <a href="#">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-vine"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-linkedin"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-dribbble"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-instagram"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End top header -->

        <nav class="navbar navbar-default ">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button
                        type="button"
                        class="navbar-toggle collapsed"
                        data-toggle="collapse"
                        data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="${pageContext.request.contextPath}/resources/assets/img/logo.png" alt=""></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <div class="button navbar-right">
                        <button
                            class="navbar-btn nav-button wow bounceInRight login"
                            onclick=" window.open('register.html')"
                            data-wow-delay="0.4s">Login</button>
                        <button
                            class="navbar-btn nav-button wow fadeInRight"
                            onclick=" window.open('submit-property.html')"
                            data-wow-delay="0.5s">Submit</button>
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li class="dropdown ymm-sw " data-wow-delay="0.1s">
                            <a
                                href="index.html"
                                class="dropdown-toggle active"
                                data-toggle="dropdown"
                                data-hover="dropdown"
                                data-delay="200">Home
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu navbar-nav">
                                <li>
                                    <a href="index-2.html">Home Style 2</a>
                                </li>
                                <li>
                                    <a href="index-3.html">Home Style 3</a>
                                </li>
                                <li>
                                    <a href="index-4.html">Home Style 4</a>
                                </li>
                                <li>
                                    <a href="index-5.html">Home Style 5</a>
                                </li>

                            </ul>
                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.1s">
                            <a class="" href="properties.html">Properties</a>
                        </li>
                        <li class="wow fadeInDown" data-wow-delay="0.1s">
                            <a class="" href="property.html">Property</a>
                        </li>
                        <li class="dropdown yamm-fw" data-wow-delay="0.1s">
                            <a
                                href="#"
                                class="dropdown-toggle"
                                data-toggle="dropdown"
                                data-hover="dropdown"
                                data-delay="200">Template
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="yamm-content">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h5>Home pages</h5>
                                                <ul>
                                                    <li>
                                                        <a href="index.html">Home Style 1</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-2.html">Home Style 2</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-3.html">Home Style 3</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-4.html">Home Style 4</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-5.html">Home Style 5</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Pages and blog</h5>
                                                <ul>
                                                    <li>
                                                        <a href="blog.html">Blog listing</a>
                                                    </li>
                                                    <li>
                                                        <a href="single.html">Blog Post (full)</a>
                                                    </li>
                                                    <li>
                                                        <a href="single-right.html">Blog Post (Right)</a>
                                                    </li>
                                                    <li>
                                                        <a href="single-left.html">Blog Post (left)</a>
                                                    </li>
                                                    <li>
                                                        <a href="contact.html">Contact style (1)</a>
                                                    </li>
                                                    <li>
                                                        <a href="contact-3.html">Contact style (2)</a>
                                                    </li>
                                                    <li>
                                                        <a href="contact_3.html">Contact style (3)</a>
                                                    </li>
                                                    <li>
                                                        <a href="faq.html">FAQ page</a>
                                                    </li>
                                                    <li>
                                                        <a href="404.html">404 page</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Property</h5>
                                                <ul>
                                                    <li>
                                                        <a href="property-1.html">Property pages style (1)</a>
                                                    </li>
                                                    <li>
                                                        <a href="property-2.html">Property pages style (2)</a>
                                                    </li>
                                                    <li>
                                                        <a href="property-3.html">Property pages style (3)</a>
                                                    </li>
                                                </ul>

                                                <h5>Properties list</h5>
                                                <ul>
                                                    <li>
                                                        <a href="properties.html">Properties list style (1)</a>
                                                    </li>
                                                    <li>
                                                        <a href="properties-2.html">Properties list style (2)</a>
                                                    </li>
                                                    <li>
                                                        <a href="properties-3.html">Properties list style (3)</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Property process</h5>
                                                <ul>
                                                    <li>
                                                        <a href="submit-property.html">Submit - step 1</a>
                                                    </li>
                                                    <li>
                                                        <a href="submit-property.html">Submit - step 2</a>
                                                    </li>
                                                    <li>
                                                        <a href="submit-property.html">Submit - step 3</a>
                                                    </li>
                                                </ul>
                                                <h5>User account</h5>
                                                <ul>
                                                    <li>
                                                        <a href="register.html">Register / login</a>
                                                    </li>
                                                    <li>
                                                        <a href="user-properties.html">Your properties</a>
                                                    </li>
                                                    <li>
                                                        <a href="submit-property.html">Submit property</a>
                                                    </li>
                                                    <li>
                                                        <a href="change-password.html">Change password</a>
                                                    </li>
                                                    <li>
                                                        <a href="user-profile.html">Your profile</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.yamm-content -->
                                </li>
                            </ul>
                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.4s">
                            <a href="contact.html">Contact</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
        <!-- End of nav bar -->

        <br>

        <!-- property area -->
        <div class="property-area" style="float: none; margin:100 auto;">
            <div class="container">
                <div class="input-form-backgroud row">
                    <div class="input-form col-md-12 mx-auto" style="float: none; margin:0 auto;">
                        <h4 class="mb-4">회원정보수정</h4>
                        <br>
                        <form class="validation-form" name="frmMember" action="/myPage/updateMember/insert" method="POST" id="frmMember" novalidate="novalidate">

                            <label for="member_id">아이디</label>
                            <div class="row">
                                <div class="col-md-8 mb-3">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="member_id"
                                        name="member_id"
                                        placeholder=""
                                        value=""
                                        required="required"/></div>
                                <div class="col-md-4 mb-3">
                                    <input type="button" id="idCheck" style="height:44px" value="중복확인">
                                </div>
                              </div>

                                 <span id="idRegErr" class="help-block">영문+숫자 6자 이상.</span>
         						 <span class="glyphicon glyphicon-ok form-control-feedback"></span>

                            

                            <div class="mb-3">
                                <label for=password>비밀번호</label>
                                <input
                                    type="password"
                                    class="form-control"
                                    id="password"
                                    name="password"
                                    placeholder=""
                                    value=""
                                    required="required"/>
                                <span id="pwdRegErr" class="help-block">영문+숫자+특수문자 포함 10자 이상.</span>
         						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
                            </div>

                            <div class="mb-3">
                                <label for="rePassword">비밀번호 확인</label>
                                <input
                                    type="password"
                                    class="form-control"
                                    id="rePassword"
                                    name="rePassword"
                                    placeholder=""
                                    value=""
                                    required="required"/>
                                <span id="rePwdErr" class="help-block">비밀번호와 일치하지 않습니다. 다시 입력해 주세요.</span>
                				<span class="glyphicon glyphicon-ok form-control-feedback"></span>
                            </div>
                            
                              <div class="mb-3">
                                <label for="member_name">이름</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="member_name"
                                    name="member_name"
                                    placeholder=""
                                    value=""
                                    required="required"/>
                                <span id="nameRegErr" class="help-block">성명을 입력해주세요.</span>
         						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
                            </div>
                            
                            <div class="mb-3">
                                <label for="member_phone">연락처(-제외)</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="member_phone"
                                    name="member_phone"
                                    placeholder="01082825353"
                                    required="required"/>
                                <span id="phoneRegErr" class="help-block">-제외 숫자만 입력해주세요.</span>
         						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
                            </div>
                            
                            <label for="member_email">이메일</label>
                            <div class="row">
                                <div class="col-md-8 mb-3">
    
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="member_email"
                                        name="member_email"
                                        placeholder="you@naver.com"
                                        value=""
                                        required="required"/></div>
                                <div class="col-md-4 mb-3">
                                    <select style="width:180px; height:45px" name="selectEmail" id="selectEmail"> 
        									<option value="1"selected>직접입력</option>
        									<option value="naver.com">naver.com</option>
        									<option value="hanmail.net">hanmail.net</option>
        									<option value="gmail.com">gmail.com</option> 
       										 <option value="daum.net">daum.net</option></select>
                                </div>
                                 </div>
    
                                <span id="emailErr" class="help-block">올바른 이메일 형식이 아닙니다. 다시 입력해 주세요.</span>
         						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
    
                           
                         
                            <div class="mb-3">
                                <label for="member_address">주소</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="member_address"
                                    name="member_address"
                                    placeholder="서울특별시 강남구"
                                    required="required"/>
                                
                            </div>
                            
                             <div class="mb-3">
                                <label for="member_company">회사</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="member_company"
                                    name="member_company"
                                    placeholder="서울특별시 강남구"
                                    required="required"/>
                               
                            </div>

                            <br>

                            <div class="mb-4"></div>
                            <button id="update-btn" type="submit" class="site-btn register-btn"style="font-size: 15pt">
                                수정완료</button>

                            <button id="point-btn" type="submit" class="float-right"style="font-size: 10pt;" onclick="deleteMember()">
                                회원탈퇴</button>
                        </form>
                    </div>
                </div>
            </div>
            <br>

            <!-- End step 1 -->

            <!-- Footer area-->
            <div class="footer-area">

                <div class=" footer">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                                <div class="single-footer">
                                    <h4>About us
                                    </h4>
                                    <div class="footer-title-line"></div>

                                    <img
                                        src="${pageContext.request.contextPath}/resources/assets/img/footer-logo.png"
                                        alt=""
                                        class="wow pulse"
                                        data-wow-delay="1s">
                                    <p>Lorem ipsum dolor cum necessitatibus su quisquam molestias. Vel unde,
                                        blanditiis.</p>
                                    <ul class="footer-adress">
                                        <li>
                                            <i class="pe-7s-map-marker strong"></i>
                                            9089 your adress her</li>
                                        <li>
                                            <i class="pe-7s-mail strong"></i>
                                            email@yourcompany.com</li>
                                        <li>
                                            <i class="pe-7s-call strong"></i>
                                            +1 908 967 5906</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                                <div class="single-footer">
                                    <h4>Quick links
                                    </h4>
                                    <div class="footer-title-line"></div>
                                    <ul class="footer-menu">
                                        <li>
                                            <a href="properties.html">Properties</a>
                                        </li>
                                        <li>
                                            <a href="#">Services</a>
                                        </li>
                                        <li>
                                            <a href="submit-property.html">Submit property
                                            </a>
                                        </li>
                                        <li>
                                            <a href="contact.html">Contact us</a>
                                        </li>
                                        <li>
                                            <a href="faq.html">fqa</a>
                                        </li>
                                        <li>
                                            <a href="faq.html">Terms
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                                <div class="single-footer">
                                    <h4>Last News</h4>
                                    <div class="footer-title-line"></div>
                                    <ul class="footer-blog">
                                        <li>
                                            <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                                <a href="single.html">
                                                    <img src="${pageContext.request.contextPath}/resources/assets/img/demo/small-proerty-2.jpg">
                                                </a>
                                                <span class="blg-date">12-12-2016</span>

                                            </div>
                                            <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                                <h6>
                                                    <a href="single.html">Add news functions
                                                    </a>
                                                </h6>
                                                <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                                <a href="single.html">
                                                    <img src="${pageContext.request.contextPath}/resources/assets/img/demo/small-proerty-2.jpg">
                                                </a>
                                                <span class="blg-date">12-12-2016</span>

                                            </div>
                                            <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                                <h6>
                                                    <a href="single.html">Add news functions
                                                    </a>
                                                </h6>
                                                <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                                <a href="single.html">
                                                    <img src="${pageContext.request.contextPath}/resources/assets/img/demo/small-proerty-2.jpg">
                                                </a>
                                                <span class="blg-date">12-12-2016</span>

                                            </div>
                                            <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                                <h6>
                                                    <a href="single.html">Add news functions
                                                    </a>
                                                </h6>
                                                <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                                <div class="single-footer news-letter">
                                    <h4>Stay in touch</h4>
                                    <div class="footer-title-line"></div>
                                    <p>Lorem ipsum dolor sit amet, nulla suscipit similique quisquam molestias. Vel
                                        unde, blanditiis.</p>

                                    <form>
                                        <div class="input-group">
                                            <input class="form-control" type="text" placeholder="E-mail ... ">
                                            <span class="input-group-btn">
                                                <button class="btn btn-primary subscribe" type="button">
                                                    <i class="pe-7s-paper-plane pe-2x"></i>
                                                </button>
                                            </span>
                                        </div>
                                        <!-- /input-group -->
                                    </form>

                                    <div class="social pull-right">
                                        <ul>
                                            <li>
                                                <a class="wow fadeInUp animated" href="https://twitter.com/kimarotec">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a
                                                    class="wow fadeInUp animated"
                                                    href="https://www.facebook.com/kimarotec"
                                                    data-wow-delay="0.2s">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a
                                                    class="wow fadeInUp animated"
                                                    href="https://plus.google.com/kimarotec"
                                                    data-wow-delay="0.3s">
                                                    <i class="fa fa-google-plus"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a
                                                    class="wow fadeInUp animated"
                                                    href="https://instagram.com/kimarotec"
                                                    data-wow-delay="0.4s">
                                                    <i class="fa fa-instagram"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a
                                                    class="wow fadeInUp animated"
                                                    href="https://instagram.com/kimarotec"
                                                    data-wow-delay="0.6s">
                                                    <i class="fa fa-dribbble"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="footer-copy text-center">
                    <div class="container">
                        <div class="row">
                            <div class="pull-left">
                                <span>
                                    (C)
                                    <a href="http://www.KimaroTec.com">KimaroTheme</a>
                                    , All rights reserved 2016
                                </span>
                            </div>
                            <div class="bottom-menu pull-right">
                                <ul>
                                    <li>
                                        <a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">Home</a>
                                    </li>
                                    <li>
                                        <a class="wow fadeInUp animated" href="#" data-wow-delay="0.3s">Property</a>
                                    </li>
                                    <li>
                                        <a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">Faq</a>
                                    </li>
                                    <li>
                                        <a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            </div>

            <script src="${pageContext.request.contextPath}/resources/assets/js/modernizr-2.6.2.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.10.2.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-select.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-hover-dropdown.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/easypiechart.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.easypiechart.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/wow.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/icheck.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/price-range.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.validate.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/wizard.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

        </body>
        
       
    <script>
  	
 // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
      'use strict';

      window.addEventListener('load', function() {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');

        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function(form) {
          form.addEventListener('submit', function(event) {
            if (form.checkValidity() === false) {
              event.preventDefault();
              event.stopPropagation();
            }
            form.classList.add('was-validated');
          }, false);
        });
      }, false);
    })();
 
    $(document).ready(function(){
        $('.main i').on('click',function(){
            $('input').toggleClass('active');
            if($('input').hasClass('active')){
                $(this).attr('class',"fa fa-eye-slash fa-lg")
                .prev('input').attr('type',"text");
            }else{
                $(this).attr('class',"fa fa-eye fa-lg")
                .prev('input').attr('type','password');
            }
        });
    });
    
    // 성공 상태로 바꾸는 함수
    function successState(sel){
        $(sel)
        .parent()
        .removeClass("has-error")
        .addClass("has-success")
        .find(".glyphicon")
        .removeClass("glyphicon-remove")
        .addClass("glyphicon-ok")
        .show();
 
        $("#frmMember button[type=submit]")
                    .removeAttr("disabled");
    };
    // 에러 상태로 바꾸는 함수
    function errorState(sel){
        $(sel)
        .parent()
        .removeClass("has-success")
        .addClass("has-error")
        .find(".glyphicon")
        .removeClass("glyphicon-ok")
        .addClass("glyphicon-remove")
        .show();
 
        $("#frmMember button[type=submit]")
                    .attr("disabled","disabled");
    };
    
    // 아이디 중복 체크
    
let idCheck = 0;

$(document).ready(function(){
	
	$("#idCheck").click(function(event) {
		
        event.preventDefault();
        event.stopPropagation();
        
		let memberId = $("#member_id").val();
		
		let data = {
			member_id : memberId
		};
		
		console.log(JSON.stringify(data));
		
		$.ajax({
			type: "POST",
			url : "${pageContext.request.contextPath}/add/idCheck",
			cache : false,
			contentType:"application/json; charset='UTF-8'",
			data : JSON.stringify(data),
			success : function(jsonData){
				if(jsonData.idCount > 0){
					alert("아이디가 존재합니다! 다른 아이디를 입력해주세요");
					$("#member_id").focus();
					$("#frmMember button[type=submit]")
                    .attr("disabled","disabled");
					
				}
				else{
					alert("사용가능한 아이디입니다.");
					$("#password").focus();
					idCheck = 1;
				}
			},
			error : function(e){
				console.log(e);
				alert("error : " , e);
			}

		}) //end ajax
		
	}); //end #idCheck.click();
	
	
}); //end ready()

//아이디 정규식 부분
$("#member_id").keyup(function(){
    var id=$(this).val();
    // 아이디 검증할 정규 표현식
    var reg=/^[a-z]+[a-z0-9]{5,19}$/;
    if(reg.test(id)){//정규표현식을 통과 한다면
                $("#idRegErr").hide();
                successState("#member_id");
    }else{//정규표현식을 통과하지 못하면
                $("#idRegErr").show();
                errorState("#member_id");
    }
});

//연락처 정규식 
$("#member_phone").keyup(function(){
    var phone=$(this).val();
    // 연락처 검증할 정규 표현식
    var reg=/^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
    if(reg.test(phone)){//정규표현식을 통과 한다면
    	 		$("#phoneRegErr").hide();
                successState("#member_phone");
    
    }else{//정규표현식을 통과하지 못하면
    			$("#phoneRegErr").show();
                errorState("#member_phone");
    }
});
    
  //이메일 입력방식 선택 
    $('#selectEmail').change(function(){ 
    	$("#selectEmail option:selected").each(function () { 
    		if($(this).val()== '1'){ //직접입력일 경우 
    			$("#member_email").val(''); //값 초기화 
    			$("#member_email").attr("disabled",false); //활성화 
    			}else{ //직접입력이 아닐경우 
    				$("#member_email").val("@"+$(this).text()); //선택값 입력 
    				$("#member_email").attr("disabled",false); //비활성화 => 활성화로 변경
    				} 
    		}); 
    	}); 
  
    // 이메일 검증할 정규 표현식
    $("#member_email").keyup(function(){
        var email=$(this).val();
        var reg=/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
        if(reg.test(email)){//정규표현식을 통과 한다면
                    $("#emailErr").hide();
                    successState("#member_email");
        }else{//정규표현식을 통과하지 못하면
                    $("#emailErr").show();
                    errorState("#member_email");
        }
    });
    
  //비밀번호 코드
    $("#password").keyup(function(){
        var pwd=$(this).val();
        // 비밀번호 검증할 정규 표현식
        var reg=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{10,}$/;
        if(reg.test(pwd)){//정규표현식을 통과 한다면
                    $("#pwdRegErr").hide();
                    successState("#password");
        }else{//정규표현식을 통과하지 못하면
                    $("#pwdRegErr").show();
                    errorState("#password");
        }
    });
    $("#rePassword").keyup(function(){
        var rePassword=$(this).val();
        var password=$("#password").val();
        // 비밀번호 같은지 확인
        if(rePassword==password){//비밀번호 같다면
            $("#rePwdErr").hide();
            successState("#rePassword");
        }else{//비밀번호 다르다면
            $("#rePwdErr").show();
            errorState("#rePassword");
        }
    });
    
    //이름 정규식
    $("#member_name").keyup(function(){
        var name=$(this).val();
        //  이름 검증할 정규 표현식
        var reg=/[ㄱ-힣]{2,}/;
        if(reg.test(name)){//정규표현식을 통과 한다면
                    $("#nameRegErr").hide();
                    successState("#member_name");
        }else{//정규표현식을 통과하지 못하면
                    $("#nameRegErr").show();
                    errorState("#member_name");
        }
    });
    
    

function deleteMember(){
	event.preventDefault();
	if(confirm("회원이 작성한 게시물과 회원의 모든 정보가 삭제됩니다. 정말 탈퇴하시겠습니까? ") ==true){
		alert("탈퇴 실행")
		$.ajax({
			method : "get",
			url : "/myPage/updateMember/delete",
			success : function(data) {
				alert("회원탈퇴가 정상적으로 완료되었습니다. 로그인 창으로 이동합니다.");
				window.location.href = '/logout';
			}
		});
	}
	
	
}

</script>
</html>