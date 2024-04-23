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
				<dd class="h10 active">
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
										<select name="sfl">
											<option value="mb_id">작성자</option>
											<option value="subject">제목</option>
										</select>
										<input type="text" name="stx" value="" class="frm_input" size="30">
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

				<form name="fqalist" id="fqalist" method="post" action="./help/help_qa_delete.php"
					onsubmit="return fqalist_submit(this);">
					<input type="hidden" name="q1" value="code=qa">
					<input type="hidden" name="page" value="1">

					<div class="local_ov mart30">
						전체 : <b class="fc_red">0</b> 건 조회
					</div>
					<div class="local_frm01">
						<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white"
							onclick="document.pressed=this.value">
					</div>
					<div class="tbl_head01">
						<table>
							<colgroup>
								<col class="w30">
								<col class="w40">
								<col class="w80">
								<col class="w100">
								<col class="w300">
								<col>
								<col class="w50">
							</colgroup>
							<thead>
								<tr>
									<th scope="col"><input type="checkbox" name="chkall" value="1" onclick="check_all(this.form);"></th>
									<th scope="col">번호</th>
									<th scope="col">작성일</th>
									<th scope="col">구분</th>
									<th scope="col">제목</th>
									<th scope="col">문의내용</th>
									<th scope="col">답변여부</th>
								</tr>
							</thead>
							<tbody>
								<!-- <tr>
									<td colspan="8" class="empty_table">자료가 없습니다.</td>
								</tr> -->
								<tr class="list0">
									<td><input type="checkbox" name="" value="0"></td>
									<td>9</td>
									<td>2024-99-99</td>
									<td>상품관련</td>
									<td class="tal"><span class="ellipsis1">상품관련 문의입니다. 상품관련 문의입니다.</span></td>
									<td class="tal"><span class="ellipsis1">상품관련이 이래서 이렇고 저래서 저렇습니다. 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련</span></td>
									<td><span class="btn_small red">답변대기</span></td>
								</tr>
								<tr>
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
								</tr>
								<tr class="list0">
									<td><input type="checkbox" name="" value="0"></td>
									<td>8</td>
									<td>2024-99-99</td>
									<td>주문/결제관련</td>
									<td class="tal"><span class="ellipsis1">주문/결제관련 문의입니다. 주문/결제관련 문의입니다.</span></td>
									<td class="tal"><span class="ellipsis1">주문/결제관련이 이래서 이렇고 저래서 저렇습니다. 주문/결제관련 주문/결제관련 주문/결제관련 주문/결제관련 주문/결제관련 주문/결제관련 주문/결제관련 주문/결제관련 주문/결제관련 주문/결제관련 주문/결제관련 주문/결제관련 주문/결제관련 주문/결제관련 주문/결제관련</span></td>
									<td><span class="btn_small">답변완료</span></td>
								</tr>
								<tr class="list0">
									<td><input type="checkbox" name="" value="0"></td>
									<td>7</td>
									<td>2024-99-99</td>
									<td>반품/환불관련</td>
									<td class="tal"><span class="ellipsis1">반품/환불관련 문의입니다. 반품/환불관련 문의입니다.</span></td>
									<td class="tal"><span class="ellipsis1">반품/환불관련이 이래서 이렇고 저래서 저렇습니다. 반품/환불관련 반품/환불관련 반품/환불관련 반품/환불관련 반품/환불관련 반품/환불관련 반품/환불관련 반품/환불관련 반품/환불관련 반품/환불관련 반품/환불관련 반품/환불관련 반품/환불관련 반품/환불관련 반품/환불관련</span></td>
									<td><span class="btn_small">답변완료</span></td>
								</tr>
								<tr class="list0">
									<td><input type="checkbox" name="" value="0"></td>
									<td>6</td>
									<td>2024-99-99</td>
									<td>건강정보관련</td>
									<td class="tal"><span class="ellipsis1">건강정보관련 문의입니다. 건강정보관련 문의입니다.</span></td>
									<td class="tal"><span class="ellipsis1">건강정보관련이 이래서 이렇고 저래서 저렇습니다. 건강정보관련 건강정보관련 건강정보관련 건강정보관련 건강정보관련 건강정보관련 건강정보관련 건강정보관련 건강정보관련 건강정보관련 건강정보관련 건강정보관련 건강정보관련 건강정보관련 건강정보관련</span></td>
									<td><span class="btn_small">답변완료</span></td>
								</tr>
								<tr class="list0">
									<td><input type="checkbox" name="" value="0"></td>
									<td>5</td>
									<td>2024-99-99</td>
									<td>기타관련</td>
									<td class="tal"><span class="ellipsis1">기타관련 문의입니다. 기타관련 문의입니다.</span></td>
									<td class="tal"><span class="ellipsis1">기타관련이 이래서 이렇고 저래서 저렇습니다. 기타관련 기타관련 기타관련 기타관련 기타관련 기타관련 기타관련 기타관련 기타관련 기타관련 기타관련 기타관련 기타관련 기타관련 기타관련</span></td>
									<td><span class="btn_small">답변완료</span></td>
								</tr>
								<tr class="list0">
									<td><input type="checkbox" name="" value="0"></td>
									<td>4</td>
									<td>2024-99-99</td>
									<td>상품관련</td>
									<td class="tal"><span class="ellipsis1">상품문의입니다. 상품문의입니다.</span></td>
									<td class="tal"><span class="ellipsis1">상품이 이래서 이렇고 저래서 저렇습니다. 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련 상품관련</span></td>
									<td><span class="btn_small">답변완료</span></td>
								</tr>
								<tr class="list0">
									<td><input type="checkbox" name="" value="0"></td>
									<td>3</td>
									<td>2024-99-99</td>
									<td>회원/정보관리</td>
									<td class="tal"><span class="ellipsis1">회원/정보관리 문의입니다. 회원/정보관리 문의입니다.</span></td>
									<td class="tal"><span class="ellipsis1">회원정보가 이래서 이렇고 저래서 저렇습니다. 회원/정보관리 회원/정보관리 회원/정보관리 회원/정보관리 회원/정보관리 회원/정보관리 회원/정보관리 회원/정보관리 회원/정보관리 회원/정보관리 회원/정보관리 회원/정보관리 회원/정보관리 회원/정보관리 회원/정보관리</span></td>
									<td><span class="btn_small">답변완료</span></td>
								</tr>
								<tr class="list0">
									<td><input type="checkbox" name="" value="0"></td>
									<td>2</td>
									<td>2024-99-99</td>
									<td>배송</td>
									<td class="tal"><span class="ellipsis1">배송 문의입니다. 배송 문의입니다.</span></td>
									<td class="tal"><span class="ellipsis1">배송이 이래서 이렇고 저래서 저렇습니다. 배송 배송 배송 배송 배송 배송 배송 배송 배송 배송 배송 배송 배송 배송 배송 배송 배송 배송 배송 배송</span></td>
									<td><span class="btn_small">답변완료</span></td>
								</tr>
								<tr class="list0">
									<td><input type="checkbox" name="" value="0"></td>
									<td>1</td>
									<td>2024-99-99</td>
									<td>영수증/증빙서류</td>
									<td class="tal"><span class="ellipsis1">영수증/증빙서류 문의입니다. 영수증/증빙서류 문의입니다.</span></td>
									<td class="tal"><span class="ellipsis1">증빙서류가 이래서 이렇고 저래서 저렇습니다. 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류 영수증/증빙서류</span></td>
									<td><span class="btn_small">답변완료</span></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="local_frm02">
						<input type="submit" name="act_button" value="선택삭제" class="btn_lsmall bx-white"
							onclick="document.pressed=this.value">
					</div>
				</form>


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

