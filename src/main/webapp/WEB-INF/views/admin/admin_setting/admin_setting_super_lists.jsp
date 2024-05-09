<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%-- <%@ include file="../admin_common/admin_isLoggedin.jsp" %> --%>
<!doctype html>
<html lang="ko">
<head>
<body>
<%@ include file="../admin_common/admin_header.jsp"%>
<script>
function deletePost(idx) {
	var confirmed = confirm("정말로 삭제하시겠습니까?");
	if(confirmed) {
		var form = document.deleteform;
		form.method = "post";
		form.action = "admin_setting_super_delete.do";
		form.submit();
	}
}
</script>
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
				<h2>관리자 검색</h2>
				<form>
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
				<form name="deleteform">
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
								<input type="hidden" name="admin_idx" value="${item.admin_idx }">
								<td><a style="margin-right: 10px; " href="admin_setting_super_edit.do?admin_idx=${item.admin_idx }" class="btn_small">수정</a>
								<button type="button" onclick="deletePost(${param.idx})" class="btn_small">삭제</button></td>
							</tr>
							</c:forEach>
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
			</div>

		</div>
	</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

