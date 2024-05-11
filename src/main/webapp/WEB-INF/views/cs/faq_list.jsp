<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

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
						<!-- <form action="https://www.winenara.com/shop/cs/notice_lists_ajax"
							method="post" id="listFrm" accept-charset="utf-8"> -->
						<form action="faq_list.do" method="get" id="listFrm" accept-charset="utf-8">
							<!-- <input type="hidden" name="witplus_csrf_token" value="263185d7352e7ba37310c9ba7c895012">
							<input type="hidden" name="page" id="page" value="14"> -->
							<select name="searchField" id="key">
								<option value="all">전체</option>
								<option value="faq_title">제목</option>
								<option value="faq_content">내용</option>
								<option value="faq_classified">분류명</option>
							</select>
							<div class="search_box">
								<input type="text" id="keyword" name="searchKeyword" placeholder="검색어를 입력해주세요.">
								<!-- <button type="button" onclick="get_faq_list('search');">검색</button> -->
								<button type="submit">검색</button>
							</div>
						</form>
					</div>
					<ul class="faq_lists">
						<c:choose>
							<c:when test="${ empty lists }">
								<li>
									<div style="padding:60px 30px; text-align:center;">리스트가 없습니다.</div>
								</li>
							</c:when>
							<c:otherwise>
								<c:forEach items="${ lists }" var="item" varStatus="loop">
									<li>
										<button class="q">
											<span>[${ item.faq_classified }] ${ item.faq_title }</span>
										</button>
										<div class="a">
											<div class="con">
												<p>
													<font face="바탕체, serif">
														<span style="font-family: 나눔고딕, NanumGothic, sans-serif;">
															${ item.faq_content }
														</span>
													</font>&nbsp;
												</p>
											</div>
										</div>
									</li>
								</c:forEach>
							</c:otherwise>
						</c:choose>

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
					
					<style>section#contents nav.pg_wrap {margin-top:60px;text-align:center;}</style>
					<nav class="pg_wrap"><span class="pg">${ pagingImg }</span></nav>
					
					<!-- <button type="button" class="btn_txt" id="more_btn" onclick="get_faq_list('more');"><span>더보기</span></button> -->
					<div class="add_q">
						<span>자주 찾는 질문의 답변이 부족하시다면<br>와인나라 상담원에게 문의해 주세요.
						</span> <a href="qna_write.do" class="btn_txt btn_black">1:1 문의하기</a>
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
