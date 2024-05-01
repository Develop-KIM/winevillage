<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품리스트</h2>
	<form onsubmit="return validateForm(this);">
	<table>
	<tr>
		<td>
		<!--  검색을 위한 필드(컬럼)를 2개 이상 선택하기 위해 체크박스로 구성한다.
			  폼값은 배열로 전송된다. 
		-->
			<input type="checkbox" name="searchField" value="wine" />wine
			<input type="checkbox" name="searchField" value="fullPrice" />fullPrice
			<input type="checkbox" name="searchField" value="country" />counrty
			<input type="checkbox" name="searchField" value="grapeVariety" />grapeVariety
		<!-- 검색어는 일반 -->
			<input type="text" name="searchKeyword"/>
			<input type="submit" value="검색" />
		</td>
	</tr>
	</table>
	</form>
	<table border="1">
		<tr>
			<th>와인종류</th>
			<th>가격</th>
			<th>생산국가</th>
			<th>생산지역</th>
		</tr>
		<!--
			컨트롤러에서 Model에 저장한 List<MemberDTO>를 개수만큼 반복해서 출력한다.
			저장한 속성명은 memberList로 지정하였다. 
		  -->
		<c:forEach items="${productList }" var="product" varStatus="loop"> 
		<tr>
			<td>${product.wine }</td>
			<td>${product.fullPrice }</td>
			<td>${product.country }</td>
			<td>${product.grapeVariety }</td>
		</c:forEach>
	</table>
</body>
</html>