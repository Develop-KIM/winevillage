<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다!</title>
</head>
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
						<li><a href="/password_cert.do">회원정보수정</a></li>
						<li class="on"><a href="/change_password.do">비밀번호 변경</a></li>
						<li><a href="/withdrawal.do">회원탈퇴</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<div class="content mypage accont change_password_page">
		<div class="inner">
			<h2 class="page_tit">비밀번호 변경</h2>
			<div class="form_area">
				<form
					action="https://www.winenara.com/shop/mypage/account/change_password_proc"
					name="modify_form" id="modify_form" method="post"
					accept-charset="utf-8">
					<input type="hidden" name="witplus_csrf_token"
						value="b9f6e965f7f51f2e9c911cf0c52fe37b">
					<ul>
						<li>
							<div class="l_tit">
								<label for="default_pw">기존 비밀번호</label>
							</div>
							<div class="form_box">
								<input type="password" id="default_pw" placeholder="기존 비밀번호 확인"
									name="passwd">
								<p class="input_info_txt"></p>
							</div>
						</li>
						<li>
							<div class="l_tit">
								<label for="new_pw_01">신규 비밀번호</label>
							</div>
							<div class="form_box">
								<input type="password" id="new_pw_01"
									placeholder="신규 비밀번호를 입력하세요" name="new_passwd">
								<p class="input_info_txt"></p>
							</div>
						</li>
						<li>
							<div class="l_tit">
								<label for="new_pw_02">신규 비밀번호 확인</label>
							</div>
							<div class="form_box">
								<input type="password" id="new_pw_02"
									placeholder="신규 비밀번호를 한번 더 입력하세요" name="new_passwd_chk">
								<p class="input_info_txt"></p>
							</div>
						</li>
					</ul>
				</form>
			</div>
			<div class="btn_area">
				<button type="button" class="btn_txt btn_black"
					onclick="pass_submit()">비밀번호 변경</button>
			</div>
		</div>
	</div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>
