<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>네이버로그인</title>
</head>
<body>
	<script type="text/javascript">
	
	  var naver_id_login = new naver_id_login("YisyoxafjYVqvrj6lctE", "naverlogin"); // "YOUR_CLIENT_ID", "YOUR_CALLBACK_URL"
	   
	  // 접근 토큰 값 출력
	  //alert(naver_id_login.oauthParams.access_token);
	  
	  // 네이버 사용자 프로필 조회 
	  naver_id_login.get_naver_userprofile("naverSignInCallback()");
	  
	  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	  function naverSignInCallback() {
	    //alert(naver_id_login.getProfileData('email'));
	    //alert(naver_id_login.getProfileData('name'));
	    //alert(naver_id_login.getProfileData('gender'));
		  var id = naver_id_login.getProfileData('email');
		  var name = naver_id_login.getProfileData('name');
		  var sns = "naver";
		  
		  var naverform = document.createElement('form');
        	
        	naverform.name = 'naverform';
        	naverform.method = 'POST';
        	naverform.action = 'signup_';
        	
        	var input1 = document.createElement('input');
        	var input2 = document.createElement('input');
        	var input3 = document.createElement('input');
        	var input4 = document.createElement('input');
        	
        	input1.setAttribute("type", "hidden");
        	input1.setAttribute("name", "id");
        	input1.setAttribute("value", id);

        	input2.setAttribute("type", "hidden");
        	input2.setAttribute("name", "sns");
        	input2.setAttribute("value", sns);
        	
        	input3.setAttribute("type", "hidden");
        	input3.setAttribute("name", "name");
        	input3.setAttribute("value", name);
        	
        	naverform.appendChild(input1);
        	naverform.appendChild(input2);
        	naverform.appendChild(input3);
        	
        	document.body.appendChild(naverform);
        	
        	naverform.submit();
	  }
	  
	</script>
</body>
</html>
