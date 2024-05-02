<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WINE VILLAGE | WINE</title>
<script>
	function state_list(value) {

		var clickedId = "state_li_" + value;

		var listItems = document.querySelectorAll('.state_li');
		listItems.forEach(function(item) {
			item.classList.remove('on');
		});

		var clickedItem = document.getElementById(clickedId);
		clickedItem.classList.add('on');
	}
</script>
</head>

<body>
	<%@ include file="../common/common.jsp"%>
	<div class="wrap">
		<div class="content product product_lists_page test">
			<div class="product_lists_wrap">
				<div class="prd_list_tit">
					<div class="top">
						<c:choose>

							<c:when test="${category == 'fra'}">
								<h2>프랑스</h2>
							</c:when>
							<c:when test="${category == 'ita'}">
								<h2>이탈리아</h2>
							</c:when>
							<c:when test="${category == 'esp'}">
								<h2>스페인</h2>
							</c:when>
							<c:when test="${category == 'deu'}">
								<h2>독일</h2>
							</c:when>
							<c:when test="${category == 'usa'}">
								<h2>미국</h2>
							</c:when>
							<c:when test="${category == 'chl'}">
								<h2>칠레</h2>
							</c:when>
							<c:when test="${category == 'arg'}">
								<h2>아르헨티나</h2>
							</c:when>
							<c:when test="${category == 'aus'}">
								<h2>호주</h2>
							</c:when>
							<c:when test="${category == 'acc' }">
								<h2>ACCESSORY</h2>
							</c:when>
							<c:when test="${not empty uppercaseCategory }">
								<h2>${uppercaseCategory }</h2>
							</c:when>
							<c:otherwise>
								<h2>WINE</h2>
							</c:otherwise>
						</c:choose>
						<div class="line_map">
							<ul>
								<li onclick="location.href='/main.do'" style="cursor: pointer;">HOME</li>
								<li
									onclick="location.href='product_listsf694.html?sh_category1_cd=10000&amp;sh_category2_cd=&amp;sh_category3_cd='"
									style="cursor: pointer;" id="cate_txt">ALL</li>
							</ul>
						</div>
					</div>
					<div class="tab_area prd_tab_area tab3">
						<ul
							style="height: ${category == 'other' || category == 'acc' ? '0' : 'auto'};">
							<li class="state_li on" id="state_li_1"><a
								href="javascript:void(0);" onclick="state_list('1');">VALUE</a></li>
							<li class="state_li" id="state_li_5"><a
								href="javascript:void(0);" onclick="state_list('5');">EXCLUSIVE</a></li>
							<li class="state_li" id="state_li_all"><a
								href="javascript:void(0);" onclick="state_list('all');">ALL</a></li>
						</ul>

						<button class="smart_search"
							onclick="commonUI.layer.open('filter_layer')">
							<span>SMART SEARCH</span>
						</button>

					</div>
				</div>

				<%@ include file="../common/search.jsp"%>

				<div class="prd_list_area">
					<div class="search_result">
						<div class="result_area">
							<p class="result" id="total_count_text">${maps.ProductCount}개의
								상품</p>
						</div>

						<div class="second_order">
							<select name="js_select" id="js_select" class="">
								<option value="A">최신순</option>
								<option value="C">높은 가격순</option>
								<option value="B">낮은 가격순</option>
								<option value="F">판매량순</option>
							</select>
						</div>
					</div>
					<ul class="n_prd_list" id="product_ul">
						<c:forEach items="${lists }" var="product" varStatus="loop">
							<c:set var="category" value="${category }" />
							<c:set var="wineStyles"
								value="${{'레드':'#E0D8EA','화이트':'#F6EC9C','로제':'#EEC1CC','스파클링':'#E0EBF8','주정강화':'#E1D5CA','디저트':'#D7F9E2'}}" />
							<li>
								<div class="item">
									<div class="main_img"
										style="background: ${wineStyles[product.wine]};">
										<a
											href="/product_view.do?category=${category }&productNo=${product.productNo}"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="/uploads/product/200/${product.productImg }"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="/uploads/product/200/${product.productImg }"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="../../uploads/product/200/${product.productImg }"
												loading="lazy" alt=""><!-- pc이미지 --> </picture>
										</a>
										<div class="btn">
											<button type="button" class="wish wish_03T999 "
												id="wish_03T999" onclick="product.likeProduct('03T999');">
												<span>찜하기</span>
											</button>
										</div>
										<div class="label_wrap"></div>
									</div>
									<div class="info">
										<div class="more_info">
											<p class="prd_name">
												<a href="product_view9f82.html?product_cd=03T999"> <span>${product.productName }</span>
													<span>${product.productName_En }</span> <span class="en"></span></a>
											</p>
											<p class="prd_info">${product.productInfo }</p>
										</div>
										<div class="cate_label" style="height: 23.3px">
											<c:if test="${not empty product.wine }">
												<span style="background: ${wineStyles[product.wine]};">${product.wine }</span>
											</c:if>
											<c:if test="${not empty product.country }">
												<span style="background: ${wineStyles[product.wine]};">${product.country }</span>
											</c:if>
											<c:if test="${not empty product.grapeVariety }">
												<span style="background: ${wineStyles[product.wine]};">${product.grapeVariety }</span>
											</c:if>
										</div>
										<div class="price_area">
											<p class="price">
												<c:if test="${product.discountRate > 0 }">
													<em class="discount">${product.discountRate }%</em>
													<del><fmt:formatNumber value="${product.fullPrice }" pattern="#,##0"/>원</del>
													<ins>
													    <script>
													        var price = ${(product.fullPrice - (product.fullPrice * product.discountRate / 100))};
													        var DiscountPrice = Math.floor(price / 100) * 100;
													        document.write(DiscountPrice.toLocaleString() + "원");
													    </script>
													</ins>
												</c:if>
												<c:if test="${product.discountRate == 0}">
													<ins class="out">매장문의</ins>
													<del class="out out_price"
														style="text-decoration: none; font-weight: 700">${product.fullPrice }원</del>
												</c:if>
												<ins></ins>
											</p>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>

				<div>
					<p>${ pagination }</p>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>