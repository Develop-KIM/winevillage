<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="ko">
<head>
<body>
<%@ include file="../admin_common/admin_header.jsp"%>

<script>
function deleteNotice(notice_no) {
    if (!isNaN(notice_no)) {
           var confirmed = confirm("정말로 삭제하시겠습니까?");
           if (confirmed) {
               var form = document.createElement("form");
               form.setAttribute("method", "post");
               form.setAttribute("action", "admin_customer_notice_delete.do");

               var input = document.createElement("input");
               input.setAttribute("type", "hidden");
               input.setAttribute("name", "notice_no");
               input.setAttribute("value", parseInt(notice_no)); // 문자열을 숫자로 변환하여 설정

               form.appendChild(input);
               document.body.appendChild(form);

               form.submit();
           }
       } else {
           alert("유효하지 않은 상품 번호입니다.");
       }
}
function multiDelete() {
	var form = document.getElementById('noticelist');
    if (!form) {
        alert('리스트가 정상적으로 로드되지 않았습니다.');
        return;
    }
	
	var selected = document.querySelectorAll('#sodr_list input[name="chk[]"]:checked');
	var deleteItem = Array.from(selected).map(chk => chk.value);
	
	if (deleteItem.length === 0) {
		alert("선택된 항목이 없습니다.");
		return;
	}
	
	var confirmed = confirm("정말로 삭제하시겠습니까?");
	if (confirmed) {
		form.setAttribute("method", "post");
	    form.setAttribute("action", "admin_customer_notice_delete2.do");
	    
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
				<dd class="h20">
					<a href="admin_customer_faq_lists.do">FAQ 관리</a>
				</dd>
				<dd class="h20">
					<a href="admin_customer_faq_category.do">FAQ 분류</a>
				</dd>
				<dd class="h20">
					<a href="admin_customer_faq_write.do">FAQ 작성</a>
				</dd>
				<dt class="h20 menu_toggle">공지사항</dt>
				<dd class="h20 active">
					<a href="admin_customer_notice_lists.do">공지사항 관리</a>
				</dd>
				<dd class="h20">
					<a href="admin_customer_notice_write.do">공지사항 작성</a>
				</dd>
			</dl>
		</div>
		<div id="content">
<div class="breadcrumb">
	<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 고객지원 <i class="ionicons ion-ios-arrow-right"></i> 공지사항 관리		</div>

	<div class="s_wrap">
		<h1>공지사항 관리</h1>

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
								<select name="searchField">
									<option value="all">전체</option>
									<option value="notice_title">제목</option>
									<option value="notice_content">내용</option>
								</select>
								<input type="text" name="searchKeyword" value="" class="frm_input" size="30">
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
								<span class="btn_group"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="오늘"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="어제"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="일주일"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="지난달"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="1개월"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="3개월"><input type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="전체"></span>
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

		<form name="noticelist" id="noticelist" method="post">
			<input type="hidden" name="q1" value="code=list">
			<input type="hidden" name="page" value="1">

			<div class="local_ov mart30">
				전체 : <b class="fc_red">${ maps.totalCount }</b> 건 조회
				<span class="ov_a">
					<select id="page_rows" onchange="location='/admin/goods.php?code=list&amp;page=1&amp;page_rows='+this.value;">
						<option value="30" selected="selected">30줄 정렬</option>
						<option value="50">50줄 정렬</option>
						<option value="100">100줄 정렬</option>
						<option value="150">150줄 정렬</option>
					</select>
				</span>
			</div>
			<div class="local_frm01">
				<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white" onclick="multiDelete(); return false;">
				<!-- <input type="submit" name="act_button" value="선택순위수정" class="btn_lsmall bx-white" onclick="document.pressed=this.value"> -->
				<a href="admin_customer_notice_write.do" class="fr btn_lsmall red"><i class="ionicons ion-android-add"></i> 공지등록</a>
			</div>

			<div class="tbl_head01">
				<table id="sodr_list" class="tablef">
					<colgroup>
						<col class="w50">
						<col class="w50">
						<col class="w300">
						<col>
						<col class="w80">
						<col class="w80">
						<col class="w60">
						<col class="w100">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" rowspan="2"><input type="checkbox" name="chkall" value="1" onclick="check_all(this.form);"></th>
							<th scope="col" rowspan="2">번호</th>
							<th scope="col" rowspan="2">제목</th>
							<th scope="col" rowspan="2">내용</th>
							<th scope="col" colspan="2"><a href="/admin/goods.php?code=list&amp;page=&amp;filed=reg_time&amp;orderby=asc">등록일자</a></th>
							<th scope="col" colspan="1" rowspan="2">고정</th>
							<th scope="col" colspan="1" rowspan="2">관리</th>
						</tr>
						<tr class="rows">
							<th scope="col"><a href="/admin/goods.php?code=list&amp;page=&amp;filed=reg_time&amp;orderby=asc">최초등록일</a></th>
							<th scope="col"><a href="/admin/goods.php?code=list&amp;page=&amp;filed=reg_time&amp;orderby=asc">최근수정일</a></th>
							<!-- <th scope="col"><a href="/admin/goods.php?code=list&page=&filed=isopen&orderby=asc">진열</a></th>
							<th scope="col"><a href="/admin/goods.php?code=list&page=&filed=stock_qty&orderby=asc">재고</a></th> -->
						</tr>
					</thead>
					<tbody>
						<c:choose>
						<c:when test="${ empty lists }">
							<tr>
								<td colspan='7' class="empty_table">리스트가 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${ lists }" var="item" varStatus="loop">
								<tr class="${ loop.index % 2 == 0 ? 'list1' : 'list0' }">
								<td>
									<input type="hidden" name="gs_id[0]" value="${ item.notice_no }">
									<input type="checkbox" name="chk[]" value="${ item.notice_no }">
								</td>
								<td style="display:none;">${maps.totalCount - (((maps.pageNum-1) * maps.pageSize) + loop.index) }</td>
								<td>${ item.notice_no }</td>
								<td class="tal">
									<span class="ellipsis1"><a href="admin_customer_notice_edit.do?notice_no=${ item.notice_no }">
									${ item.notice_title }
									</a></span>
								</td>
								<td class="tal">
									<span class="ellipsis1"><a href="admin_customer_notice_edit.do?notice_no=${ item.notice_no }">
									${ item.notice_content }
									</a></span>
								</td>
								<td>${ item.notice_postdate }</td>
								<td class="fc_00f">
									${ item.notice_editdate == null ? item.notice_postdate : item.notice_editdate }
								</td>
								<td>
								<div class="btn_small ${ item.notice_pinned == 0 ? 'white' : '' }">
									${ item.notice_pinned == 0 ? '해제됨' : '고정됨' }
								</div>
								</td>
								<td>
									<a href="admin_customer_notice_edit.do?notice_no=${ item.notice_no }" class="btn_small">수정</a>
									<a href="#" onclick="event.preventDefault(); deleteNotice(${item.notice_no});" class="btn_small white">삭제</a>
								</td>
								</tr>
							</c:forEach>
						</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</form>

		<nav class="pg_wrap">
			<span class="pg">
				<span class="pg_start">처음</span>
				<span class="pg_prev">이전</span>
				<span class="sound_only">열린</span>
				<strong class="pg_current">1</strong>
				<span class="sound_only">페이지</span>
				<a href="/admin/order.php?code=list&page=2" class="pg_page">2
					<span class="sound_only">페이지</span>
				</a>
				<span class="pg_next">다음</span>
				<a href="/admin/order.php?code=list&page=2" class="pg_page pg_end">맨끝</a>
			</span>
		</nav>
		
		<nav class="pg_wrap">
		<span class="pg">
			${ pagingImg }
		</span>
		</nav>

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
</body>
</html>

