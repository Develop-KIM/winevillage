<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%-- <%@ include file="../admin_common/admin_isLoggedin.jsp" %> --%>
<!doctype html>
<html lang="ko">
<head>
<body>
<%@ include file="../admin_common/admin_header.jsp"%>
<div id="wrapper">
	
<div id="snb">
			<div class="snb_header ico_config">
				<h2><i class="fa fa-cogs"></i>환경설정</h2>
			</div>
			<dl>
				<dt class="q10 menu_toggle">기본환경설정</dt>
				<dd class="q10">
					<a href="admin_setting_super.do">관리자 등록</a>
				</dd>
				<dd class="q10 active">
					<a href="admin_setting_super_lists.do">관리자 목록</a>
				</dd>
			</dl>
		</div>
		<div id="content">
			<div class="breadcrumb">
				<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 기본환경설정 <i class="ionicons ion-ios-arrow-right"></i>
				관리자 목록
			</div>

			<div class="s_wrap">
				<h1>관리자 목록</h1>

				<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<!-- 				<script>
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
				</script> -->
				<h2>관리자 검색</h2>
				<form name="fsearch" id="fsearch" method="get">
					<input type="hidden" name="code" value="list">
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
											<option value="admin_id">관리자ID</option>
											<option value="admin_name">이름</option>
										</select>
										<input type="text" name="searchKeyword" value="" class="frm_input" size="30">
									</td>
								</tr>
								<!-- <tr>
									<th scope="row">기간검색</th>
									<td>
										<select name="spt">
											<option value="reg_time">가입날짜</option>
											<option value="today_login">최근접속</option>
										</select>
										<label for="fr_date" class="sound_only">시작일</label>
										<input type="text" name="fr_date" value="" id="fr_date" class="frm_input w80" maxlength="10">
										~
										<label for="to_date" class="sound_only">종료일</label>
										<input type="text" name="to_date" value="" id="to_date" class="frm_input w80" maxlength="10">
										<span class="btn_group"><input type="button" onclick="search_date('fr_date','to_date',this.value);"
												class="btn_small white" value="오늘"><input type="button"
												onclick="search_date('fr_date','to_date',this.value);" class="btn_small white" value="어제"><input
												type="button" onclick="search_date('fr_date','to_date',this.value);" class="btn_small white"
												value="일주일"><input type="button" onclick="search_date('fr_date','to_date',this.value);"
												class="btn_small white" value="지난달"><input type="button"
												onclick="search_date('fr_date','to_date',this.value);" class="btn_small white"
												value="1개월"><input type="button" onclick="search_date('fr_date','to_date',this.value);"
												class="btn_small white" value="3개월"><input type="button"
												onclick="search_date('fr_date','to_date',this.value);" class="btn_small white"
												value="전체"></span>
									</td>
								</tr>
								<tr>
									<th scope="row">등급검색</th>
									<td>
										<label><input type="radio" name="sst" value="" checked="checked"> 전체</label>
										<label><input type="radio" name="sst" value="4"> 최고 관리자</label>
										<label><input type="radio" name="sst" value="3"> 부 관리자</label>
										<label><input type="radio" name="sst" value="2"> 운영 관리자</label>
									</td>
								</tr> -->
							</tbody>
						</table>
					</div>
					<div class="btn_confirm">
						<input type="submit" value="검색" class="btn_medium">
						<input type="button" value="초기화" id="frmRest" class="btn_medium grey">
					</div>
				</form>

				<div class="local_ov mart30">
					총 관리자수 : <b class="fc_red">${maps.totalCount - (((maps.pageNum-1) * maps.pageSize) + loop.index) }</b>명
				</div>
				<form>
				<!-- <div class="local_frm01">
					<a href="./member.php?code=mail_list" class="btn_lsmall bx-white">전체메일발송</a>
					<a href="./sms/sms_member.php" onclick="win_open(this,'pop_sms','245','360','no');return false"
						class="btn_lsmall bx-white">전체문자발송</a>
					<a href="./member/member_list_excel.php?code=list" class="btn_lsmall bx-white"><i
							class="fa fa-file-excel-o"></i> 엑셀저장</a>
					<a href="./member.php?code=register_form" class="fr btn_lsmall red"><i class="ionicons ion-android-add"></i>
						회원추가</a>
				</div> -->
				<div class="tbl_head01">
					<table>
						<colgroup>
							<col class="w50">
							<col>
							<col>
							<col>
							<col>
							<col>
							<col>
							<col>
							<col>
							<col>
							<col>
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col"><p>관리자ID</p></th>
								<th scope="col"><p>이름</p></th>
								<!-- <th scope="col"><p>등급</p></th> -->
								<th scope="col"><p>이메일</p></th>
								<th scope="col"><p>핸드폰</p></th>
								<th scope="col"><p>생성일시</p></th>
								<th scope="col"><p>관리</p></th>
							</tr>
						</thead>
						<tbody class="list">
						<c:choose>
							<c:when test="${ empty lists }">
									<tr>
										<td colspan="5" align="center">
										등록된 관리자가 없습니다.
										</td>
									</tr>
								</c:when>
							<c:otherwise>
						<c:forEach items="${ lists }" var="item" varStatus="loop">
						<tr class="${ loop.index % 2 == 0 ? 'list1' : 'list0' }">
								<td>${maps.totalCount - (((maps.pageNum-1) * maps.pageSize) + loop.index) }</td>
								<td>${item.admin_id }</td>
								<td>${item.admin_name}</td>
								<td>${item.admin_email}</td>
								<td>${item.admin_phone}</td>
								<td>${item.admin_joindate}</td>
								<td><a href="admin_setting_super_edit.do?admin_idx=${item.admin_idx }" class="btn_small">수정</a>
							</tr>
							</c:forEach>
						</tbody>
						</c:otherwise>
						</c:choose>
						
					</table>
				</div>
				</form>
				
				<div class="paging" style="display: flex; justify-content: center; align-items: center;">
					<p>
						${ pagingImg }
					</p>
				</div>
				<!-- <div class="local_frm02">
					<a href="./member.php?code=mail_list" class="btn_lsmall bx-white">전체메일발송</a>
					<a href="./sms/sms_member.php" onclick="win_open(this,'pop_sms','245','360','no');return false"
						class="btn_lsmall bx-white">전체문자발송</a>
					<a href="./member/member_list_excel.php?code=list" class="btn_lsmall bx-white"><i
							class="fa fa-file-excel-o"></i> 엑셀저장</a>
					<a href="./member.php?code=register_form" class="fr btn_lsmall red"><i class="ionicons ion-android-add"></i>
						회원추가</a>
				</div> -->


				<script>
					function chk_use_app(mb_id) {
						var error = "";
						var token = get_ajax_token();
						if (!token) {
							alert("토큰 정보가 올바르지 않습니다.");
							return false;
						}

						$.ajax({
							url: tb_admin_url + "/member/member_use_app.php",
							type: "POST",
							data: { "mb_id": mb_id, "token": token },
							dataType: "json",
							async: false,
							cache: false,
							success: function (data, textStatus) {
								error = data.error;
							}
						});

						if (error) {
							alert(error);
							return false;
						}
					}

					$(function () {
						// 날짜 검색 : TODAY MAX값으로 인식 (maxDate: "+0d")를 삭제하면 MAX값 해제
						$("#fr_date, #to_date").datepicker({ changeMonth: true, changeYear: true, dateFormat: "yy-mm-dd", showButtonPanel: true, yearRange: "c-99:c+99", maxDate: "+0d" });
					});
				</script>
			</div>

		</div>
	</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

