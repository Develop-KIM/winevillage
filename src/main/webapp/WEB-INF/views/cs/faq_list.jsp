<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.winenara.com/shop/main?login_on=Y&return_url=https://me2.do/Fijy5pow by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Apr 2024 13:02:33 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->

<head>
<title>WINENARA 1987 ㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다!</title>

</head>
<script type="text/javascript"
	src="/WineVillage/src/main/resources/static/js/front_ui9442.js"></script>
<body>
	<%@ include file="../common/common.jsp"%>
	<section id="contents" style="margin-top: 188px;">
		<div class="lnb cs_lnb lnb_wrap">
			<div class="pc_hidden">
				<a href="javascript:history.go(-1);" class="prev">이전</a>
				<div class="select_brand js_select" id="select_brand">
					<button type="button" class="my_value js_selectBtn"
						onclick="$(this).toggleClass('on')">
						<span>자주하는 질문</span>
					</button>
					<ul class="mb_lnb_lists">
						<li><a href="/notice_list.do">공지사항</a></li>
						<li class="on"><a href="/faq_list.do">자주하는 질문</a></li>
						<li><a href="/qna_write.do">1:1문의</a></li>
						<li><a href="/shop/company/member_benefit">회원혜택</a></li>
					</ul>
				</div>
			</div>
			<div class="pc_lnb mb_hidden">
				<div class="page_tit">
					<h2>
						<span>자주하는 질문</span>
					</h2>
				</div>
				<ul class="menu tab3">
					<li><a href="/notice_list.do"><span>공지사항</span></a></li>
					<li class="on"><a href="/faq_list.do"><span>자주하는 질문</span></a></li>
					<li><a href="/qna_write.do"><span>1:1문의</span></a></li>
				</ul>
			</div>
		</div>
		<div class="wrap">
			<div class="content cs faq_lists_page">
				<div class="faq_lists_wrap">
					<div class="search_wrap">
						<form action="https://www.winenara.com/shop/cs/notice_lists_ajax"
							method="post" id="listFrm" accept-charset="utf-8">
							<input type="hidden" name="witplus_csrf_token"
								value="263185d7352e7ba37310c9ba7c895012"> <input
								type="hidden" name="page" id="page" value="14"> <select
								name="key" id="key">
								<option value="">전체</option>
								<option value="title">제목</option>
								<option value="content">내용</option>
							</select>
							<div class="search_box">
								<input type="text" id="keyword" name="keyword"
									placeholder="검색어를 입력해주세요.">
								<button type="button" onclick="get_faq_list('search');">검색</button>
							</div>
						</form>
					</div>
					<ul class="faq_lists">

						<li>
							<button class="q">
								<span>[픽업,배송] 지정한 수령일보다, 몇 주 늦게 가도 될까요? 와인 보관이 가능한가요?</span>
							</button>
							<div class="a">
								<div class="con">
									<p>
										<font face="바탕체, serif"><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">수령점으로
												전화 주시면, 최대한 고객님 편의에 맞춰 도와드리겠습니다.</span></font>&nbsp;
									</p>
								</div>
							</div>
						</li>
						<li>
							<button class="q">
								<span>[픽업,배송] 주문자가 직접 가지 못하여, 대리인이 가서 수령하려고 합니다.</span>
							</button>
							<div class="a">
								<div class="con">
									<p>
										<span style="font-family: 나눔고딕, NanumGothic, sans-serif;">기본적으로</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">주문하신</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">고객님</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">본인께서</span>
										<span style="font-family: 나눔고딕, NanumGothic, sans-serif;">매장에</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">방문해주셔야</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">합니다</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">.
										</span><span style="font-family: 나눔고딕, NanumGothic, sans-serif;">예외적인</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">경우애는</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">수령점으로</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">전화</span>
										<span style="font-family: 나눔고딕, NanumGothic, sans-serif;">주시기</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">바랍니다</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">.</span>
									</p>
								</div>
							</div>
						</li>
						<li>
							<button class="q">
								<span>[주문,결제] 와인 어떻게 사나요? 주문 어떻게 하나요?</span>
							</button>
							<div class="a">
								<div class="con">
									<p>
										<span style="font-family: 나눔고딕, NanumGothic, sans-serif;">와인</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">상세페이지에서</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> <span
											style="color: rgb(255, 0, 0);"><b>[바로구매</b></span></span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(255, 0, 0);"><b>]</b>
										</span><span style="font-family: 나눔고딕, NanumGothic, sans-serif;">클릭</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">후</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">진행하실</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">수</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">있습니다</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">.</span>
									</p>
								</div>
							</div>
						</li>
						<li>
							<button class="q">
								<span>[픽업,배송] 수령점 변경은 어떻게 하나요?</span>
							</button>
							<div class="a">
								<div class="con">
									<p>
										<span style="font-family: 나눔고딕, NanumGothic, sans-serif;">주류통신판매</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">행정고시사항으로</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">선택하신</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">수령점</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">외에는</span>
										<span style="font-family: 나눔고딕, NanumGothic, sans-serif;">수령</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">하실</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">수</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">없습니다</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">.<span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">﻿</span></span>
									</p>
								</div>
							</div>
						</li>
						<li>
							<button class="q">
								<span>[픽업,배송] 수령일자 변경은 어떻게 하나요?</span>
							</button>
							<div class="a">
								<div class="con">
									<p>
										<span style="font-family: 나눔고딕, NanumGothic, sans-serif;">지정하신</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">수령점으로</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">전화</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">하셔서</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">변경이</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">가능합니다</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">.</span>
									</p>
								</div>
							</div>
						</li>
						<li>
							<button class="q">
								<span>[픽업,배송] 지방은 구매가 안 되는 건가요?</span>
							</button>
							<div class="a">
								<div class="con">
									<p>
										<span style="font-family: 나눔고딕, NanumGothic, sans-serif;">온라인으로</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">구매예약</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">/</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">결제완료한</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">상품을</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">,
										</span><span style="font-family: 나눔고딕, NanumGothic, sans-serif;">매장에서</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">직접</span>
										<span style="font-family: 나눔고딕, NanumGothic, sans-serif;">수령하시게</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">됩니다</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">.</span>
									</p>

									<p class="MsoNormal">
										<span style="font-family: 나눔고딕, NanumGothic, sans-serif;">와인나라</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">매장은</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">서울에</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">&nbsp;6</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">곳이</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">있습니다</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">.</span>
									</p>
								</div>
							</div>
						</li>
						<li>
							<button class="q">
								<span>[픽업,배송] 택배 발송 가능한가요?</span>
							</button>
							<div class="a">
								<div class="con">
									<p>
										<span style="font-family: 나눔고딕, NanumGothic, sans-serif;">와인나라</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">직영점</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">,
										</span><span style="font-family: 나눔고딕, NanumGothic, sans-serif;">서울</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">&nbsp;6</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">개점에서</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">수령이</span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;"> </span><span
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">가능합니다</span><span
											lang="EN-US"
											style="font-family: 나눔고딕, NanumGothic, sans-serif;">.</span>
									</p>
								</div>
							</div>
						</li>

						<script>
							// var page = 1;
							// var cnt = 7;
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
							// var cnt = 0;
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
							// var page = 3;
							// var cnt = 0;
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
							// var page = 4;
							// var cnt = 0;
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
							// var page = 5;
							// var cnt = 0;
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
							// var page = 6;
							// var cnt = 0;
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
							// var page = 7;
							// var cnt = 0;
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
							// var page = 8;
							// var cnt = 0;
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
							// var page = 9;
							// var cnt = 0;
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
							// var page = 10;
							// var cnt = 0;
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
							// var page = 11;
							// var cnt = 0;
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
							// var page = 12;
							// var cnt = 0;
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
							// var page = 13;
							// var cnt = 0;
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
							// var page = 14;
							// var cnt = 0;
							// if(page == 1 && cnt < 1){
							//     $('#more_btn').hide();
							// }else if(page > 1 && cnt < 1){  
							//     alert('마지막 글입니다.');
							//     $('#more_btn').hide();
							// }else{
							//     $('#more_btn').show();
							// }
						</script>

					</ul>
					<!-- <button type="button" class="btn_txt" id="more_btn" onclick="get_faq_list('more');"><span>더보기</span></button> -->
					<div class="add_q">
						<span>자주 찾는 질문의 답변이 부족하시다면<br>와인나라 상담원에게 문의해 주세요.
						</span> <a href="/shop/cs/qna_write" class="btn_txt btn_black">1:1
							문의하기</a>
					</div>
				</div>
				<!--//faq_lists_wrap-->
			</div>
		</div>
		<!--//cs qna_lists_page-->
		</div>
		<script>
			// 검색
			$('input[name="keyword"]').keydown(function(event) {
				if (event.keyCode === 13) {
					event.preventDefault();
					get_faq_list('search');
				}
				;
			});

			//faq list
			$(document).on("click", ".faq_lists .q", function() {
				$(this).parent().toggleClass("on");
				$(this).parent().siblings().removeClass("on");
				$(this).parent().siblings().find(".a").slideUp();
				$(this).next(".a").stop().slideToggle();
			});

			$(document).ready(
					function() {
						get_faq_list();

						//스크롤 바닥 감지
						window.addEventListener('scroll', moreShowList);

						function moreShowList() {
							// 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
							if ($(window).scrollTop() >= $(document).height()
									- ($(window).height() * 2.3)) {
								get_faq_list('more');
							}
						}

						// if(더 호출할 것이 없을 때 스크롤 기능 제거){
						//      window.removeEventListener('scroll', moreShowList);
						// }
					})

			function get_faq_list(mode) {
				Csrf.Set(_CSRF_NAME_);
				if (mode == 'more') {
					var page = $('#page').val();
					page++;
					$('#page').val(page);
				} else if (mode == 'search') {
					$('#page').val(1);
					$('.faq_lists *').remove();
				}
				var params = $("#listFrm").serialize();

				$.ajax({
					url : "/shop/cs/faq_lists_ajax",
					type : "post",
					data : params,
					success : function(data) {
						// console.log(data);
						$('.faq_lists').append(data);

						// if(더 호출할 것이 없을 때 스크롤 기능 제거){
						//      window.removeEventListener('scroll', moreShowList);
						// }
					},
					error : function(request, status, error) {
						console.log("code:" + request.status + "\n"
								+ "message:" + request.responseText + "\n"
								+ "error:" + error);
					}
				})
			}
		</script>
		<script language="javascript">
			$(".quick_menu .menu_open").on("click", function() {
				$(".quick_menu").toggleClass("on")
			});
		</script>
		<script type="text/javascript"
			src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
	</section>
</body>
<footer>
	<%@ include file="../common/footer.jsp"%>
</footer>
</html>
