<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="ko">
<head>
<body>
<%@ include file="../admin_common/admin_header.jsp"%>
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
				<form name="fsearch" id="fsearch" method="get">
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
										<select name="sfl">
											<option value="gname">상품명</option>
											<option value="gcode">상품코드</option>
											<option value="mb_id">업체코드</option>
											<option value="maker">제조사</option>
											<option value="origin">원산지</option>
											<option value="model">모델명</option>
											<option value="explan">짧은설명</option>
										</select>
										<input type="text" name="stx" value="" class="frm_input" size="30">
									</td>
								</tr>
								<tr>
									<th scope="row">카테고리</th>
									<td colspan="3">
										<select id="sel_ca1" name="sel_ca1">
											<option value="">=카테고리선택=</option>
											<option value="001">와인</option>
											<option value="002">액세서리</option>
										</select>
										<select id="sel_ca2" name="sel_ca2">
											<option value="">=카테고리선택=</option>
											<option value="001">레드</option>
											<option value="002">화이트</option>
											<option value="003">로제</option>
										</select>
										<select id="sel_ca3" name="sel_ca3">
											<option value="">=카테고리선택=</option>
											<option value="001">프랑스</option>
											<option value="002">이탈리아</option>
											<option value="003">스페인</option>
											<option value="004">독일</option>
										</select>

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
								<tr>
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
								</tr>
								<tr>
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
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btn_confirm">
						<input type="submit" value="검색" class="btn_medium">
						<input type="button" value="초기화" id="frmRest" class="btn_medium grey">
					</div>
				</form>

				<form name="fgoodslist" id="fgoodslist" method="post" action="./goods/goods_list_update.php"
					onsubmit="return fgoodslist_submit(this);">
					<input type="hidden" name="q1" value="code=list">
					<input type="hidden" name="page" value="1">

					<div class="local_ov mart30">
						전체 : <b class="fc_red">10</b> 건 조회
						<span class="ov_a">
							<select id="page_rows" onchange="location='/admin/goods.php?code=list&page=1&page_rows='+this.value;">
								<option value="30" selected="selected">30줄 정렬</option>
								<option value="50">50줄 정렬</option>
								<option value="100">100줄 정렬</option>
								<option value="150">150줄 정렬</option>
							</select>
						</span>
					</div>
					<div class="local_frm01">
						<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white"
							onclick="document.pressed=this.value">
						<input type="submit" name="act_button" value="선택순위수정" class="btn_lsmall bx-white"
							onclick="document.pressed=this.value">
						<input type="submit" name="act_button" value="선택상품복사" class="btn_lsmall bx-white"
							onclick="document.pressed=this.value">
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
								<col class="w120">
								<col>
								<col>
								<col class="w80">
								<col class="w80">
								<col class="w90">
								<col class="w90">
								<col class="w90">
								<col class="w90">
								<col class="w60">
								<col class="w60">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" rowspan="2"><input type="checkbox" name="chkall" value="1"
											onclick="check_all(this.form);"></th>
									<th scope="col" rowspan="2">번호</th>
									<th scope="col" rowspan="2">이미지</th>
									<th scope="col" rowspan="2"><a href="/admin/goods.php?code=list&page=&filed=gcode&orderby=asc">상품코드</a></th>
									<th scope="col" colspan="2"><a href="/admin/goods.php?code=list&page=&filed=gname&orderby=asc">상품정보</a>
									</th>
									<th scope="col" colspan="2"><a href="/admin/goods.php?code=list&page=&filed=reg_time&orderby=asc">등록일자</a></th>
									<th scope="col" rowspan="2" colspan="1">재고</th>
									<th scope="col" colspan="4" class="th_bg">가격정보</th>
									<th scope="col" colspan="1" rowspan="2">관리</th>
								</tr>
								<tr class="rows">
									<th scope="col">상품명</th>
									<th scope="col">카테고리</th>
									<th scope="col"><a href="/admin/goods.php?code=list&page=&filed=reg_time&orderby=asc">최초등록일</a></th>
									<th scope="col"><a href="/admin/goods.php?code=list&page=&filed=reg_time&orderby=asc">최근수정일</a></th>
									<!-- <th scope="col"><a href="/admin/goods.php?code=list&page=&filed=isopen&orderby=asc">진열</a></th>
									<th scope="col"><a href="/admin/goods.php?code=list&page=&filed=stock_qty&orderby=asc">재고</a></th> -->
									<th scope="col" colspan="1" class="th_bg"><a
											href="/admin/goods.php?code=list&page=&filed=goods_price&orderby=asc">판매가</a></th>
									<th scope="col" colspan="1" class="th_bg"><a
											href="/admin/goods.php?code=list&page=&filed=goods_price&orderby=asc">할인율</a></th>
									<th scope="col" colspan="1" class="th_bg"><a
											href="/admin/goods.php?code=list&page=&filed=gpoint&orderby=asc">할인가</a></th>
									<th scope="col" colspan="1" class="th_bg"><a
											href="/admin/goods.php?code=list&page=&filed=gpoint&orderby=asc">포인트</a></th>
								</tr>
							</thead>
							<tbody>
								<tr class="list1">
									<td rowspan="2">
										<input type="hidden" name="gs_id[0]" value="21">
										<input type="checkbox" name="chk[]" value="0">
									</td>
									<td rowspan="2">10</td>
									<td rowspan="2"><a href="https://www.winenara.com/shop/product/product_view?product_cd=03U001" target="_blank"><img
												src="./images/admin/Diablo_Devil's.png"
												width="40" height="40"></a></td>
									<td>0000000010</td>
									<td colspan="1" class="tal">디아블로 데블스 카나발 카베르네</td>
									<td colspan="1" class="tal">와인/레드/칠레</td>
									<td>17-11-10</td>
									<td class="fc_00f">23-11-01</td>
									<td>무제한</td>
									<td rowspan="2" colspan="1" class="tar">14,900</td>
									<td rowspan="2" colspan="1" class="tar">10%</td>
									<td rowspan="2" colspan="1" class="tar">13,410</td>
									<td rowspan="2" colspan="1" class="tar">745</td>
									<td rowspan="2" colspan="1"><a href="./goods.php?code=form&w=u&gs_id=21&page=1&bak=list" class="btn_small">수정</a>
									</td>
									<tr class="list0">
									</tr>
								</tr>
								<tr class="list0">
									<td rowspan="2">
										<input type="hidden" name="gs_id[0]" value="21">
										<input type="checkbox" name="chk[]" value="0">
									</td>
									<td rowspan="2">09</td>
									<td rowspan="2"><a href="http://demofran.com/shop/view.php?index_no=21" target="_blank"><img
												src="./images/admin/Firriato.png"
												width="40" height="40"></a></td>
									<td>0000000009</td>
									<td colspan="1" class="tal">피리아토 끼아라몬테 샤르도네</td>
									<td colspan="1" class="tal">와인/화이트/이탈리아</td>
									<td>17-11-10</td>
									<td class="fc_00f">23-11-01</td>
									<td>무제한</td>
									<td rowspan="2" colspan="1" class="tar">36,000</td>
									<td rowspan="2" colspan="1" class="tar">10%</td>
									<td rowspan="2" colspan="1" class="tar">32,400</td>
									<td rowspan="2" colspan="1" class="tar">1,800</td>
									<td rowspan="2" colspan="1"><a href="./goods.php?code=form&w=u&gs_id=21&page=1&bak=list" class="btn_small">수정</a>
									</td>
									<tr class="list0">
									</tr>
								</tr>
								<tr class="list1">
									<td rowspan="2">
										<input type="hidden" name="gs_id[0]" value="21">
										<input type="checkbox" name="chk[]" value="0">
									</td>
									<td rowspan="2">08</td>
									<td rowspan="2"><a href="http://demofran.com/shop/view.php?index_no=21" target="_blank"><img
												src="./images/admin/wine_08.png"
												width="40" height="40"></a></td>
									<td>0000000008</td>
									<td colspan="1" class="tal">미누티 프레스티지</td>
									<td colspan="1" class="tal">와인/로제/프랑스</td>
									<td>17-11-10</td>
									<td class="fc_00f">23-11-01</td>
									<td>무제한</td>
									<td rowspan="2" colspan="1" class="tar">38,000</td>
									<td rowspan="2" colspan="1" class="tar">10%</td>
									<td rowspan="2" colspan="1" class="tar">34,200</td>
									<td rowspan="2" colspan="1" class="tar">1,900</td>
									<td rowspan="2" colspan="1"><a href="./goods.php?code=form&w=u&gs_id=21&page=1&bak=list" class="btn_small">수정</a>
									</td>
									<tr class="list0">
									</tr>
								</tr>
								<tr class="list0">
									<td rowspan="2">
										<input type="hidden" name="gs_id[0]" value="21">
										<input type="checkbox" name="chk[]" value="0">
									</td>
									<td rowspan="2">07</td>
									<td rowspan="2"><a href="http://demofran.com/shop/view.php?index_no=21" target="_blank"><img
												src="./images/admin/wine_07.png"
												width="40" height="40"></a></td>
									<td>0000000007</td>
									<td colspan="1" class="tal">라 샤펠 고르돈느 로제</td>
									<td colspan="1" class="tal">와인/로제/프랑스</td>
									<td>17-11-10</td>
									<td class="fc_00f">23-11-01</td>
									<td>무제한</td>
									<td rowspan="2" colspan="1" class="tar">55,000</td>
									<td rowspan="2" colspan="1" class="tar">10%</td>
									<td rowspan="2" colspan="1" class="tar">49,500</td>
									<td rowspan="2" colspan="1" class="tar">2,750</td>
									<td rowspan="2" colspan="1"><a href="./goods.php?code=form&w=u&gs_id=21&page=1&bak=list" class="btn_small">수정</a>
									</td>
									<tr class="list0">
									</tr>
								</tr>
								<tr class="list1">
									<td rowspan="2">
										<input type="hidden" name="gs_id[0]" value="21">
										<input type="checkbox" name="chk[]" value="0">
									</td>
									<td rowspan="2">06</td>
									<td rowspan="2"><a href="http://demofran.com/shop/view.php?index_no=21" target="_blank"><img
												src="./images/admin/wine_06.png"
												width="40" height="40"></a></td>
									<td>0000000006</td>
									<td colspan="1" class="tal">코라빈CO2캡슐(6개입)</td>
									<td colspan="1" class="tal">액세서리</td>
									<td>17-11-10</td>
									<td class="fc_00f">23-11-01</td>
									<td>무제한</td>
									<td rowspan="2" colspan="1" class="tar">99,000</td>
									<td rowspan="2" colspan="1" class="tar">10%</td>
									<td rowspan="2" colspan="1" class="tar">89,100</td>
									<td rowspan="2" colspan="1" class="tar">4,950</td>
									<td rowspan="2" colspan="1"><a href="./goods.php?code=form&w=u&gs_id=21&page=1&bak=list" class="btn_small">수정</a>
									</td>
									<tr class="list0">
									</tr>
								</tr>
								<tr class="list0">
									<td rowspan="2">
										<input type="hidden" name="gs_id[0]" value="21">
										<input type="checkbox" name="chk[]" value="0">
									</td>
									<td rowspan="2">05</td>
									<td rowspan="2"><a href="http://demofran.com/shop/view.php?index_no=21" target="_blank"><img
												src="./images/admin/wine_05.png"
												width="40" height="40"></a></td>
									<td>0000000005</td>
									<td colspan="1" class="tal">이자디 블랑코</td>
									<td colspan="1" class="tal">와인/화이트/스페인</td>
									<td>17-11-10</td>
									<td class="fc_00f">23-11-01</td>
									<td>무제한</td>
									<td rowspan="2" colspan="1" class="tar">35,000</td>
									<td rowspan="2" colspan="1" class="tar">10%</td>
									<td rowspan="2" colspan="1" class="tar">31,500</td>
									<td rowspan="2" colspan="1" class="tar">1,750</td>
									<td rowspan="2" colspan="1"><a href="./goods.php?code=form&w=u&gs_id=21&page=1&bak=list" class="btn_small">수정</a>
									</td>
									<tr class="list0">
									</tr>
								</tr>
								<tr class="list1">
									<td rowspan="2">
										<input type="hidden" name="gs_id[0]" value="21">
										<input type="checkbox" name="chk[]" value="0">
									</td>
									<td rowspan="2">04</td>
									<td rowspan="2"><a href="#" target="_blank"><img
												src="/images/admin/wine_04.png"
												width="40" height="40"></a></td>
									<td>0000000004</td>
									<td colspan="1" class="tal">피리아토 하모니엄 네로 다볼라</td>
									<td colspan="1" class="tal">와인/레드/이탈리아</td>
									<td>17-11-10</td>
									<td class="fc_00f">23-11-01</td>
									<td>무제한</td>
									<td rowspan="2" colspan="1" class="tar">90,000</td>
									<td rowspan="2" colspan="1" class="tar">10%</td>
									<td rowspan="2" colspan="1" class="tar">81,000</td>
									<td rowspan="2" colspan="1" class="tar">4,500</td>
									<td rowspan="2" colspan="1"><a href="./goods.php?code=form&w=u&gs_id=21&page=1&bak=list" class="btn_small">수정</a>
									</td>
									<tr class="list0">
									</tr>
								</tr>
								<tr class="list0">
									<td rowspan="2">
										<input type="hidden" name="gs_id[0]" value="21">
										<input type="checkbox" name="chk[]" value="0">
									</td>
									<td rowspan="2">03</td>
									<td rowspan="2"><a href="http://demofran.com/shop/view.php?index_no=21" target="_blank"><img
												src="./images/admin/wine_03.png"
												width="40" height="40"></a></td>
									<td>0000000003</td>
									<td colspan="1" class="tal">비냐 조잘 그라시아노</td>
									<td colspan="1" class="tal">와인/레드/스페인</td>
									<td>17-11-10</td>
									<td class="fc_00f">23-11-01</td>
									<td>무제한</td>
									<td rowspan="2" colspan="1" class="tar">19,000</td>
									<td rowspan="2" colspan="1" class="tar">10%</td>
									<td rowspan="2" colspan="1" class="tar">17,100</td>
									<td rowspan="2" colspan="1" class="tar">950</td>
									<td rowspan="2" colspan="1"><a href="./goods.php?code=form&w=u&gs_id=21&page=1&bak=list" class="btn_small">수정</a>
									</td>
									<tr class="list0">
									</tr>
								</tr>
								<tr class="list1">
									<td rowspan="2">
										<input type="hidden" name="gs_id[0]" value="21">
										<input type="checkbox" name="chk[]" value="0">
									</td>
									<td rowspan="2">02</td>
									<td rowspan="2"><a href="http://demofran.com/shop/view.php?index_no=21" target="_blank"><img
												src="./images/admin/wine_02.png"
												width="40" height="40"></a></td>
									<td>0000000002</td>
									<td colspan="1" class="tal">블랙타워 러블리 드림 리슬링</td>
									<td colspan="1" class="tal">와인/화이트/독일</td>
									<td>17-11-10</td>
									<td class="fc_00f">23-11-01</td>
									<td>무제한</td>
									<td rowspan="2" colspan="1" class="tar">9,900</td>
									<td rowspan="2" colspan="1" class="tar">10%</td>
									<td rowspan="2" colspan="1" class="tar">8,910</td>
									<td rowspan="2" colspan="1" class="tar">495</td>
									<td rowspan="2" colspan="1"><a href="./goods.php?code=form&w=u&gs_id=21&page=1&bak=list" class="btn_small">수정</a>
									</td>
									<tr class="list0">
									</tr>
								</tr>
								<tr class="list0">
									<td rowspan="2">
										<input type="hidden" name="gs_id[0]" value="21">
										<input type="checkbox" name="chk[]" value="0">
									</td>
									<td rowspan="2">01</td>
									<td rowspan="2"><a href="http://demofran.com/shop/view.php?index_no=21" target="_blank"><img
												src="./images/admin/wine_01.png"
												width="40" height="40"></a></td>
									<td>0000000001</td>
									<td colspan="1" class="tal">샤또 루빈 라 비 앙 로제</td>
									<td colspan="1" class="tal">와인/로제/프랑스</td>
									<td>17-11-10</td>
									<td class="fc_00f">23-11-01</td>
									<td>무제한</td>
									<td rowspan="2" colspan="1" class="tar">25,000</td>
									<td rowspan="2" colspan="1" class="tar">10%</td>
									<td rowspan="2" colspan="1" class="tar">22,500</td>
									<td rowspan="2" colspan="1" class="tar">1,250</td>
									<td rowspan="2" colspan="1"><a href="./goods.php?code=form&w=u&gs_id=21&page=1&bak=list" class="btn_small">수정</a>
									</td>
									<tr class="list0">
									</tr>
								</tr>
							</tbody>
						</table>
					</div>
				</form>


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

