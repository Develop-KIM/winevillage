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
						
						<!-- <tr class="list1">
							<td>
								<input type="hidden" name="gs_id[0]" value="21">
								<input type="checkbox" name="chk[]" value="0">
							</td>
							<td>10</td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">[와인나라워크샵]워크샵으로 인한 매장 오픈시간 변경</a></span></td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">안녕하세요? 와인나라 입니다.
								와인나라가 워크샵을 가게 됩니다.(24일~25일) 코엑스,강남,양평,매장 오픈시간이 변경 됩니다.
								매장 오픈시간 변경  25일 월요일 10시 오픈 -> 1시 오픈
								코엑스점은 일요일에도 정상 영업을 하지만 24일 워크샵진행관계로 오픈하지 않습니다.
								감사합니다.^_^</a></span></td>
							<td>13-11-20</td>
							<td class="fc_00f">23-11-01</td>
							<td><a href="./goods.php?code=form&amp;w=u&amp;gs_id=21&amp;page=1&amp;bak=list" class="btn_small">수정</a>
							</td>
							</tr><tr class="list0">
							</tr>
						
						<tr class="list0">
							<td>
								<input type="hidden" name="gs_id[0]" value="21">
								<input type="checkbox" name="chk[]" value="0">
							</td>
							<td>09</td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">[와인나라 진주] 매장 휴가 안내</a></span></td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">안녕하세요? 와인나라 진주점 입니다.
								진주점은 여름휴가를 미루어 10월 10일~14일까지 휴가를 갑니다.   15일(화)부터 정상영업예정입니다.
								궁금한 사항 있으시면 연락주세요.  TEL)055-743-9143</a></span></td>
							<td>13-10-07</td>
							<td class="fc_00f">23-11-01</td>
							<td><a href="./goods.php?code=form&amp;w=u&amp;gs_id=21&amp;page=1&amp;bak=list" class="btn_small">수정</a>
							</td>
							</tr><tr class="list0">
							</tr>
						
						<tr class="list1">
							<td>
								<input type="hidden" name="gs_id[0]" value="21">
								<input type="checkbox" name="chk[]" value="0">
							</td>
							<td>08</td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">와인나라 추석 휴무 안내</a></span></td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">안녕하세요? 와인나라 추석 휴무 안내 입니다.
								와인나라 전매장은 19일~20일 휴무이며 18일 수요일 자세한 오픈 시간 입니다.  
								양평,강남점 - 18일 10시~6시  SFC점-18일 12시~9시  코엑스점-18일 12시~7시  수원점-18일 11시~6시
								서래점-18일 11시~새벽 1시  진주점-18일 11시~10시  21일 토요일 정상영업합니다.  (코엑스점은 일요일도 오픈)
								와인나라 매장안내 ▼  /shop/company/company_07.php
								=========================================================================
								고객님들의 가정에 건강과 행복이 깃드시길 기원합니다.
								그동안 함께 하지 못했던 소중한 가족과 편안한 시간 보내시고
								이웃들과 지인분들께도 따뜻하고 넉넉한 마음 나누는
								뜻 깊은 한가위 되시기를 기원합니다.
								남은 2013년에도 와인나라에 큰 관심과 사랑 부탁드립니다.  
								감사합니다.</a></span></td>
							<td>13-09-16</td>
							<td class="fc_00f">23-11-01</td>
							<td><a href="./goods.php?code=form&amp;w=u&amp;gs_id=21&amp;page=1&amp;bak=list" class="btn_small">수정</a>
							</td>
							</tr><tr class="list0">
							</tr>
						
						<tr class="list0">
							<td>
								<input type="hidden" name="gs_id[0]" value="21">
								<input type="checkbox" name="chk[]" value="0">
							</td>
							<td>07</td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">[와인나라 서래점] 여름 휴가 8월 4일(일)~ 8일(목)</a></span></td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">안녕하세요? 와인나라 서래마을점이 8월 4일 일요일부터 8월 8일 목요일까지
								여름 휴가 기간으로 매장을 오픈하지 않습니다. 여름 휴가 이후 더욱 나은 모습으로 인사드리겠습니다.
								즐거운 여름 휴가 보내세요  감사합니다.  와인라나 서래점</a></span></td>
							<td>13-08-05</td>
							<td class="fc_00f">23-11-01</td>
							<td><a href="./goods.php?code=form&amp;w=u&amp;gs_id=21&amp;page=1&amp;bak=list" class="btn_small">수정</a>
							</td>
							</tr><tr class="list0">
							</tr>
						
						<tr class="list1">
							<td>
								<input type="hidden" name="gs_id[0]" value="21">
								<input type="checkbox" name="chk[]" value="0">
							</td>
							<td>06</td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">[공지] 와인나라 리뉴얼 기념 이벤트 2탄 당첨자 발표(2)</a></span></td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">와인나라 입니다.
								지난 6월 12일~7월15일 동안 있었던 와인나라 널리널리 알리기 이벤트가 종료되었습니다.
								이벤트 기간동안 보내주신 고객여러분의 많은 관심과 사랑에 감사드립니다.
								이벤트 당첨자 발표가 지연된 점 양해부탁드립니다.
								이벤트에 당첨되신 분들은 개별연락을 통해 발송이 진행되오며 회원정보에 기재된 주소지
								(혹은 휴대번호)를 통해 상품배송이 진행됩니다. 이점 확인 부탁드립니다.
								※ 5등(무료쿠폰 발송) 당첨자는 SMS로 순차적으로 개별발송 예정입니다.
								*잘못된 주소로 인한 상품 재발송은 불가하오니 다시한번 주소를 확인하여 주시기 바랍니다.  
								* 5등 당첨자 (총119명 / 생어거스틴 무료쿠폰 발송 명단)</a></span></td>
							<td>13-07-23</td>
							<td class="fc_00f">23-11-01</td>
							<td><a href="./goods.php?code=form&amp;w=u&amp;gs_id=21&amp;page=1&amp;bak=list" class="btn_small">수정</a>
							</td>
							</tr><tr class="list0">
							</tr>
						
						<tr class="list0">
							<td>
								<input type="hidden" name="gs_id[0]" value="21">
								<input type="checkbox" name="chk[]" value="0">
							</td>
							<td>05</td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">[공지] 와인나라 리뉴얼 기념 이벤트 2탄 당첨자 발표(1)</a></span></td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">와인나라 입니다. 지난 6월 12일~7월15일 동안 있었던 와인나라 널리널리 알리기 이벤트가 종료되었습니다.
								이벤트 기간동안 보내주신 고객여러분의 많은 관심과 사랑에 감사드립니다.
								#.와인나라 리뉴얼 기념 이벤트(널리널리 알리기) 당첨자 발표 (14명) 이벤트 당첨자 발표가 지연된 점 양해부탁드립니다.
								이벤트에 당첨되신 분들은 개별연락을 통해 발송이 진행되오며 회원정보에 기재된 주소지
								(혹은 휴대번호)를 통해 상품배송이 진행됩니다. 이점 확인 부탁드립니다.
								*잘못된 주소로 인한 상품 재발송은 불가하오니 다시한번 주소를 확인하여 주시기 바랍니다.  
								- 와인나라 드림</a></span></td>
							<td>13-07-23</td>
							<td class="fc_00f">23-11-01</td>
							<td><a href="./goods.php?code=form&amp;w=u&amp;gs_id=21&amp;page=1&amp;bak=list" class="btn_small">수정</a>
							</td>
							</tr><tr class="list0">
							</tr>
						
						<tr class="list1">
							<td>
								<input type="hidden" name="gs_id[0]" value="21">
								<input type="checkbox" name="chk[]" value="0">
							</td>
							<td>04</td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">[공지] 와인나라 리뉴얼 기념 이벤트 1탄 당첨자 발표</a></span></td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">안녕하세요. 와인나라 입니다.
								지난 6월 12일부터 7월 15일동안 있었던 와인나라 리뉴얼 기념 이벤트에 많은 관심과 사랑 보내주셔서 감사합니다.
								#1. 와인나라 리뉴얼 기념 이벤트 1탄 당첨자 등수 아이디 1등 sang33** 2등 redcat4** lemons** king56**
								3등 mhh68** kim8200** den09** wowks30** vjs** j421** reala** drdext** ley13** siten** yee43**
								uosu** hiti42** crebiz5** swk19** sky3c** ohk29** doodu** sks12** enju** soopo** extraglor**
								insbl** hj7** ksu34** king567**
								▶ 아이디가 중복되신 회원님의 경우 닉네임을 통해 본인 당첨여부를 확인하시기 바랍니다.
								이벤트 당첨 발표가 지연된점 양해 부탁드립니다.
								이벤트에 당첨되신 분들은 개별 연락을 통한 발송이 진행되오며 회원정보에 기재된 주소지 (혹은 휴대번호)를 통해 상품배송이 진행됩니다.
								이점 확인 부탁드리겠습니다.
								*잘못된 주소로 인한 재발송은 불가하니 다시한번 주소를 확인하여 주시기 바랍니다.
								- 와인나라 드림</a></span></td>
							<td>13-07-23</td>
							<td class="fc_00f">23-11-01</td>
							<td><a href="./goods.php?code=form&amp;w=u&amp;gs_id=21&amp;page=1&amp;bak=list" class="btn_small">수정</a>
							</td>
							</tr><tr class="list0">
							</tr>
						
						<tr class="list0">
							<td>
								<input type="hidden" name="gs_id[0]" value="21">
								<input type="checkbox" name="chk[]" value="0">
							</td>
							<td>03</td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">[안내]와인나라 리뉴얼 이벤트 1.2 발표 연기 안내</a></span></td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">안녕하세요. 와인나라 입니다.
								지난 7월 17일 마감된 와인나라 리뉴얼 이벤트 1.2 당첨자 공지가 내부에서 선정과정에 공정성을 높이기 위해 다소 시간이 소요되어
								7월 22일(월)로 연기되었습니다. 발표일정 연기와 관련하여 불편을 드려 죄송합니다. 감사합니다. 와인나라 드림</a></span></td>
							<td>13-07-19</td>
							<td class="fc_00f">23-11-01</td>
							<td><a href="./goods.php?code=form&amp;w=u&amp;gs_id=21&amp;page=1&amp;bak=list" class="btn_small">수정</a>
							</td>
							</tr><tr class="list0">
							</tr>
						
						<tr class="list1">
							<td>
								<input type="hidden" name="gs_id[0]" value="21">
								<input type="checkbox" name="chk[]" value="0">
							</td>
							<td>02</td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">기존 와인나라 회원의 로그인 방법</a></span></td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">기존 와인나라 사이트 가입 회원께서는 비밀번호가 주민번호 앞자리로 임시 변경되었사오니 이점 양해부탁드리며, 로그인시 비밀번호를 주민번호 앞자리로 기입 부탁드립니다.
							로그인 후 정보수정 페이지를 통해 비밀번호를 수정하여 주시면 보다 안전하게 사이트를 이용하실 수 있습니다.
							와인나라 회원분들의 협조 부탁드리겠습니다. 감사합니다.</a></span></td>
							<td>13-06-07</td>
							<td class="fc_00f">23-11-01</td>
							<td><a href="./goods.php?code=form&amp;w=u&amp;gs_id=21&amp;page=1&amp;bak=list" class="btn_small">수정</a>
							</td>
							</tr><tr class="list0">
							</tr>
						
						<tr class="list0">
							<td>
								<input type="hidden" name="gs_id[0]" value="21">
								<input type="checkbox" name="chk[]" value="0">
							</td>
							<td>01</td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">와인나라 사이트가 새롭게 단장하였습니다.</a></span></td>
							<td class="tal"><span class="ellipsis1"><a href="support5.html">안녕하세요 와인나라 입니다. 와인나라 사이트가 고객님들께 더 나은 모습으로 다가가고자 리뉴얼 오픈하였습니다.
								앞으로 와인나라 사이트는 지속적인 업데이트 과정을 통해 고객님들에게 맛있는 와인을 합리적인 가격으로 제공하는데 역할을 다하도록 하겠습니다.
								사용중에 발생하는 오류사항 및 문의는 고객센터를 통해 문의 주시면 조속한 시일내에 보완하도록 하겠습니다.
								(고객센터 :02-2175-0075) - 와인나라 임직원 일동 -</a></span></td>
							<td>13-06-07</td>
							<td class="fc_00f">23-11-01</td>
							<td><a href="./goods.php?code=form&amp;w=u&amp;gs_id=21&amp;page=1&amp;bak=list" class="btn_small">수정</a>
							</td>
							</tr><tr class="list0">
							</tr> -->
						
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
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

