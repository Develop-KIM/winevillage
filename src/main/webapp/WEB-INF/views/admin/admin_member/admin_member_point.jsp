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
				<h2><i class="ionicons ion-ios-people fs40"></i>회원관리</h2>
			</div>
			<dl>
				<dt class="m10 menu_toggle">회원관리</dt>
				<dd class="m10">
					<a href="admin_member_lists.do">회원 정보관리</a>
				</dd>
				<dd class="m10">
					<a href="admin_member_level.do">회원 등급관리</a>
				</dd>
				<dt class="m20 menu_toggle">포인트 관리</dt>
				<dd class="m20 active">
					<a href="admin_member_point.do">포인트 관리</a>
				</dd>
				<dd class="m20">
					<a href="admin_member_point_select_form.do">포인트 지급&차감</a>
				</dd>
			</dl>
		</div>
		<div id="content">
		<div class="breadcrumb">
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 회원관리 <i class="ionicons ion-ios-arrow-right"></i> 포인트 관리		</div>
	
<div class="s_wrap">
	<h1>포인트 관리</h1>
	
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
<input type="hidden" name="code" value="point">
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
				<option value="a.mb_id">아이디</option>
				<option value="b.name">회원명</option>
			</select>
			<input type="text" name="stx" value="" class="frm_input" size="30">
		</td>
	</tr>
	<tr>
		<th scope="row">기간검색</th>
		<td>
			<label for="fr_date" class="sound_only">시작일</label>
<input type="text" name="fr_date" value="" id="fr_date" class="frm_input w80" maxlength="10">
 ~ 
<label for="to_date" class="sound_only">종료일</label>
<input type="text" name="to_date" value="" id="to_date" class="frm_input w80" maxlength="10">
<span class="btn_group"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="오늘"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="어제"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="일주일"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="지난달"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="1개월"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="3개월"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="전체"></span>		</td>
	</tr>
	</tbody>
	</table>
</div>
<div class="btn_confirm">
	<input type="submit" value="검색" class="btn_medium">
	<input type="button" value="초기화" id="frmRest" class="btn_medium grey">
</div>
</form>

<form name="fpointlist" id="fpointlist" method="post" action="./member/member_point_delete.php" onsubmit="return fpointlist_submit(this);">
<input type="hidden" name="q1" value="code=point">
<input type="hidden" name="page" value="1">

<div class="local_ov mart30">
	전체 : <b class="fc_red">1</b> 건 조회
	<strong class="ov_a">포인트 합계 : 1,580원</strong>
</div>
<div class="local_frm01">
	<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white" onclick="document.pressed=this.value"></div>
<div class="tbl_head01">
	<table>
	<colgroup>
		<col class="w50">
		<col class="w60">
		<col class="w130">
		<col class="w130">
		<col class="w130">
		<col>
		<col class="w130">
		<col class="w100">
		<col class="w100">
		<col class="w100">
	</colgroup>
	<thead>
	<tr>
		<th scope="col"><input type="checkbox" name="chkall" value="1" onclick="check_all(this.form);"></th>
		<th scope="col">번호</th>
		<th scope="col"><a href="/admin/member.php?code=point&page=&filed=b.name&orderby=asc">회원명</a></th>
		<th scope="col"><a href="/admin/member.php?code=point&page=&filed=a.mb_id&orderby=asc">아이디</a></th>
		<th scope="col"><a href="/admin/member.php?code=point&page=&filed=b.grade&orderby=asc">등급</a></th>
		<th scope="col"><a href="/admin/member.php?code=point&page=&filed=a.po_content&orderby=asc">포인트내용</a></th>
		<th scope="col"><a href="/admin/member.php?code=point&page=&filed=a.po_datetime&orderby=asc">일시</a></th>
		<th scope="col">만료일</th>
		<th scope="col"><a href="/admin/member.php?code=point&page=&filed=a.po_point&orderby=asc">포인트</a></th>
		<th scope="col">포인트합</th>
	</tr>
	</thead>
	<tbody class="list">
	<tr class="list0">
		<td>
			<input type="hidden" name="po_id[0]" value="1">
			<input type="hidden" name="mb_id[0]" value="tubeweb3">
			<label for="chk_0" class="sound_only">주문번호 20100418280763 (1293556404) 배송완료</label>
			<input type="checkbox" name="chk[]" value="0" id="chk_0">
		</td>
		<td>1</td>
		<td class="tal"><span class="sv_wrap">
<a href="javascript:void(0);" class="sv_member">세글만</a>
<span class="sv">
<a href="http://demofran.com/admin/pop_memberform.php?mb_id=tubeweb3" onclick="win_open(this,'win_member','1200','600','yes');return false;">회원정보수정</a>
<a href="http://demofran.com/admin/formmail.php?mb_id=tubeweb3&name=%EC%84%B8%EA%B8%80%EB%A7%8C&email=2qyUnKnIk5mlmtHHn9JelaLO" onclick="win_open(this,'win_email','650','580','no'); return false;">메일보내기</a>
</span>

<noscript class="sv_nojs"><span class="sv">
<a href="http://demofran.com/admin/pop_memberform.php?mb_id=tubeweb3" onclick="win_open(this,'win_member','1200','600','yes');return false;">회원정보수정</a>
<a href="http://demofran.com/admin/formmail.php?mb_id=tubeweb3&name=%EC%84%B8%EA%B8%80%EB%A7%8C&email=2qyUnKnIk5mlmtHHn9JelaLO" onclick="win_open(this,'win_email','650','580','no'); return false;">메일보내기</a>
</span>
</noscript></span></td>
		<td class="tal">tubeweb3</td>
		<td>다이아몬드</td>
		<td class="tal">주문번호 20100418280763 (1293556404) 배송완료</td>
		<td>2020-10-04 18:28:57</td>
		<td class="tac">
			&nbsp;		</td>
		<td class="tar">1,580</td>
		<td class="tar">1,580</td>
	</tr>
		</tbody>
	</table>
</div>
<form>

<div class="information">
	<h4>도움말</h4>
	<div class="content">
		<div class="desc02">
			<p>ㆍ포인트가 음수인 내역을 삭제할 경우 포인트가 다시 복원처리됩니다.</p>
			<p>ㆍ포인트가 양수인 내역을 삭제할 경우 포인트가 다시 차감처리됩니다.</p>
		</div>
	</div>
</div>

<script>
function fpointlist_submit(f)
{
    if(!is_checked("chk[]")) {
        alert(document.pressed+" 하실 항목을 하나 이상 선택하세요.");
        return false;
    }

    if(document.pressed == "선택삭제") {
        if(!confirm("선택한 자료를 정말 삭제하시겠습니까?")) {
            return false;
        }
    }

    return true;
}

$(function(){
	// 날짜 검색 : TODAY MAX값으로 인식 (maxDate: "+0d")를 삭제하면 MAX값 해제
	$("#fr_date, #to_date").datepicker({ changeMonth: true, changeYear: true, dateFormat: "yy-mm-dd", showButtonPanel: true, yearRange: "c-99:c+99", maxDate: "+0d" });
});
</script>
</div>

</div>
</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

