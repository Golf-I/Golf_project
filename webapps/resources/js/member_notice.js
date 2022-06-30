/**
 * 마이페이지 공지사항 페이지
 */

	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="notice?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
