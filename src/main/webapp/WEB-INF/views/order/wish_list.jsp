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
							<li><a href="/member/order_list.do">주문내역</a></li>
							<li class="on"><a href="/member/wish_list.do">위시리스트</a></li>
							<li><a href="/cart_list.do">장바구니</a></li>
							<li><a href="/member/qna_list.do">문의내역확인</a></li>
							<li><a href="/member/withdrawal.do">회원탈퇴</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div class="content mypage note wish_lists_page">
        <div class="inner">
            <div class="top_info">
                <div class="page_tit">
                    <h2 class="tit">위시리스트</h2>
                </div>
            </div>
			<div class="del_area">
                <button type="button" class="btn_select">선택삭제</button>
                <button type="button" class="btn_all">전체삭제</button>
            </div>
            <div class="prd_list_area">
                <div class="search_result">
                    <p class="result">총<span>1</span>개의 상품</p>
                </div>
                <ul class="n_prd_list" id="wish_ul">
                			<li>
			<div class="item">
								<div class="checkbox type2">
					<input type="checkbox" name="wish[]" id="wish_item03S801" value="03S801">
					<label for="wish_item03S801">&nbsp;</label>
				</div>
								<div class="main_img" style="background:#E0D8EA">
					<a href="/shop/product/product_view?product_cd=03S801" class="prd_img table_box">
						<picture>
							<!--[if IE 9]><video style="display: none;"><![endif]-->
							<source srcset="/uploads/product/200/74804eb1e4f3451e09af1e3a24c95b99.png" media="(min-width:1024px)"><!-- pc이미지 -->
							<source srcset="/uploads/product/200/74804eb1e4f3451e09af1e3a24c95b99.png" media="(max-width:1023px)"><!-- mb이미지 -->
							<!--[if IE 9]></video><![endif]-->
							<img src="/uploads/product/200/74804eb1e4f3451e09af1e3a24c95b99.png" loading="lazy" alt=""><!-- pc이미지 -->
						</picture>
					</a>
										<div class="btn">
						<button type="button" class="wish wish_03S801 on" id="wish_03S801" onclick="product.likeProduct('03S801');"><span>찜하기</span></button>
					</div>
															<div class="label_wrap">
																							</div>
				</div>
				<div class="info">
					<div class="more_info">
						<p class="prd_name"><a href="/shop/product/product_view?product_cd=03S801"><span>앤젤린 멘도치노 피노누아 </span><span class="en"></span></a></p>
						<p class="prd_info">"고급 레스토랑에서 판매하는 고퀄리티 글라스 와인으로 시작해서 현재는 해외 판매까지 성공시킨 역주행 성공의 브랜드"</p> 					</div>
					<div class="cate_label">
						<span style="background:#E0D8EA">레드</span>						<span style="background:#E0D8EA">미국</span>						<span style="background:#E0D8EA">피노누아</span>					</div>
					<div class="price_area">
						<p class="price">
																					<!-- 할인가 -->
																 <em class="discount">50%</em>
								 <del>60,000원</del>
								 								<ins>29,900원</ins>
																			</p>
					</div>
				</div>
			</div>
		</li>
	                </ul>

                <!-- <div class="btn_area">
                    <button type="button" class="btn_txt" onClick="getList('add');" id="showMoreList">더보기</button>
                </div> -->
            </div>
        </div>
    </div>
</body>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</html>