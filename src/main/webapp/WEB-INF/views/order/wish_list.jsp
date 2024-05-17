 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

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
						<li><a href="/member/order_list.do">주문내역</a></li>
						<li class="on"><a href="/member/wish_list.do">위시리스트</a></li>
						<li><a href="/cart_list.do">장바구니</a></li>
						<li><a href="/member/qna_list.do">문의내역확인</a></li>
						<li><a href="/member/withdrawal.do">회원탈퇴</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<div class="content mypage note wish_lists_page">
		<div class="inner" style="padding-top: 30px">
			<div class="top_info">
				<div class="page_tit">
					<h2 class="tit">위시리스트</h2>
				</div>
			</div>
			<div class="del_area">
				<button type="button" id="btn_del" class="btn_select">선택삭제</button>
				<button type="button" id="btn_all" class="btn_all">전체선택</button>
			</div>
			<div class="prd_list_area" style="position:relative">
				<div class="search_result" style="display: block; z-index: 999; left: 141px; top: -76px; border: none;">
					<p class="result">
						총<span>${maps.totalCount}</span>개의 상품
					</p>
				</div>
				<ul class="n_prd_list" id="wish_ul">
					<c:forEach var="wishItem" items="${wishList}" varStatus="loop">
						<c:set var="wineStyles"
							value="${{'레드':'#E0D8EA','화이트':'#F6EC9C','로제':'#EEC1CC','스파클링':'#E0EBF8','주정강화':'#E1D5CA','디저트':'#D7F9E2'}}" />
						<li>
							<div class="item">
								<div class="checkbox type2">
									<input type="checkbox" name="wish_seq[]" id="wish_seq_${wishItem.wishNo }"  data-mem-seq="${wishItem.memberNo }"
										value="${wishItem.productCode }" > <label for="wish_seq_${wishItem.wishNo }">&nbsp;</label>
								</div>
								<div class="main_img"
									style="background: ${empty wishItem.wine ? '#fff' : wineStyles[wishItem.wine]};">
									<a
										href="/product_view.do?category=${wishItem.wine }&productCode=${wishItem.productCode}"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source srcset="/uploads/product/200/${wishItem.productImg }"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source srcset="/uploads/product/200/${wishItem.productImg }"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="/uploads/product/200/${wishItem.productImg }"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<c:choose>
												<c:when test="${user_id != null && user_id != ''}">
													<div data-product-cd="${wishItem.productCode }">
														<button type="button" class="wish wish_${wishItem.productCode } on "
															id="wish_${wishItem.productCode }" onclick="wishlist(this)">
															<span>찜하기</span>
														</button>
													</div>
												</c:when>
												<c:otherwise>
													<button type="button" class="wish wish_${wishItem.productCode } "
														id="wish_${wishItem.productCode }" onclick="$('.layer.login_layer').show();">
														<span>찜하기</span>
													</button>
												</c:otherwise>
											</c:choose>
									</div>
									<div class="label_wrap"></div>
								</div>

								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a
												href="/product_view.do?category=${wishItem.wine }&productCode=${wishItem.productCode}">
												<span>${wishItem.productName }</span> <span class="en"></span>
											</a>
										</p>
										<p class="prd_info">${wishItem.productInfo }</p>
									</div>
									<div class="cate_label">
										<c:if test="${not empty wishItem.wine }">
											<span class="label"
												style="background: ${wineStyles[wishItem.wine]};">${wishItem.wine }</span>
										</c:if>
										<c:if test="${not empty wishItem.country }">
											<span class="label"
												style="background: ${wineStyles[wishItem.wine]};">${wishItem.country }</span>
										</c:if>
										<c:if test="${not empty wishItem.grapeVariety }">
											<span class="label"
												style="background: ${wineStyles[wishItem.wine]};">${wishItem.grapeVariety }</span>
										</c:if>
									</div>
									<div class="price_area">
										<p class="price">
											<c:choose>
												<c:when test="${wishItem.stock != 0 }">
													<c:if test="${wishItem.discountRate > 0 }">
														<em class="discount">${wishItem.discountRate }%</em>
														<del>
															<fmt:formatNumber value="${wishItem.fullPrice }"
																pattern="#,##0" />
															원
														</del>
														<ins>
															<fmt:formatNumber value="${wishItem.discountPrice }"
																pattern="#,##0" />
															원
														</ins>
													</c:if>
													<c:if
														test="${wishItem.discountRate == 0 && wishItem.state != 'exclusive' }">
														<del
															style="font-size: 20px; font-weight: 700; color: #000; text-decoration: none;">
															<fmt:formatNumber value="${product.discountPrice }"
																pattern="#,##0" />
															원
														</del>
													</c:if>
													<c:if test="${wishItem.state == 'exclusive'}">
														<ins class="out">매장문의</ins>
														<del class="out out_price"
															style="text-decoration: none; font-weight: 700">
															<fmt:formatNumber value="${wishItem.fullPrice }"
																pattern="#,##0" />
															원
														</del>
													</c:if>
												</c:when>
												<c:otherwise>
													<ins class="out" style="text-align: right">품절</ins>
												</c:otherwise>
											</c:choose>
										</p>
									</div>
								</div>

							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
<script>
$(document).ready(function() {
	
    $.ajax({
        url: '/getWishList', 
        type: 'GET', 
        success: function(response) {
        	response.forEach(function(item) {
                console.log("productCode", item.productCode);
                $('.wish_' + item.productCode).addClass('on'); 
            });
        },
        error: function(xhr, status, error) {
            console.error("Ajax 요청 실패: ", status, error);
        }
    });
});

// 위시리스트 추가
function wishlist(element) {
    var productCode = element.parentNode.getAttribute('data-product-cd');
	let isAdded = $('.wish_' + productCode).hasClass('on');
	
	if (!isAdded) {
        $.ajax({
            url: '/addToWishList',
            type: 'POST',
            data: {
            	productCode: productCode,
            },
            success: function(response) {
                $('.wish_' + productCode).addClass('on');
                console.log("위시리스트 추가")
            },
            error: function(xhr, status, error) {
                console.error("Ajax 요청 실패: ", status, error);
            }
        });	
	} else {
		$.ajax({
			url: '/deleteWishList',
			type: 'POST',
			data: {
            	productCode: productCode,
            },
            success: function(response) {
                $('.wish_' + productCode).removeClass('on');
                console.log("위시리스트 삭제")
            },
            error: function(xhr, status, error) {
                console.error("Ajax 요청 실패: ", status, error);
            }
		});
	}
};
//선택 삭제
$(document).ready(function() {
    $('#btn_del').click(function() {
        // 체크된 체크박스를 찾기
        $('input[name="wish_seq[]"]:checked').each(function() {
            // 체크된 항목에서 memberNo와 productCode 추출
            var memberNo = $(this).data('mem-seq'); // data-mem-seq 속성에서 memberNo 추출
            var productCode = $(this).val(); // value 속성에서 productCode 추출

            // 서버로 삭제 요청을 보내는 AJAX 요청
            $.ajax({
                url: '/deleteWishItem.do', // 처리할 URL
                type: 'POST', // HTTP 요청 방식
                data: {memberNo: memberNo, productCode: productCode}, // 서버로 전송할 데이터
                success: function(response) {
                    // 삭제가 성공하면 페이지를 새로 고침하거나 UI를 업데이트
                    console.log('삭제 성공', response);
                    location.reload(); // 예: 페이지 새로 고침
                },
                error: function(xhr, status, error) {
                    // 오류 처리
                    console.error('삭제 실패', error);
                }
            });
        });
    });
});

//전체 선택
$(document).ready(function() {
    // 전체 선택 상태를 추적하는 변수
    var isAllChecked = false;

    // 전체 선택/해제 버튼 클릭 이벤트
    $('#btn_all').click(function() {
        // 전체 선택 상태 변경
        isAllChecked = !isAllChecked;

        // 모든 체크박스의 체크 상태를 isAllChecked 변수의 값에 따라 변경
        $('input[name="wish_seq[]"]').prop('checked', isAllChecked);
    });
});

</script>
</body>
<footer>
	<%@ include file="../common/footer.jsp"%>
</footer>
</html>