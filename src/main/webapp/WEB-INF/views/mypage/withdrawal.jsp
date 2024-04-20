<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.winenara.com/shop/main?login_on=Y&return_url=https://me2.do/Fijy5pow by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Apr 2024 13:02:33 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<head>
    <title>WINENARA 1987 ㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다!</title>

</head>
<script type="text/javascript" src="/WineVillage/src/main/resources/static/js/front_ui9442.js"></script>
<body>
<%@ include file="../common/common.jsp"%>

<%@ include file="common_mypage.jsp"%>
		<div class="lnb mypage_lnb lnb_wrap">
			<div class="mypage_link mb_hidden">
				<ul class="depth_01">
					<li><a href="/mypageping/mypage">나의 쇼핑</a>
						<ul class="depth_02">
							<li><a href="/order_list.do">주문내역</a></li>
							<li><a href="/return_order_list.do">교환/반품내역</a></li>
							<li><a href="/wish_lists.do">위시리스트</a></li>
							<li><a href="/cart_list.do">장바구니</a></li>
						</ul></li>
					<li><a href="#none">개인정보</a>
						<ul class="depth_02">
							<li><a href="/qna_list.do">문의내역확인</a></li>
							<li><a href="/password_cert.do">회원정보수정</a></li>
							<li><a href="/change_password.do">비밀번호
									변경</a></li>
							<li class="on"><a href="/withdrawal.do">회원탈퇴</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
<div class="content mypage accont withdrawal_page ok_page">
        <div class="inner">
            <h2 class="page_tit">회원탈퇴</h2>
            <div class="ok_area">
                <p class="tit">와인나라 쇼핑몰 <br class="pc_hidden">회원탈퇴를 원하시나요?</p>
                <p class="txt">
                    서비스 탈퇴 시 고객님의 회원정보 및 활동내역이 <br class="pc_hidden">모두 삭제되며 <br class="mb_hidden">한 번 삭제 된 정보는 복구하실 수 없습니다.                    
                </p>
                <div class="btn_area col2">
                    <button type="button" class="btn_txt" onclick="history.back('-1')">취소</button>
                    <button type="button" class="btn_txt btn_black" onclick="leave();">회원탈퇴</button>
                </div>
            </div>
        </div>
    </div>
</body>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</html>
