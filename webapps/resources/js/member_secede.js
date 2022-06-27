/**
 * 회원탈퇴 페이지 
 */

	// 체크박스 필수 체크
	$(document).ready(function(){
//	$(function secedeCheck(){
		$("#btn_wi").click(function(){
		
			if( !($("#chk01").is(":checked")) ){
				$("#secede_check").attr("style", "color:#FF0000");
				return false;
			} // if
		
		}); // click
//	});
	}); // ready