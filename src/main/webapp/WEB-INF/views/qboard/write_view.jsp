<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Home</title>
<script type="text/javascript">
	$(document).ready(function(){
	    
	    $("#secret").submit(                
	        function(event){
	            if($("#board_enable").val() == "0"){
	                alert("0임");	               
	                board_enable.val() == '1';
	            }else if($("#uPw").val() == ""){
	                alert("user pw blank!!");
	                event.preventDefault();
	            }else{
	                alert("login ok!!");
	            }  
	        }
	    );
	
	    $("#resBtn").click(function(){
	        alert("reset ok!!");
	        $("#loginForm")[0].reset();
	    });
	
	 });	 	
</script>
</head>
<body>
	<tr>
		<td class="form-inline">
			<input type="radio" name="board_enable" id="board_enable" value="1"/>공개
		</td>
		<td>
			<input type="radio" value="board_enable" id="board_enable" value="0"/>비공개  
		</td>
	</tr>	
	
	 <form id="secret">        
        USER ID : <input id="uId" type="text" name="uId">
        USER PW : <input id="uPw" type="password" name="uPw">
        <input id="sbmBtn" type="submit" value="SUBMIT">
        <input id="resBtn" type="reset" value="RESET">
    </form>    	
	<table width="500" cellpadding="0" cellspacing="0" border="1">

		<form action="qwrite" method="post">
			<input type="hidden" name="board_enable" value="${qwrite_view.board_enable}">
			<input type="hidden" name="member_id" value="${qwrite_view.member_id}">
		<tr>
			<td>제목</td>
			<td><input type="text" name="board_title" size="50"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="board_content" rows="10"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="입력">
				&nbsp;&nbsp; <a href="qlist">목록보기</a></td>
		</tr>
		</form>
	</table>


</body>
</html>