<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%-- <%@ include file="admin_isLoggedin.jsp" %> --%>
<!doctype html>
<html lang="ko">
<body>
<%@ include file="admin_header.jsp"%>
<div id="wrapper">
<div id="main_wrap">
	<section>
		<h2>전체 주문통계<a href="admin_order_lists.do" class="btn_small">주문내역 바로가기</a></h2>
		<div class="order_vbx">
			<dl class="od_bx1">
				<dt>전체 주문현황</dt>
				<dd>
					<p class="ddtit">총 주문건수</p>
					<p>34</p>
				</dd>
				<dd class="total">
					<p class="ddtit">총 주문액</p>
					<p>2,437,700</p>
				</dd>
			</dl>

			<dl class="od_bx2">
				<dt>주문상태 현황</dt>
				<dd>
					<p class="ddtit">입금대기</p>
					<p>2</p>
				</dd>
				<dd>
					<p class="ddtit">입금완료</p>
					<p>0</p>
				</dd>
				<dd>
					<p class="ddtit">배송준비</p>
					<p>0</p>
				</dd>
				<dd>
					<p class="ddtit">배송중</p>
					<p>0</p>
				</dd>
				<dd>
					<p class="ddtit">배송완료</p>
					<p>1</p>
				</dd>
			</dl>
			<dl class="od_bx2">
				<dt>구매확정/클레임 현황</dt>
				<dd>
					<p class="ddtit">구매미확정</p>
					<p>0</p>
				</dd>
				<dd>
					<p class="ddtit">취소</p>
					<p>31</p>
				</dd>
				<dd>
					<p class="ddtit">환불</p>
					<p>0</p>
				</dd>
				<dd>
					<p class="ddtit">반품</p>
					<p>0</p>
				</dd>
				<dd>
					<p class="ddtit">교환</p>
					<p>0</p>
				</dd>
			</dl>
		</div>
	</section>

	<section class="sidx_head01">
		<h2>최근 주문내역<a href="admin_order_lists.do" class="btn_small">주문내역 바로가기</a></h2>
		<table>
		<thead>
		<tr>
			<th scope="col">주문번호</th>
			<th scope="col">주문자명</th>
			<th scope="col">수령자명</th>
			<th scope="col">전화번호</th>
			<th scope="col">결제방법</th>
			<th scope="col">총주문액</th>
			<th scope="col">주문일시</th>
		</tr>
		</thead>
		<tbody>
				<tr class="tr_alignc">
			<td>24040511530204</td>
			<td>관리자</td>
			<td>관리자</td>
			<td>010-0000-0000</td>
			<td>무통장</td>
			<td>136,240</td>
			<td>2024-04-05 11:53 (금)</td>
		</tr>
				<tr class="tr_alignc">
			<td>24040416420267</td>
			<td>11111111</td>
			<td>11111111</td>
			<td>11111</td>
			<td>무통장</td>
			<td>58,890</td>
			<td>2024-04-04 16:42 (목)</td>
		</tr>
				<tr class="tr_alignc">
			<td>24032211451267</td>
			<td>한글만</td>
			<td>한글만</td>
			<td>010-1111-1111</td>
			<td>무통장</td>
			<td>60,060</td>
			<td>2024-03-22 11:45 (금)</td>
		</tr>
				<tr class="tr_alignc">
			<td>24022111001895</td>
			<td>sd</td>
			<td>sd</td>
			<td>01053475421</td>
			<td>신용카드</td>
			<td>23,000</td>
			<td>2024-02-21 11:00 (수)</td>
		</tr>
				<tr class="tr_alignc">
			<td>24021814175590</td>
			<td>관리자</td>
			<td>관리자</td>
			<td>010-0000-0000</td>
			<td>무통장</td>
			<td>60,060</td>
			<td>2024-02-18 14:19 (일)</td>
		</tr>
				</tbody>
		</table>
	</section>

	<section class="sidx_head01">
		<h2>최근 회원가입<a href="admin_member_lists.do" class="btn_small">회원관리 바로가기</a></h2>
		<table>
		<thead>
		<tr>
			<th scope="col">이름</th>
			<th scope="col">아이디</th>
			<th scope="col">레벨</th>
			<th scope="col">이메일</th>
			<th scope="col">접속횟수</th>
			<th scope="col">추천인</th>
			<th scope="col">가입일시</th>
		</tr>
		</thead>
		<tbody>
				<tr class="tr_alignc">
			<td>세글만</td>
			<td>tubeweb3</td>
			<td>일반회원</td>
			<td>tubeweb3@gmail.com</td>
			<td>54</td>
			<td>tubeweb1</td>
			<td>2020-10-04 18:05 (일)</td>
		</tr>
				<tr class="tr_alignc">
			<td>두글만</td>
			<td>tubeweb2</td>
			<td>일반회원</td>
			<td>tubeweb2@gmail.com</td>
			<td>693</td>
			<td>admin</td>
			<td>2020-10-04 18:05 (일)</td>
		</tr>
				<tr class="tr_alignc">
			<td>한글만</td>
			<td>tubeweb1</td>
			<td>가맹점</td>
			<td>tubeweb1@gmail.com</td>
			<td>766</td>
			<td>admin</td>
			<td>2020-10-04 18:04 (일)</td>
		</tr>
				</tbody>
		</table>
	</section>
</div>

</div>
<%@ include file="admin_footer.jsp"%>
</body>
</html>
