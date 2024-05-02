<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<body>

<%@ include file="../common/common.jsp"%>

<section id="contents" style="margin-top: 188px;">
<div class="lnb product_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand" id="select_brand">
			<h2 class="my_value js_selectBtn">WINE</h2>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="img">
			<video width="100%" height="auto" autoplay="" muted="" loop="" playsinline="">
			<source src="images/wine.mp4">
			</video>
			<!-- <img src="images/shop/product/p_.jpg" alt="상단타이틀 이미지"> -->
			<!-- <img src="images/shop/product/p_.jpg" alt="상단타이틀 이미지"> -->
		</div>
		<div class="page_tit">
			<h2><span>WINE</span></h2>
		</div>
	</div>
</div>
<div class="wrap">
	<div class="wrap">
		<div class="content product product_lists_page search_product_lists_page">
			<div class="product_lists_wrap">
				<div class="line_map mb_hidden">
					<ul>
						<li onclick="location.href='/shop/main'" style="cursor: pointer;">HOME</li>
						<li>검색결과</li>
					</ul>
				</div>
				<div class="tab_area">
				</div>
				<div class="prd_search">
					<div class="search_info">
						<h2>${ productDTO.searchKeyword }</h2>
							        <p>검색어로 총 
							        	<span class="total_count_text">
								        	<c:choose>
										        <c:when test="${actionBtn == 'search'}">
										       	 	${maps.totalCountKeyword}
										        </c:when>
										        <c:otherwise>
										        	${maps.totalCount}
										        </c:otherwise>
										    </c:choose>
							        	</span>개의 상품검색
							        </p>
					</div>
					<form action="/search_product_list.do" id="searchForm" method="get">
						<div class="search_box">
							<input type="text" name="searchKeyword" placeholder="검색어를 입력해주세요.">
							<button type="submit" name="action_btn" value="search"><span>검색</span></button>
						</div>
					</form>
				</div>
				<div class="prd_list_area">
					<div class="search_result">
						<div class="second_order">
							<select name="js_select" id="js_select" class="">
								<option value="C">높은 가격순</option>
								<option value="B">낮은 가격순</option>
								<option value="D">판매량순</option>
								<option value="A">최신순</option>
							</select>
						</div>
						<p class="result">
						    총 <span class="total_count_text">
						    <c:choose>
						        <c:when test="${actionBtn == 'search'}">
						       	 	${maps.totalCountKeyword}
						        </c:when>
						        <c:otherwise>
						        	${maps.totalCount}
						        </c:otherwise>
						    </c:choose>
						    </span>개의 상품
						</p>
					</div>
					<ul class="n_prd_list" id="product_ul">
						<c:forEach items="${productList }" var="row" varStatus="loop"> 
						<li>
						<div class="item">
							<div class="main_img" style="background:#E0D8EA">
								<a href="/shop/product/product_view?product_cd=03R032" class="prd_img table_box">
								<picture>
								<!--[if IE 9]><video style="display: none;"><![endif]-->
								<source srcset="uploads/product/200/${row.productImg }" media="(min-width:1024px)">
								<!-- pc이미지 -->
								<source srcset="uploads/product/200/${row.productImg }" media="(max-width:1023px)">
								<!-- mb이미지 -->
								<!--[if IE 9]></video><![endif]-->
								<img src="uploads/product/200/${row.productImg }" loading="lazy" alt="">
								<!-- pc이미지 -->
								</picture>
								</a>
								<div class="btn">
									<button type="button" class="wish wish_03R032 " id="wish_03R032" onclick="product.likeProduct('03R032');"><span>찜하기</span></button>
								</div>
								<div class="label_wrap">
								</div>
							</div>
							<div class="info">
								<div class="more_info">
									<p class="prd_name">
										<a href="/shop/product/product_view?product_cd=03R032"><span>${row.productName }</span><span>${row.productName_EN }</span></a>
									</p>
									<p class="prd_info">
										${ row.productInfo }
									</p>
								</div>
								<div class="cate_label">
									<span style="background:#E0D8EA">${row.wine }</span><span style="background:#E0D8EA">${row.country }</span><span style="background:#E0D8EA">${row.grapeVariety }</span>
								</div>
								<div class="price_area">
									<p class="price">
										<!-- 할인가 -->
										<em class="discount">${row.discountRate }%</em>
										<del>${row.fullPrice }원</del>
										<ins>${row.discountPrice }원</ins>
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
	</div>
	<form action="https://www.winenara.com/shop/product/search_product_lists" id="ListForm" name="ListForm" method="post" accept-charset="utf-8">
		<input type="hidden" name="witplus_csrf_token" value="6a98aef25cacfccb97c6b7fddfd4ef78">
		<input type="hidden" name="page" id="page" value="3">
		<input type="hidden" name="mode" id="mode" value="">
		<input type="hidden" name="keyword" id="keyword" value="셀러스">
		<input type="hidden" name="sh_sort_order_by" id="sh_sort_order_by" value="A">
	</form>
</div>
</section>

<%@ include file="../common/footer.jsp"%>
</body>
</html>