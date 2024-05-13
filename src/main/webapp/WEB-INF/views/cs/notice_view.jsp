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
<!-- contents -->
<section id="contents" style="margin-top: 188px;">
	<div class="lnb cs_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand js_select" id="select_brand">
				<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>공지사항</span></button>
				<ul class="mb_lnb_lists">
					<li class="on"><a href="/shop/cs/notice_lists">공지사항</a></li>
					<li><a href="/shop/cs/faq_lists">자주하는 질문</a></li>
					<li><a href="/shop/cs/qna_write">1:1문의</a></li>
					<li><a href="/shop/company/member_benefit">회원혜택</a></li>
					<li><a href="/shop/cs/nomem_cert">비회원주문조회</a></li>
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
		<div class="content cs notice_view_page">
			<div class="view_page_wrap notice_view_wrap">
				<div class="view_tit_wrap">
					<h3 class="tit">${noticeDTO.notice_title}</h3>
					<i class="date">${noticeDTO.notice_postdate}</i>
				</div>
				<div class="con">
					<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(77, 77, 77); font-family: 나눔고딕, NanumGothic, 돋움, Dotum, ">
						${noticeDTO.notice_content}
					</ul>
				</div>
				<button type="button" class="btn_txt btn_black" onclick="javascript:location.href='notice_list.do'"><span>목록</span></button>
			</div>
			<!--//event_view_wrap-->
		</div>
		<!--//event event_lists_page-->
	</div>
</section>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
<script language="javascript">
    $(".quick_menu .menu_open").on("click", function () {
        $(".quick_menu").toggleClass("on")
    });
</script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
<script>
	const observer = lozad();
	observer.observe();
	console.log('test');
</script>
</body>
</html>