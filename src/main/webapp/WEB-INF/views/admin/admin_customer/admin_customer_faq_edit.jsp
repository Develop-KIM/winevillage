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
				<h2><i class="fa fa-comments-o"></i>고객지원</h2>
			</div>
			<dl>
				<dt class="h10 menu_toggle">고객지원</dt>
				<dd class="h10">
					<a href="/admin_customer_qna.do">1:1 상담문의
						<em>0</em>
					</a>
				</dd>
				<dt class="h20 menu_toggle">FAQ 작성</dt>
				<dd class="h20">
					<a href="/admin_customer_faq_lists.do">FAQ 관리</a>
				</dd>
				<dd class="h20">
					<a href="/admin_customer_faq_category.do">FAQ 분류</a>
				</dd>
				<dd class="h20 active">
					<a href="/admin_customer_faq_write.do">FAQ 작성</a>
				</dd>
				<dt class="h20 menu_toggle">공지사항</dt>
				<dd class="h20">
					<a href="/admin_customer_notice_lists.do">공지사항 관리</a>
				</dd>
				<dd class="h20">
					<a href="/admin_customer_notice_write.do">공지사항 작성</a>
				</dd>
			</dl>
		</div>
		<div id="content">
<div class="breadcrumb">
	<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 고객지원 <i class="ionicons ion-ios-arrow-right"></i> FAQ 작성		</div>

	<div class="s_wrap">
		<h1>FAQ 작성</h1>
		<!-- <form name="faqform" method="post" onsubmit="return faqform_submit(this);"> -->
		<form name="faqform" method="post" action="admin_customer_faq_edit.do">
			<input type="hidden" name="faq_no" value="${faqDTO.faq_no }" />
			<input type="hidden" name="w" value="">
			<input type="hidden" name="sca" value="">
			<input type="hidden" name="sfl" value="">
			<input type="hidden" name="stx" value="">
			<input type="hidden" name="page" value="">
			<input type="hidden" name="index_no" value="">
			<div class="tbl_frm02">
				<table>
				<colgroup>
				<col class="w140">
				<col>
				</colgroup>
				<tbody>
				<tr>
					<th scope="row">분류</th>
					<td>
						<select id="faq_classified_select" name="faq_classified">
							<c:forEach var="category" items="${faqDTO.faq_classified}">
								<option value="${faqDTO.faq_classified}">${faqDTO.faq_classified}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th scope="row">제목</th>
					<td>
						<input type="text" name="faq_title" value="${ faqDTO.faq_title }" required="" itemname="제목" class="frm_input required"
						size="60" style="background-position: right top; background-repeat: no-repeat;">
					</td>
				</tr>
				<tr>
					<th scope="row">내용</th>
					<td>
						<textarea name="faq_content" class="frm_textbox wfull" rows="5">${faqDTO.faq_content}</textarea>
					</td>
				</tr>
				</tbody>
				</table>
			</div>
			<div class="btn_confirm">
				<input type="submit" value="저장" class="btn_large" accesskey="s">
				<a href="/admin_customer_faq_lists.do" class="btn_large bx-white">목록</a>
			</div>
		</form>
	</div>
</div>
</div>
</body>
</html>

