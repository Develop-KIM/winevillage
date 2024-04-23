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
					<a href="admin_customer_inquery.do">1:1 상담문의
						<em>0</em>
					</a>
				</dd>
				<dd class="h10">
					<a href="admin_customer_withdrawal.do">회원 탈퇴내역</a>
				</dd>
				<dt class="h20 menu_toggle">FAQ 작성</dt>
				<dd class="h20">
					<a href="admin_customer_faq_lists.do">FAQ 분류</a>
				</dd>
				<dd class="h20">
					<a href="admin_customer_faq_write.do">FAQ 작성</a>
				</dd>
				<dt class="h20 menu_toggle">공지사항</dt>
				<dd class="h20">
					<a href="admin_customer_notice_lists.do">공지사항 관리</a>
				</dd>
				<dd class="h20 active">
					<a href="admin_customer_notice_write.do">공지사항 작성</a>
				</dd>
			</dl>
		</div>
		<div id="content">
<div class="breadcrumb">
	<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 고객지원 <i class="ionicons ion-ios-arrow-right"></i> FAQ 작성		</div>

	<div class="s_wrap">
		<h1>공지사항 작성</h1>
		<form name="fboardform" method="post" action="./config/board_form_update.php" enctype="MULTIPART/FORM-DATA">
			<input type="hidden" name="w" value="u">
			<input type="hidden" name="sfl" value="">
			<input type="hidden" name="stx" value="">
			<input type="hidden" name="page" value="1">
			<div class="tbl_frm02">
				<table>
				<colgroup>
				<col class="w180">
				<col>
				</colgroup>
				<tbody>
				<tr>
					<th scope="row">제목</th>
					<td>
						<input type="text" name="topfile" value="" class="frm_input" size="100">
					</td>
				</tr>
				<tr>
					<th scope="row">내용</th>
					<td>
						<textarea name="insert_content" class="frm_textbox wfull" rows="5"></textarea>
					</td>
				</tr>
				</tbody>
				</table>
			</div>
			<div class="btn_confirm">
				<input type="submit" value="저장" class="btn_large" accesskey="s">
				<a href="./config.php?code=board_list&amp;page=1" class="btn_large bx-white">목록</a>
			</div>
		</form>
		<script>
	function chk_board_head(f, val){
		switch(val) {
			case 'gr_item':
				f.topfile.value  = '../mypage/board_head.php';
				f.downfile.value = '../mypage/board_tail.php';
				break;
			case 'gr_mall':
				f.topfile.value  = './board_head.php';
				f.downfile.value = './board_tail.php';
				break;
			default:
				f.topfile.value  = '';
				f.downfile.value = '';
				break;
		}
	}
		</script>
	</div>

</div>
</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

