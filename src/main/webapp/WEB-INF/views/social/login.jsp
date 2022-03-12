<!DOCTYPE html> 
<html lang="en"> 
<head> 
<meta charset="UTF-8"> 
<title>Title</title> 
</head> 
<body> 
<h2>ë¡ê·¸ì¸</h2><br/><br/> 
<a href="javascript:;" class="btn_social" data-social="kakao">ì¹´ì¹´ì¤í¡ ë¡ê·¸ì¸</a><br/> 
<script> 
	let socials = document.getElementsByClassName("btn_social"); 
	for(let social of socials) { 
		social.addEventListener('click', function(){ 
			let socialType = this.getAttribute('data-social'); 
			location.href="/oauth2/authorization/" + socialType; 
			}) 
			} 
</script> 
</body> 
</html>
