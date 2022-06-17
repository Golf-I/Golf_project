/**
 * 회원가입2 페이지
 */

	
	// 동의 체크 확인
	function join2_check(){
			
		if( !($("#agree01").is(":checked") ) ){
			$("#agree01false").removeAttr("style", "display:none");
			$("#agree01false").attr("style", "color:#FF0000");
			return false;
		}
		
		if( !($("#agree02").is(":checked") ) ){
			$("#agree02false").removeAttr("style", "display:none");
			$("#agree02false").attr("style", "color:#FF0000");

			return false;
		}
			
	}; // join2_check
	
	
	
	// 약관 체크박스1
	$(document).ready(function(){
		$("#all_chk").click(function(){

			// 전체 동의하기 클릭 시
			if( $("#all_chk").is(":checked") ){
				$("input[class=checkbox]").prop("checked", true);

			// 전체 동의하기 해제
			}else{
				$("input[class=checkbox]").prop("checked", false);
			
			} //if
			
		}); // click
	}); // ready
		
	
	
	// 약관 체크박스2
	$(document).on('click','.checkbox',function(){ 
		
		// 4개의 체크박스 모두 체크됐을 때 전체 동의하기도 체크
		if($("input[class=checkbox]:checked").length == $(".checkbox").length){         
			$('#all_chk').prop('checked',true);     
		
		// 1개의 체크박스가 해제됐을 때 전체 동의하기 미체크
		}else{ 
			$('#all_chk').prop('checked',false);     
		} 
	
	}); // on
	