<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="../admin_common/admin_isLoggedin.jsp" %>
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
				<dd class="g10">
					<a href="admin_product_lists.do">
						전체 상품관리</a>
				</dd>
				<dd class="g10">
					<a href="admin_product_review.do">
						상품 리뷰관리
						<em>0</em>
					</a>
				</dd>
				<dd class="g10 active">
					<a href="admin_product_category.do">
						카테고리 관리
						<em>0</em>
					</a>
				</dd>
			</dl>
		</div>
		<div id="content">
		<div class="breadcrumb">
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 카테고리 관리 <i class="ionicons ion-ios-arrow-right"></i> 카테고리 관리		</div>
	
<div class="s_wrap">
	<h1>카테고리 관리</h1>
	
<h2>카테고리 등록</h2>
<form name="fcategoryform" method="post" action="./category/category_update.php" enctype="MULTIPART/FORM-DATA">
<input type="hidden" name="q1" value="code=list">
<input type="hidden" name="token" value="">

<div class="tbl_frm01">
	<table>
	<colgroup>
		<col class="w140">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">카테고리 소속</th>
		<td>
			<select id="sel_ca1" name="sel_ca1">
<option value="">=카테고리선택=</option>
<option value="005">가구/인테리어</option>
<option value="001">패션의류/잡화/뷰티</option>
<option value="002">식품/생필품</option>
<option value="003">출산/유아동</option>
<option value="004">생활/건강</option>
<option value="007">스포츠/레저/자동차/공구</option>
<option value="006">가전/디지털/컴퓨터</option>
<option value="008">도서/여행/e쿠폰/취미</option>
</select>
			<select id="sel_ca2" name="sel_ca2">
<option value="">=카테고리선택=</option>
</select>
			<select id="sel_ca3" name="sel_ca3">
<option value="">=카테고리선택=</option>
</select>
			<select id="sel_ca4" name="sel_ca4">
<option value="">=카테고리선택=</option>
</select>

			<script>
			$(function() {
				$("#sel_ca1").multi_select_box("#sel_ca",4,tb_admin_url+"/ajax.category_select_json.php","=카테고리선택=");
				$("#sel_ca2").multi_select_box("#sel_ca",4,tb_admin_url+"/ajax.category_select_json.php","=카테고리선택=");
				$("#sel_ca3").multi_select_box("#sel_ca",4,tb_admin_url+"/ajax.category_select_json.php","=카테고리선택=");
				$("#sel_ca4").multi_select_box("#sel_ca",4,"","=카테고리선택=");
			});
			</script>
		</td>
	</tr>
	<tr>
		<th scope="row">카테고리명</th>
		<td><input type="text" name="catename" required itemname="카테고리명" class="frm_input required" size="50"></td>
	</tr>
	<tr>
		<th scope="row">카테고리 상단배너</th>
		<td><input type="file" name="headimg"></td>
	</tr>
	<tr>
		<th scope="row">카테고리 상단배너 링크</th>
		<td>
			<input type="text" name="headimgurl" class="frm_input" size="50">
			<span class="frm_info fc_125">예시) /shop/view.php?index_no=1</span>		</td>
	</tr>
	</tbody>
	</table>
</div>
<div class="btn_confirm">
	<input type="submit" class="btn_large" value="저장">
</div>
</form>

<div class="sho_cate_bx mart30">
	<div class="local_frm02">
		<a href="http://demofran.com/admin/category/category_excel.php" class="btn_lsmall bx-white"><i class="fa fa-file-excel-o"></i> 카테고리 엑셀저장</a>
	</div>
	<ul>
	<li>
		<div>
			<img src="http://demofran.com/img/icon/no_01_over.gif" class="vam" alt="1차">
			<b>005</b>
			<a href="javascript:post_delete('http://demofran.com/admin/category/category_delete.php', '26');" class="btn_ssmall red">삭제</a>
			<a href="javascript:modok('26');" class="btn_ssmall">수정</a>
			<a href="?code=list&sel_ca1=005"><b>가구/인테리어</b></a> <b class="fc_255">(6)</b>
			<div id="co26" style="display:none;"><iframe id="cos26" frameborder="0" width="100%" height="350"></iframe></div>
		</div>
	</li>
<li>
		<div>
			<img src="http://demofran.com/img/icon/no_01_over.gif" class="vam" alt="1차">
			<b>001</b>
			<a href="javascript:post_delete('http://demofran.com/admin/category/category_delete.php', '1');" class="btn_ssmall red">삭제</a>
			<a href="javascript:modok('1');" class="btn_ssmall">수정</a>
			<a href="?code=list&sel_ca1=001"><b>패션의류/잡화/뷰티</b></a> <b class="fc_255">(8)</b>
			<div id="co1" style="display:none;"><iframe id="cos1" frameborder="0" width="100%" height="350"></iframe></div>
		</div>
	</li>
<li>
		<div>
			<img src="http://demofran.com/img/icon/no_01_over.gif" class="vam" alt="1차">
			<b>002</b>
			<a href="javascript:post_delete('http://demofran.com/admin/category/category_delete.php', '10');" class="btn_ssmall red">삭제</a>
			<a href="javascript:modok('10');" class="btn_ssmall">수정</a>
			<a href="?code=list&sel_ca1=002"><b>식품/생필품</b></a> <b class="fc_255">(5)</b>
			<div id="co10" style="display:none;"><iframe id="cos10" frameborder="0" width="100%" height="350"></iframe></div>
		</div>
	</li>
<li>
		<div>
			<img src="http://demofran.com/img/icon/no_01_over.gif" class="vam" alt="1차">
			<b>003</b>
			<a href="javascript:post_delete('http://demofran.com/admin/category/category_delete.php', '16');" class="btn_ssmall red">삭제</a>
			<a href="javascript:modok('16');" class="btn_ssmall">수정</a>
			<a href="?code=list&sel_ca1=003"><b>출산/유아동</b></a> <b class="fc_255">(5)</b>
			<div id="co16" style="display:none;"><iframe id="cos16" frameborder="0" width="100%" height="350"></iframe></div>
		</div>
	</li>
<li>
		<div>
			<img src="http://demofran.com/img/icon/no_01_over.gif" class="vam" alt="1차">
			<b>004</b>
			<a href="javascript:post_delete('http://demofran.com/admin/category/category_delete.php', '22');" class="btn_ssmall red">삭제</a>
			<a href="javascript:modok('22');" class="btn_ssmall">수정</a>
			<a href="?code=list&sel_ca1=004"><b>생활/건강</b></a> <b class="fc_255">(3)</b>
			<div id="co22" style="display:none;"><iframe id="cos22" frameborder="0" width="100%" height="350"></iframe></div>
		</div>
	</li>
<li>
		<div>
			<img src="http://demofran.com/img/icon/no_01_over.gif" class="vam" alt="1차">
			<b>007</b>
			<a href="javascript:post_delete('http://demofran.com/admin/category/category_delete.php', '47');" class="btn_ssmall red">삭제</a>
			<a href="javascript:modok('47');" class="btn_ssmall">수정</a>
			<a href="?code=list&sel_ca1=007"><b>스포츠/레저/자동차/공구</b></a> <b class="fc_255">(10)</b>
			<div id="co47" style="display:none;"><iframe id="cos47" frameborder="0" width="100%" height="350"></iframe></div>
		</div>
	</li>
<li>
		<div>
			<img src="http://demofran.com/img/icon/no_01_over.gif" class="vam" alt="1차">
			<b>006</b>
			<a href="javascript:post_delete('http://demofran.com/admin/category/category_delete.php', '33');" class="btn_ssmall red">삭제</a>
			<a href="javascript:modok('33');" class="btn_ssmall">수정</a>
			<a href="?code=list&sel_ca1=006"><b>가전/디지털/컴퓨터</b></a> <b class="fc_255">(13)</b>
			<div id="co33" style="display:none;"><iframe id="cos33" frameborder="0" width="100%" height="350"></iframe></div>
		</div>
	</li>
<li>
		<div>
			<img src="http://demofran.com/img/icon/no_01_over.gif" class="vam" alt="1차">
			<b>008</b>
			<a href="javascript:post_delete('http://demofran.com/admin/category/category_delete.php', '58');" class="btn_ssmall red">삭제</a>
			<a href="javascript:modok('58');" class="btn_ssmall">수정</a>
			<a href="?code=list&sel_ca1=008"><b>도서/여행/e쿠폰/취미</b></a> <b class="fc_255">(5)</b>
			<div id="co58" style="display:none;"><iframe id="cos58" frameborder="0" width="100%" height="350"></iframe></div>
		</div>
	</li>
	</ul>
</div>

<script>
// POST 방식으로 삭제
function post_delete(action_url, val)
{
	var f = document.fpost;

	if(confirm("한번 삭제한 자료는 복구할 방법이 없습니다.\n\n정말 삭제하시겠습니까?")) {
        f.ca_no.value = val;
		f.action = action_url;
		f.submit();
	}
}

function modok(no)
{
	document.all['cos'+no].src = "http://demofran.com/admin/category/category_mod.php?index_no="+no;
	document.all['co'+no].style.display = "";
}
</script>

<form name="fpost" method="post">
<input type="hidden" name="q1" value="code=list">
<input type="hidden" name="ca_no" value="">
</form>
</div>

</div>
</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

