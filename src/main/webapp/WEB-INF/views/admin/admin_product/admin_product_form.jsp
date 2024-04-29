<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="ko">
<head>
<body>
<%@ include file="../admin_common/admin_header.jsp"%>
<script src="js/admin_product.js"></script>
<div id="wrapper">
	<div id="snb">
		<div class="snb_header ico_config">
			<h2><i class="ionicons ion-bag"></i>상품관리</h2>
		</div>
		<dl>
			<dt class="g10 menu_toggle">상품관리</dt>
			<dd class="g10 active">
				<a href="admin_product_lists.do">전체 상품관리</a>
			</dd>
			<dd class="g10">
				<a href="admin_product_review.do">상품 리뷰관리<em>0</em></a>
			</dd>
			<dd class="g10">
				<a href="admin_product_category.do">카테고리 관리<em>0</em></a>
			</dd>
		</dl>
	</div>
	<div id="content">
		<div class="breadcrumb">
			<span>HOME</span> 
			<i class="ionicons ion-ios-arrow-right"></i>
			 상품관리 
			<i class="ionicons ion-ios-arrow-right"></i> 
			신규 상품등록		
		</div>
	<div class="s_wrap">
		<h1>신규 상품등록</h1>
	<form name="fregform" method="post" enctype="MULTIPART/FORM-DATA" action="admin_product_form.do">
		<section id="anc_sitfrm_cate">
			<h2>상품설정</h2>
			<div class="local_desc02 local_desc">
				<p>등록하실 상품 종류를 선택하셔야 합니다.</p>
			</div>
	<div class="tbl_frm02">
		<table>
			<colgroup>
			<col class="w180">
			<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">상품 선택</th>
					<td>
						<label><input class="wine_choice" type="radio" name="option" value="Y" checked="checked"> 와인</label>
						<label><input class="other_choice" type="radio" name="option" value="Y"> 액세서리</label>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="wine_select">
	<h2>메인 카테고리</h2>
	<div class="local_desc02 local_desc">
		<p>메인 카테고리에 <span class="fc_084">최소 1개 이상의 카테고리는</span> 등록하셔야 합니다.</p>
	</div>
	<div class="tbl_frm02">
		<table>
			<tbody>
				<tr>
				<th scope="row">카테고리 선택</th>
				<td>
					<div class="sub_frm01">
				<table>
				<tr>
					<td class="w20p bg1">
						<select id="wine_category1" name="wine" size="10" class="multiple-select">
							<option selected="selected" value="">=와인선택=</option>
							<option value="레드">레드</option>
							<option value="화이트">화이트</option>
							<option value="로제">로제</option>
							<option value="스파클링">스파클링</option>
							<option value="주정강화">주정강화</option>
						</select>
					</td>
					<td class="w20p bg1">
						<select id="wine_category2" name="country" size="10" class="multiple-select">
							<option selected="selected" value="">=원산지선택=</option>
							<option value="프랑스">프랑스</option>
							<option value="이탈리아">이탈리아</option>
							<option value="스페인">스페인</option>
							<option value="독일">독일</option>
							<option value="미국">미국</option>
							<option value="칠레">칠레</option>
							<option value="아르헨티나">아르헨티나</option>
							<option value="호주">호주</option>
						</select>
					</td>
					<td class="w20p bg1">
						<select id="wine_category3" name="grapeVariety" size="10" class="multiple-select">
						<option selected="selected" value="">=품종선택=</option>
							<option value="카베르네 소비뇽">카베르네 소비뇽</option>
							<option value="쉬라즈">쉬라즈</option>
							<option value="메를로">메를로</option>
							<option value="카베르네 프랑">카베르네 프랑</option>
							<option value="템프라니요">템프라니요</option>
							<option value="피노 누아">피노 누아</option>
							<option value="말벡">말벡</option>
							<option value="진판델">진판델</option>
							<option value="산지오베제">산지오베제</option>
							<option value="가메">가메</option>
							<option value="네비올로">네비올로</option>
							<option value="카르메네르">카르메네르</option>
							<option value="그르나슈">그르나슈</option>
							<option value="몬테풀치아노">몬테풀치아노</option>
							<option value="바르베라">바르베라</option>
							<option value="샤르도네">샤르도네</option>
							<option value="세미용">세미용</option>
							<option value="소비뇽 블랑">소비뇽 블랑</option>
							<option value="리슬링">리슬링</option>
							<option value="슈냉 블랑">슈냉 블랑</option>
							<option value="모스카토">모스카토</option>
							<option value="피노그리">피노그리</option>
							<option value="비오니에">비오니에</option>
							<option value="게뷔르츠트라미너">게뷔르츠트라미너</option>
							<option value="그뤼너 펠트리너">그뤼너 펠트리너</option>
							<option value="베르데호">베르데호</option>
							<option value="알리고떼">알리고떼</option>
							<option value="기타">기타</option>
						</select>
					</td>
				</tr>
				</table>
			</div>
		<tr>
		<th scope="row">와인선택<br><span>원산지선택</span><br><span>품종선택</span></th>
		<td>
			<div class="wine_category_all">
			<span class="wine_category_select1"></span>
			<br/>
			<span class="wine_category_select2"></span>
			<br/>
			<span class="wine_category_select3"></span>
			</div>
		</td>
	</tr>
	</tbody>
	</table>
</div>
<h2>세부 카테고리</h2>
<div class="local_desc02 local_desc">
	<p>해당 카테고리는 선택사항 입니다.</p>
</div>
<div class="tbl_frm02">

				
	<table>
	<colgroup>
		<col class="w180">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">바디</th>
		<div class="sub_frm01">
			<td>
				<label><input type="radio" name="body" checked="checked" value=""> 없음</label>
				<label><input type="radio" name="body" value="가벼움"> 가벼움</label>
				<label><input type="radio" name="body" value="약간가벼움"> 약간가벼움</label>
				<label><input type="radio" name="body" value="중간"> 중간</label>
				<label><input type="radio" name="body" value="약간무거움"> 약간무거움</label>
				<label><input type="radio" name="body" value="무거움"> 무거움</label>
			</td>
		</div>
	</tr>
	<tr>
		<th scope="row">산도</th>
		<div class="sub_frm01">
			<td>
				<label><input type="radio" name="acidity" checked="checked" value=""> 없음</label>
				<label><input type="radio" name="acidity" value="낮음"> 낮음</label>
				<label><input type="radio" name="acidity" value="약간낮음"> 약간낮음</label>
				<label><input type="radio" name="acidity" value="중간"> 중간</label>
				<label><input type="radio" name="acidity" value="약간높음"> 약간높음</label>
				<label><input type="radio" name="acidity" value="높음"> 높음</label>
			</td>
		</div>
	</tr>
	<tr>
		<th scope="row">타닌</th>
		<div class="sub_frm01">
			<td>
				<label><input type="radio" name="tannins" checked="checked" value=""> 없음</label>
				<label><input type="radio" name="tannins" value="약함"> 약함</label>
				<label><input type="radio" name="tannins" value="약간약함"> 약간약함</label>
				<label><input type="radio" name="tannins" value="중간"> 중간</label>
				<label><input type="radio" name="tannins" value="약간강함"> 약간강함</label>
				<label><input type="radio" name="tannins" value="강함"> 강함</label>
			</td>
		</div>
	</tr>
	<tr>
		<th scope="row">알콜</th>
		<div class="sub_frm01">
			<td>
				<label><input type="radio" name="alcohol" checked="checked" value=""> 없음</label>
				<label><input type="radio" name="alcohol" value="낮음(~11%)"> 낮음(~11%)</label>
				<label><input type="radio" name="alcohol" value="중간(12~13%)"> 중간(12~13%)</label>
				<label><input type="radio" name="alcohol" value="높음(14%+)"> 높음(14%+)</label>
			</td>
		</div>
	</tr>
	<tr>
		<th scope="row">당도</th>
		<div class="sub_frm01">
			<td>
				<label><input type="radio" name="sweetNess" checked="checked" value=""> 없음</label>
				<label><input type="radio" name="sweetNess" value="드라이"> 드라이</label>
				<label><input type="radio" name="sweetNess" value="미디움드라이"> 미디움드라이</label>
				<label><input type="radio" name="sweetNess" value="미디엄"> 미디엄</label>
				<label><input type="radio" name="sweetNess" value="미디움스윗"> 미디움스윗</label>
				<label><input type="radio" name="sweetNess" value="스윗"> 스윗</label>
			</td>
		</div>
	</tr>
	</tbody>
	</table>
</div>
</div>
</section>
<section id="anc_sitfrm_ini">
<h2>기본정보</h2>
<div class="tbl_frm02">
	<table>
	<colgroup>
		<col class="w180">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">상품코드</th>
		<td>
			<input type="text" name="productCode" value="" required class="required frm_input">
					</td>
	</tr>
	<tr>
		<th scope="row">상품명</th>
		<td><input type="text" name="productName" value="" required class="required frm_input" size="80"></td>
	</tr>

		<tr class="item_img_fld">
		<th scope="row">이미지1 <span class="fc_197">(400 * 400)</span> <strong class="fc_red">[필수]</strong></th>
		<td>
			<div class="item_file_fld">
				<input type="file" name="imgUpload" required>
							</div>

		</td>
	</tr>
	<tr>
		<th scope="row">상세설명</th>
		<td><textarea id="memo" required name="productInfo" class="smarteditor2" maxlength="65536" style="width:100%"></textarea>
<span class="sound_only">웹 에디터 끝</span>		</td>
	</tr>
	</tbody>
	</table>
</div>
</section>

<h2>가격 및 재고</h2>
<div class="tbl_frm02">
	<table>
	<colgroup>
		<col class="w180">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">판매가격</th>
		<td>
			<input type="text" name="fullPrice" value="0" class="frm_input w80" > 원
			<span class="fc_197 marl5">해당 상품의 기본 판매가격</span>
		</td>
	</tr>
	<tr>
		<th scope="row">할인율</th>
		<td>
			<input type="text" name="discountRate" value="0" class="frm_input w50"> %
			<span class="fc_197 marl5">할인비율(1% 단위로 표시)</span>
		</td>
	</tr>
	<tr>
		<th scope="row">할인가격</th>
		<td>
			<input type="text" name="discountPrice" value="0" class="frm_input w80" > 원
			<span class="fc_197 marl5">할인 적용된 가격 (할인율 없을경우 비활성화)</span>
		</td>
	</tr>
	<tr>
		<th scope="row">수량</th>
		<td>
<!-- 			<input type="radio" name="stock" value="" id="ids_stock_mode1" checked="checked">
			<label for="ids_stock_mode1" class="marr10">무제한</label>
			<input type="radio" name="stock" value="" id="ids_stock_mode2">
			<label for="ids_stock_mode2">한정</label> -->
			<input type="text" name="stock" value="0" class="frm_input w80"> 개,
			<p class="fc_197 mart7">상품의 재고가 통보수량보다 작을 때 상품 재고관리에 표시됩니다.<br>옵션이 있는 상품은 개별 옵션의 통보수량이 적용됩니다. 설정이 무제한이면 재고관리에 표시되지 않습니다.</p>
		</td>
	</tr>
	</tbody>
	</table>
</div>





<div class="btn_confirm">
    <input type="submit" value="저장" class="btn_large" ></div>
</form>


</div>

</div>
</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

