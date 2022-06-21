/**
 * 로그인 페이지
 */

	
	// 저장한 이메일(아이디) 로그인 창으로 값 불러오기
	$("#login").ready(function(){
		
		$("#email").val(Cookies.get('key'));
		
		// 이메일 입력란에 값이 있다면 이메일 저장 체크
		if($("#email").val != ""){ 
			$("#remember").attr("checked", false); 
		} // if
		
		$("#remember").change(function(){
			if($("#remember").is(":checked")) Cookies.set('key', $("#email").val(), {expires:900});
			else Cookies.remove('key');
		}); // change
			
		$("#remember").keyup(function(){
			if($("#remember").is("checked")) Cookies.set('key', $("#email").val(), {expires:900});
		}); // keyup
		
		
	}); // ready
	
	
	
	// 내 애플리케이션>앱 설정>앱 키 : JAVASCRIPT KEY
    Kakao.init('395a1e98e230125e06d715106e0750bd'); 
    //console.log(Kakao.isInitialized());
	
	/* 카카오 로그인 버튼 동작  */
	function loginWithKakao() {
	    Kakao.Auth.login({
	      success: function(authObj) {
	        //alert(JSON.stringify(authObj))
	    	//console.log(Kakao.Auth.getAccessToken());
	    	Kakao.Auth.setAccessToken(authObj.access_token); // access 토큰값 저장 
	    	  
	       	Kakao.API.request({
	            url: '/v2/user/me',
	            success: function (res) {
	            	console.log(res);
	            	
	            	var id = res.kakao_account.email;
	            	var name = res.kakao_account.name;
	            	var gender = res.kakao_account.gender;
	            	var sns = "kakao";
		          	var birth = res.kakao_account.birthday;
	            	
			    	$.ajax({
		    			type:"POST",
		    			url:"member/snsDuplCheck",
		    			data:{ id: id, sns: sns },
		    			datatype:"text",
		    			success:function(check){
		    				
		    				// 아이디가 중복일 때 바로 로그인
			    			//alert("낄낄2 : " + check);
			    			console.log("check : " + check);
		    				if(check == 1){
		    					kakaologin();
		    					
		    				// 처음 방문일 때 회원가입 페이지로 이동
		    				}else{
		    			    	getInfo();
		    				
		    				}
		    				
		    			}, // success
		    			
		    			error:function(datastatus){
		    				console.log(datastatus);
		    			} // error
			    	}); // ajax
	          
	          }, // success
			  fail: function (err) {
                console.log(err)
              }, // fail
            }) // Kakao.API.request   	
			    	
	      }, // success
	      fail: function(err) {
	        //alert(JSON.stringify(err))
	    	  console.log(JSON.stringify(err));
	      }, // fail
	      
	   }) // Kakao.Auth.login
	} // loginWithKakao
	/* 카카오 로그인 버튼 동작  */
	
	
	/* 카카오 회원을 회원가입 페이지로 이동 */
	function getInfo(){
			    	  
//    	Kakao.API.request({
//            url: '/v2/user/me',
//            success: function (res) {

//            	console.log(res);
			
		    	var id = res.kakao_account.email;
		    	var name = res.kakao_account.name;
		    	var gender = res.kakao_account.gender;
		    	var sns = "kakao";
		      	var birth = res.kakao_account.birthday;
		
				var kakaoform = document.createElement('form');
	          	
	          	kakaoform.name = 'kakaoform';
	          	kakaoform.method = 'POST';
	          	kakaoform.action = 'signup_';
	          	
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
	          	input3.setAttribute("name", "gender");
	          	input3.setAttribute("value", gender);

	          	input4.setAttribute("type", "hidden");
	          	input4.setAttribute("name", "name");
	          	input4.setAttribute("value", name);
	          	
	          	kakaoform.appendChild(input1);
	          	kakaoform.appendChild(input2);
	          	kakaoform.appendChild(input3);
	          	
	          	document.body.appendChild(kakaoform);
	          	
	          	kakaoform.submit();

//           }, // success
            
//           fail: function (err) {
//             console.log(err)
//            }, // fail
//          }) // Kakao.API.request
		
	} // getInfo
	/* 카카오 회원을 회원가입2 페이지로 이동 */
	
	
	/* 카카오 로그인 */
	function kakaologin(){
		
//		Kakao.API.request({
//            url: '/v2/user/me',
//            success: function (res) {

//            	console.log(res);
//            	var id = res.kakao_account.email;
//				var sns = "kakao";
				
		    	var id = res.kakao_account.email;
		    	var sns = "kakao";
		
				var kakaologin = document.createElement('form');
				
				kakaologin.name = 'kakaologin';
				kakaologin.method = 'POST';
				kakaologin.action = 'snsSignIn';
	          	
	          	var input1 = document.createElement('input');
	          	var input2 = document.createElement('input');
	          	
	          	input1.setAttribute("type", "hidden");
	          	input1.setAttribute("name", "id");
	          	input1.setAttribute("value", id);

	          	input2.setAttribute("type", "hidden");
	          	input2.setAttribute("name", "sns");
	          	input2.setAttribute("value", sns);
	          	
	          	kakaologin.appendChild(input1);
	          	kakaologin.appendChild(input2);
	          	
	          	document.body.appendChild(kakaologin);
	          	
	          	kakaologin.submit();

//            }, // success
            
//            fail: function (err) {
//              console.log(err)
//            }, // fail
//          }) // Kakao.API.request
		
	} // kakaologin
	
	