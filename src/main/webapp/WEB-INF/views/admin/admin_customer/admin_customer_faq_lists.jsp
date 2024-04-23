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
				<dd class="h20 active">
					<a href="admin_customer_faq_lists.do">FAQ 분류</a>
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
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 고객지원 <i class="ionicons ion-ios-arrow-right"></i> FAQ 분류		</div>
	
<div class="s_wrap">
	<h1>FAQ 분류</h1>
	
<h2>분류 등록</h2>
<form name="faqlist2" id="faqlist2" action="./help/help_faq_group_update.php" method="post">
<input type="hidden" name="q1" value="code=faq_group">
<input type="hidden" name="page" value="1">
<input type="hidden" name="act_button" value="추가">
<div class="tbl_frm01">
	<table>
	<colgroup>
		<col class="w100">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">분류명</th>
		<td><input type="text" name="catename" required itemname="분류명" class="required frm_input" size="30"></td>
	</tr>
	</tbody>
	</table>
</div>
<div class="btn_confirm">
	<input type="submit" value="추가" class="btn_medium red">
</div>
</form>

<form name="faqlist" id="faqlist" method="post" action="./help/help_faq_group_update.php" onsubmit="return faqlist_submit(this);">
<input type="hidden" name="q1" value="code=faq_group">
<input type="hidden" name="page" value="1">

<div class="local_ov mart30">
	전체 : <b class="fc_red">7</b> 건 조회
</div>
<div class="local_frm01">
	<input type="submit" name="act_button" value="선택수정" class="btn_lsmall bx-white" onclick="document.pressed=this.value">
<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white" onclick="document.pressed=this.value"></div>
<div class="tbl_head01">
	<table>
	<colgroup>
		<col class="w50">
		<col class="w50">
		<col>
		<col class="w60">
	</colgroup>
	<thead>
	<tr>
		<th scope="col"><input type="checkbox" name="chkall" value="1" onclick="check_all(this.form);"></th>
		<th scope="col">번호</th>
		<th scope="col">분류명</th>
		<th scope="col">FAQ수</th>
	</tr>
	</thead>
	<tbody class="list">
	<tr class="list0">
		<td>
			<input type="hidden" name="index_no[0]" value="7">
			<label for="chk_0" class="sound_only">기타</label>
			<input type="checkbox" name="chk[]" value="0" id="chk_0">
		</td>
		<td>7</td>
		<td class="tal"><input type="text" name="catename[0]" value="기타" class="frm_input"></td>
		<td><a href="support3.html" class="fc_90">2</a></td>
	</tr>
	<tr>
		<td colspan="5">
			<div class="tbl_head03" style="border:1px solid #e4e5e7;">
				<table>
					<colgroup>
						<col class="w20">
						<col class="w90">
						<col class="w300">
						<col>
					</colgroup>
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">분류</th>
							<th scope="col">제목</th>
							<th scope="col">내용</th>
						</tr>
					</thead>
					<tbody class="list">
						<tr class="list0">
							<td><a href="support3.html" style="font-weight:normal;">2</a></td>
							<td><a href="support3.html" style="font-weight:normal;">배송문의</a></td>
							<td class="tal"><a href="support3.html" style="font-weight:normal;"><span class="ellipsis1">지정한 수령일보다, 몇 주 늦게 가도 될까요? 와인 보관이 가능한가요?</span></a></td>
							<td class="tal"><a href="support3.html" style="font-weight:normal;"><span class="ellipsis1">수령점으로 전화 주시면, 최대한 고객님 편의에 맞춰 도와드리겠습니다.</span></a></td>
						</tr>
						<tr>
							<td colspan="5">
								<div class="tbl_frm02">
									<div class="mart20"></div>
									<table>
										<colgroup>
											<col class="w180">
											<col>
										</colgroup>
										<tbody>
											<tr>
												<th>분류</th>
												<td class="tal">
													<select name="sel_ca">
														<option value="" selected>배송문의</option>
														<option value="">취소/교환/반품</option>
														<option value="">환불관련</option>
														<option value="">주문/결제</option>
														<option value="">쿠폰/포인트</option>
														<option value="">회원관련</option>
														<option value="">기타</option>
													</select>
												</td>
											</tr>
											<tr>
												<th>제목</th>
												<td><input type="text" name="" value="지정한 수령일보다, 몇 주 늦게 가도 될까요? 와인 보관이 가능한가요?" class="frm_input"></td>
											</tr>
											<tr>
												<th>내용</th>
												<td><textarea name="inquery_content" class="frm_textbox">수령점으로 전화 주시면, 최대한 고객님 편의에 맞춰 도와드리겠습니다.</textarea></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="btn_confirm">
									<input type="submit" value="수정" class="btn_small">
									<input type="submit" value="닫기" class="btn_small bx-white">
								</div>
								<div class="marb20"></div>
							</td>
						</tr>
						<tr class="list0">
							<td><a href="support3.html" style="font-weight:normal;">1</a></td>
							<td><a href="support3.html" style="font-weight:normal;">취소/교환/반품</a></td>
							<td class="tal"><a href="support3.html" style="font-weight:normal;"><span class="ellipsis1">상품이 발송된 후, 환불 받으려면 어떻게 해야 되나요?</span></a></td>
							<td class="tal"><a href="support3.html" style="font-weight:normal;"><span class="ellipsis1">주문한 수령점 또는 고객센터로 전화 주시면, 해당 건을 고객님 편의에 맞춰 도와드리겠습니다.</span></a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</td>
	</tr>
		<tr class="list1">
		<td>
			<input type="hidden" name="index_no[1]" value="6">
			<label for="chk_1" class="sound_only">회원관련</label>
			<input type="checkbox" name="chk[]" value="1" id="chk_1">
		</td>
		<td>6</td>
		<td class="tal"><input type="text" name="catename[1]" value="회원관련" class="frm_input"></td>
		<td><a href="support3.html" class="fc_125">1</a></td>
	</tr>
		<tr class="list0">
		<td>
			<input type="hidden" name="index_no[2]" value="5">
			<label for="chk_2" class="sound_only">쿠폰/포인트</label>
			<input type="checkbox" name="chk[]" value="2" id="chk_2">
		</td>
		<td>5</td>
		<td class="tal"><input type="text" name="catename[2]" value="쿠폰/포인트" class="frm_input"></td>
		<td>0</td>
	</tr>
		<tr class="list1">
		<td>
			<input type="hidden" name="index_no[3]" value="4">
			<label for="chk_3" class="sound_only">주문/결제</label>
			<input type="checkbox" name="chk[]" value="3" id="chk_3">
		</td>
		<td>4</td>
		<td class="tal"><input type="text" name="catename[3]" value="주문/결제" class="frm_input"></td>
		<td>0</td>
	</tr>
		<tr class="list0">
		<td>
			<input type="hidden" name="index_no[4]" value="3">
			<label for="chk_4" class="sound_only">환불관련</label>
			<input type="checkbox" name="chk[]" value="4" id="chk_4">
		</td>
		<td>3</td>
		<td class="tal"><input type="text" name="catename[4]" value="환불관련" class="frm_input"></td>
		<td>0</td>
	</tr>
		<tr class="list1">
		<td>
			<input type="hidden" name="index_no[5]" value="2">
			<label for="chk_5" class="sound_only">취소/교환/반품</label>
			<input type="checkbox" name="chk[]" value="5" id="chk_5">
		</td>
		<td>2</td>
		<td class="tal"><input type="text" name="catename[5]" value="취소/교환/반품" class="frm_input"></td>
		<td>0</td>
	</tr>
		<tr class="list0">
		<td>
			<input type="hidden" name="index_no[6]" value="1">
			<label for="chk_6" class="sound_only">배송문의</label>
			<input type="checkbox" name="chk[]" value="6" id="chk_6">
		</td>
		<td>1</td>
		<td class="tal"><input type="text" name="catename[6]" value="배송문의" class="frm_input"></td>
		<td>0</td>
	</tr>
		</tbody>
	</table>
</div>
<div class="local_frm02">
	<input type="submit" name="act_button" value="선택수정" class="btn_lsmall bx-white" onclick="document.pressed=this.value">
<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white" onclick="document.pressed=this.value"></div>
</form>


<script>
function faqlist_submit(f)
{
    if(!is_checked("chk[]")) {
        alert(document.pressed+" 하실 항목을 하나 이상 선택하세요.");
        return false;
    }

    if(document.pressed == "선택삭제") {
        if(!confirm("선택한 자료를 정말 삭제하시겠습니까?")) {
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

