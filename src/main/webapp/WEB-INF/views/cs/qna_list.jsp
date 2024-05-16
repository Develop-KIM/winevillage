<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<title>WINENARA 1987 ㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다!</title>
</head>
<c:if test="${loggedIn}">
<script type="text/javascript" src="/WineVillage/src/main/resources/static/js/front_ui9442.js"></script>
</c:if>
<c:choose>
<c:when test="${not loggedIn}">
<script>
alert('로그인 후 이용해주세요.');
location.href="main.do";
</script>
<body></body>
</c:when>
<c:otherwise>
<body>
<%@ include file="../common/common.jsp"%>

<%@ include file="../common/common_mypage.jsp"%>
<div class="lnb mypage_lnb lnb_wrap">
	<div class="mypage_link mb_hidden">
		<ul class="depth_01">
			<li>
				<a href="javascript:void(0);">나의 쇼핑</a>
				<ul class="depth_02">
					<li><a href="/member/order_list.do">주문내역</a></li>
					<li><a href="/member/wish_list.do">위시리스트</a></li>
					<li><a href="/cart_list.do">장바구니</a></li>
					<li class="on"><a href="/member/qna_list.do">문의내역확인</a></li>
					<li><a href="/member/withdrawal.do">회원탈퇴</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div>
<div class="content mypage action qna_lists_page">
	<div class="inner">
		<div class="top_info">
			<div class="page_tit">
				<h2 class="tit">문의내역확인</h2>
				<p>총 <span>${ maps.totalCount }</span>개의 질문</p>
			</div>
		</div>
		<ul class="faq_lists">
			<c:choose>
				<c:when test="${ empty lists }">
					<li class="nodata">등록된 문의가 없습니다.</li>
				</c:when>
				<c:otherwise>
					<c:forEach items="${ lists }" var="item" varStatus="loop">
					<li class="">
						<button class="q">
							<span class="category">[${ item.qna_category }]</span>
							<span class="txt">${ item.qna_title }</span>
							<span class="date">${ item.qna_postdate }</span>
							<!-- 답변완료에는 q_clear 클래스를 붙여주세요 -->
							<span class="state${ item.qna_answered == 0 ? '' : ' q_clear' }">${ item.qna_answered == 0 ? '답변대기' : '답변완료' }</span>
						</button>
						<div class="con" style="display: none;">
							<div class="q_txt">${ item.qna_content }</div>
							<c:if test="${ item.qna_answered == 1 }">
								<div class="a_txt">${ item.qna_answer_content }</div>
							</c:if>
							<button type="button" class="btn_txt del_btn" onclick="del_qna(${ item.qna_no });">삭제</button>
						</div>
					</li>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</ul>
		<div class="add_q">
			<a href="/qna_write.do" class="btn_txt btn_black">1:1 문의하기</a>
		</div>
	</div>
	<!--//faq_lists_wrap-->
	<script>
	//faq list
	$(document).on("click",".faq_lists .q",function(){
		$(this).parent().toggleClass("on");
		$(this).parent().siblings().removeClass("on");
		$(this).parent().siblings().find(".con").slideUp();
		$(this).next(".con").stop().slideToggle();
	});
	function del_qna(no){
		if(confirm('해당 문의글을 삭제하시겠습니까?')){
			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			$.ajax({
				type : 'POST',
				url : '/qna_delete.do',
				data : {'qna_no':no},
				success: function(response) {
					// handle success
					alert('삭제되었습니다.');
					console.log("Success:", response);
					location.reload();
				},
				error: function(xhr, status, error) {
					// handle error
					alert('삭제에 실패했습니다.');
					console.error("Error:", error);
					location.reload();
				}
				/* success:function(res){
					if(res == 'Y'){
						alert('삭제되었습니다.');
						location.reload();
					}else{
						alert('문의 삭제 중 오류가 발생했습니다.');
						location.reload();
					}
				},error:function(res){
					console.log(res);
					alert('삭제 중 오류가 발생했습니다.');
				} */
			});
		}
	}
	</script>
</div>
</body>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</c:otherwise>
</c:choose>
</html>