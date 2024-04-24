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
			<dd class="o10">
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
			<dd class="o10 active">
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
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 주문관리 <i class="ionicons ion-ios-arrow-right"></i> 배송완료		</div>
	
<div class="s_wrap">
	<h1>배송완료</h1>
	
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
<input type="hidden" name="code" value="5">
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
				<option value="od_id">주문번호</option>
				<option value="od_no">일련번호</option>
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
			</select>
			<label for="fr_date" class="sound_only">시작일</label>
<input type="text" name="fr_date" value="" id="fr_date" class="frm_input w80" maxlength="10">
 ~ 
<label for="to_date" class="sound_only">종료일</label>
<input type="text" name="to_date" value="" id="to_date" class="frm_input w80" maxlength="10">
<span class="btn_group"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="오늘"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="어제"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="일주일"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="지난달"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="1개월"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="3개월"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="전체"></span>		</td>
	</tr>
	<tr>
		<th scope="row">결제방법</th>
		<td>
			<label><input type="radio" name="od_settle_case" value="" checked="checked"> 전체</label>
			<label><input type="radio" name="od_settle_case" value="무통장"> 무통장</label>
			<label><input type="radio" name="od_settle_case" value="가상계좌"> 가상계좌</label>
			<label><input type="radio" name="od_settle_case" value="계좌이체"> 계좌이체</label>
			<label><input type="radio" name="od_settle_case" value="휴대폰"> 휴대폰</label>
			<label><input type="radio" name="od_settle_case" value="신용카드"> 신용카드</label>
			<label><input type="radio" name="od_settle_case" value="간편결제"> PG간편결제</label>
			<label><input type="radio" name="od_settle_case" value="KAKAOPAY"> KAKAOPAY</label>
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
	전체 : <b class="fc_red">1</b> 건 조회
	<select id="page_rows" onchange="location='/admin/order.php?code=5&page=1&page_rows='+this.value;" class="marl5">
		<option value="30" selected="selected">30줄 정렬</option>
		<option value="50">50줄 정렬</option>
		<option value="100">100줄 정렬</option>
		<option value="150">150줄 정렬</option>
	</select>
	<strong class="ov_a">총주문액 : 31,560원</strong>
</div>

<form name="forderlist" id="forderlist" action="./order/order_update.php" onsubmit="return forderlist_submit(this);" method="post">
<input type="hidden" name="q1" value="code=5">
<input type="hidden" name="page" value="1">

<div class="local_frm01">
	<a href="#" id="frmOrderPrint" class="btn_lsmall white"><i class="fa fa-print"></i> 주문서출력</a>
<a href="#" id="frmOrderExcel" class="btn_lsmall white"><i class="fa fa-file-excel-o"></i> 선택 엑셀저장</a>
<a href="./order/order_excel.php?code=5" class="btn_lsmall white"><i class="fa fa-file-excel-o"></i> 검색결과 엑셀저장</a></div>
<div class="tbl_head01">
	<table id="sodr_list">
	<colgroup>
		<col class="w50">
		<col class="w100">
		<col class="w150">
		<col class="w40">
		<col class="w40">
		<col class="w30">
		<col class="w400">
		<col class="w90">
		<col class="w60">
		<col>
		<col class="w60">
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
		<th scope="col"><input type="checkbox" id="sit_select_all"></th>
		<th scope="col" colspan="4">주문상품</th>
		<th scope="col">구매확정</th>
		<th scope="col">배송정보</th>
		<th scope="col">배송조회</th>
		<th scope="col">가맹점</th>
		<th scope="col">주문자</th>
		<th scope="col">수령자</th>
		<th scope="col">총주문액</th>
	</tr>
	</thead>
	<tbody>
		<tr class="list0">
				<td rowspan="1">1</td>
		<td rowspan="1">
			20-10-04 18:28			<span class="list_test">테스트</span>		</td>
		<td rowspan="1">
			<a href="http://demofran.com/admin/pop_orderform.php?od_id=20100418280763" onclick="win_open(this,'pop_orderform','1200','800','yes');return false;" class="fc_197">20100418280763</a>
								</td>
		<td rowspan="1">
			<input type="hidden" name="od_id[0]" value="20100418280763">
			<label for="sit_sel_0" class="sound_only">전체선택</label>
			<input type="checkbox" name="it_sel[]" id="sit_sel_0">
		</td>
				<td class="td_chk">
			<input type="hidden" name="od_no[0]" value="1293556404">
			<input type="checkbox" name="chk[]" value="0" id="chk_0" class="sct_sel_0">
			<label for="chk_0" class="sound_only">[루이까또즈] 우븐 숄 머플러 인디라 와인 SA-2HW362WI</label>
		</td>
		<td class="td_imgline"><a href="http://demofran.com/shop/view.php?index_no=21" target="_blank"><img src="http://demofran.com/data/order/2010/20100418280763/thumb-79666_Dqpxzw59F3Pzg9PrtDe9tSmaUCF7tu_30x30.jpg" width="30" height="30"></a></td>
		<td class="td_itname" colspan="2"><a href="http://demofran.com/admin/goods.php?code=form&w=u&gs_id=21" target="_blank">[루이까또즈] 우븐 숄 머플러 인디라 와인 SA-2HW362WI</a></td>
</noscript></span></td>
		<td><span class="fc_00f">완료</span></td>
		<td>KGB택배</td>
		<td><a href="http://www.kgbls.co.kr/sub5/trace.asp?f_slipno=221121212" target="_blank" class="btn_ssmall">배송조회</a></td>
				<td rowspan="1"><span class="sv_wrap">
<a href="javascript:void(0);" class="sv_member">한글만</a>
<span class="sv">
<a href="http://demofran.com/admin/pop_memberform.php?mb_id=tubeweb1" onclick="win_open(this,'win_member','1200','600','yes');return false;">회원정보수정</a>
<a href="http://demofran.com/admin/formmail.php?mb_id=tubeweb1&name=%ED%95%9C%EA%B8%80%EB%A7%8C&email=2qyUnKnIk5elmtHHn9JelaLO" onclick="win_open(this,'win_email','650','580','no'); return false;">메일보내기</a>
<a href="http://demofran.com/admin/sms/sms_user.php?ph=01011111111" onclick="win_open(this,'win_sms','300','360','no'); return false;">SMS보내기</a>
<a href="http://demofran.com/admin/admin_ss_login.php?mb_id=tubeweb1" target="_blank">쇼핑몰로그인</a>
<a href="http://demofran.com/admin/admin_ss_login.php?mb_id=tubeweb1&lg_type=P" target="_blank">가맹점로그인</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="http://demofran.com/admin/pop_memberform.php?mb_id=tubeweb1" onclick="win_open(this,'win_member','1200','600','yes');return false;">회원정보수정</a>
<a href="http://demofran.com/admin/formmail.php?mb_id=tubeweb1&name=%ED%95%9C%EA%B8%80%EB%A7%8C&email=2qyUnKnIk5elmtHHn9JelaLO" onclick="win_open(this,'win_email','650','580','no'); return false;">메일보내기</a>
<a href="http://demofran.com/admin/sms/sms_user.php?ph=01011111111" onclick="win_open(this,'win_sms','300','360','no'); return false;">SMS보내기</a>
<a href="http://demofran.com/admin/admin_ss_login.php?mb_id=tubeweb1" target="_blank">쇼핑몰로그인</a>
<a href="http://demofran.com/admin/admin_ss_login.php?mb_id=tubeweb1&lg_type=P" target="_blank">가맹점로그인</a>
</span>
</noscript></span><span class="list_mb_id">(tubeweb1)</span></td>
		<td rowspan="1">
			<span class="sv_wrap">
<a href="javascript:void(0);" class="sv_member">세글만</a>
<span class="sv">
<a href="http://demofran.com/admin/pop_memberform.php?mb_id=tubeweb3" onclick="win_open(this,'win_member','1200','600','yes');return false;">회원정보수정</a>
<a href="http://demofran.com/admin/formmail.php?mb_id=tubeweb3&name=%EC%84%B8%EA%B8%80%EB%A7%8C&email=2qyUnKnIk5mlmtHHn9JelaLO" onclick="win_open(this,'win_email','650','580','no'); return false;">메일보내기</a>
<a href="http://demofran.com/admin/sms/sms_user.php?ph=01033333333" onclick="win_open(this,'win_sms','300','360','no'); return false;">SMS보내기</a>
<a href="http://demofran.com/admin/admin_ss_login.php?mb_id=tubeweb3" target="_blank">쇼핑몰로그인</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="http://demofran.com/admin/pop_memberform.php?mb_id=tubeweb3" onclick="win_open(this,'win_member','1200','600','yes');return false;">회원정보수정</a>
<a href="http://demofran.com/admin/formmail.php?mb_id=tubeweb3&name=%EC%84%B8%EA%B8%80%EB%A7%8C&email=2qyUnKnIk5mlmtHHn9JelaLO" onclick="win_open(this,'win_email','650','580','no'); return false;">메일보내기</a>
<a href="http://demofran.com/admin/sms/sms_user.php?ph=01033333333" onclick="win_open(this,'win_sms','300','360','no'); return false;">SMS보내기</a>
<a href="http://demofran.com/admin/admin_ss_login.php?mb_id=tubeweb3" target="_blank">쇼핑몰로그인</a>
</span>
</noscript></span>			<span class="list_mb_id">(tubeweb3)</span>		</td>
		<td rowspan="1">세글만</td>
		<td rowspan="1" class="td_price">31,560</td>
				</tbody>
	</table>
</div>

<h2>주문 일괄처리</h2>
<div class="tbl_frm01">
	<table>
	<colgroup>
		<col class="w100">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">선택한 주문을</th>
		<td>
			<input type="submit" name="act_button" value="구매확정" class="btn_medium red" onclick="document.pressed=this.value">
			<input type="submit" name="act_button" value="구매확정취소" class="btn_medium white" onclick="document.pressed=this.value">
		</td>
	</tr>
	</tbody>
	</table>
</div>
</form>


<div class="information">
	<h4>도움말</h4>
	<div class="content">
		<div class="hd">ㆍ주문상태 변경에 제한이 있나요?</div>
		<div class="desc01 accent">
			<p>ㆍ주문리스트 내 선택된 주문의 상태를 <em>"입금완료 &gt; 배송준비 &gt; 배송중 &gt; 배송완료 &gt; 구매확정"</em> 순으로 변경됩니다.</p>
			<p>ㆍ배송완료 상태의 주문은 "구매확정" 상태로만 변경할 수 있으며, 주문의 일부 상품만 부분적으로 "구매확정" 상태로 변경 가능합니다.</p>
			<p>ㆍ<em>취소/환불/반품/교환</em> 등의 주문상태로 변경은 해당 주문의 <strong>"주문상세정보"</strong> 페이지에서 처리 가능합니다.</p>
		</div>
		<div class="hd">ㆍ가맹점과 공급사 정산은 어떻게 되나요?</div>
		<div class="desc01 accent">
			<p>ㆍ가맹점은 "배송완료" 시점에서 판매수수료가 지급되며, 공급사는 "구매확정"이 되어야만 정산처리 가능합니다.</p>
		</div>
	 </div>
</div>

<script>
$(function(){
    $("#fr_date, #to_date").datepicker({ changeMonth: true, changeYear: true, dateFormat: "yy-mm-dd", showButtonPanel: true, yearRange: "c-99:c+99", maxDate: "+0d" });

	// 전체 상품선택
    $("#sit_select_all").click(function() {
        if($(this).is(":checked")) {
            $("input[name='it_sel[]']").attr("checked", true);
            $("input[name^=chk]").attr("checked", true);
        } else {
            $("input[name='it_sel[]']").attr("checked", false);
            $("input[name^=chk]").attr("checked", false);
        }
    });

    // 주문의 상품선택
    $("input[name='it_sel[]']").click(function() {
        var cls = $(this).attr("id").replace("sit_", "sct_");
        var $chk = $("input[name^=chk]."+cls);
        if($(this).is(":checked"))
            $chk.attr("checked", true);
        else
            $chk.attr("checked", false);
    });

	// 주문서출력
	$("#frmOrderPrint, #frmOrderExcel").on("click", function() {
		var type = $(this).attr("id");
		var od_chk = new Array();
		var od_id = "";
		var $el_chk = $("input[name='it_sel[]']");

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

<script>
function forderlist_submit(f)
{
    if(!is_checked("chk[]")) {
        alert(document.pressed+" 하실 항목을 하나 이상 선택하세요.");
        return false;
    }

    if(!confirm("선택하신 주문서의 주문상태를 '"+document.pressed+"'상태로 변경하시겠습니까?"))
        return false;

	return true;
}
</script>
</div>

</div>
</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>
