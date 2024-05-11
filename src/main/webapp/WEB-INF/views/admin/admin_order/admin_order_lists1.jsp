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
		<h2><i class="ionicons ion-clipboard"></i>주문관리</h2>
	</div>
		<dl>
			<dt class="o10 menu_toggle">주문관리</dt>
			<dd class="o10 active">
				<a href="admin_order_lists.do">주문리스트(전체)
					<em class="snb_air">34</em>
				</a>
			</dd>		
			<dd class="o10">
				<a href="admin_order2.do">입금대기
					<em>0</em>
				</a>
			</dd>		
			<dd class="o10">
				<a href="admin_order3.do">입금완료
					<em>0</em>
				</a>
			</dd>		
			<dd class="o10">
				<a href="admin_order4.do">배송준비
					<em>0</em>
				</a>
			</dd>		
			<dd class="o10">
				<a href="admin_order5.do">배송중
					<em>0</em>
				</a>
			</dd>		
			<dd class="o10">
				<a href="admin_order6.do">배송완료
					<em class="snb_air">1</em>
				</a>
			</dd>
			<dt class="o20 menu_toggle">취소/교환/반품/환불 관리</dt>
			<dd class="o20">
				<a href="admin_order7.do">입금전 취소
					<em class="snb_air">33</em>
				</a>
			</dd>		
			<dd class="o20">
				<a href="admin_order8.do">배송전 환불
					<em>0</em>
				</a>
			</dd>		
			<dd class="o20">
				<a href="admin_order9.do">배송후 반품
					<em>0</em>
				</a>
			</dd>		
			<dd class="o20">
				<a href="admin_order10.do">배송후 교환
					<em>0</em>
				</a>
			</dd>		
		</dl>
	</div>
	<div id="content">
		<div class="breadcrumb">
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 주문관리 <i class="ionicons ion-ios-arrow-right"></i> 주문리스트(전체)		</div>
	
<div class="s_wrap">
	<h1>주문리스트(전체)</h1>
	
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script>
jQuery(function($){
    $.datepicker.regional["ko"] = {
        closeText: "닫기",
        prevText: "이전달",
        nextText: "다음달",
        currentText: "오늘",
        monthNames: ["1월(JAN)","2월(FEB)","3월(MAR)","4월(APR)","5월(MAY)","6월(JUN)", "7월(JUL)","8월(AUG)","9월(SEP)","10월(OCT)","11월(NOV)","12월(DEC)"],
        monthNamesShort: ["1월","2월","3월","4월","5월","6월", "7월","8월","9월","10월","11월","12월"],
        dayNames: ["일","월","화","수","목","금","토"],
        dayNamesShort: ["일","월","화","수","목","금","토"],
        dayNamesMin: ["일","월","화","수","목","금","토"],
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
	<table>
	<colgroup>
		<col class="w100">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">검색어</th>
		<td>
			<select name="sfl">
				<option value="od_no">주문번호</option>
				<option value="od_name">주문상품</option>
				<option value="mb_id">회원아이디</option>
				<option value="name">주문자명</option>
				<option value="deposit_name">입금자명</option>
				<option value="bank">입금계좌</option>
				<option value="b_name">수령자명</option>
				<option value="b_telephone">수령자집전화</option>
				<option value="b_cellphone">수령자핸드폰</option>
				<option value="delivery_no">운송장번호</option>
				<option value="seller_id">판매자ID</option>
				<option value="pt_id">가맹점ID</option>
			</select>
			<input type="text" name="stx" value="" class="frm_input" size="30">
		</td>
	</tr>
	<tr>
		<th scope="row">기간검색</th>
		<td>
			<select name="sel_field">
				<option value="od_time">주문일</option>
				<option value="receipt_time">입금완료일</option>
				<option value="delivery_date">배송일</option>
				<option value="invoice_date">배송완료일</option>
				<option value="user_date">구매확정일</option>
				<option value="cancel_date">주문취소일</option>
				<option value="refund_date">환불완료일</option>
				<option value="return_date">반품완료일</option>
				<option value="change_date">교환완료일</option>
			</select>
			<label for="fr_date" class="sound_only">시작일</label>
<input type="text" name="fr_date" value="" id="fr_date" class="frm_input w80" maxlength="10">
 ~ 
<label for="to_date" class="sound_only">종료일</label>
<input type="text" name="to_date" value="" id="to_date" class="frm_input w80" maxlength="10">
<span class="btn_group">
	<input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="오늘">
	<input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="어제">
	<input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="일주일">
	<input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="지난달">
	<input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="1개월">
	<input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="3개월">
	<input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="전체">
</span>
	</td>
	</tr>
	<tr>
		<th scope="row">결제방법</th>
		<td>
			<label><input type="radio" name="od_settle_case" value="" checked="checked"> 전체</label>
			<label><input type="radio" name="od_settle_case" value="가상계좌"> 가상계좌</label>
			<label><input type="radio" name="od_settle_case" value="KAKAOPAY"> KAKAOPAY</label>
		</td>
	</tr>
	<tr>
		<th scope="row">주문상태</th>
		<td>
			<label><input type="radio" name="od_status" value="" checked="checked"> 전체</label>
			<label><input type="radio" name="od_status" value="1"> 입금대기</label>
			<label><input type="radio" name="od_status" value="2"> 입금완료</label>
			<label><input type="radio" name="od_status" value="3"> 배송준비</label>
			<label><input type="radio" name="od_status" value="4"> 배송중</label>
			<label><input type="radio" name="od_status" value="5"> 배송완료</label>
			<label><input type="radio" name="od_status" value="6"> 취소</label>
			<label><input type="radio" name="od_status" value="9"> 환불</label>
			<label><input type="radio" name="od_status" value="7"> 반품</label>
			<label><input type="radio" name="od_status" value="8"> 교환</label>
		</td>
	</tr>
	<tr>
		<th scope="row">구매확정</th>
		<td>
			<label><input type="radio" name="od_final" value="" checked="checked"> 전체</label>
			<label><input type="radio" name="od_final" value="1"> 구매확정</label>
			<label><input type="radio" name="od_final" value="0"> 구매미확정</label>
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

<div class="local_ov mart30">
	전체 : <b class="fc_red">34</b> 건 조회
	<select id="page_rows" onchange="location='/admin/order.php?code=list&page=1&page_rows='+this.value;" class="marl5">
		<option value="30" selected="selected">30줄 정렬</option>
		<option value="50">50줄 정렬</option>
		<option value="100">100줄 정렬</option>
		<option value="150">150줄 정렬</option>
	</select>
	<strong class="ov_a">총주문액 : 2,437,700원</strong>
</div>

<form name="forderlist" id="forderlist" method="post">
<input type="hidden" name="q1" value="code=list">
<input type="hidden" name="page" value="1">

<div class="local_frm01">
	<a href="#" id="frmOrderPrint" class="btn_lsmall white"><i class="fa fa-print"></i> 주문서출력</a>
<a href="#" id="frmOrderExcel" class="btn_lsmall white"><i class="fa fa-file-excel-o"></i> 선택 엑셀저장</a>
<a href="./order/order_excel.php?code=list" class="btn_lsmall white"><i class="fa fa-file-excel-o"></i> 검색결과 엑셀저장</a></div>
<div class="tbl_head01">
	<table id="sodr_list">
	<colgroup>
		<col class="w50">
		<col class="w100">
		<col class="w150">
		<col class="w40">
		<col class="w40">
		<col class="w400">
		<col class="w60">
		<col class="w80">
		<col class="w80">
		<col class="w90">
		<col class="w90">
		<col class="w90">
		<col class="w90">
		<col class="w90">
		<col class="w90">
		<col class="w90">
	</colgroup>
	<thead>
	<tr>
		<th scope="col">번호</th>
		<th scope="col">주문일시</th>
		<th scope="col">주문번호</th>
		<th scope="col"><input type="checkbox" name="chkall" value="1" onclick="check_all(this.form);"></th>
		<th scope="col" colspan="2">주문상품</th>
		<th scope="col">수량</th>
		<th scope="col">상품금액</th>
		<th scope="col">배송비</th>
		<th scope="col">주문상태</th>
		<th scope="col">구매확정</th>
		<th scope="col">주문자</th>
		<th scope="col">수령자</th>
		<th scope="col">총주문액</th>
		<th scope="col" colspan="2">결제방법</th>
	</tr>
	</thead>
	<tbody>
		<tr class="list0">
				<td rowspan="3">34</td>
		<td rowspan="3">
			24-04-05 11:53			<span class="list_test">테스트</span>		</td>
		<td rowspan="3">
			<a href="http://demofran.com/admin/pop_orderform.php?od_id=24040511530204" onclick="win_open(this,'pop_orderform','1200','800','yes');return false;" class="fc_197">24040511530204</a>
					</td>
		<td rowspan="3">
			<input type="hidden" name="od_id[0]" value="24040511530204">
			<label for="chk_0" class="sound_only">주문번호 24040511530204</label>
			<input type="checkbox" name="chk[]" value="0" id="chk_0">
		</td>
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=14" target="_blank"><img src="http://demofran.com/data/order/2404/24040511530204/thumb-95S2lNwQks3caPhpLyDPjPWygyeCsC_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=14" target="_blank">Mathey-Tissot 심플 서류가방+백팩 블랙세트</a></td>
		<td>1</td>
		<td class="tar">70,000</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<td rowspan="3">
			관리자			<span class="list_mb_id">(admin)</span>		</td>
		<td rowspan="3">관리자</td>
		<td rowspan="3" class="td_price">136,240</td>
		<td rowspan="3" colspan="2">무통장</td>
				<tr class="list0">
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=20" target="_blank"><img src="http://demofran.com/data/order/2404/24040511530204/thumb-30323_NcEq6PgZABZ4yTEDMfbc7CMZjFb4w8_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=20" target="_blank">Guy Laroche 토리노 지퍼 동전 카드케이스 GL-9300-TR-NY</a></td>
		<td>1</td>
		<td class="tar">29,520</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
</noscript></span></td>
				<tr class="list0">
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=16" target="_blank"><img src="http://demofran.com/data/order/2404/24040511530204/thumb-l7xUjCx1dy5Tp6GlLAy2zMlRLHhxGx_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=16" target="_blank">Guy Laroche 사피아노 핸들 카드케이스 GL-9307-OR</a></td>
		<td>1</td>
		<td class="tar">36,720</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<tr class="list1">
				<td rowspan="2">33</td>
		<td rowspan="2">
			24-04-04 16:42			<span class="list_test">테스트</span>		</td>
		<td rowspan="2">
			<a href="http://demofran.com/admin/pop_orderform.php?od_id=24040416420267" onclick="win_open(this,'pop_orderform','1200','800','yes');return false;" class="fc_197">24040416420267</a>
					</td>
		<td rowspan="2">
			<input type="hidden" name="od_id[1]" value="24040416420267">
			<label for="chk_1" class="sound_only">주문번호 24040416420267</label>
			<input type="checkbox" name="chk[]" value="1" id="chk_1">
		</td>
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=19" target="_blank"><img src="http://demofran.com/data/order/2404/24040416420267/thumb-10228_95S2lNwQks3caPhpLyDPjPWygyeCsC_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=19" target="_blank">[루이까또즈] 넥타이 네이비 LW705ST03-N-75</a></td>
		<td>1</td>
		<td class="tar">38,730</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<td rowspan="2">
			11111111			<span class="list_mb_id">(비회원)</span>		</td>
		<td rowspan="2">11111111</td>
		<td rowspan="2" class="td_price">58,890</td>
		<td rowspan="2" colspan="2">무통장</td>
				<tr class="list1">
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=10" target="_blank"><img src="http://demofran.com/data/order/2404/24040416420267/thumb-Dqpxzw59F3Pzg9PrtDe9tSmaUCF7tu_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=10" target="_blank">선인장 자수패치 반팔T</a></td>
		<td>2</td>
		<td class="tar">20,160</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<tr class="list0">
				<td rowspan="1">22</td>
		<td rowspan="1">
			22-06-30 14:18			<span class="list_test">테스트</span>		</td>
		<td rowspan="1">
			<a href="http://demofran.com/admin/pop_orderform.php?od_id=22063014170424" onclick="win_open(this,'pop_orderform','1200','800','yes');return false;" class="fc_197">22063014170424</a>
					</td>
		<td rowspan="1">
			<input type="hidden" name="od_id[12]" value="22063014170424">
			<label for="chk_12" class="sound_only">주문번호 22063014170424</label>
			<input type="checkbox" name="chk[]" value="12" id="chk_12">
		</td>
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=11" target="_blank"><img src="http://demofran.com/data/order/2206/22063014170424/thumb-mUTbYFV6RKVvmYLLdFAjpB7zQp5DHR_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=11" target="_blank">[폴리폴리] 미니 레이디버블 가죽 시계 WF16R009SPS</a></td>
		<td>1</td>
		<td class="tar">218,000</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<td rowspan="1">
			관리자			<span class="list_mb_id">(admin)</span>		</td>
		<td rowspan="1">관리자</td>
		<td rowspan="1" class="td_price">218,000</td>
		<td rowspan="1" colspan="2">무통장</td>
				<tr class="list1">
				<td rowspan="1">21</td>
		<td rowspan="1">
			22-05-16 20:32			<span class="list_test">테스트</span>		</td>
		<td rowspan="1">
			<a href="http://demofran.com/admin/pop_orderform.php?od_id=22051620311219" onclick="win_open(this,'pop_orderform','1200','800','yes');return false;" class="fc_197">22051620311219</a>
					</td>
		<td rowspan="1">
			<input type="hidden" name="od_id[13]" value="22051620311219">
			<label for="chk_13" class="sound_only">주문번호 22051620311219</label>
			<input type="checkbox" name="chk[]" value="13" id="chk_13">
		</td>
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=11" target="_blank"><img src="http://demofran.com/data/order/2205/22051620311219/thumb-mUTbYFV6RKVvmYLLdFAjpB7zQp5DHR_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=11" target="_blank">[폴리폴리] 미니 레이디버블 가죽 시계 WF16R009SPS</a></td>
		<td>1</td>
		<td class="tar">218,000</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<td rowspan="1">
			관리자			<span class="list_mb_id">(admin)</span>		</td>
		<td rowspan="1">관리자</td>
		<td rowspan="1" class="td_price">218,000</td>
		<td rowspan="1" colspan="2">무통장</td>
				<tr class="list0">
				<td rowspan="1">20</td>
		<td rowspan="1">
			22-03-07 17:20			<span class="list_test">테스트</span>		</td>
		<td rowspan="1">
			<a href="http://demofran.com/admin/pop_orderform.php?od_id=22030717201579" onclick="win_open(this,'pop_orderform','1200','800','yes');return false;" class="fc_197">22030717201579</a>
					</td>
		<td rowspan="1">
			<input type="hidden" name="od_id[14]" value="22030717201579">
			<label for="chk_14" class="sound_only">주문번호 22030717201579</label>
			<input type="checkbox" name="chk[]" value="14" id="chk_14">
		</td>
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=14" target="_blank"><img src="http://demofran.com/data/order/2203/22030717201579/thumb-95S2lNwQks3caPhpLyDPjPWygyeCsC_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=14" target="_blank">Mathey-Tissot 심플 서류가방+백팩 블랙세트</a></td>
		<td>1</td>
		<td class="tar">70,000</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<td rowspan="1">
			관리자			<span class="list_mb_id">(admin)</span>		</td>
		<td rowspan="1">관리자</td>
		<td rowspan="1" class="td_price">70,000</td>
		<td rowspan="1" colspan="2">무통장</td>
				<tr class="list1">
				<td rowspan="1">19</td>
		<td rowspan="1">
			22-02-06 13:47			<span class="list_test">테스트</span>		</td>
		<td rowspan="1">
			<a href="http://demofran.com/admin/pop_orderform.php?od_id=22020613471949" onclick="win_open(this,'pop_orderform','1200','800','yes');return false;" class="fc_197">22020613471949</a>
					</td>
		<td rowspan="1">
			<input type="hidden" name="od_id[15]" value="22020613471949">
			<label for="chk_15" class="sound_only">주문번호 22020613471949</label>
			<input type="checkbox" name="chk[]" value="15" id="chk_15">
		</td>
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=16" target="_blank"><img src="http://demofran.com/data/order/2202/22020613471949/thumb-l7xUjCx1dy5Tp6GlLAy2zMlRLHhxGx_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=16" target="_blank">Guy Laroche 사피아노 핸들 카드케이스 GL-9307-OR</a></td>
		<td>1</td>
		<td class="tar">36,720</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<td rowspan="1">
			관리자			<span class="list_mb_id">(admin)</span>		</td>
		<td rowspan="1">관리자</td>
		<td rowspan="1" class="td_price">36,720</td>
		<td rowspan="1" colspan="2">무통장</td>
				<tr class="list0">
				<td rowspan="1">18</td>
		<td rowspan="1">
			22-02-06 13:45			<span class="list_test">테스트</span>		</td>
		<td rowspan="1">
			<a href="http://demofran.com/admin/pop_orderform.php?od_id=22020613445315" onclick="win_open(this,'pop_orderform','1200','800','yes');return false;" class="fc_197">22020613445315</a>
					</td>
		<td rowspan="1">
			<input type="hidden" name="od_id[16]" value="22020613445315">
			<label for="chk_16" class="sound_only">주문번호 22020613445315</label>
			<input type="checkbox" name="chk[]" value="16" id="chk_16">
		</td>
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=12" target="_blank"><img src="http://demofran.com/data/order/2202/22020613445315/thumb-NcEq6PgZABZ4yTEDMfbc7CMZjFb4w8_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=12" target="_blank">[벨카리노] 안틱캐주얼 투타임 블랙 남녀공용 손목시계 [BC97042B]</a></td>
		<td>1</td>
		<td class="tar">60,060</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<td rowspan="1">
			관리자			<span class="list_mb_id">(admin)</span>		</td>
		<td rowspan="1">관리자</td>
		<td rowspan="1" class="td_price">60,060</td>
		<td rowspan="1" colspan="2">무통장</td>
				<tr class="list1">
				<td rowspan="1">17</td>
		<td rowspan="1">
			22-01-26 17:05			<span class="list_test">테스트</span>		</td>
		<td rowspan="1">
			<a href="http://demofran.com/admin/pop_orderform.php?od_id=22012617052419" onclick="win_open(this,'pop_orderform','1200','800','yes');return false;" class="fc_197">22012617052419</a>
					</td>
		<td rowspan="1">
			<input type="hidden" name="od_id[17]" value="22012617052419">
			<label for="chk_17" class="sound_only">주문번호 22012617052419</label>
			<input type="checkbox" name="chk[]" value="17" id="chk_17">
		</td>
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=16" target="_blank"><img src="http://demofran.com/data/order/2201/22012617052419/thumb-l7xUjCx1dy5Tp6GlLAy2zMlRLHhxGx_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=16" target="_blank">Guy Laroche 사피아노 핸들 카드케이스 GL-9307-OR</a></td>
		<td>1</td>
		<td class="tar">36,720</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<td rowspan="1">
			<span class="sv_wrap">
</noscript></span>		<span class="list_mb_id">(tubeweb1)</span>		</td>
		<td rowspan="1">한글만</td>
		<td rowspan="1" class="td_price">36,720</td>
		<td rowspan="1" colspan="2">무통장</td>
				<tr class="list0">
				<td rowspan="1">16</td>
		<td rowspan="1">
			21-11-30 15:49			<span class="list_test">테스트</span>		</td>
		<td rowspan="1">
			<a href="http://demofran.com/admin/pop_orderform.php?od_id=21113015485110" onclick="win_open(this,'pop_orderform','1200','800','yes');return false;" class="fc_197">21113015485110</a>
					</td>
		<td rowspan="1">
			<input type="hidden" name="od_id[18]" value="21113015485110">
			<label for="chk_18" class="sound_only">주문번호 21113015485110</label>
			<input type="checkbox" name="chk[]" value="18" id="chk_18">
		</td>
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=16" target="_blank"><img src="http://demofran.com/data/order/2111/21113015485110/thumb-l7xUjCx1dy5Tp6GlLAy2zMlRLHhxGx_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=16" target="_blank">Guy Laroche 사피아노 핸들 카드케이스 GL-9307-OR</a></td>
		<td>1</td>
		<td class="tar">36,720</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<td rowspan="1">
			관리자			<span class="list_mb_id">(admin)</span>		</td>
		<td rowspan="1">관리자</td>
		<td rowspan="1" class="td_price">36,720</td>
		<td rowspan="1" colspan="2">무통장</td>
				<tr class="list1">
				<td rowspan="1">15</td>
		<td rowspan="1">
			21-09-28 19:15			<span class="list_test">테스트</span>		</td>
		<td rowspan="1">
			<a href="http://demofran.com/admin/pop_orderform.php?od_id=21092819144124" onclick="win_open(this,'pop_orderform','1200','800','yes');return false;" class="fc_197">21092819144124</a>
					</td>
		<td rowspan="1">
			<input type="hidden" name="od_id[19]" value="21092819144124">
			<label for="chk_19" class="sound_only">주문번호 21092819144124</label>
			<input type="checkbox" name="chk[]" value="19" id="chk_19">
		</td>
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=16" target="_blank"><img src="http://demofran.com/data/order/2109/21092819144124/thumb-l7xUjCx1dy5Tp6GlLAy2zMlRLHhxGx_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=16" target="_blank">Guy Laroche 사피아노 핸들 카드케이스 GL-9307-OR</a></td>
		<td>1</td>
		<td class="tar">36,720</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<td rowspan="1">
			관리자			<span class="list_mb_id">(admin)</span>		</td>
		<td rowspan="1">관리자</td>
		<td rowspan="1" class="td_price">36,720</td>
		<td rowspan="1" colspan="2">무통장</td>
				<tr class="list0">
				<td rowspan="1">14</td>
		<td rowspan="1">
			21-09-12 15:03			<span class="list_test">테스트</span>		</td>
		<td rowspan="1">
			<a href="http://demofran.com/admin/pop_orderform.php?od_id=21091215023650" onclick="win_open(this,'pop_orderform','1200','800','yes');return false;" class="fc_197">21091215023650</a>
					</td>
		<td rowspan="1">
			<input type="hidden" name="od_id[20]" value="21091215023650">
			<label for="chk_20" class="sound_only">주문번호 21091215023650</label>
			<input type="checkbox" name="chk[]" value="20" id="chk_20">
		</td>
				<td class="td_img"><a href="http://demofran.com/shop/view.php?index_no=16" target="_blank"><img src="http://demofran.com/data/order/2109/21091215023650/thumb-l7xUjCx1dy5Tp6GlLAy2zMlRLHhxGx_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=16" target="_blank">Guy Laroche 사피아노 핸들 카드케이스 GL-9307-OR</a></td>
		<td>1</td>
		<td class="tar">36,720</td>
		<td class="tar">0</td>
		<td>취소</td>
		<td>구매미확정</td>
				<td rowspan="1">
			임이슬			<span class="list_mb_id">(비회원)</span>		</td>
		<td rowspan="1">임이슬</td>
		<td rowspan="1" class="td_price">36,720</td>
		<td rowspan="1" colspan="2">무통장</td>
				<tr class="list1">
				</tbody>
	</table>
</div>
</form>

<nav class="pg_wrap"><span class="pg"><span class="pg_start">처음</span>
<span class="pg_prev">이전</span>
<span class="sound_only">열린</span><strong class="pg_current">1</strong><span class="sound_only">페이지</span>
<a href="/admin/order.php?code=list&page=2" class="pg_page">2<span class="sound_only">페이지</span></a>
<span class="pg_next">다음</span>
<a href="/admin/order.php?code=list&page=2" class="pg_page pg_end">맨끝</a>
</span></nav>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.17/jquery-ui.min.js"></script>
<script>
$(function(){
    $("#fr_date, #to_date").datepicker({ changeMonth: true, changeYear: true, dateFormat: "yy-mm-dd", showButtonPanel: true, yearRange: "c-99:c+99", maxDate: "+0d" });

	// 주문서출력
	$("#frmOrderPrint, #frmOrderExcel").on("click", function() {
		var type = $(this).attr("id");
		var od_chk = new Array();
		var od_id = "";
		var $el_chk = $("input[name='chk[]']");

		$el_chk.each(function(index) {
			if($(this).is(":checked")) {
				od_chk.push($("input[name='od_id["+index+"]']").val());
			}
		});

		if(od_chk.length > 0) {
			od_id = od_chk.join();
		}

		if(od_id == "") {
			alert("처리할 자료를 하나 이상 선택해 주십시오.");
			return false;
		} else {
			if(type == 'frmOrderPrint') {
				var url = "./order/order_print.php?od_id="+od_id;
				window.open(url, "frmOrderPrint", "left=100, top=100, width=670, height=600, scrollbars=yes");
				return false;
			} else {
				this.href = "./order/order_excel2.php?od_id="+od_id;
				return true;
			}
		}
	});
});
</script>
</div>

</div>
</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

