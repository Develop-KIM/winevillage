<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="ko">
<head>
<body>
<%@ include file="../admin_common/admin_header.jsp"%>

<script>
function multiEdit() {
	var form = document.getElementById('faqcategorylist');
	if (!form) {
		alert('리스트가 정상적으로 로드되지 않았습니다.');
		return;
	}
	
	var selected = document.querySelectorAll('.tbl_head01 input[name="chk[]"]:checked');
	var editItem = Array.from(selected).map(chk => chk.value);
	
	if (editItem.length === 0) {
		alert("선택된 항목이 없습니다.");
		return;
	}
	
	var confirmed = confirm("정말로 수정하시겠습니까?");
	if (confirmed) {
		form.setAttribute("method", "post");
		form.setAttribute("action", "admin_customer_faq_category_edit.do");
	    
		var input = document.createElement("input");
		input.setAttribute("type", "hidden");
		input.setAttribute("name", "editItem");
		input.setAttribute("value", editItem.join(','));

		form.appendChild(input);
		document.body.appendChild(form);
	
		form.submit();		
	}
}
</script>
<div id="wrapper">

		<div id="snb">
			<div class="snb_header ico_config">
				<h2><i class="fa fa-comments-o"></i>고객지원</h2>
			</div>
			<dl>
				<dt class="h10 menu_toggle">고객지원</dt>
				<dd class="h10">
					<a href="admin_customer_inquery.do">1:1 상담문의
						<em>0</em>
					</a>
				</dd>
				<dd class="h10">
					<a href="admin_customer_withdrawal.do">회원 탈퇴내역</a>
				</dd>
				<dt class="h20 menu_toggle">FAQ 작성</dt>
				<dd class="h20">
					<a href="admin_customer_faq_lists.do">FAQ 관리</a>
				</dd>
				<dd class="h20 active">
					<a href="admin_customer_faq_category.do">FAQ 분류</a>
				</dd>
				<dd class="h20">
					<a href="admin_customer_faq_write.do">FAQ 작성</a>
				</dd>
				<dt class="h20 menu_toggle">공지사항</dt>
				<dd class="h20">
					<a href="admin_customer_notice_lists.do">공지사항 관리</a>
				</dd>
				<dd class="h20">
					<a href="admin_customer_notice_write.do">공지사항 작성</a>
				</dd>
			</dl>
		</div>
		<div id="content">
		<div class="breadcrumb">
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 고객지원 <i class="ionicons ion-ios-arrow-right"></i> FAQ 분류		</div>
	
<div class="s_wrap">
	<h1>FAQ 분류</h1>
	
<h2>분류 등록</h2>

<form name="faqcategorylist" id="faqcategorylist" method="post">
<input type="hidden" name="q1" value="code=faq_group">
<input type="hidden" name="page" value="1">

<div class="local_ov">
	전체 : <b class="fc_red">${ categoryCount }</b> 건 조회
</div>
<div class="local_frm01">
	<input type="submit" name="act_button" value="선택수정" class="btn_lsmall bx-white" onclick="document.pressed=this.value">
<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white" onclick="multiEdit(); return false;"></div>
<div class="tbl_head01">
	<table>
	<colgroup>
		<col class="w50">
		<col class="w50">
		<col>
		<col class="w60">
	</colgroup>
	<thead>
	<tr>
		<th scope="col"><input type="checkbox" name="chkall" value="1" onclick="check_all(this.form);"></th>
		<th scope="col">번호</th>
		<th scope="col">분류명</th>
		<th scope="col">FAQ수</th>
	</tr>
	</thead>
	<tbody class="list">
		<c:choose>
			<c:when test="${ empty lists }">
				<tr>
					<td colspan='4'>리스트가 없습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${ lists }" var="item" varStatus="loop">
					<tr class="${ loop.index % 2 == 0 ? 'list1' : 'list0' }">
						<td>
							<input type="hidden" name="faq_no" value="${ item.faq_no }">
							<label for="chk_0" class="sound_only">${ item.faq_classified }</label>
							<input type="checkbox" name="chk[]" value="${ item.faq_classified }" id="chk_0">
						</td>
						<td>${ lists.size() - loop.index }</td>
						<td class="tal"><input type="text" name="faq_classified" value="${ item.faq_classified }" class="frm_input"></td>
						<%-- <td>
							<span class="ellipsis1">${ item.faq_classified }</span>
						</td> --%>
						<td>${ item.faq_count }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</tbody>
	</table>
</div>
<div class="local_frm02">
	<input type="submit" name="act_button" value="선택수정" class="btn_lsmall bx-white" onclick="document.pressed=this.value">
<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white" onclick="document.pressed=this.value"></div>
</form>


<script>
function faqlist_submit(f)
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

