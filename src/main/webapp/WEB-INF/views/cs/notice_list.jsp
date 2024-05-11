<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<title>WINENARA 1987 ㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다!</title>
</head>
<script type="text/javascript" src="/WineVillage/src/main/resources/static/js/front_ui9442.js"></script>
<body>
<%@ include file="../common/common.jsp"%>
<section id="contents" style="margin-top: 188px;"><div class="lnb cs_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>공지사항</span></button>
			<ul class="mb_lnb_lists">
				<li class="on"><a href="/notice_list.do">공지사항</a></li>
				<li><a href="/faq_list.do">자주하는 질문</a></li>
				<li><a href="/qna_write.do">1:1문의</a></li>
				<li><a href="/shop/company/member_benefit">회원혜택</a></li>
			</ul>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="page_tit">
			<h2><span>공지사항</span></h2>
		</div>
		<ul class="menu tab3">
			<li class="on"><a href="/notice_list.do"><span>공지사항</span></a></li>
			<li><a href="/faq_list.do"><span>자주하는 질문</span></a></li>
			<li><a href="/qna_write.do"><span>1:1문의</span></a></li>
		</ul>
	</div>
</div>
<div class="wrap">
	<div class="content cs notice_lists_page">
		<div class="notice_lists_wrap">
			<!-- <form action="https://www.winenara.com/shop/cs/notice_lists_ajax" method="post" id="listFrm" accept-charset="utf-8"> -->
			<form action="notice_list.do" method="get" id="listFrm" accept-charset="utf-8">
				<!-- <input type="hidden" name="witplus_csrf_token" value="ab3740380312bdc653282710568c8d2d"> -->                                                                                              
				<div class="search_box">
					<input type="text" name="searchKeyword" placeholder="검색어를 입력해주세요.">
					<input type="hidden" name="page" id="page" value="2">
					<!-- <button type="button" onclick="get_notice_list('search');">검색</button> -->
					<button type="submit">검색</button>
				</div>
			</form>
			<table class="tbl_list">
				<caption>공지사항</caption>
				<colgroup>
					<col class="num">
					<col class="tit">
					<col class="date">
				</colgroup>
				<thead>
					<tr class="tbl_list_tit">
						<th class="num">번호</th>
						<th class="tit">제목</th>
						<th class="date">작성일</th>
					</tr>
				</thead>
				<tbody class="notice_lists">
					<c:choose>
					<c:when test="${ empty lists }">
						<tr>
							<td colspan="3">리스트가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${ lists }" var="item" varStatus="loop">
							<c:if test="${ item.notice_pinned == '1' }">
								<tr>
									<td class="num"><span class="ico_ntc">공지</span></td>
									<td class="tit">
										<span class="ico_ntc">공지</span>
										<a href="notice_view.do?no=${ item.notice_no }"><p>${ item.notice_title }</p></a>
									</td>
									<td class="date">${ item.notice_editdate == null ? item.notice_postdate : item.notice_editdate }</td>
								</tr>
							</c:if>
						</c:forEach>
						<c:forEach items="${ lists }" var="item" varStatus="loop">
							<c:if test="${ item.notice_pinned == '0' }">
								<tr>
									<td class="num">${ item.notice_no }</td>
									<td class="tit">
										<a href="notice_view.do?no=${ item.notice_no }"><p>${ item.notice_title }</p></a>
									</td>
									<td class="date">${ item.notice_postdate }</td>
								</tr>
							</c:if>
						</c:forEach>
					</c:otherwise>
					</c:choose>
				<script>
					// var page = 1;
					// var cnt = 20;
					// if(page == 1 && cnt < 1){
					//     $('#more_btn').hide();
					// }else if(page > 1 && cnt < 1){  
					//     alert('마지막 글입니다.');
					//     $('#more_btn').hide();
					// }else{
					//     $('#more_btn').show();
					// }
				</script>            
				<script>
					// var page = 2;
					// var cnt = 20;
					// if(page == 1 && cnt < 1){
					//     $('#more_btn').hide();
					// }else if(page > 1 && cnt < 1){  
					//     alert('마지막 글입니다.');
					//     $('#more_btn').hide();
					// }else{
					//     $('#more_btn').show();
					// }
				</script>
				</tbody>
            </table>
            <!-- <button type="button" class="btn_txt" id="more_btn" onclick="get_notice_list('more');"><span>더보기</span></button> -->
        </div><!--//event-lists-wrap-->
    </div><!--//event event_lists_page-->
</div>
    </div><!--//cs qna_lists_page-->
</div>

<style>section#contents nav.pg_wrap {text-align:center;}</style>
<nav class="pg_wrap"><span class="pg">${ pagingImg }</span></nav>

<script>
/* $('input[type="text"]').keydown(function() {
	if (event.keyCode === 13) {
		event.preventDefault();
		get_notice_list('search');
	}
}); */
$('#listFrm input').keydown(function() {
	if (event.keyCode === 13) {
		event.preventDefault();
		$('#listFrm').submit();
	}
});

$(document).ready(function(){
	get_notice_list();

	//스크롤 바닥 감지
	window.addEventListener('scroll', moreShowList);

	function moreShowList() {
	// 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
		if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
			get_notice_list('more');
		}
	}

	// if(더 호출할 것이 없을 때 스크롤 기능 제거){
	//      window.removeEventListener('scroll', moreShowList);
	// }
})

function get_notice_list(mode){
	Csrf.Set(_CSRF_NAME_);
	if(mode == 'more'){
		var page = $('#page').val();
		page++;
		$('#page').val(page);
	}else if(mode == 'search'){
		$('#page').val(1);
		$('.notice_lists *').remove();
	}
	var params = $("#listFrm").serialize();

	$.ajax({
		url : "/shop/cs/notice_lists_ajax",
		type : "post",
		data : params,
		success:function(data){
			// console.log(data);
			$('.notice_lists').append(data);
			
			// if(더 호출할 것이 없을 때 스크롤 기능 제거){
			//      window.removeEventListener('scroll', moreShowList);
			// }
		},error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	})
}
</script>
<script language="javascript">
    $(".quick_menu .menu_open").on("click", function () {
        $(".quick_menu").toggleClass("on")
    });
</script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
</section>
</body>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</html>
