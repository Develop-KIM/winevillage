<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
						<h2>WINE</h2>
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
							<p class="result" id="total_count_text">394개의 상품</p>
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
						<c:forEach items="${products }" var="product">
							<li>
								<div class="item">
									<div class="main_img" style="background: #E0D8EA">
										<a href="product_view9f82.html?product_cd=03T999"
											class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
											<source
												srcset="/uploads/product/200/${productImg }"
												media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source
												srcset="/uploads/product/200/${productImg }"
												media="(max-width:1023px)">
											<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
												src="../../uploads/product/200/${productiImg }"
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
												<a href="product_view9f82.html?product_cd=03T999">
												<span>
												${product.productName }
												</span><span class="en"></span></a>
											</p>
										</div>
										<div class="cate_label">
											<span style="background: #E0D8EA">${product.wine }</span> <span
												style="background: #E0D8EA">${product.contry }</span>
										</div>
										<div class="price_area">
											<p class="price">
												<!-- 할인가 -->
												<em class="discount">${product.discountRate }%</em>
												<del>${product.fullprice }원</del>
												<ins></ins>
											</p>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>

				<div class="pagination">
					<a
						href="product_lists9852.html?sh_category1_cd=10000&amp;sh_category2_cd=10100"
						data-ci-pagination-page="1" rel="start" class="">&lt;&lt;</a><a
						href="product_lists9852.html?sh_category1_cd=10000&amp;sh_category2_cd=10100"
						data-ci-pagination-page="1" rel="prev" class="">&lt;</a><span
						class="page"><a href="#self" class="on">1</a><a
						href="product_lists1c12.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=2"
						data-ci-pagination-page="2">2</a><a
						href="product_listsaa3a.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=3"
						data-ci-pagination-page="3">3</a><a
						href="product_lists3ad3.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=4"
						data-ci-pagination-page="4">4</a><a
						href="product_listse51b.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=5"
						data-ci-pagination-page="5">5</a><a
						href="product_listsef68.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=6"
						data-ci-pagination-page="6">6</a><a
						href="product_lists79f4.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=7"
						data-ci-pagination-page="7">7</a><a
						href="product_lists0a8d.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=8"
						data-ci-pagination-page="8">8</a><a
						href="product_lists3972.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=9"
						data-ci-pagination-page="9">9</a><a
						href="product_listsb188.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=10"
						data-ci-pagination-page="10">10</a></span><a
						href="product_lists1c12.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=2"
						data-ci-pagination-page="2" rel="next" class="">&gt;</a><a
						href="product_lists0783.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=16"
						data-ci-pagination-page="16" class="">&gt;&gt;</a>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>