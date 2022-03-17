<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>크리에이터 회원가입</title>
</head>

<body>

	<h1>크리에이터 회원가입</h1>


	<c:url value="/add/addAdmin" var="addAdminUrl" />
	<p>${addAdminUrl}</p>

	<form:form name="frmMember" action="${addAdminUrl}" method="POST">

		<p>
			<label for="member_company">업체명</label> 
			<input type="text"name="member_company" required/>
		</p>
		<p>
        <label for="member_id">아이디</label>
        <input type="text"  name="member_id" id="member_id"required/>
        <input type="button" id="idCheck" value="아이디중복확인">
        <span id="idRegErr" class="help-block">사업자 등록번호를 입력해주세요.</span>
         <span class="glyphicon glyphicon-ok form-control-feedback"></span>
    </p>
		 <p>
        <label for="password">비밀번호</label>
        <input type="password" name="password" id="password"placeholder="영문+숫자+특수문자 10자 이상"required/>
         <span id="pwdRegErr" class="help-block">영문+숫자+특수문자 포함 10자 이상.</span>
         <span class="glyphicon glyphicon-ok form-control-feedback"></span>
    	</p>
    	<p>
        <label for="rePassword">비밀번호 확인</label>
        <input type="password" name="rePassword"id="rePassword"required/>
        <span id="rePwdErr" class="help-block">비밀번호와 일치하지 않습니다. 다시 입력해 주세요.</span>
        <span class="glyphicon glyphicon-ok form-control-feedback"></span>
    	</p>
    	 <p>
        <label for="member_email">이메일</label>
       <input type="text" id="member_email"name="member_email"required/>
        <select style="width:100px;margin-right:10px" name="selectEmail" id="selectEmail"> 
        <option value="1">직접입력</option><option value="naver.com" selected>naver.com</option><option value="hanmail.net">hanmail.net</option><option value="gmail.com">gmail.com</option> <option value="daum.net">daum.net</option></select>
         <span id="emailErr" class="help-block">올바른 이메일 형식이 아닙니다. 다시 입력해 주세요.</span>
         <span class="glyphicon glyphicon-ok form-control-feedback"></span>
    	</p> 
		<p>
         <label for="member_phone">전화번호</label>
         <input type="text" name="member_phone" id="member_phone"required/>
         <span id="phoneRegErr" class="help-block">-제외 숫자만 입력해주세요.</span>
         <span class="glyphicon glyphicon-ok form-control-feedback"></span>
    </p> 
		
		<p>
			<label for="member_address">주소</label> 
			<input type="text"name="member_address" />
		</p>



		<button type="submit" class="btn">가입하기</button>
		
	</form:form>

	<form:form name="frmAdmin" action="${addUserUrl}" method="POST"
		enctype="multipart/form-data">
		<p>
			<label for="myfile">사업자등록증</label> <input type="file" name="myfile">
		</p>
		<button type="submit">제출하기</button>
	</form:form>
	
</body>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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

// 아이디 정규식 
$("#member_id").keyup(function(){
    var id=$(this).val();
    // 아이디 검증할 정규 표현식
    var reg=/^[0-9]{10,10}$/;
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
        var reg=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
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
    
   
    
    
    </script>

</html>