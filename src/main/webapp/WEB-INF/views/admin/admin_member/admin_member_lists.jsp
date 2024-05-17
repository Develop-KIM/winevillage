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
				<div class="local_ov mart30">
					총 회원수 : <b class="fc_red">${maps.totalCount - (((maps.pageNum-1) * maps.pageSize) + loop.index) }</b>명
				</div>
				<form id="memberList" name="memberList" method="post">
 					<input type="hidden" name="q1" value="code=list">
					<input type="hidden" name="page" value="1">
				<div class="tbl_head01">
					<table>
						<colgroup>
							<col class="w50">
							<col class="w100">
							<col class="w100">
							<col class="w130">
							<col class="w130">
							<col class="w130">
							<col class="w200">
							<col class="w60">
							<col class="w60">
							<col class="w60">
							<%-- <col class="w90"> --%>
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=name&orderby=asc">아이디</a></th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=id&orderby=asc">회원명</a></th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=grade&orderby=asc">생년월일</a></th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=pt_id&orderby=asc">핸드폰</a></th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=reg_time&orderby=asc">email</a></th>
								<th scope="col">주소</th>
								<th scope="col"><a href="/admin/member.php?code=list&page=&filed=intercept_date&orderby=asc">회원생성일</a>
								</th>
							</tr>
						</thead>
						<tbody class="list">
						<c:choose>
							<c:when test="${ empty lists }">
								<tr>
									<td colspan="5" align="center">
									등록된 회원이 없습니다.
									</td>
								</tr>
							</c:when>
							<c:otherwise>
							<tbody>
								<c:forEach items="${ lists }" var="item" varStatus="loop">
								<tr class="${ loop.index % 2 == 0 ? 'list1' : 'list0' }">
								<td>${maps.totalCount - (((maps.pageNum-1) * maps.pageSize) + loop.index) }</td>
								<td>${item.memberId}</td>
								<td>${item.name}</td>
								<td>${item.birthday}</td>
								<td>${item.phoneNumber}</td>
								<%-- <td>${item.password}</td> --%>
								<td>${item.email}</td>
								<td>${item.address1}<br>${item.address2}</td>
								<td>${item.joinDate}</td>
							</tr>
							</c:forEach>
							</tbody>
							</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
			</form>
				<div class="paging" style="display: flex; justify-content: center; align-items: center;">
					<p>
						${ pagingImg }
					</p>
				</div>
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
</body>
</html>

