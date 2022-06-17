<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>네이버로그인</title>
</head>
<body>
	<script type="text/javascript">
	
	  //var naver_id_login = new naver_id_login("YisyoxafjYVqvrj6lctE", "naverlogin"); // "YOUR_CLIENT_ID", "YOUR_CALLBACK_URL"
	   
	  // 접근 토큰 값 출력
	  //alert(naver_id_login.oauthParams.access_token);
	  
	  // 네이버 사용자 프로필 조회
	  naver_id_login.get_naver_userprofile("naverSignInCallback()");
	  
	  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	  function naverSignInCallback() {
	    //alert(naver_id_login.getProfileData('email'));
	    //alert(naver_id_login.getProfileData('name'));
	    //alert(naver_id_login.getProfileData('birthday'));
	    //alert(naver_id_login.getProfileData('gender'));
	    //alert(naver_id_login.getProfileData('phone'));
		  var email = naver_id_login.getProfileData('email');
		  var username = naver_id_login.getProfileData('name');
		  document.join.email.value= email;
		  document.join.username.value= username;
	  }
	  
	</script>

	<form method="post" action="signup_" name="join">

		<input type="text" value="${email}" name="email" id="email" /> <input
			type="text" value="${username}" name="username" id="name" />

	</form>

	<script type="text/javascript">  
	
		//opener.location.href="signup_";
		//self.close();
		document.join.submit();
	  
	</script>
</body>
</html>
