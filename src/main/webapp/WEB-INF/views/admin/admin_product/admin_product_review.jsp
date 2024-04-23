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
				<dd class="g10">
					<a href="admin_product_lists.do">
						전체 상품관리</a>
				</dd>
				<dd class="g10 active">
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
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 상품관리 <i class="ionicons ion-ios-arrow-right"></i> 상품 후기관리		</div>
	
<div class="s_wrap">
	<h1>상품 후기관리</h1>
	
<h2>기본검색</h2>
<form name="fsearch" id="fsearch" method="get">
<input type="hidden" name="code" value="review">
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
				<option value="mb_id">작성자</option>
				<option value="seller_id">판매자</option>
			</select>
			<input type="text" name="stx" value="" class="frm_input" size="30">
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

<form name="freviewlist" id="freviewlist" method="post" action="./goods/goods_review_delete.php" onsubmit="return freviewlist_submit(this);">
<input type="hidden" name="q1" value="code=review">
<input type="hidden" name="page" value="1">

<div class="local_ov mart30">
	전체 : <b class="fc_red">0</b> 건 조회
</div>
<div class="local_frm01">
	<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white" onclick="document.pressed=this.value"></div>
<div class="tbl_head01">
	<table>
	<colgroup>
		<col class="w50">
		<col class="w50">
		<col class="w60">
		<col>
		<col class="w100">
		<col class="w100">
		<col class="w80">
		<col class="w100">
	</colgroup>
	<thead>
	<tr>
		<th scope="col"><input type="checkbox" name="chkall" value="1" onclick="check_all(this.form);"></th>
		<th scope="col">번호</th>
		<th scope="col">이미지</th>
		<th scope="col">내용</th>
		<th scope="col"><a href="/admin/goods.php?code=review&page=&filed=seller_id&orderby=asc">판매자</a></th>
		<th scope="col"><a href="/admin/goods.php?code=review&page=&filed=mb_id&orderby=asc">작성자</a></th>
		<th scope="col"><a href="/admin/goods.php?code=review&page=&filed=reg_time&orderby=asc">작성일</a></th>
		<th scope="col"><a href="/admin/goods.php?code=review&page=&filed=score&orderby=asc">평점</a></th>
	</tr>
	</thead>
	<tbody><tr><td colspan="8" class="empty_table">자료가 없습니다.</td></tr>	</tbody>
	</table>
</div>
<div class="local_frm02">
	<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white" onclick="document.pressed=this.value"></div>
</form>


<script>
function freviewlist_submit(f)
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
</script>
</div>

</div>
</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

