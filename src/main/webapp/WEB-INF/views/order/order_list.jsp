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
				<li><a href="javascript:void(0);">나의 쇼핑</a>
					<ul class="depth_02">
						<li class="on"><a href="/order_list.do">주문내역</a></li>
						<li><a href="/return_order_list.do">교환/반품내역</a></li>
						<li><a href="/wish_list.do">위시리스트</a></li>
						<li><a href="/cart_list.do">장바구니</a></li>
						<li><a href="/mileage_list.do">나의 마일리지</a></li>
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
<div class="content mypage shopping order_lists_page return_order_lists_page">
        <div class="inner">
<!--             <form action="" id="searchFrm" name="searchFrm" method="get" accept-charset="utf-8"> -->
            <div class="top_info">
                <div class="page_tit">
                    <h2 class="tit">주문내역</h2>
                </div>
                <div class="term_box">
                    <div class="datepicker_area">
                        <div class="datepicker">
                            <input type="text" id="date_s" name="sh_s_date" value="2024-03-19" class="hasDatepicker"><button type="button" class="ui-datepicker-trigger">선택</button>
                        </div>
                        <span>~</span>
                        <div class="datepicker">
                            <input type="text" id="date_e" name="sh_e_date" value="2024-04-19" class="hasDatepicker"><button type="button" class="ui-datepicker-trigger">선택</button>
                        </div>
                    </div>
                    <button type="button" class="btn_txt btn_black" onclick="shSubmit();"><span>검색</span></button>
                </div>
            </div>
            </form>            
            <div class="o_lists">
                                <!-- 주문 내역 없을 때 -->
                    <div class="empty" id="nodata">
                        <p>주문 내역이 없습니다.</p>
                    </div>
                    <!-- //주문 내역 없을 때 -->
                            </div>
        </div>

        <!-- 교환반품신청 -->
        <form action="https://www.winenara.com/shop/mypage/shopping/return_order_lists" id="refundForm" name="refundForm" method="post" accept-charset="utf-8">
                                                                  <input type="hidden" name="witplus_csrf_token" value="1078dc1dad6e3b31e6c3fb16220cb476">
        <input type="hidden" id="ocode" name="ocode" value="">
        <input type="hidden" id="product_ocode" name="product_ocode" value="">
        <input type="hidden" id="refund_seq" name="refund_seq" value="">
        <div class="layer return_order_layer">
            <div class="display_table">
                <div class="table_cell">
                    <div class="layer_area">
                        <button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
                        <div class="layer_tit">교환/반품 신청</div>
                        <div class="layer_con refund_layer_info">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>      
    </div>
</body>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</html>