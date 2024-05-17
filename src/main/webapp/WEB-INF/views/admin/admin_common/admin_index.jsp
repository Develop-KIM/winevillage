<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%-- <%@ include file="admin_isLoggedin.jsp" %> --%>
<!doctype html>
<html lang="ko">
<body>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
<!-- <script src="js/admin_product.js"></script> -->

<%@ include file="admin_header.jsp"%>


<%-- <canvas id="myChart" width="50" height="50">test</canvas> --%>
<div id="wrapper">
<div id="main_wrap">

	<section class="sidx_head01">
		<h2>최근 주문내역(3건)<a href="/admin_order_lists.do" class="btn_small">주문내역 바로가기</a></h2>
		<table>
		<thead>
		<tr>
			<th scope="col">주문번호</th>
			<th scope="col">주문자명</th>
			<th scope="col">수령자명</th>
			<th scope="col">전화번호</th>
			<th scope="col">수령주소</th>
			<th scope="col">총주문액</th>
			<th scope="col">주문일시</th>
		</tr>
		</thead>
		<tbody>
		<c:choose>
			<c:when test="${ empty orderlists }">
				<tr>
					<td colspan='7' class="empty_table">리스트가 없습니다.</td>
				</tr>
			</c:when>
		<c:otherwise>
			<c:forEach items="${ orderlists }" var="orderitem" varStatus="loop">
				<tr class="tr_alignc">
				<td>${orderitem.order_usersNo}</td>
				<td>${orderitem.name}</td>
				<td>${orderitem.receiverName}</td>
				<td>${orderitem.receiverPhone}</td>
				<td>${orderitem.receiverAddress1}</td>
				<td>${orderitem.finalPrice}</td>
				<td>${orderitem.orderDate}</td>
			</tr>
			</c:forEach>
		</c:otherwise>
		</c:choose>
		</tbody>
		</table>
	</section>

	<section class="sidx_head01">
		<h2>최근 회원가입(3건)<a href="/admin_member_lists.do" class="btn_small">회원관리 바로가기</a></h2>
		<table>
		<thead>
		<tr>
			<th scope="col">아이디</th>
			<th scope="col">회원명</th>
			<th scope="col">생년월일</th>
			<th scope="col">핸드폰</th>
			<th scope="col">email</th>
			<th scope="col">주소</th>
			<th scope="col">가입일시</th>
		</tr>
		</thead>
		<tbody>
		<c:choose>
		<c:when test="${ empty lists }">
			<tr>
				<td colspan='14' class="empty_table">리스트가 없습니다.</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${ lists }" var="item" varStatus="loop">
			<tr class="tr_alignc">
				<td>${item.memberId }</td>
				<td>${item.name }</td>
				<td>${item.birthday }</td>
				<td>${item.phoneNumber }</td>
				<td>${item.email }</td>
				<td>${item.address1 }</td>
				<td>${item.joinDate }</td>
			</tr>
			</c:forEach>
		</c:otherwise>
		</c:choose>
				</tbody>
		</table>
	</section>
</div>

</div>

<%@ include file="admin_footer.jsp"%>
<script>
const ctx = document.getElementById('myChart').getContext('2d');
const myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
            label: '# of Votes',
            data: [12, 19, 3, 5, 2, 3],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});
</script> 
</body>
</html>
