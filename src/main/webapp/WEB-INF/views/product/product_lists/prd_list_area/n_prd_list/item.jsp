<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="item">
	<%-- 이미지 영역 --%>
	<%-- 레드 --%>
	<div class="main_img" style="background:#E0D8EA">
	
	<%-- 화이트 --%>
	<!-- <div class="main_img" style="background:#F6EC9C"> -->
	<%-- 로제 --%>
	<!-- <div class="main_img" style="background:#EEC1CC"> -->
	<%-- 스파클링 --%>
	<!-- <div class="main_img" style="background:#E0EBF8"> -->
	<%-- 주정강화 --%>
	<!-- <div class="main_img" style="background:#E1D5CA"> -->
	<%-- 디저트 --%>
	<!-- <div class="main_img" style="background:#D7F9E2"> -->
	<%-- 위스키 --%>
	<!-- <div class="main_img" style="background:#F5F5F5"> -->
	<%-- 꼬냑 --%>
	<!-- <div class="main_img" style="background:#FFF2D3"> -->
	<%-- 데킬라 --%>
	<!-- <div class="main_img" style="background:#FCD5BE"> -->
	<%-- 진 --%>
	<!-- <div class="main_img" style="background:#CBE9F4"> -->
	<%-- 럼 --%>
	<!-- <div class="main_img" style="background:#EDF8DA"> -->
	<%-- 시음행사 --%>
	<!-- <div class="main_img" style="background:#FFF"> -->
	
		<%-- 상품이미지 표시 --%>
		<a href="/shop/product/product_view?product_cd=03T664" class="prd_img table_box">
			<picture>
				<!--[if IE 9]><video style="display: none;"><![endif]-->
				<source srcset="/uploads/product/200/58455e65df70b6ce8f7e0b6da7074605.png" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="/uploads/product/200/58455e65df70b6ce8f7e0b6da7074605.png" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<!--[if IE 9]></video><![endif]-->
				<img src="/uploads/product/200/58455e65df70b6ce8f7e0b6da7074605.png" loading="lazy" alt="">
				<!-- pc이미지 -->
			</picture>
		</a>
		
		<%-- 찜하기 버튼 --%>
		<div class="btn">
			<button type="button" class="wish wish_03T664 " id="wish_03T664" onclick="product.likeProduct('03T664');"><span>찜하기</span></button>
		</div>
		
		<%-- 비비노 점수 --%>
		<!-- <p class="vivino">VIVINO<em>3.6</em></p> -->
		
		<%-- 라벨 (오른쪽 상단) --%>
		<div class="label_wrap">
			<%-- NEW 아이콘 --%>
			<span class="icon new">NEW</span>
			
			<%-- SALE 아이콘 --%>
			<!-- <span class="icon sale">SALE</span> -->
			
			<%-- BEST 아이콘 --%>
			<!-- <span class="icon best">BEST</span> -->
			
			<%-- SUMMER PICK 아이콘 --%>
			<!-- <span class="icon">
				<img src="/uploads/banner/3f2ed8fb9d5523e331a3f40f5102b463.png" alt="여름">
			</span> -->
		</div>
	</div>
	
	<%-- 제품정보 영역 --%>
	<div class="info">
	
		<%-- 제품설명 --%>
		<div class="more_info">
			<p class="prd_name">
				<a href="/shop/product/product_view?product_cd=03T664">
					<span>1000스토리즈 카베르네소비뇽</span>
					<span class="en">1000STORIES CABERNET SAUVIGNON</span>
				</a>
			</p>
			<p class="prd_info">
				배럴 숙성을 통해 더해진 이 와인만의 독특한 특징인 버번의 뉘앙스를 표현한 카베르네 소비뇽
			</p>
		</div>
		
		<%-- 해시태그, 라벨 --%>
		<div class="cate_label">
			<span style="background:#E0D8EA">레드</span>
			<span style="background:#E0D8EA">미국</span>
			<span style="background:#E0D8EA">카베르네 소비뇽</span>
		</div>
		
		<%-- 가격 --%>
		<div class="price_area">
			<%-- 할인가 --%>
			<p class="price">
				<!-- 할인가 -->
				<em class="discount">50%</em>
				<del>60,000원</del>
				<ins>29,900원</ins>
			</p>
			
			<%-- 할인가 X --%>
			<!-- <p class="price">
				할인가
				<ins>30,000원</ins>
			</p> -->
			
			<%-- n병 구매시 --%>
			<!-- <p class="price set">
				n병 구매시
				<span class="regular_price price">
					<em class="discount">50%</em>
					<del>60,000원</del>
					<ins>29,900원</ins>
				</span>
				<em class="discount">53%</em>
				<i>3병 이상 구매시</i>
				<ins>28,400원</ins>
			</p> -->
		</div>
	</div>
</div>