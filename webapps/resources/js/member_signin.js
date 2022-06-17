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
	