<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.winenara.com/shop/main?login_on=Y&return_url=https://me2.do/Fijy5pow by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Apr 2024 13:02:33 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->

<head>
<title>WINEVILLAGEㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다!</title>

</head>
<script type="text/javascript"
	src="/WineVillage/src/main/resources/static/js/front_ui9442.js"></script>

<body>
	<%@ include file="../common/common.jsp"%>

	<%@ include file="../common/common_mypage.jsp"%>
	<div class="lnb mypage_lnb lnb_wrap">
		<div class="mypage_link mb_hidden">
			<ul class="depth_01">
				<li><a href="javascript:void(0);">나의 쇼핑</a>
					<ul class="depth_02">
						<li><a href="/member/order_list.do">주문내역</a></li>
						<li><a href="/member/wish_list.do">위시리스트</a></li>
						<li><a href="/cart_list.do">장바구니</a></li>
						<li><a href="/member/qna_list.do">문의내역확인</a></li>
						<li class="on"><a href="/member/withdrawal.do">회원탈퇴</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<div class="content mypage accont withdrawal_page ok_page">
		<div class="inner">
			<h2 class="page_tit">회원탈퇴</h2>
			<div class="ok_area">
				<p class="tit">
					와인빌리지 쇼핑몰 <br class="pc_hidden">회원탈퇴를 원하시나요?
				</p>
				<p class="txt">
					서비스 탈퇴 시 고객님의 회원정보 및 활동내역이 <br class="pc_hidden">모두 삭제되며 <br
						class="mb_hidden">한 번 삭제 된 정보는 복구하실 수 없습니다.
				</p>
				<div class="btn_area col2">
						<button type="button" id="deleteButton" class="btn_txt btn_black" onclick="confirmLeave()">회원탈퇴</button>
				</div>
			</div>
		</div>
	</div>
</body>
<footer>
	<%@ include file="../common/footer.jsp"%>
</footer>
<script>
function confirmLeave() {
    if (confirm("회원 탈퇴를 진행하시겠습니까?")) {
        fetch("/member/withdrawal.do", {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json',
            },
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                // 사용자 정보가 저장된 로컬 스토리지 또는 세션 스토리지 항목 제거
                localStorage.removeItem('userInfo');
                sessionStorage.removeItem('userInfo');
                
                // 서버에서 전달한 redirectUrl 대신 직접 "/main.do"로 리다이렉트
                window.location.href = "/main.do";
                
                // 페이지 새로고침을 통해 클라이언트 상태 초기화 (선택적)
                // window.location.reload(true);
            } else {
                alert(data.message);
            }
        })
        .catch((error) => {
            console.error('Error:', error);
        });
    }
}

</script>
</html>