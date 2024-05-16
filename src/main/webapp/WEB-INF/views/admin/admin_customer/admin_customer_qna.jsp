<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="ko">
<head>
<body>
<%@ include file="../admin_common/admin_header.jsp"%>
	
<script>
//1:1 상담문의 항목 클릭 시 상세보기
function detailQna(event) {
	event.preventDefault();
	
	//리스트 내 항목 tr 아래에 위치해야 함. tr 위치 지정.
	var tr = $(event.target).parent().parent().parent();

	if (tr.next().hasClass('tr_detail_qna')) {
		$('.form_detail_qna').slideUp();
		setTimeout(function(){
			tr.next().remove();
		}, 500);
	} else {
		var qna_no = event.currentTarget.dataset.no;  // lists에서 no property를 참조
		var qna_category = event.currentTarget.dataset.category;  // lists에서 category property를 참조
		var qna_writer = event.currentTarget.dataset.writer;  // lists에서 writer property를 참조
		var qna_phonenumber = event.currentTarget.dataset.phonenumber;  // lists에서 phonenumber property를 참조
		var qna_title = event.currentTarget.dataset.title;  // lists에서 title property를 참조
		var qna_content = event.currentTarget.dataset.content;  // lists에서 content property를 참조
		var qna_postdate = event.currentTarget.dataset.postdate;  // lists에서 postdate property를 참조
		var qna_editdate = event.currentTarget.dataset.editdate;  // lists에서 editdate property를 참조
		var qna_answered = event.currentTarget.dataset.answered;  // lists에서 answered property를 참조
		
		//받아오는 데이터가 없을 경우(답변대기-undefined인 경우) 아래 프로퍼티를 null값으로 반환
		var qna_answer_title = (typeof event.currentTarget.dataset.answerTitle !== 'undefined') ?
				event.currentTarget.dataset.answerTitle : '';
		var qna_answer_content = (typeof event.currentTarget.dataset.answerContent !== 'undefined') ?
				event.currentTarget.dataset.answerContent : '';
		var qna_answer_postdate = (typeof event.currentTarget.dataset.answerPostdate !== 'undefined') ?
				event.currentTarget.dataset.answerPostdate : '';
		var qna_answer_editdate = (typeof event.currentTarget.dataset.answerEditdate !== 'undefined') ?
				event.currentTarget.dataset.answerEditdate : '';
		
		//폼 추가
		var new_tr = '<tr class="tr_detail_qna"><td colspan="9"><div class="tbl_frm02 form_detail_qna" style="display:none;">'
			+ '<div class="mart20"></div>'
			+ '<table>'
			+ '<colgroup>' + '<col class="w180"><col>' + '</colgroup>'
			+ '<tbody>'
			+ '<tr>' + '<th scope="row">번호</th>'
			+ '<td><input type="text" name="qna_no" value="'+ qna_no +'" required="" itemname="" class="frm_input" readonly></td>'
			+ '</tr>'
			+ '<tr>' + '<th scope="row">작성일</th>'
			+ '<td><input type="text" name="qna_postdate" value="'+ qna_postdate +'" required="" itemname="" class="frm_input" readonly></td>'
			+ '</tr>'
			+ '<tr>' + '<th scope="row">구분</th>'
			+ '<td><input type="text" name="qna_category" value="'+ qna_category +'" required="" itemname="" class="required frm_input" size="80" readonly></td>'
			+ '</tr>'
			+ '<tr>' + '<th scope="row">이름</th>'
			+ '<td><input type="text" name="qna_writer" value="'+ qna_writer +'" required="" itemname="" class="required frm_input" size="80" readonly></td>'
			+ '</tr>'
			+ '<tr>' + '<th scope="row">연락처</th>'
			+ '<td><input type="text" name="qna_phonenumber" value="'+ qna_phonenumber +'" class="required frm_input" size="80" readonly></td>'
			+ '</tr>'
			+ '<tr>' + '<th scope="row">제목</th>'
			+ '<td><input type="text" name="qna_title" value="'+ qna_title +'" class="required frm_input" size="80" readonly></td>'
			+ '</tr>'
			+ '<tr>' + '<th scope="row">문의내용</th>'
			+ '<td><textarea name="qna_content" class="frm_textbox" readonly>'+ qna_content +'</textarea></td>'
			+ '</tr>'
			+ '</tbody></table>'
			+ '<div class="btn_confirm">'
			+ '<input type="submit" value="답변" class="btn_small bx-red open-reply-qna" '
			+ 'data-no="'+ qna_no +'" data-answer-title="'+ qna_answer_title +'" data-answer-content="'+ qna_answer_content +'" '
			+ 'data-answer-postdate="'+ qna_answer_postdate +'" data-answer-editdate="'+ qna_answer_editdate +'" '
			+ 'onclick="replyQna(event) return false;">'
			+ '<input type="submit" value="닫기" class="btn_small bx-white close-qna-form">'
			+ '</div>'
			+ '<div class="marb20"></div>'
			+ '</div>';

		//tr 아래쪽에 상단의 form을 insert한다.
		$(new_tr).insertAfter(tr);
		//slideDown으로 표시되게 한다.
		$('.form_detail_qna').slideDown();
	}
}
//1:1 상담문의 항목 상세보기 닫기 시
$('body').on('click', '.close-qna-form', function(e) {
	e.preventDefault();
	
	//1:1 상담문의 항목 상세보기의 tr 전체의 위치를 지정한다.
	var tr_detail_qna = $(this).closest('.tr_detail_qna');
	//form을 display 안되게 slideUp으로 가려준다.
	$(this).closest('.form_detail_qna').slideUp();
	$(this).parent().parent().siblings('.padt10').slideUp();
	$(this).parent().parent().siblings('.form_reply_qna').slideUp();
	//500밀리세컨즈 뒤에 실제로 항목을 제거한다.
	setTimeout(function(){
		tr_detail_qna.remove();
		$(this).parent().parent().siblings('.padt10').remove();
		$(this).parent().parent().siblings('.form_reply_qna').remove();
	}, 500);
});
//1:1 상담문의 항목 상세보기에서 '답변' 버튼 클릭 시 답변 form 호출
$('body').on('click', '.open-reply-qna', function(event) {
	event.preventDefault();	
	var qna_no = $(this).data('no'); // 클릭된 버튼에서 직접 qna_no 값을 가져옴
	
	//받아오는 데이터가 없을 경우(답변대기-undefined인 경우) 아래 프로퍼티를 null값으로 반환
	var qna_answer_title = (typeof event.currentTarget.dataset.answerTitle !== 'undefined') ?
			event.currentTarget.dataset.answerTitle : '';
	var qna_answer_content = (typeof event.currentTarget.dataset.answerContent !== 'undefined') ?
			event.currentTarget.dataset.answerContent : '';
	var qna_answer_postdate = (typeof event.currentTarget.dataset.answerPostdate !== 'undefined') ?
			event.currentTarget.dataset.answerPostdate : '';
	var qna_answer_editdate = (typeof event.currentTarget.dataset.answerEditdate !== 'undefined') ?
			event.currentTarget.dataset.answerEditdate : '';
	
	//1:1 상담문의 항목 상세보기의 form 위치를 지정한다.
	var table = $(this).closest('.form_detail_qna');
	//이미 열려있을 경우 .padt10 클래스가 있는걸 기준으로 판단해서 .slideToggle해준다.
	if (table.next().hasClass('padt10')) {
		$('.form_reply_qna').slideToggle();
	} else {
		//답변이 완료됐는지 안됐는지 기준으로 테이블이 나누어진다.
		if (qna_answer_title == '' && qna_answer_content == ''
			&& qna_answer_postdate == '' && qna_answer_editdate == '') {
			//답변대기인 경우
			var new_table = '<div class="padt10"></div>'
				+ '<div class="tbl_frm02 form_reply_qna" style="display:none;"><div class="mart20"></div>'
				+ '<form id="form_reply_qna_' + qna_no + '" method="post" action="admin_customer_qna_answer_write.do">'
				+ '<input type="hidden" name="qna_no" value="' + qna_no + '">'
				+ '<table>'
				+ '<colgroup>'
				+ '<col class="w180">' + '<col>'
				+ '</colgroup>'
				+ '<tbody>'
				+ '<tr>'
				+ '<th scope="row">제목</th>'
				+ '<td><input type="text" name="qna_answer_title" value="" class="required frm_input" size="80"></td>'
				+ '</tr>'
				+ '<tr>'
				+ '<th scope="row">답변내용</th>'
				+ '<td><textarea name="qna_answer_content" class="frm_textbox"></textarea></td>'
				+ '</tr>'
				+ '</tbody>'
				+ '</table>'
				+ '<div class="btn_confirm">'
				+ '<input type="submit" value="전송" class="btn_small">'
				+ '<input type="button" value="닫기" class="btn_small bx-white close-reply-qna-form">'
				+ '</div>'
				+ '<div class="marb20"></div>'
				+ '</form></div>';
		}
		else {
			//답변완료인 경우
			var new_table = '<div class="padt10"></div>'
				+ '<div class="tbl_frm02 form_reply_qna" style="display:none;"><div class="mart20"></div>'
				//항목별로 답변할 수도 있어서 form의 id에 qna_no 지정함.
				+ '<form id="form_reply_qna_' + qna_no + '" method="post" action="admin_customer_qna_answer_edit.do">'
				+ '<input type="hidden" name="qna_no" value="' + qna_no + '">'
				+ '<table>'
				+ '<colgroup>'
				+ '<col class="w180">' + '<col>'
				+ '</colgroup>'
				+ '<tbody>'
				+ '<tr>'
				+ '<th scope="row">제목</th>'
				+ '<td><input type="text" name="qna_answer_title" value="'+ qna_answer_title +'" class="required frm_input" size="80"></td>'
				+ '</tr>'
				+ '<tr>'
				+ '<th scope="row">답변내용</th>'
				+ '<td><textarea name="qna_answer_content" class="frm_textbox">'+ qna_answer_content +'</textarea></td>'
				+ '</tr>'
				+ '</tbody>'
				+ '</table>'
				+ '<div class="btn_confirm">'
				+ '<input type="submit" value="수정" class="btn_small">'
				+ '<input type="submit" value="삭제" class="btn_small red" onclick="deleteQnaAnswer('+ qna_no +'); return false;">'
				+ '<input type="button" value="닫기" class="btn_small bx-white close-reply-qna-form">'
				+ '</div>'
				+ '<div class="marb20"></div>'
				+ '</form></div>';
		}
		
		//1:1 상담문의 항목 상세보기 form의 아래쪽에 상기와 같은 form을 insert한다.
		$(new_table).insertAfter(table);
		//insert 후 display한다.
		$('.form_reply_qna').slideDown();
	}
});
//답변 form에서 '닫기' 버튼 클릭시
$('body').on('click', '.close-reply-qna-form', function(e) {
	e.preventDefault();
	$(this).closest('.form_reply_qna').slideUp();
});
//답변 form에서 '전송' 버튼 클릭시
//리스트의 항목별로 전송할 수도 있어서 form에 숫자를 지정했다. 
$('body').on('submit', 'form[id^="form_reply_qna_"]', function(event) {
	event.preventDefault();
	
	//값을 전송할 form 지정
	var form = this;
	
	//전송할 값 지정
	var qnaNo = $(form).find('input[name="qna_no"]').val();
	var qnaTitle = $(form).find('input[name="qna_answer_title"]').val();
	var qnaContent = $(form).find('textarea[name="qna_answer_content"]').val();
	
	// Send POST request
	$.ajax({
		url: $(form).attr('action'),
		type: 'POST',
		data: {
			qna_no: qnaNo,
			qna_answer_title: qnaTitle,
			qna_answer_content: qnaContent
		},
		success: function(response) {
			// handle success
			console.log("Success:", response);
		},
		error: function(xhr, status, error) {
			// handle error
			console.error("Error:", error);
		}
	});
});
function deleteQna(qna_no) {
	if (!isNaN(qna_no)) {
		var confirmed = confirm("정말로 삭제하시겠습니까?");
		if (confirmed) {
			var form = document.createElement("form");
			form.setAttribute("method", "post");
			form.setAttribute("action", "admin_customer_qna_delete.do");

			var input = document.createElement("input");
			input.setAttribute("type", "hidden");
			input.setAttribute("name", "qna_no");
			input.setAttribute("value", parseInt(qna_no)); // 문자열을 숫자로 변환하여 설정

			form.appendChild(input);
			document.body.appendChild(form);

			form.submit();
		}
	} else {
		alert("유효하지 않은 1:1 문의 번호입니다.");
	}
}
function deleteQnaAnswer(qna_no) {
	if (!isNaN(qna_no)) {
		var confirmed = confirm("정말로 삭제하시겠습니까?");
		if (confirmed) {
			var form = document.createElement("form");
			form.setAttribute("method", "post");
			form.setAttribute("action", "admin_customer_qna_answer_delete.do");

			var input = document.createElement("input");
			input.setAttribute("type", "hidden");
			input.setAttribute("name", "qna_no");
			input.setAttribute("value", parseInt(qna_no)); // 문자열을 숫자로 변환하여 설정

			form.appendChild(input);
			document.body.appendChild(form);

			form.submit();
		}
	} else {
		alert("유효하지 않은 1:1 문의 번호입니다.");
	}
}
function multiDelete() {
	var form = document.getElementById('qnalist');
	if (!form) {
		alert('리스트가 정상적으로 로드되지 않았습니다.');
		return;
	}
	
	var selected = document.querySelectorAll('#qnalist input[name="chk[]"]:checked');
	var deleteItem = Array.from(selected).map(chk => chk.value);
	
	if (deleteItem.length === 0) {
		alert("선택된 항목이 없습니다.");
		return;
	}
	
	var confirmed = confirm("정말로 삭제하시겠습니까?");
	if (confirmed) {
		form.setAttribute("method", "post");
		form.setAttribute("action", "admin_customer_qna_delete2.do");
	    
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
				<dd class="h10 active">
					<a href="admin_customer_qna.do">1:1 상담문의
						<em>0</em>
					</a>
				</dd>
				<dd class="h10">
					<a href="admin_customer_chat.do">1:1 채팅문의</a>
				</dd>
				<dd class="h10">
					<a href="admin_customer_withdrawal.do">회원 탈퇴내역</a>
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
				<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 고객지원 <i class="ionicons ion-ios-arrow-right"></i>
				1:1 상담문의
			</div>

			<div class="s_wrap">
				<h1>1:1 상담문의</h1>

				<h2>기본검색</h2>
				<form name="fsearch" id="fsearch" method="get">
					<input type="hidden" name="code" value="qa">
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
										<select name="searchField">
											<option value="all">전체</option>
											<option value="qna_category">카테고리</option>
											<option value="qna_writer">작성자</option>
											<option value="qna_title">제목</option>
											<option value="qna_content">내용</option>
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

				<form name="qnalist" id="qnalist" method="post">
					<input type="hidden" name="q1" value="code=qa">
					<input type="hidden" name="page" value="1">

					<div class="local_ov mart30">
						전체 : <b class="fc_red">${ maps.totalCount }</b> 건 조회
					</div>
					<div class="local_frm01">
						<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white"
							onclick="multiDelete(); return false;">
					</div>
					<div class="tbl_head01">
						<table>
							<colgroup>
								<col class="w30">
								<col class="w40">
								<col class="w80">
								<col class="w100">
								<col class="w100">
								<col class="w300">
								<col>
								<col class="w50">
								<col class="w130">
							</colgroup>
							<thead>
								<tr>
									<th scope="col"><input type="checkbox" name="chkall" value="1" onclick="check_all(this.form);"></th>
									<th scope="col">번호</th>
									<th scope="col">작성일</th>
									<th scope="col">구분</th>
									<th scope="col">작성자</th>
									<th scope="col">제목</th>
									<th scope="col">문의내용</th>
									<th scope="col">답변여부</th>
									<th scope="col">관리</th>
									
								</tr>
							</thead>
							<tbody>
								<!-- <tr>
									<td colspan="8" class="empty_table">자료가 없습니다.</td>
								</tr> -->
								<c:choose>
									<c:when test="${ empty lists }">
										<tr>
											<td colspan="8" class="empty_table">1:1 상담 내역이 없습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${ lists }" var="item" varStatus="loop">
											<tr class="${ loop.index % 2 == 0 ? 'list1' : 'list0' }">
												<td>
													<input type="hidden" name="gs_id[0]" value="${ item.qna_no }">
													<input type="checkbox" name="chk[]" value="${ item.qna_no }">
												</td>
												<td>
													<a href="/" class="qna_no normal" onclick="detailQna(event); return false;"
													data-no="${ item.qna_no }" data-category="${ item.qna_category }"
													data-writer="${ item.qna_writer }" data-phonenumber="${ item.qna_phonenumber }"
													data-title="${ item.qna_title }" data-content="${ item.qna_content }"
													data-postdate="${ item.qna_postdate }" data-editdate="${ item.qna_editdate }"
													data-answered="${ item.qna_answered }"
													<c:if test="${item.qna_answered == 1}">
													data-answer-title="${item.qna_answer_title}"
													data-answer-content="${item.qna_answer_content}"
													data-answer-postdate="${item.qna_answer_postdate}"
													data-answer-editdate="${item.qna_answer_editdate}"
													</c:if>
													>${ item.qna_no }</a>
												</td>
												<td>
													<a href="/" class="qna_postdate normal" onclick="detailQna(event); return false;"
													data-no="${ item.qna_no }" data-category="${ item.qna_category }"
													data-writer="${ item.qna_writer }" data-phonenumber="${ item.qna_phonenumber }"
													data-title="${ item.qna_title }" data-content="${ item.qna_content }"
													data-postdate="${ item.qna_postdate }" data-editdate="${ item.qna_editdate }"
													data-answered="${ item.qna_answered }"
													<c:if test="${item.qna_answered == 1}">
													data-answer-title="${item.qna_answer_title}"
													data-answer-content="${item.qna_answer_content}"
													data-answer-postdate="${item.qna_answer_postdate}"
													data-answer-editdate="${item.qna_answer_editdate}"
													</c:if>
													>${ item.qna_postdate }</a>
												</td>
												<td>
													<a href="/" class="qna_category normal" onclick="detailQna(event); return false;"
													data-no="${ item.qna_no }" data-category="${ item.qna_category }"
													data-writer="${ item.qna_writer }" data-phonenumber="${ item.qna_phonenumber }"
													data-title="${ item.qna_title }" data-content="${ item.qna_content }"
													data-postdate="${ item.qna_postdate }" data-editdate="${ item.qna_editdate }"
													data-answered="${ item.qna_answered }"
													<c:if test="${item.qna_answered == 1}">
													data-answer-title="${item.qna_answer_title}"
													data-answer-content="${item.qna_answer_content}"
													data-answer-postdate="${item.qna_answer_postdate}"
													data-answer-editdate="${item.qna_answer_editdate}"
													</c:if>
													>${ item.qna_category }</a>
												</td>
												<td>
													<a href="/" class="qna_writer normal" onclick="detailQna(event); return false;"
													data-no="${ item.qna_no }" data-category="${ item.qna_category }"
													data-writer="${ item.qna_writer }" data-phonenumber="${ item.qna_phonenumber }"
													data-title="${ item.qna_title }" data-content="${ item.qna_content }"
													data-postdate="${ item.qna_postdate }" data-editdate="${ item.qna_editdate }"
													data-answered="${ item.qna_answered }"
													<c:if test="${item.qna_answered == 1}">
													data-answer-title="${item.qna_answer_title}"
													data-answer-content="${item.qna_answer_content}"
													data-answer-postdate="${item.qna_answer_postdate}"
													data-answer-editdate="${item.qna_answer_editdate}"
													</c:if>
													><span class="ellipsis1">${ item.qna_writer }</span></a>
												</td>
												<td class="tal">
													<a href="/" class="qna_title normal" onclick="detailQna(event); return false;"
													data-no="${ item.qna_no }" data-category="${ item.qna_category }"
													data-writer="${ item.qna_writer }" data-phonenumber="${ item.qna_phonenumber }"
													data-title="${ item.qna_title }" data-content="${ item.qna_content }"
													data-postdate="${ item.qna_postdate }" data-editdate="${ item.qna_editdate }"
													data-answered="${ item.qna_answered }"
													<c:if test="${item.qna_answered == 1}">
													data-answer-title="${item.qna_answer_title}"
													data-answer-content="${item.qna_answer_content}"
													data-answer-postdate="${item.qna_answer_postdate}"
													data-answer-editdate="${item.qna_answer_editdate}"
													</c:if>
													><span class="ellipsis1">${ item.qna_title }</span></a>
												</td>
												<td class="tal">
													<a href="/" class="qna_content normal" onclick="detailQna(event); return false;"
													data-no="${ item.qna_no }" data-category="${ item.qna_category }"
													data-writer="${ item.qna_writer }" data-phonenumber="${ item.qna_phonenumber }"
													data-title="${ item.qna_title }" data-content="${ item.qna_content }"
													data-postdate="${ item.qna_postdate }" data-editdate="${ item.qna_editdate }"
													data-answered="${ item.qna_answered }"
													<c:if test="${item.qna_answered == 1}">
													data-answer-title="${item.qna_answer_title}"
													data-answer-content="${item.qna_answer_content}"
													data-answer-postdate="${item.qna_answer_postdate}"
													data-answer-editdate="${item.qna_answer_editdate}"
													</c:if>
													><span class="ellipsis1">${ item.qna_content }</span></a>
												</td>
												<td>
													<div class="btn_small ${ item.qna_answered == 0 ? 'red' : 'white' }">
														${ item.qna_answered == 0 ? '답변대기' : '답변완료' }
													</div>
												</td>
												<td>
													<a href="admin_customer_qna_reply.do?qna_no=${ item.qna_no }" class="btn_small grey" style="margin-right:0.6px;">답변</a>
													<a href="admin_customer_qna_edit.do?qna_no=${ item.qna_no }" class="btn_small">수정</a>
													<a href="#" onclick="event.preventDefault(); deleteQna(${item.qna_no});" class="btn_small white">삭제</a>
												</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
								<%-- <tr>
									<td colspan="8">
										<div class="tbl_frm02">
											<div class="mart20"></div>
											<table>
											<colgroup>
												<col class="w180">
												<col>
											</colgroup>
											<tbody>
											<tr>
												<th scope="row">번호</th>
												<td><input type="text" name="inquery_code" value="9" required="" itemname="" class="frm_input" readonly></td>
											</tr>
											<tr>
												<th scope="row">작성일</th>
												<td><input type="text" name="inquery_postdate" value="2024-99-99" required="" itemname="" class="frm_input" readonly></td>
											</tr>
											<tr>
												<th scope="row">구분</th>
												<td><input type="text" name="inquery_category" value="상품관련" required="" itemname="" class="required frm_input" size="80" readonly></td>
											</tr>
											<tr>
												<th scope="row">이름</th>
												<td><input type="text" name="inquery_name" value="홍길동" required="" itemname="" class="required frm_input" size="80" readonly></td>
											</tr>
											<tr>
												<th scope="row">연락처</th>
												<td><input type="text" name="inquery_cntnum" value="010-1234-5678" class="required frm_input" size="80" readonly></td>
											</tr>
											<tr>
												<th scope="row">제목</th>
												<td><input type="text" name="inquery_title" value="상품관련 문의입니다. 상품관련 문의입니다." class="required frm_input" size="80" readonly></td>
											</tr>
											<tr>
												<th scope="row">문의내용</th>
												<td><textarea name="inquery_content" class="frm_textbox">상품관련이 이래서 이렇고 저래서 저렇습니다. 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련</textarea></td>
											</tr>
											<!-- <tr>
												<th scope="row">검색키워드</th>
												<td>
													<input type="text" name="keywords" value="" class="frm_input wfull">
													<span class="frm_info fc_125">단어와 단어 사이는 콤마 ( , ) 로 구분하여 여러개를 입력할 수 있습니다. 예시) 빨강, 노랑, 파랑</span>
												</td>
											</tr> -->
											</tbody>
											</table>
											<div class="btn_confirm">
												<input type="submit" value="답변" class="btn_small bx-red">
												<input type="submit" value="닫기" class="btn_small bx-white">
											</div>
											<div class="marb20"></div>											
										</div>
										<div class="padt10"></div>
										<div class="tbl_frm02">
											<div class="mart20"></div>
											<table>
											<colgroup>
												<col class="w180">
												<col>
											</colgroup>
											<tbody>
											<tr>
												<th scope="row">제목</th>
												<td><input type="text" name="inquery_answer_title" value="안녕하세요. 와인빌리지입니다." class="required frm_input" size="80" readonly></td>
											</tr>
											<tr>
												<th scope="row">답변내용</th>
												<td><textarea name="inquery_answer_content" class="frm_textbox"></textarea></td>
											</tr>
											</tbody>
											</table>
											<div class="btn_confirm">
												<input type="submit" value="전송" class="btn_small">
												<input type="submit" value="닫기" class="btn_small bx-white">
											</div>
											<div class="marb20"></div>											
										</div>
									</td>
								</tr> --%>
							</tbody>
						</table>
					</div>
					<div class="local_frm02">
						<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white"
							onclick="document.pressed=this.value">
					</div>
				</form>

				<nav class="pg_wrap">
				<span class="pg">
					${ pagingImg }
				</span>
				</nav>

				<script>
					function fqalist_submit(f) {
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
				</script>
			</div>

		</div>
	</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

