<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="ko">
<head>
<body>
<%@ include file="../admin_common/admin_header.jsp"%>

<script>
function deleteFaq(faq_no) {
    if (!isNaN(faq_no)) {
           var confirmed = confirm("정말로 삭제하시겠습니까?");
           if (confirmed) {
               var form = document.createElement("form");
               form.setAttribute("method", "post");
               form.setAttribute("action", "admin_customer_faq_delete.do");

               var input = document.createElement("input");
               input.setAttribute("type", "hidden");
               input.setAttribute("name", "faq_no");
               input.setAttribute("value", parseInt(faq_no)); // 문자열을 숫자로 변환하여 설정

               form.appendChild(input);
               document.body.appendChild(form);

               form.submit();
           }
       } else {
           alert("유효하지 않은 상품 번호입니다.");
       }
}
function multiDelete() {
	var form = document.getElementById('faqlist');
    if (!form) {
        alert('리스트가 정상적으로 로드되지 않았습니다.');
        return;
    }
	
	var selected = document.querySelectorAll('.tbl_head01 input[name="chk[]"]:checked');
	var deleteItem = Array.from(selected).map(chk => chk.value);
	
	if (deleteItem.length === 0) {
		alert("선택된 항목이 없습니다.");
		return;
	}
	
	var confirmed = confirm("정말로 삭제하시겠습니까?");
	if (confirmed) {
		form.setAttribute("method", "post");
	    form.setAttribute("action", "admin_customer_faq_delete2.do");
	    
	    var input = document.createElement("input");
	    input.setAttribute("type", "hidden");
	    input.setAttribute("name", "deleteItem");
	    input.setAttribute("value", deleteItem.join(','));
	    
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
					<a href="admin_customer_qna.do">1:1 상담문의
						<em>0</em>
					</a>
				</dd>
				<dd class="h10">
					<a href="admin_customer_chat.do">1:1 채팅문의</a>
				</dd>
				<dt class="h20 menu_toggle">FAQ 작성</dt>
				<dd class="h20 active">
					<a href="admin_customer_faq_lists.do">FAQ 관리</a>
				</dd>
				<dd class="h20">
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
	<h1>FAQ 관리</h1>
	
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
							<select name="searchField">
								<option value="all">전체</option>
								<option value="faq_title">제목</option>
								<option value="faq_content">내용</option>
								<option value="faq_classified">분류명</option>
							</select>
							<input type="text" name="searchKeyword" value="" class="frm_input" size="30">
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

<form name="faqlist" id="faqlist" method="post">
<input type="hidden" name="q1" value="code=faq_group">
<input type="hidden" name="page" value="1">

<div class="local_ov mart30">
	전체 : <b class="fc_red">${ maps.totalCount }</b> 건 조회
</div>
<div class="local_frm01">
	<input type="submit" name="act_button" value="선택수정" class="btn_lsmall bx-white" onclick="document.pressed=this.value">
<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white" onclick="multiDelete(); return false;"></div>
<div class="tbl_head01">
	<table>
	<colgroup>
		<col class="w50">
		<col class="w50">
		<col class="w100">
		<col class="w400">
		<col>
		<col class="w100">
	</colgroup>
	<thead>
	<tr>
		<th scope="col"><input type="checkbox" name="chkall" value="1" onclick="check_all(this.form);"></th>
		<th scope="col">번호</th>
		<th scope="col">분류명</th>
		<th scope="col">제목</th>
		<th scope="col">내용</th>
		<th scope="col">관리</th>
	</tr>
	</thead>
	<tbody class="list">
		<c:choose>
			<c:when test="${ empty lists }">
				<tr>
					<td colspan='6' class="empty_table">리스트가 없습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${ lists }" var="item" varStatus="loop">
					<tr class="${ loop.index % 2 == 0 ? 'list1' : 'list0' }">
						<td>
							<input type="hidden" name="faq_no" value="${ item.faq_no }">
							<label for="chk_0" class="sound_only">${ item.faq_classified }</label>
							<input type="checkbox" name="chk[]" value="${ item.faq_no }" id="chk_0">
						</td>
						<td>${ item.faq_no }</td>
						<td><span class="ellipsis1">${ item.faq_classified }</span></td>
						<td class="tal"><span class="ellipsis1">${ item.faq_title }</span></td>
						<td class="tal"><span class="ellipsis1">${ item.faq_content }</span></td>
						<td>
							<a href="admin_customer_faq_edit.do?faq_no=${ item.faq_no }" class="btn_small">수정</a>
							<a href="#" onclick="event.preventDefault(); deleteFaq(${item.faq_no});" class="btn_small white">삭제</a>
						</td>
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

<nav class="pg_wrap">
<span class="pg">
	${ pagingImg }
</span>
</nav>
</div>

</div>
</div>
</body>
</html>

