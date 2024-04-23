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

<%@ include file="../common/common_mypage.jsp"%>
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
							<li class="on"><a href="/password_cert.do">회원정보수정</a></li>
							<li><a href="/change_password.do">비밀번호
									변경</a></li>
							<li><a href="/withdrawal.do">회원탈퇴</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
<div class="content mypage accont password_cert_page">
        <div class="inner">
           <h2 class="page_tit">비밀번호 확인</h2>
           <div class="form_area">
                <ul>
                    <li>
                        <div class="l_tit">
                            <label for="user_pw">비밀번호</label>
                        </div>
                        <div class="form_box">
                            <input type="password" id="user_pw" name="user_pw" placeholder="비밀번호를 입력하세요">
                            <p class="input_info_txt"></p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="btn_area">
                <!-- 확인 시, member_modify 페이지로 넘어감 -->
                <button type="button" class="btn_txt btn_black" onclick="passwd_submit()">비밀번호 확인</button>
            </div>
        </div>
    </div>
</body>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</html>