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
			</dl>
		</div>
		<div id="content">
		<div class="breadcrumb">
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 회원관리 <i class="ionicons ion-ios-arrow-right"></i> 회원 등급관리		</div>
	
<div class="s_wrap">
	<h1>회원 등급관리</h1>
	
<h2>세부설정</h2>
<form name="frmlist" method="post" action="./member/member_level_form_update.php">
<div class="tbl_head01">
	<table>
	<colgroup>
		<col class="w70">
		<col class="w170">
		<col class="w130">
		<col class="w150">
		<col>
	</colgroup>
	<thead>
	<tr>
		<th scope="col">레벨</th>
		<th scope="col">등급</th>
		<th scope="col">할인률(선택)</th>
		<th scope="col">절삭</th>
		<th scope="col">비고</th>
	</tr>
	</thead>
	<tbody class="list">
		<tr class="list0">
		<td class="bold">
			Lv.4			<input type="hidden" name="gb_no[0]" value="4">
			<input type="hidden" name="chk[]" value="0" checked>
		</td>
		<td><input type="text" name="gb_name[0]" value="트리니티" class="frm_input wfull"></td>
		<td>
			<input type="text" name="gb_sale[0]" value="0" class="frm_input w70">
			<select name="gb_sale_rate[0]">
				<option value="0" selected="selected">%</option>
				<option value="1">원</option>
			</select>
		</td>
		<td class="tac">
			<select name="gb_sale_unit[0]">
				<option value="0" selected="selected">사용안함</option>
				<option value="10">십원 단위절삭</option>
				<option value="100">백원 단위절삭</option>
				<option value="1000">천원 단위절삭</option>
				<option value="10000">만원 단위절삭</option>
			</select>
		</td>
		<td class="tal">스페셜리스트</td>
	</tr>
		<tr class="list1">
		<td class="bold">
			Lv.3			<input type="hidden" name="gb_no[1]" value="3">
			<input type="hidden" name="chk[]" value="1" checked>
		</td>
		<td><input type="text" name="gb_name[1]" value="다이아몬드" class="frm_input wfull"></td>
		<td>
			<input type="text" name="gb_sale[1]" value="0" class="frm_input w70">
			<select name="gb_sale_rate[1]">
				<option value="0" selected="selected">%</option>
				<option value="1">원</option>
			</select>
		</td>
		<td class="tac">
			<select name="gb_sale_unit[1]">
				<option value="0" selected="selected">사용안함</option>
				<option value="10">십원 단위절삭</option>
				<option value="100">백원 단위절삭</option>
				<option value="1000">천원 단위절삭</option>
				<option value="10000">만원 단위절삭</option>
			</select>
		</td>
		<td class="tal">최상위 고객</td>
	</tr>
		<tr class="list0">
		<td class="bold">
			Lv.2			<input type="hidden" name="gb_no[2]" value="2">
			<input type="hidden" name="chk[]" value="2" checked>
		</td>
		<td><input type="text" name="gb_name[2]" value="골드" class="frm_input wfull"></td>
		<td>
			<input type="text" name="gb_sale[2]" value="0" class="frm_input w70">
			<select name="gb_sale_rate[2]">
				<option value="0" selected="selected">%</option>
				<option value="1">원</option>
			</select>
		</td>
		<td class="tac">
			<select name="gb_sale_unit[2]">
				<option value="0" selected="selected">사용안함</option>
				<option value="10">십원 단위절삭</option>
				<option value="100">백원 단위절삭</option>
				<option value="1000">천원 단위절삭</option>
				<option value="10000">만원 단위절삭</option>
			</select>
		</td>
		<td class="tal">상위 고객</td>
	</tr>
		<tr class="list1">
		<td class="bold">
			Lv.1			<input type="hidden" name="gb_no[3]" value="1">
			<input type="hidden" name="chk[]" value="3" checked>
		</td>
		<td><input type="text" name="gb_name[3]" value="실버" class="frm_input wfull"></td>
		<td>
			<input type="text" name="gb_sale[3]" value="0" class="frm_input w70">
			<select name="gb_sale_rate[3]">
				<option value="0" selected="selected">%</option>
				<option value="1">원</option>
			</select>
		</td>
		<td class="tac">
			<select name="gb_sale_unit[3]">
				<option value="0" selected="selected">사용안함</option>
				<option value="10">십원 단위절삭</option>
				<option value="100">백원 단위절삭</option>
				<option value="1000">천원 단위절삭</option>
				<option value="10000">만원 단위절삭</option>
			</select>
		</td>
		<td class="tal">일반 고객</td>
	</tr>
		<tr class="list0">
		<td class="bold">
			Lv.0			<input type="hidden" name="gb_no[8]" value="1">
			<input type="hidden" name="chk[]" value="8" checked>
		</td>
		<td><input type="text" name="gb_name[8]" value="관리자" class="frm_input wfull"></td>
		<td>
			<input type="text" name="gb_sale[8]" value="0" class="frm_input w70">
			<select name="gb_sale_rate[8]">
				<option value="0" selected="selected">%</option>
				<option value="1">원</option>
			</select>
		</td>
		<td class="tac">
			<select name="gb_sale_unit[8]">
				<option value="0" selected="selected">사용안함</option>
				<option value="10">십원 단위절삭</option>
				<option value="100">백원 단위절삭</option>
				<option value="1000">천원 단위절삭</option>
				<option value="10000">만원 단위절삭</option>
			</select>
		</td>
		<td class="tal">관리자</td>
	</tr>
		</tbody>
	</table>
</div>

<div class="btn_confirm">
	<input type="submit" value="저장" class="btn_large">
</div>
</form>
</div>

</div>
</div>
</body>
</html>

