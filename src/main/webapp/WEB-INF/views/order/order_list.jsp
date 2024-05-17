<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.winenara.com/shop/main?login_on=Y&return_url=https://me2.do/Fijy5pow by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Apr 2024 13:02:33 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->

<head>
<title>WINENARA 1987 ㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다!</title>

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
						<li class="on"><a href="/member/order_list.do">주문내역</a></li>
						<li><a href="/member/wish_list.do">위시리스트</a></li>
						<li><a href="/cart_list.do">장바구니</a></li>
						<li><a href="/member/qna_list.do">문의내역확인</a></li>
						<li><a href="/member/withdrawal.do">회원탈퇴</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<div
		class="content mypage shopping order_lists_page return_order_lists_page">
		<div class="inner">
			<!--             <form action="" id="searchFrm" name="searchFrm" method="get" accept-charset="utf-8"> -->
			<div class="top_info">
				<div class="page_tit">
					<h2 class="tit">주문내역</h2>
				</div>

			</div>
			<div class="o_lists">
				<c:choose>
				<c:when test="${ empty orders }">
				<!-- 주문 내역 없을 때 -->
				<!-- <div class="empty" id="nodata">
					<p>주문 내역이 없습니다.</p>
				</div> -->
				</c:when>
				<c:otherwise>
				<!-- 주문 내역 있을 때 -->
				<ul>
					<c:forEach items="${ orders }" var="entry" varStatus="loop">
					<c:set var="createOrderDate" value="${entry.key}"/>
					<c:set var="list" value="${entry.value}"/>
					<li>
						<div class="top_date">
							<p>${ entry.key }</p>
							<!-- <button type="button" class="btn_txt" onclick="location.href='/shop/mypage/shopping/order_view?ocode=202404101712122YUI'"> -->
							<button type="button" class="btn_txt" onclick="return false;">
								<span>주문완료</span>
							</button>
						</div>
						<c:forEach items="${ list }" var="order">
						<div class="o_wrap">
							<div class="box ip_img" style="background:#EEC1CC">
								<a href="/">
								<picture>
								<!--[if IE 9]><video style="display: none;"><![endif]-->
								<source srcset="/uploads/product/550/${order.productImg}" media="(min-width:768px)">
								<!-- pc이미지 -->
								<source srcset="/uploads/product/200/${order.productImg}" media="(max-width:767px)">
								<!-- mb이미지 -->
								<!--[if IE 9]></video><![endif]-->
								<img src="/uploads/product/200/${order.productImg}" alt="">
								<!-- pc이미지 -->
								</picture>
								</a>
							</div>
							<div class="box con">
								<div class="more_info">
									<p class="store">　</p>
									<p class="prd_name">
										<a href="/shop/mypage/shopping/order_view?ocode=202404101712122YUI">샤또 루빈 라 비 앙 로제</a>
									</p>
									<span class="label" style="background:#EEC1CC">${order.wine}</span><span class="label" style="background:#EEC1CC">${order.country}</span>
									<!-- <span class="label" style="background:#EEC1CC">로제</span><span class="label" style="background:#EEC1CC">프랑스</span><span class="label" style="background:#EEC1CC">그르나슈</span> -->
									<!-- <span class="icon box">750ml</span> -->
									<div class="price">
										<p>
											<!-- <del>50,000원</del> -->
											<ins><fmt:formatNumber value="${order.discountPrice}" pattern="#,###" />원</ins>
										</p>
										<p class="amount">${order.orderAmount}개</p>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
					</li>
					</c:forEach>
				</ul>
				</c:otherwise>
				</c:choose>
			</div>
		</div>

		<!-- 교환반품신청 -->
		<form
			action="https://www.winenara.com/shop/mypage/shopping/return_order_lists"
			id="refundForm" name="refundForm" method="post"
			accept-charset="utf-8">
			<input type="hidden" name="witplus_csrf_token"
				value="1078dc1dad6e3b31e6c3fb16220cb476"> <input
				type="hidden" id="ocode" name="ocode" value=""> <input
				type="hidden" id="product_ocode" name="product_ocode" value="">
			<input type="hidden" id="refund_seq" name="refund_seq" value="">
			<div class="layer return_order_layer">
				<div class="display_table">
					<div class="table_cell">
						<div class="layer_area">
							<button type="button" class="layer_close"
								onclick="commonUI.layer.close()">
								<span>Layer Close</span>
							</button>
							<div class="layer_tit">교환/반품 신청</div>
							<div class="layer_con refund_layer_info"></div>
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