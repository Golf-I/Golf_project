/**
 * 회원가입1 페이지
 */

	var button = false;

	// 유효성 검사
	function join1_check(){
		
		// 비밀번호 일치
		if( $("#password02").val() != "" && $("#password01").val() != $("#password02").val() ){
			$("#pwfalse").removeAttr("style", "display:none");
			$("#pwfalse").attr("style", "color:#FF0000");
			$("#password02").focus();
			
			// 2초 뒤 사라짐
			setTimeout(function(){
				$("#pwfalse").attr("style", "display:none");
			}, 2000);

			return false;
		}
		
		
		// 중복 확인 버튼 클릭여부 확인
		if(!button){
			$("#emailfalse").removeAttr("style", "display:none");
			$("#emailfalse").attr("style", "color:#FF0000");
			$("#email").focus();
			
			// 2초 뒤 사라짐
			setTimeout(function(){
				$("#emailfalse").attr("style", "display:none");
			}, 2000);
			return false;
		}
			
	}; // join1_check

	
	// 이메일 중복 확인 메소드
	function duplCheck(){

		// 이메일 입력값이 없을 때
		if( $("#email").val() == "" ){
			$("#email").focus();
			return false;
			
		// 이메일 입력값이 있을 때
		}else{
			
			$.ajax({
				type:"GET",
				url: "member/duplCheck",
				data: { id: $("#email").val() },
				datatype: "text",
				success: function(check){
					
					// 이메일이 존재할 때
					if(check == 1){
						alert("가입된 계정입니다.");
						button = false;
						return false;
						
					// 이메일이 존재하지 않을 때
					}else{ 
						alert("사용하실 수 있는 계정입니다.");
						button = true;
						//console.log("check : 0 = "+button);
						join1_check(button);
						return button;
					}
					
				}, // success
				error: function(datastatus){
					//alert("오류가 발생하였습니다. <br/> 관리자에게 문의해주세요.");
					console.log(datastatus);
				} // error
			}); // ajax
			
		} // if	
	}; // duplCheck
	
	
	// 내 애플리케이션>앱 설정>앱 키 : JAVASCRIPT KEY
    Kakao.init('395a1e98e230125e06d715106e0750bd'); 
    //console.log(Kakao.isInitialized());
	
	/* 카카오 로그인  */
	function loginWithKakao() {
	    Kakao.Auth.login({
	      success: function(authObj) {
	        //alert(JSON.stringify(authObj))
	    	//console.log(Kakao.Auth.getAccessToken());
	    	Kakao.Auth.setAccessToken(authObj.access_token); // access 토큰값 저장 
	    	  
	    	getInfo();
	      }, // success
	      
	      fail: function(err) {
	        //alert(JSON.stringify(err))
	      }, // fail
	      
	   }) // Kakao.Auth.login
	} // loginWithKakao
	/* 카카오 로그인  */
	
	/* 카카오 로그인 -> 회원가입2 페이지로 이동 */
	function getInfo(){
			    	  
    	Kakao.API.request({
            url: '/v2/user/me',
            success: function (res) {

//            	console.log(res);
            	var id = res.kakao_account.email;
            	var name = res.kakao_account.name;
            	var gender = res.kakao_account.gender;
            	var sns = "kakao";
//	          	var birth = res.kakao_account.birthday;

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

            }, // success
            
            fail: function (err) {
              console.log(err)
            }, // fail
          }) // Kakao.API.request
		
	} // getInfo
	/* 카카오 로그인 -> 회원가입2 페이지로 이동 */
	
	
	/* 카카오 로그아웃  */
	function logoutWithKakao() {
        if (!Kakao.Auth.getAccessToken()) {
            console.log('Not logged in.');
            return;
        }
        console.log(Kakao.Auth.getAccessToken());
        Kakao.Auth.logout(function () {
           // alert("logout");
           // 로그아웃 성공 후 처리 추가 
        });
    }
	/* 카카오 로그아웃  */
	
	
	/* 카카오 회원탈퇴  */
	function secession() {
		Kakao.API.request({
	    	url: '/v1/user/unlink',
	    	success: function(response) {
	    		console.log(response);
	    		//callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
	    		window.location.href='/'
	    	},
	    	fail: function(error) {
	    		console.log('탈퇴 미완료')
	    		console.log(error);
	    	},
		});
	};
	/* 카카오 회원탈퇴  */

	