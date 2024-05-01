<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WINE VILLAGE | WINE</title>
</head>

<body>
	<%@ include file="../../common/common.jsp"%>
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
							<c:when test="${not empty uppercaseCategory }">
								<h2>${uppercaseCategory }</h2>
							</c:when>
							<c:otherwise>
								<h2>WINE</h2>
							</c:otherwise>
						</c:choose>
						<div class="line_map">
							<ul>
								<li onclick="location.href='../main.html'"
									style="cursor: pointer;">HOME</li>
								<li
									onclick="location.href='product_listsf694.html?sh_category1_cd=10000&amp;sh_category2_cd=&amp;sh_category3_cd='"
									style="cursor: pointer;" id="cate_txt">ALL</li>
							</ul>
						</div>
					</div>
					<div class="tab_area prd_tab_area tab3">
						<ul>
							<li class="state_li on" id="state_li_1"><a
								href="javascript:void(0);" onclick="state_list('1');">VALUE
							</a></li>
							<li class="state_li " id="state_li_5"><a
								href="javascript:void(0);" onclick="state_list('5');">EXCLUSIVE</a></li>
							<li class="state_li " id="state_li_all"><a
								href="javascript:void(0);" onclick="state_list('all');">ALL</a></li>
						</ul>

						<button class="smart_search"
							onclick="commonUI.layer.open('filter_layer')">
							<span>SMART SEARCH</span>
						</button>

					</div>
				</div>

				<%@ include file="../../common/search.jsp"%>

				<div class="prd_list_area">
					<div class="search_result">
						<div class="result_area">
							<p class="result" id="total_count_text">${maps.wineCount}개의
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
							<li>
								<div class="item">
									<div class="main_img"
										style="<c:choose>
								   			 <c:when test="${product.wine eq '레드'}">background: #E0D8EA</c:when>
   											 <c:when test="${product.wine eq '화이트'}">background: #F6EC9C</c:when>
   											 <c:when test="${product.wine eq '로제'}">background: #EEC1CC</c:when>
   											 <c:when test="${product.wine eq '스파클링'}">background: #E0EBF8</c:when>
   											 <c:when test="${product.wine eq '주정강화'}">background: #E1D5CA</c:when>
   											 <c:when test="${product.wine eq '디저트'}">background: #D7F9E2</c:when>
										</c:choose>">
										<a href="product_view9f82.html?product_cd=03T999"
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
											<span
												style="<c:choose>
							                 <c:when test="${not empty product.wine}">
							                     <c:choose>
							                         <c:when test="${product.wine eq '레드'}">background: #E0D8EA;</c:when>
							                         <c:when test="${product.wine eq '화이트'}">background: #F6EC9C;</c:when>
							                         <c:when test="${product.wine eq '로제'}">background: #EEC1CC;</c:when>
							                         <c:when test="${product.wine eq '스파클링'}">background: #E0EBF8;</c:when>
							                         <c:when test="${product.wine eq '주정강화'}">background: #E1D5CA;</c:when>
							                         <c:when test="${product.wine eq '디저트'}">background: #D7F9E2;</c:when>
							                     </c:choose>
							                 </c:when>
							                 <c:otherwise>display:none;</c:otherwise>
							             </c:choose>">${product.wine }</span>

											<span
												style="<c:choose>
											<c:when test="${not empty product.country }">
												<c:choose>
										   			<c:when test="${product.wine eq '레드'}">background: #E0D8EA</c:when>
		   											<c:when test="${product.wine eq '화이트'}">background: #F6EC9C</c:when>
		   											<c:when test="${product.wine eq '로제'}">background: #EEC1CC</c:when>
		   											<c:when test="${product.wine eq '스파클링'}">background: #E0EBF8</c:when>
		   											<c:when test="${product.wine eq '주정강화'}">background: #E1D5CA</c:when>
		   											<c:when test="${product.wine eq '디저트'}">background: #D7F9E2</c:when>
		   										</c:choose>
	   										</c:when>
						                 	<c:otherwise>display:none;</c:otherwise>
										</c:choose>">${product.country }</span>

											<span
												style="<c:choose>
											<c:when test="${not empty product.grapeVariety }">
												<c:choose>
										   			<c:when test="${product.wine eq '레드'}">background: #E0D8EA</c:when>
		   											<c:when test="${product.wine eq '화이트'}">background: #F6EC9C</c:when>
		   											<c:when test="${product.wine eq '로제'}">background: #EEC1CC</c:when>
		   											<c:when test="${product.wine eq '스파클링'}">background: #E0EBF8</c:when>
		   											<c:when test="${product.wine eq '주정강화'}">background: #E1D5CA</c:when>
		   											<c:when test="${product.wine eq '디저트'}">background: #D7F9E2</c:when>
	   											</c:choose>
   											</c:when>
						                 	<c:otherwise>display:none;</c:otherwise>
										</c:choose>">${product.grapeVariety }</span>
										</div>
										<div class="price_area">
											<p class="price">
												<c:if test="${product.discountRate > 0 }">
													<em class="discount">${product.discountRate }%</em>
													<del>${product.fullPrice }원</del>
													<ins>
														<fmt:formatNumber
															value="${(product.fullPrice - (product.fullPrice * product.discountRate / 100))}"
															type="number" />
														원
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
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>