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
				<h2><i class="ionicons ion-ios-people fs40"></i>회원관리</h2>
			</div>
			<dl>
				<dt class="m10 menu_toggle">회원관리</dt>
				<dd class="m10 active">
					<a href="admin_member_lists.do">회원 정보관리</a>
				</dd>
				<dd class="m10">
					<a href="admin_member_level.do">회원 등급관리</a>
				</dd>
				<dt class="m20 menu_toggle">포인트 관리</dt>
				<dd class="m20">
					<a href="admin_member_point.do">포인트 관리</a>
				</dd>
				<dd class="m20">
					<a href="admin_member_point_select_form.do">포인트 지급&차감</a>
				</dd>
			</dl>
		</div>
		<div id="content">
			<div class="breadcrumb">
				<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 회원관리 <i class="ionicons ion-ios-arrow-right"></i>
				회원 정보관리
			</div>

			<div class="s_wrap">
				<h1>회원 정보관리</h1>

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
						<table>
							<colgroup>
								<col class="w100">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">검색어</th>
									<td>
										<select name="sfl">
											<option value="id">아이디</option>
											<option value="name">회원명</option>
											<option value="pt_id">추천인</option>
											<option value="cellphone">핸드폰</option>
											<option value="telephone">전화번호</option>
										</select>
										<input type="text" name="stx" value="" class="frm_input" size="30">
									</td>
								</tr>
								<tr>
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
										<label><input type="radio" name="sst" value="4"> 트리니티</label>
										<label><input type="radio" name="sst" value="3"> 다이아몬드</label>
										<label><input type="radio" name="sst" value="2"> 골드</label>
										<label><input type="radio" name="sst" value="1"> 실버</label>
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

				<div class="local_ov mart30">
					총 회원수 : <b class="fc_red">3</b>명
				</div>
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
							<col class="w130">
							<col class="w150">
							<col>
							<col class="w130">
							<col class="w100">
							<col class="w130">
							<col class="w60">
							<col class="w60">
							<col class="w60">
							<col class="w90">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=name&orderby=asc">회원명</a></th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=id&orderby=asc">아이디</a></th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=grade&orderby=asc">등급</a></th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=pt_id&orderby=asc">추천인</a></th>
								<th scope="col">핸드폰</th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=reg_time&orderby=asc">가입일시</a></th>
								<th scope="col">구매수</th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=login_sum&orderby=asc">로그인</a></th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=intercept_date&orderby=asc">접근차단</a>
								</th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=point&orderby=asc">포인트</a></th>
							</tr>
						</thead>
						<tbody class="list">
							<tr class="list0">
								<td>3</td>
								<td class="tal"><span class="sv_wrap">
										<a href="javascript:void(0);" class="sv_member">세글만</a>
										<span class="sv">
											<a href="http://demofran.com/admin/pop_memberform.php?mb_id=tubeweb3"
												onclick="win_open(this,'win_member','1200','600','yes');return false;">회원정보수정</a>
											<a href="http://demofran.com/admin/formmail.php?mb_id=tubeweb3&name=%EC%84%B8%EA%B8%80%EB%A7%8C&email=2qyUnKnIk5mlmtHHn9JelaLO"
												onclick="win_open(this,'win_email','650','580','no'); return false;">메일보내기</a>
										</span>

										<noscript class="sv_nojs"><span class="sv">
												<a href="http://demofran.com/admin/pop_memberform.php?mb_id=tubeweb3"
													onclick="win_open(this,'win_member','1200','600','yes');return false;">회원정보수정</a>
												<a href="http://demofran.com/admin/formmail.php?mb_id=tubeweb3&name=%EC%84%B8%EA%B8%80%EB%A7%8C&email=2qyUnKnIk5mlmtHHn9JelaLO"
													onclick="win_open(this,'win_email','650','580','no'); return false;">메일보내기</a>
											</span>
										</noscript></span></td>
								<td class="tal">tubeweb3</td>
								<td>다이아몬드</td>
								<td class="tal">tubeweb1</td>
								<td>010-3333-3333</td>
								<td>2020-10-04 18:05:42</td>
								<td>1</td>
								<td>55</td>
								<td></td>
								<td class="tar">1,580</td>
							</tr>
							<tr class="list1">
								<td>2</td>
								<td class="tal"><span class="sv_wrap">
										<a href="javascript:void(0);" class="sv_member">두글만</a>
										<span class="sv">
											<a href="http://demofran.com/admin/pop_memberform.php?mb_id=tubeweb2"
												onclick="win_open(this,'win_member','1200','600','yes');return false;">회원정보수정</a>
											<a href="http://demofran.com/admin/formmail.php?mb_id=tubeweb2&name=%EB%91%90%EA%B8%80%EB%A7%8C&email=2qyUnKnIk5ilmtHHn9JelaLO"
												onclick="win_open(this,'win_email','650','580','no'); return false;">메일보내기</a>
										</span>

										<noscript class="sv_nojs"><span class="sv">
												<a href="http://demofran.com/admin/pop_memberform.php?mb_id=tubeweb2"
													onclick="win_open(this,'win_member','1200','600','yes');return false;">회원정보수정</a>
												<a href="http://demofran.com/admin/formmail.php?mb_id=tubeweb2&name=%EB%91%90%EA%B8%80%EB%A7%8C&email=2qyUnKnIk5ilmtHHn9JelaLO"
													onclick="win_open(this,'win_email','650','580','no'); return false;">메일보내기</a>
											</span>
										</noscript></span></td>
								<td class="tal">tubeweb2</td>
								<td>실버</td>
								<td class="tal">admin</td>
								<td>010-2222-2222</td>
								<td>2020-10-04 18:05:04</td>
								<td>0</td>
								<td>696</td>
								<td></td>
								<td class="tar">0</td>
							</tr>
							<tr class="list0">
								<td>1</td>
								<td class="tal"><span class="sv_wrap">
										<a href="javascript:void(0);" class="sv_member">한글만</a>
										<span class="sv">
											<a href="http://demofran.com/admin/pop_memberform.php?mb_id=tubeweb1"
												onclick="win_open(this,'win_member','1200','600','yes');return false;">회원정보수정</a>
											<a href="http://demofran.com/admin/formmail.php?mb_id=tubeweb1&name=%ED%95%9C%EA%B8%80%EB%A7%8C&email=2qyUnKnIk5elmtHHn9JelaLO"
												onclick="win_open(this,'win_email','650','580','no'); return false;">메일보내기</a>
										</span>

										<noscript class="sv_nojs"><span class="sv">
												<a href="http://demofran.com/admin/pop_memberform.php?mb_id=tubeweb1"
													onclick="win_open(this,'win_member','1200','600','yes');return false;">회원정보수정</a>
												<a href="http://demofran.com/admin/formmail.php?mb_id=tubeweb1&name=%ED%95%9C%EA%B8%80%EB%A7%8C&email=2qyUnKnIk5elmtHHn9JelaLO"
													onclick="win_open(this,'win_email','650','580','no'); return false;">메일보내기</a>
											</span>
										</noscript></span></td>
								<td class="tal">tubeweb1</td>
								<td>트리니티</td>
								<td class="tal">admin</td>
								<td>010-1111-1111</td>
								<td>2020-10-04 18:04:17</td>
								<td>0</td>
								<td>769</td>
								<td></td>
								<td class="tar">0</td>
							</tr>
						</tbody>
					</table>
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

