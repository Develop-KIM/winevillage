<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="ko">
<head>
<body>
<%@ include file="../admin_common/admin_header.jsp"%>
	
<script>
function deleteChat(chat_no) {
	if (!isNaN(chat_no)) {
		var confirmed = confirm("정말로 삭제하시겠습니까?");
		if (confirmed) {
			var form = document.createElement("form");
			form.setAttribute("method", "post");
			form.setAttribute("action", "admin_customer_chat_delete.do");

			var input = document.createElement("input");
			input.setAttribute("type", "hidden");
			input.setAttribute("name", "chat_no");
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
	var form = document.getElementById('chatlist');
	if (!form) {
		alert('리스트가 정상적으로 로드되지 않았습니다.');
		return;
	}
	
	var selected = document.querySelectorAll('#chatlist input[name="chk[]"]:checked');
	var deleteItem = Array.from(selected).map(chk => chk.value);
	
	if (deleteItem.length === 0) {
		alert("선택된 항목이 없습니다.");
		return;
	}
	
	var confirmed = confirm("정말로 삭제하시겠습니까?");
	if (confirmed) {
		form.setAttribute("method", "post");
		form.setAttribute("action", "admin_customer_chat_delete2.do");
	    
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
				1:1 채팅상담
			</div>

			<div class="s_wrap">
				<h1>1:1 채팅상담</h1>

				<%-- <h2>기본검색</h2>
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
				</form> --%>

				<form name="chatlist" id="chatlist" method="post">
					<input type="hidden" name="q1" value="code=qa">
					<input type="hidden" name="page" value="1">

					<%-- <div class="local_ov mart30">
						전체 : <b class="fc_red">${ maps.totalCount }</b> 건 조회
					</div> --%>
					<!-- <div class="local_frm01">
						<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white"
							onclick="multiDelete(); return false;">
					</div> -->
					<div class="tbl_head01">
						<table>
							<colgroup>
								<col>
							</colgroup>
							<thead>
								<tr>
									<th scope="col">채팅접속</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<button onclick="chatWinOpen(); return false;" class="btn_medium">접속</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- <div class="local_frm02">
						<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white"
							onclick="document.pressed=this.value">
					</div> -->
				</form>

				<nav class="pg_wrap">
				<span class="pg">
					${ pagingImg }
				</span>
				</nav>

				<script>
					function chatWinOpen() {
						var id = "admin";
						var username = "와인빌리지 고객센터";
				        //채팅창을 팝업으로 오픈한다. 이때 대화명을 파라미터로 전달한다.  
				        window.open("chatUI.do?chatId="+ id +"&chatName="+ username, "", 
				        		"width=350,height=450");
				        console.log("asdf");
				    }
					/* function fqalist_submit(f) {
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
					} */
				</script>
			</div>

		</div>
	</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

