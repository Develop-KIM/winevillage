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

<%@ include file="../common/common_mypage2.jsp"%>

		<div class="lnb mypage_lnb lnb_wrap">
			<div class="mypage_link mb_hidden">
				<ul class="depth_01">
					<li><a href="/mypageping/mypage">나의 쇼핑</a>
						<ul class="depth_02">
							<li class="on"><a href="/order_list.do">주문내역</a></li>
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
							<li><a href="/withdrawal.do">회원탈퇴</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
<div class="content mypage note shopping mileage_lists_page mileage_lists_test_page top_gap">
        <div class="inner">
            <div class="top_info">
                <div class="page_tit">
                    <h2 class="tit">나의 마일리지</h2>
                </div>
                <div class="term_box">
                    <div class="datepicker_area">
                        <div class="datepicker">
                            <input type="text" id="date_s" name="sh_s_date" value="2024-03-23" class="hasDatepicker"><button type="button" class="ui-datepicker-trigger">선택</button>
                        </div>
                        <span>~</span>
                        <div class="datepicker">
                            <input type="text" id="date_e" name="sh_e_date" value="2024-04-23" class="hasDatepicker"><button type="button" class="ui-datepicker-trigger">선택</button>
                        </div>
                    </div>
                    <button type="button" class="btn_txt btn_black" onclick="get_mlg_list();"><span>검색</span></button>
                </div>
            </div>
            <div class="mileage_box tab_area js_tab">
                <ul class="js_tabBtn tab2">
                    <li class="on"><button type="button" data-val="plus_list">적립내역</button></li>
                    <li><button type="button" data-val="minus_list">사용내역</button></li>
                </ul>
                <div class="js_tabCon o_lists on">
                    <ul class="mypage_lists"><li class="nodata">내역이 없습니다.</li></ul>
                </div>
                <div class="js_tabCon o_lists">
                    <ul class="mypage_use_lists">
                        
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</html>