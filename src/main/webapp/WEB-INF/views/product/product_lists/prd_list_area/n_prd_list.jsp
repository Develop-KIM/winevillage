<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="n_prd_list" id="product_ul">
	<%
	for (int lists = 0; lists < 25 ; lists++) {
	%>
	<li>
		<%@ include file="n_prd_list/item.jsp" %>
	</li>
	<%
	}
	%>
</ul>