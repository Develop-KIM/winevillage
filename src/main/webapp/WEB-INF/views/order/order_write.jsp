<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<title>WineVillage 주문결제</title>
<script type="text/JavaScript" language="JavaScript"
	src="https://winenara-recommend-method.s3.ap-northeast-2.amazonaws.com/rcMethod.js"
	charset="UTF-8"></script>
<!--백로그 API-->
<meta id="CsrfSecrets" name="witplus_csrf_token"
	content="be7b38b9302ff3c05cc7f68a617d7dd7" />
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-217574467-1"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<script src="https://cdn.iamport.kr/v1/iamport.js"></script>

<script>
	function submitOrder() {
		var orderInfo = {
			name : $('#or_name').val(),
			email : $('#or_email').val(),
			phoneNumber : $('#or_hp').val(),
			address1 : $('#address1').val(),
			orderRequest : $('#receipt_memo').val(),
			re_name : $('#receipt_name').val(),
			re_hp : $('#receipt_tel').val(),
			re_address1 : $('#receipt_address1').val(),
			points : parseInt($('.points').text().replace(/[^0-9]/g, '')),
		};
		var productItems = [];
		$('.result1 > li ').each(
				function() {
					var item = {
						productName : $(this).find('#productName').text(),
						productImg : $(this).find('#productImg').attr('src')
								.split('/').pop(),
						wine : $(this).find('#wine').text(),
						country : $(this).find('#country').text(),
						discountPrice : parseInt($(this).find('.discountPrice')
								.text().replace(/[^0-9]/g, '')),
						orderAmount : parseInt($(this).find('.orderAmount')
								.text().replace(/[^0-9]/g, '')),
						orderStatus : $(this).closest('li').prev('div').find(
								'#orderStatus').val(),
						memberNo : $(this).closest('li').prev('div').find(
								'#memberNo').val(),
						createDate : $('#createDate').val()
					};
					productItems.push(item);
				});
		var usedPoints = parseInt($('#use_reserve').val()) || 0;
		var finalPrice = parseInt($('#finish_price_span').text().replace(
				/[^0-9]/g, ''));
		var memberNo = parseInt($('#memberNo').val());
		var orderData = {
			orderInfo : orderInfo,
			productItems : productItems,
			usedPoints : usedPoints,
			finalPrice : finalPrice,
		};
		$.ajax({
			url : "http://localhost:8586/restOrderWrite.do",
			type : "POST",
			contentType : "application/json",
			data : JSON.stringify(orderData),
			success : function(response) {
				var orderId = response.orderId;
				IMP.init("imp86113226");
				IMP.request_pay({
					pg : "uplus",
					pay_method : "card",
					merchant_uid : new Date().getTime(), // 주문 고유 번호
					name : orderData.productItems[0].productName, // 대표 상품명
					amount : orderData.finalPrice, // 최종 결제 금액
					buyer_email : orderData.orderInfo.email,
					buyer_name : orderData.orderInfo.name,
					buyer_tel : orderData.orderInfo.phoneNumber,
					buyer_addr : orderData.orderInfo.address1,
					buyer_postcode : "",
				}, function(rsp) {
					if (rsp.success) {
						$.ajax({
							url : "http://localhost:8586/restOrderUpdate.do",
							type : "POST",
							contentType : "application/json",
							data : JSON.stringify({
								paymentApproved : true,
								orderData : orderData
							}),
							success : function(result) {
								alert("주문이 완료되었습니다.");
							},
							error : function(xhr, status, error) {
								alert("주문 상태 업데이트 중 오류가 발생했습니다.");
							}
						});
					} else {
						$.ajax({
							url : "http://localhost:8586/restOrderCancel.do",
							type : "POST",
							contentType : "application/json",
							data : JSON.stringify(orderData),
							success : function(result) {
								alert("결제가 취소되었습니다.");
							},
							error : function(xhr, status, error) {
								alert("주문 취소 중 오류가 발생했습니다.");
							}
						});
					}
				});
			},
			error : function(xhr, status, error) {
				alert("주문 처리 중 오류가 발생했습니다.");
			}
		});
	}
</script>

</head>

<body>
	<%@ include file="../common/common.jsp"%>




	<!-- contents -->
	<section id="contents" class="mb_margin_0" style="margin-top: 188px;">
		<div class="lnb order_lnb lnb_wrap step_wrap">
			<div class="pc_hidden">
				<a href="javascript:history.go(-1);" class="prev">이전</a>
				<div class="select_brand" id="select_brand">
					<h2 class="my_value js_selectBtn">주문서 작성</h2>
				</div>
			</div>
			<!-- 주문서 작성페이지 -->

			<div class="pc_lnb order_tit">
				<div class="page_tit">
					<picture>
					<source srcset="images/order/pc_smart_pickup.jpg"
						media="(min-width:768px)">
					<source srcset="images/order/mb_smart_pickup.jpg"
						media="(max-width:767px)">
					<img src="images/order/pc_smart_pickup.jpg" alt="스마트 픽업"
						draggable="false"> </picture>
				</div>
			</div>
		</div>
		<div class="wrap">
			<script type="text/javascript" src="./js/wn.order.js?v=240318123259"></script>
			<style>
.quick_menu {
	display: none
}
</style>
			<form action="order_write.do" id="orderForm" name="orderForm"
				method="post" accept-charset="utf-8">
				<input type="hidden" name="witplus_csrf_token"
					value="49e9b547a35b367f65c20229c78cc14e"> <input
					type="hidden" name="session_id" id="session_id"
					value="71u2njvsv4ist0gg22ue51rvobkjeol4">
				<div class="content order order_write_page">
					<div class="c_lists">
						<ul class="result1">
							<c:forEach items="${orderList}" var="row" varStatus="loop">
								<!-- 주문상태  -->
								<div>
									<input type="hidd-en" name="orderStatus" id="orderStatus"
										value="${ row.orderStatus }"> <input type="hid-den"
										name="memberNo" id="memberNo" value="${ user.memberNo }">
									<input type="hid-den" name="createDate" id="createDate"
										value="${ row.createDate }">
								</div>
								<li>
									<div class="box ip_img">
										<picture style="background:#E0D8EA"> <img
											src="../uploads/product/200/${row.productImg }" alt=""
											id="productImg"> </picture>
									</div>

									<div class="box con">
										<div class="more_info product">
											<p class="prd_name">
												<a href="/product/product_view?product_cd=03T999"
													id="productName">${row.productName }</a>
											</p>
											<span class="label" style="background: #E0D8EA" id="wine">${row.wine }</span>
											<span class="label" style="background: #E0D8EA" id="country">${row.country }</span>
										</div>
									</div>
									<div class="box opt mb_hidden"></div>
									<div class="box price_amount">
										<div class="box price"
											style="float: none; margin: 0; text-align: right;">
											<ins class="discountPrice">
												<fmt:formatNumber value="${row.discountPrice}"
													pattern="#,###" />
												원
											</ins>
											<span class="orderAmount">${row.orderAmount}EA</span>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div class="form_area left">
						<input type="hidd-en" name="memberNo" value="${ user.memberNo }">
						<input type="hid-den" name="memberId" value="${ user.memberId }">
						<%--  <c:forEach items="${lists}" var="row" varStatus="loop"> --%>
						<div class="f_top">
							<h2>주문자 정보</h2>
						</div>
						<ul>
							<li>
								<div>
									<input type="hid-den" name="memberNo" id="memberNo"
										value="${ user.memberNo }">
								</div>
							<li>
								<div class='l_tit'>
									<label for='or_name'>이름</label>
								</div>
								<div class='form_box'>
									<input type='text' id='or_name' name='name'
										value='${user.name}' readonly>
								</div>
							</li>
							<li>
								<div class='l_tit'>
									<label for='or_email'>이메일</label>
								</div>
								<div class='form_box'>
									<input type="text" id="or_email" name="email"
										value="${user.email}">
								</div>
							</li>
							<li>
								<div class='l_tit'>
									<label for='or_hp'>연락처</label>
								</div>
								<div class='form_box'>
									<input type="text" id="or_hp" name="phoneNumber"
										value="${user.phoneNumber}">
								</div>
							</li>
							<li>
								<div class='l_tit'>
									<label for='address1'>배송주소</label>
								</div>
								<div class='form_box'>
									<input type="text" id="address1" name="address1"
										value="${user.address1}">
								</div>
							</li>
						</ul>
						<%--  </c:forEach> --%>

						<input type="hidden" id="home_zip" value=""> <input
							type="hidden" id="home_addr1" value=""> <input
							type="hidden" id="home_addr2" value="">
						<div class="f_top">
							<h2>수령/배송정보</h2>
							<div class="checkbox type2">
								<input type="checkbox" name="copy_mem_info" id="copy_mem_info"
									value="Y" onclick="order.setReAddr();"> <label
									for="copy_mem_info">주문자와 동일</label>
							</div>
						</div>
						<ul>
							<!-- 수령방법 - 직접픽업 선택시 -->
							<li class="receive_way_con pickup">
								<ul>
									<li>
										<div class="l_tit">
											<label for="re_name">수령자명</label>
										</div>
										<div class="form_box">
											<input type="text" id="receipt_name" name="re_name"
												placeholder="이름을 입력해주세요.">
											<p class="input_info_txt">수령자명을 입력해주세요.</p>
										</div>
									</li>
									<li>
										<div class="l_tit">
											<label for="re_hp">연락처</label>
										</div>
										<div class="form_box">
											<input type="text" id="receipt_tel" name="re_hp"
												placeholder="'-'제외한 숫자만 입력해주세요.">
											<p class="input_info_txt">연락처를 입력해주세요.</p>
										</div>
									</li>
									<li>
										<div class="l_tit">
											<label for="pickup_store_cd">배송주소</label>
										</div>
										<div class="form_box">
											<input type="text" id="receipt_address1" name="re_address1"
												placeholder="배송받을 주소를 입력해주세요."
												style="background-position: 98% 50%; font-size: 14px; letter-spacing: -0.05em; height: 40px; line-height: 40px;">
											<p class="input_info_txt">주소를 입력해주세요.</p>
										</div>
									</li>
									<li class="receipt_memo_con">
										<div class="l_tit">
											<label for="receipt_memo">요청사항</label>
										</div>
										<div class="form_box">
											<textarea name="orderRequest" id="receipt_memo"
												placeholder="내용을 입력해주세요."
												style="width: 100%; height: 86px; padding: 10px; font-size: 14px;"></textarea>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="form_area right">
						<div class="f_top" style="margin: 39px 0px 40px;">
							<h2>주문계산기</h2>
						</div>
						<ul>
							<li class="t_price" style="margin: -23px 0px 21px;">
								<div class="l_tit">
									<p>총 상품가격</p>
								</div>
								<div class="form_box">
									<p id="order_price_span">
										<fmt:formatNumber value="${totalPrice}" pattern="#,###" />
										원
									</p>
								</div>
							</li>
							<!--  <li class="coupon">
                                <div class="l_tit">
                                    <label for="coupon">쿠폰할인</label>
                                </div>
                                <div class="form_box">
                                    <div class="ip_box">
                                        <input type="text" id="coupon_sale" name="coupon_sale" value="0" class="numeric" title="쿠폰할인금액" readonly="readonly">
                                    </div>
                                    <div class="btn_area col2">
                                        <button type="button" class="btn_txt" id="openCouponList">
                                            <span>쿠폰조회</span>
                                        </button>
                                        <button type="button" class="btn_txt btn_lgray" onclick="order.CouponReSet();">
                                            <span>쿠폰리셋</span>
                                        </button>
                                    </div>
                                </div>
                            </li> -->
							<li class="mileage">
								<div class="l_tit">
									<label for="mileage">포인트</label>
								</div>
								<div class="form_box">
									<div class="ip_box">
										<input type="text" id="use_reserve" name="points" value="0"
											class="numeric" title="사용할 포인트">
									</div>
									<div id="result2">
										<p class="input_info_txt" id="result2">
											<%-- (<span class="info"> ${availablePoints }P</span> 사용가능 ) --%>
											(<span class="points"> ${user.points }P</span> 사용가능 )
										</p>
									</div>
									<div class="checkbox type2">
										<input type="checkbox" id="all_use_reserve" value="Y">
										<label for="all_use_reserve">전액사용</label>
									</div>
								</div>
							</li>
							<!-- <li class="gift">
                                <div class="l_tit">
                                    <label for="gift">기프트카드</label>
                                </div>
                                <div class="form_box">
                                    <div class="ip_box">
                                        <input type="text" id="use_giftcard" name="use_giftcard" value="0" class="numeric" title="사용할 키프트카드">
                                    </div>
                                    <p class="input_info_txt">
                                        (<span class="info"> 0원</span> 사용가능 )
                                    </p>
                                    <div class="checkbox type2">
                                        <input type="checkbox" id="all_use_giftcard" value="Y">
                                        <label for="all_use_giftcard">전액사용</label>
                                    </div>
                                </div>
                            </li> -->
						</ul>
						<div class="f_top" style="margin: 90px 0 47px;">
							<h2>결제정보</h2>
						</div>
						<div class="t_price_info">
							<dl>
								<dt>총 구매금액</dt>
								<dd id="totalPurchasePrice">
									<fmt:formatNumber value="${totalPrice}" pattern="#,###" />
									원
								</dd>
							</dl>
							<dl style="display: none">
								<dt>
									배송비
									<!-- <span class="sub_txt">총 구입금액 5만원 이상 무료 배송</span> -->
								</dt>
								<dd id="trans_price_span">+ 0원</dd>
							</dl>
							<!--  <dl>
                                <dt>쿠폰할인</dt>
                                <dd id="coupon_span">- 0원</dd>
                            </dl> -->
							<dl>
								<dt>포인트</dt>
								<dd id="reserve_price_dd">- 0원</dd>
								<div id="points" style="display: none;">
									<dd>- 원</dd>
								</div>
							</dl>
							<!--         <dl>
                                <dt>기프트카드</dt>
                                <dd id="giftcard_price_dd">- 0원</dd>
                            </dl> -->
							<dl class="total">
								<dt>최종결제금액</dt>
								<dd id="finish_price_span">
									<fmt:formatNumber value="${finalPrice}" pattern="#,###" />
									원
								</dd>
							</dl>
							<dl class="pay">
								<dt>결제수단</dt>
								<dd>
									<div class="radiobox type2">
										<input type="radio" name="otype_cd" id="otype_cd_20"
											value="20" checked=""> <label for="otype_cd_20">신용카드</label>
									</div>
									<!-- <div class="radiobox type2">
                                        <input type="radio" name="otype_cd" id="otype_cd_70" value="70"> <label for="otype_cd_70">카카오페이</label>
                                    </div>
                                    <div class="radiobox type2">
                                        <input type="radio" name="otype_cd" id="otype_cd_60" value="60"> <label for="otype_cd_60">페이코</label>
                                    </div>
                                    <div class="radiobox type2">
                                        <input type="radio" name="otype_cd" id="otype_cd_40" value="40"> <label for="otype_cd_40">휴대폰결제</label>
                                    </div> -->
								</dd>
							</dl>
						</div>
					</div>
					<div class="btn_area col2">
						<button type="button" class="btn_txt"
							onclick="location.href='/cart/cart_lists'">
							<span>취소</span>
						</button>
						<button type="button" class="btn_txt btn_black"
							onclick="submitOrder();">
							<span>주문하기</span>
						</button>
					</div>
				</div>
			</form>
			<style type="text/css">
.kcpTransDiv {
	filter: alpha(opacity = 10);
	-khtml-opacity: 0.1;
	-moz-opacity: 0.1;
	opacity: 0.1;
	top: 0px;
	left: 0;
	background-color: #000000;
	width: 100%;
	height: 100%;
	position: absolute;
	z-index: 10000;
}
</style>
	</section>
	</div>
	<!-- footer -->
	<%@ include file="../common/footer.jsp"%>
	<!-- //footer -->
	<script language=javascript>
		$(".quick_menu .menu_open").on("click", function() {
			$(".quick_menu").toggleClass("on")
		});

		//결제 
		/* 	$(document).ready(function() { 
		        var totalPrice = parseInt($("#totalPurchasePrice").text().replace(/[^0-9]/g, '')); 
		        var availablePoints = ${availablePoints}; 

		        $("#finish_price_span").text(totalPrice.toLocaleString() + "원"); 

		        $("#use_reserve").on("input", function() { 
		            var usedPoints = parseInt($(this).val()); 
		             
		            if (isNaN(usedPoints) || usedPoints === 0) { 
		                $("#reserve_price_dd").text("- 0원"); 
		                $("#finish_price_span").text(totalPrice.toLocaleString() + "원"); 
		                $("#result2 .info").text(availablePoints.toLocaleString() + "P"); 
		                return; 
		            } 

		            var finalUsedPoints = Math.min(usedPoints, availablePoints); 

		            $("#reserve_price_dd").text("- " + finalUsedPoints.toLocaleString() + "원"); 

		            var finalPrice = totalPrice - finalUsedPoints; 

		            $("#finish_price_span").text(finalPrice.toLocaleString() + "원"); 

		            $("#result2 .info").text((availablePoints - finalUsedPoints).toLocaleString() + "P"); 
		        }); 
		         
		        //포인트 
		        $("#all_use_reserve").change(function() { 
		            if (this.checked) { 
		                $("#use_reserve").val(availablePoints); 
		            } else { 
		                $("#use_reserve").val(0); 
		            } 
		            $("#use_reserve").trigger("input"); 
		            
		        }); 

		        $("#result2 .info").text(availablePoints.toLocaleString() + "P"); 
		    });  */
	</script>

</body>

</html>



