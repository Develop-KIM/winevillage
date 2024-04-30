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
					<a href="admin_product_lists.do">
						전체 상품관리</a>
				</dd>
				<dd class="g10">
					<a href="admin_product_review.do">
						상품 리뷰관리
						<em>0</em>
					</a>
				</dd>
				<dd class="g10">
					<a href="admin_product_category.do">
						카테고리 관리
						<em>0</em>
					</a>
				</dd>
			</dl>
		</div>
		<div id="content">
			<div class="breadcrumb">
				<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 상품관리 <i class="ionicons ion-ios-arrow-right"></i>
				전체 상품관리
			</div>

			<div class="s_wrap">
				<h1>전체 상품관리</h1>

				<script type="text/javascript" src="js/jquery-ui.min.js"></script>
				<script>
					jQuery(function ($) {
						$.datepicker.regional["ko"] = {
							closeText: "닫기",
							prevText: "이전달",
							nextText: "다음달",
							currentText: "오늘",
							monthNames: ["1월(JAN)", "2월(FEB)", "3월(MAR)", "4월(APR)", "5월(MAY)", "6월(JUN)", "7월(JUL)", "8월(AUG)", "9월(SEP)", "10월(OCT)", "11월(NOV)", "12월(DEC)"],
							monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
							dayNames: ["일", "월", "화", "수", "목", "금", "토"],
							dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
							dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
							weekHeader: "Wk",
							dateFormat: "yymmdd",
							firstDay: 0,
							isRTL: false,
							showMonthAfterYear: true,
							yearSuffix: ""
						};
						$.datepicker.setDefaults($.datepicker.regional["ko"]);
					});
				</script>
				<h2>기본검색</h2>
				<form name="searchField" id="fsearch" method="get">
					<input type="hidden" name="code" value="list">
					<div class="tbl_frm01">
						<table class="tablef">
							<colgroup>
								<col class="w100">
								<col>
								<col class="w100">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">검색어</th>
									<td colspan="3">
										<select name="searchField">
											<option value="productName">상품명</option>
											<option value="productCode">상품코드</option>
										</select>
										<input type="text" name="searchKeyword" value="" class="frm_input" size="30">
									</td>
								</tr>
<!-- 								<tr>
								<th scope="row">상품선택</th>
								<td colspan="3">
								<label><input class="wine_choice" type="radio" name="option" value="액세서리" checked="checked"> 와인</label>
								<label><input class="other_choice" type="radio" name="option" value="와인"> 액세서리</label>
								</td>
								</tr> -->
								<tr>
									<th scope="row">카테고리</th>
									<td colspan="3">
								<div class="wine_select">
										
										<select id="wine_category1" name="wine">
											<option value="">=와인선택=</option>
											<option value="레드">레드</option>
											<option value="화이트">화이트</option>
											<option value="로제">로제</option>
											<option value="스파클링">스파클링</option>
											<option value="주정강화">주정강화</option>
										</select>
										<select id="wine_category2" name="country">
											<option value="">=원산지선택=</option>
												<option value="프랑스">프랑스</option>
												<option value="이탈리아">이탈리아</option>
												<option value="스페인">스페인</option>
												<option value="독일">독일</option>
												<option value="미국">미국</option>
												<option value="칠레">칠레</option>
												<option value="아르헨티나">아르헨티나</option>
												<option value="호주">호주</option>
										</select>
										<select id="wine_category3" name="grapeVariety">
											<option value="">=품종선택=</option>
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
										</div>
										<script>
											$(function () {
												$("#sel_ca1").multi_select_box("#sel_ca", 5, tb_admin_url + "/ajax.category_select_json.php", "=카테고리선택=");
												$("#sel_ca2").multi_select_box("#sel_ca", 5, tb_admin_url + "/ajax.category_select_json.php", "=카테고리선택=");
												$("#sel_ca3").multi_select_box("#sel_ca", 5, tb_admin_url + "/ajax.category_select_json.php", "=카테고리선택=");
												$("#sel_ca4").multi_select_box("#sel_ca", 5, tb_admin_url + "/ajax.category_select_json.php", "=카테고리선택=");
												$("#sel_ca5").multi_select_box("#sel_ca", 5, "", "=카테고리선택=");
											});
										</script>
									</td>
								</tr>
								<!-- <tr>
									<th scope="row">기간검색</th>
									<td colspan="3">
										<select name="q_date_field" id="q_date_field">
											<option value="update_time">최근수정일</option>
											<option value="reg_time">최초등록일</option>
										</select>
										<label for="fr_date" class="sound_only">시작일</label>
										<input type="text" name="fr_date" value="" id="fr_date" class="frm_input w80" maxlength="10">
										~
										<label for="to_date" class="sound_only">종료일</label>
										<input type="text" name="to_date" value="" id="to_date" class="frm_input w80" maxlength="10">
										<span class="btn_group"><input type="button" onclick="search_date('fr_date','to_date',this.value);"
												class="btn_small white" value="오늘"><input type="button"
												onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="어제"><input
												type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white"
												value="일주일"><input type="button" onclick="search_date('fr_date','to_date',this.value);"
												class="btn_small white" value="지난달"><input type="button"
												onclick="search_date('fr_date','to_date',this.value);" class="btn_small white"
												value="1개월"><input type="button" onclick="search_date('fr_date','to_date',this.value);"
												class="btn_small white" value="3개월"><input type="button"
												onclick="search_date('fr_date','to_date',this.value);" class="btn_small white"
												value="전체"></span>
									</td>
								</tr> -->
								<!-- <tr>
									<th scope="row">상품재고</th>
									<td>
										<select name="q_stock_field" id="q_stock_field">
											<option value="stock_qty">재고수량</option>
											<option value="noti_qty">통보수량</option>
										</select>
										<label for="fr_stock" class="sound_only">재고수량 시작</label>
										<input type="text" name="fr_stock" value="" id="fr_stock" class="frm_input" size="6"> 개 이상 ~
										<label for="to_stock" class="sound_only">재고수량 끝</label>
										<input type="text" name="to_stock" value="" id="to_stock" class="frm_input" size="6"> 개 이하
									</td>
									<th scope="row">상품가격</th>
									<td>
										<select name="q_price_field" id="q_price_field">
											<option value="goods_price">판매가격</option>
											<option value="supply_price">공급가격</option>
											<option value="normal_price">시중가격</option>
											<option value="gpoint">포인트</option>
										</select>
										<label for="fr_price" class="sound_only">상품가격 시작</label>
										<input type="text" name="fr_price" value="" id="fr_price" class="frm_input" size="6"> 원 이상 ~
										<label for="to_price" class="sound_only">상품가격 끝</label>
										<input type="text" name="to_price" value="" id="to_price" class="frm_input" size="6"> 원 이하
									</td>
								</tr> -->
							</tbody>
						</table>
					</div>
					<div class="btn_confirm">
						<input type="submit" value="검색" class="btn_medium">
						<input type="button" value="초기화" id="frmRest" class="btn_medium grey">
					</div>
				</form>

				<form id="fgoodslist" method="post" action="admin_product_delete.do"
					onsubmit="return fgoodslist_submit(this);">
<!-- 					<input type="hidden" name="q1" value="code=list">
					<input type="hidden" name="page" value="1"> -->

					<div class="local_ov mart30">
						전체 : <b class="fc_red">10</b> 건 조회
						<span class="ov_a">
							<select id="page_rows" onchange="location='admin_product_lists.do?pageNum='+this.value;">
								<option value="30" selected="selected">10줄 정렬</option>
								<option value="50">30줄 정렬</option>
								<option value="100">50줄 정렬</option>
							</select>
						</span>
					</div>
					<div class="local_frm01">
						<input type="button" name="act_button" value="선택삭제" class="btn_lsmall bx-white"
							onclick="location.href='admin_product_delete.do?procuct=${product.productNo}'">
							<!-- onclick="document.pressed=this.value" -->
						<a href="./goods/goods_list_excel.php?code=list" class="btn_lsmall bx-white"><i
								class="fa fa-file-excel-o"></i> 엑셀저장</a>
						<a href="admin_product_form.do" class="fr btn_lsmall red"><i class="ionicons ion-android-add"></i> 상품등록</a>
					</div>

					<div class="tbl_head02">
						<table id="sodr_list" class="tablef">
							<colgroup>
								<col class="w50">
								<col class="w50">
								<col class="w60">
								<col class="w80">
								<col class="w180">
								<col class="w180">
								<col class="w180">
								<col class="w80">
								<col class="w80">
								<col class="w90">
								<col class="w90">
								<col class="w90">
								<col class="w60">
								<col class="w60">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" rowspan="2">
									<input type="checkbox" name="chkall" value="1"
											onclick="check_all(this.form);"></th>
									<th scope="col" rowspan="2">번호</th>
									<th scope="col" rowspan="2">이미지</th>
									<th scope="col" rowspan="2">상품코드</th>
									<th scope="col" colspan="3">상품정보</th>
									<th scope="col" rowspan="2">등록일자</th>
									<th scope="col" rowspan="2" colspan="1">재고</th>
									<th scope="col" colspan="4" class="th_bg">가격정보</th>
									<th scope="col" colspan="1" rowspan="2">관리</th>
								</tr>
								<tr class="rows">
									<th scope="col">상품명</th>
									<th scope="col">카테고리</th>
									<th scope="col">알코올/바디/산도/탄닌/당도</th>
									<th scope="col" colspan="1" class="th_bg"><p>판매가</p></th>
									<th scope="col" colspan="1" class="th_bg"><p>할인율</p></th>
									<th scope="col" colspan="1" class="th_bg"><p>할인가</p></th>
									<th scope="col" colspan="1" class="th_bg"><p>포인트</p></th>
								</tr>
							</thead>
							<tbody>
							<c:choose>
								<c:when test="${ empty lists }">
									<tr>
										<td colspan="5" align="center">
										등록된 상품이 없습니다.
										</td>
									</tr>
								</c:when>
								<c:otherwise>
									<tbody>
									<c:forEach items="${ lists }" var="item" varStatus="loop">
								<tr class="list0">
									<td rowspan="1">
										<input type="hidden" name="gs_id[0]" value="21">
										<input type="checkbox" name="chk[]" value="0">
									</td>
									<td rowspan="1">${maps.totalCount - (((maps.pageNum-1) * maps.pageSize) + loop.index) }</td>
									<td rowspan="1"><a href="/"> <img
												src="../Uploads/product/200/${item.productImg }"
												width="40" height="40"> </a></td>
 									<td>${item.productCode}</td>
									<td colspan="1" class="tal">${item.productName }</td>
									<td colspan="1" class="tal">${item.wine}/${item.country}/${item.grapeVariety }</td>
									<td colspan="1" class="tal">${item.alcohol}/${item.body}/${item.acidity }/${item.tannins }/${item.sweetNess }</td>
									<td>${item.registerDate }</td>
									<td>${item.stock }</td>
									<td rowspan="1" colspan="1" class="tar">${item.fullPrice}</td>
									<td rowspan="1" colspan="1" class="tar">${item.discountRate }%</td>
									<td rowspan="1" colspan="1" class="tar">${item.discountPrice }</td>
									<input type="hid-den" name="productNo" value="${item.productNo }">
									<td rowspan="1" colspan="1"><button type="submit" class="btn_small">삭제</button></td>
									<td rowspan="1" colspan="1"><a href="admin_product_edit.do?productNo=${item.productNo }" class="btn_small">수정</a>
									</td>
								</tr>
									</c:forEach>
							</tbody>
								</c:otherwise>
							</c:choose>
						</table>
					</div>
				</form>

				<div class="paging" style="display: flex; justify-content: center; align-items: center;">
					<p>
						${ pagingImg }
					</p>
				</div>
				<script>
					function fgoodslist_submit(f) {
						if (!is_checked("chk[]")) {
							alert(document.pressed + " 하실 항목을 하나 이상 선택하세요.");
							return false;
						}

						if (document.pressed == "선택삭제") {
							if (!confirm("선택한 자료를 정말 삭제하시겠습니까?")) {
								return false;
							}
						}

						return true;
					}

					$(function () {
						// 날짜 검색 : TODAY MAX값으로 인식 (maxDate: "+0d")를 삭제하면 MAX값 해제
						$("#fr_date,#to_date").datepicker({ changeMonth: true, changeYear: true, dateFormat: "yy-mm-dd", showButtonPanel: true, yearRange: "c-99:c+99", maxDate: "+0d" });
					});
				</script>
			</div>

		</div>
	</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

