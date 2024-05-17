<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel="stylesheet" href="css/admin/admin.css">
<link type="text/css" href="jquery-ui_style.css?ver=20240415180634">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/jquery-ui-1.10.3.custom.js"></script>
<script src="js/common.js"></script>
<script src="js/admin.js"></script>
<script src="js/wrest.js?ver=1"></script>
<!-- <script src="js/common.js?ver=20240415180634"></script> -->
<script src="js/categorylist.js"></script>
<!-- <script src="js/categorylist.js?ver=20240415180634"></script> -->
</head>
<body>
	<header id="hd">
		<div id="hd_wrap">
			<h1>행복을 주는 쇼핑몰!</h1>
			<div id="logo"><a href="/admin_index.do"><img src="/images/admin/winevillage_logo_inv.png"
						alt="행복을 주는 쇼핑몰! 관리자"></a></div>
			<div id="tnb">
				<ul>
					<li>오늘:60, 어제:80, 최대:739, 전체:167994</li>
					<li><a href="/main.do">쇼핑몰</a></li>
					<c:if test="${admin eq null }">
					<li><a href="/admin_login.do">로그인</a></li>
					<li><a href="/admin_setting_super.do">관리자등록</a></li>
					</c:if>
					<c:if test="${admin ne null }">
					<li><p class="admin_id_bold">${admin.admin_id}님 환영합니다.</p></li>	
					<li id="tnb_logout"><a href="/admin_logout.do">로그아웃</a></li>
					</c:if>
				</ul>
			</div>

			<nav id="gnb">
				<h2>관리자 주메뉴</h2>
				<ul id="gnb_1dul">
					<li class="gnb_1dli">
						<a href="/admin_index.do" class="gnb_1da">대시보드</a>
					</li>
					<li class="gnb_1dli">
						<a href="/admin_order_lists.do" class="gnb_1da">주문관리</a>
					</li>
					<li class="gnb_1dli">
						<a href="/admin_product_lists.do" class="gnb_1da">상품관리</a>
					</li>
					<li class="gnb_1dli">
						<a href="/admin_member_lists.do" class="gnb_1da">회원관리</a>
					</li>
					<li class="gnb_1dli">
						<a href="/admin_customer_qna.do" class="gnb_1da">고객지원</a>
					</li>
					<li class="gnb_1dli">
						<a href="/admin_setting_super.do" class="gnb_1da">환경설정</a>
					</li>
				</ul>
			</nav>
		</div>
	</header>
	

