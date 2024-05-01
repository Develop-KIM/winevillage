<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="../admin_common/admin_isLoggedin.jsp" %>
<!doctype html>
<html lang="ko">
<head>
<body>
<%@ include file="../admin_common/admin_header.jsp"%>
<script src="js/admin_setting.js"></script>
<div id="wrapper">
	
<div id="snb">
			<div class="snb_header ico_config">
				<h2><i class="fa fa-cogs"></i>환경설정</h2>
			</div>
			<dl>
				<dt class="q10 menu_toggle">기본환경설정</dt>
				<dd class="q10 active">
					<a href="admin_setting_super.do">관리자 등록</a>
				</dd>
				<dd class="q10">
					<a href="admin_setting_super_lists.do">관리자 목록</a>
				</dd>
			</dl>
		</div>
		<div id="content">
			<div class="breadcrumb">
				<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 기본환경설정 <i class="ionicons ion-ios-arrow-right"></i>
				관리자 등록
			</div>

			<div class="s_wrap">
				<h1>관리자 등록</h1>

				<form name="fregform" method="post" action="admin_setting_super.do">
					<input type="hidden" name="token" value="">


					<h2>관리자 정보 입력</h2>
					<div class="tbl_frm01">
						<table>
							<colgroup>
								<col class="w180">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">관리자 ID</th>
									<td>
										<input id="admin_id" type="text" name="admin_id" value="" required itemname="관리자id" class="frm_input required">
									</td>
								</tr>
								<tr>
									<th scope="row">이름</th>
									<td>
										<input id="admin_name" type="text" name="admin_name" value="" required itemname="관리자이름" class="frm_input required">
									</td>
								</tr>
								<tr>
									<th scope="row">비밀번호</th>
									<td>
										<input id="admin_pass" type="password" name="admin_pass" value="" required itemname="관리자pass" class="frm_input required">
									</td>
								</tr>
 								<tr>
									<th scope="row">비밀번호 확인</th>
									<td>
										<input id="admin_pass_re" type="password" name="name" value="" required itemname="관리자pass2" class="frm_input required">
									</td>
								</tr>
								<tr>
									<th scope="row">이메일주소</th>
									<td>
										<input type="text" name="admin_email" value="" required email itemname="이메일"
											class="frm_input required" size="30">
									</td>
								</tr>
								<tr>
									<th scope="row">핸드폰</th>
									<td><input type="text" name="admin_phone" value="" required itemname="핸드폰" placeholder="010-0000-0000"
											class="frm_input required"></td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="btn_confirm">
						<input id="admin_signup" type="submit" value="등록" class="btn_large" accesskey="s">
					</div>
				</form>
			</div>

		</div>
	</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

