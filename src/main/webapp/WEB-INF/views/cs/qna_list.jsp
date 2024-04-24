<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

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
					<li><a href="javascript:void(0);">나의 쇼핑</a>
						<ul class="depth_02">
							<li><a href="/order_list.do">주문내역</a></li>
							<li><a href="/return_order_list.do">교환/반품내역</a></li>
							<li><a href="/wish_list.do">위시리스트</a></li>
							<li><a href="/cart_list.do">장바구니</a></li>
						</ul></li>
					<li><a href="#none">개인정보</a>
						<ul class="depth_02">
							<li class="on"><a href="/qna_list.do">문의내역확인</a></li>
							<li><a href="/password_cert.do">회원정보수정</a></li>
							<li><a href="/change_password.do">비밀번호
									변경</a></li>
							<li><a href="/withdrawal.do">회원탈퇴</a></li>
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
                    <p>총 <span>0</span>개의 질문</p>
                </div>
            </div>
            <ul class="faq_lists">
                                    <li class="nodata">
                        등록된 문의가 없습니다.
                    </li>
                            </ul>
            <div class="add_q">
                <a href="/qna_write.do" class="btn_txt btn_black">1:1 문의하기</a>
            </div>
        </div><!--//faq_lists_wrap-->
    </div>
</body>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</html>