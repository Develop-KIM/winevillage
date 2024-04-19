<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<link rel="shortcut icon" href="./images/default/favicon.ico"
	type="image/x-icon" />
<link rel="icon" href="./images/default/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="./css/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" href="./css/layouta0da.css" />
<link rel="stylesheet" type="text/css" href="./css/layout_pcdc60.css"
	media="screen and (min-width:1024px)">
<link rel="stylesheet" type="text/css" href="./css/layout_jj7f50.css" />
<link rel="stylesheet" type="text/css" href="./css/layout_pc_jj7d5a.css"
	media="screen and (min-width:1024px)">
<link rel="stylesheet" type="text/css" href="./css/layout_elly302b.css" />
<link rel="stylesheet" type="text/css"
	href="./css/layout_pc_elly1d8d.css"
	media="screen and (min-width:1024px)">
<link rel="stylesheet" type="text/css" href="./css/layout_ch1bc4.css" />
<link rel="stylesheet" type="text/css" href="./css/layout_pc_chae31.css"
	media="screen and (min-width:1024px)">
<link rel="stylesheet" type="text/css" href="./css/layout_sy6617.css" />
<link rel="stylesheet" type="text/css" href="./css/layout_pc_sy231a.css"
	media="screen and (min-width:1024px)">
<link rel="stylesheet" type="text/css" href="./css/main99d9.css" />
<link rel="stylesheet" type="text/css" href="./css/main_pc2092.css"
	media="screen and (min-width:1024px)">
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.min.js"></script>
<script type="text/javascript" src="./js/picturefill.min.js"></script>
<script type='text/javascript' src="./js/instafeed.js"></script>
<!-- <script type="text/javascript" src="./js/commond820.js?v=221216102931"></script> -->
<script type="text/javascript" src="./js/front_ui9442.js"></script>
<script src="./js/wn.productf100.js"></script>
<title>WINEVILLAGE ㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다!</title>
</head>
<body>
	<header id="header" class="header">
		<!-- 로딩바 -->
		<div class="loading">
			<div class="loading_bar">
				<div class="loading_img">
					<img src="./images/default/ico_loading.svg" alt="">
				</div>
			</div>
			<script type="text/javascript">
				var loding = setInterval(function() {
				}, 2100);
				window.onload = function() {
					clearInterval(loding);
					$(".loading").fadeOut(function() {
						$(".loading").remove();
					});
				}
			</script>
		</div>
		<input type="hidden" id="session_id" value="">
		<!-- 최상단 배너 -->
		<div class="top">
			<div class="wrap">
				<h1 class="logo">
					<a href="main6f31.html"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="./images/default/wine_village.svg"
							media="(min-width:768px)">
						<!-- pc이미지 -->
						<source srcset="./images/default/wine_village.svg"
							media="(max-width:767px)">
						<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
							src="./images/default/wine_village.svg" alt="WINEVILLAGE"
							draggable="false"><!-- pc이미지 --> </picture>
					</a>
				</h1>
				<div class="gnb">
					<ul>
						<li class=""><a href="product/product_lists9852.do?category=">WINE</a>
							<div class="pc_category_gnb">
								<div class="flex_box">
									<div class="box wine">
										<ul>
											<li class="ico_red"><a
												href="product/product_lists9767.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10101">레드</a>
											</li>
											<li class="ico_white"><a
												href="product/product_lists1c99.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10102">화이트</a>
											</li>
											<li class="ico_rose"><a
												href="product/product_lists5123.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10108">로제</a>
											</li>
										</ul>
										<ul>
											<li class="ico_france"><a
												href="product/product_listsf3cc.html?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10201">프랑스</a>
											</li>
											<li class="ico_italia"><a
												href="product/product_listsf523.html?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10202">이탈리아</a>
											</li>
											<li class="ico_spain"><a
												href="product/product_lists0266.html?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10203">스페인</a>
											</li>
											<li class="ico_germ"><a
												href="product/product_lists50d2.html?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10204">독일</a>
											</li>
										</ul>
									</div>
								</div>
							</div></li>
						<li class=""><a
							href="product/product_lists421d.html?sh_category1_cd=40000">OTHER</a>
							<div class="pc_category_gnb">
								<div class="flex_box">
									<div class="box other">
										<ul>
											<li class="ico_acc"><a
												href="product/product_listse5ca.html?sh_category1_cd=40000&amp;sh_category2_cd=40100&amp;sh_category3_cd=40101">액세서리</a>
											</li>
										</ul>
									</div>
								</div>
							</div></li>
						<li><a href="company/store.html">SHOP</a></li>
						<li><a href="company/about_us.html">ABOUT US</a></li>
					</ul>
				</div>
				<ul class="right_menu">
					<li class="cart"><a href="cart/cart_lists.html"><span>Cart
								List</span> </a></li>
					<li class="mb_hidden wish"><a href="wish_lists.html"><img
							src="./images/default/pc_icon_wish.png" alt="Wish List"> </a></li>
					<li class="mypage mb_hidden">
						<button type="button" onclick="commonUI.header.Mypage.clickFn()">
							<img src="./images/default/pc_icon_mypage.png" alt="My Page">
						</button>
						<div class="mypage_layer">
							<div class="no_login">
								<a href="#" onclick="$('.layer.login_layer').show();">로그인</a> <a
									href="member/join/law_agreement.html">회원가입</a>
							</div>
						</div>
					</li>
					<li class="mb_hidden"><a href="cs/notice_lists.html"><img
							src="./images/default/pc_icon_center.png" alt="Info Center"></a></li>
				</ul>

			</div>
		</div>

		<div class="bottom">
			<h1 class="fixed_logo" style="display: none;">
				<a href="main6f31.html"> <img
					src="./images/default/pc_fixed_logo.png" alt="WINENARA 1987"
					draggable="false">
				</a>
			</h1>
			<div class="wrap">
				<div class="pc_category_gnb">
					<div class="flex_box">
						<div class="box wine">
							<p class="tit">
								<strong>WINE</strong>
							</p>
							<ul>
								<li class="ico_red"><a
									href="product/product_lists9767.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10101">레드</a>
								</li>
								<li class="ico_white"><a
									href="product/product_lists1c99.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10102">화이트</a>
								</li>
								<li class="ico_rose"><a
									href="product/product_lists5123.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10108">로제</a>
								</li>
								<li class="ico_sparkling"><a
									href="product/product_listse091.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10103">스파클링</a>
								</li>
							</ul>
							<ul>
								<li class="ico_france"><a
									href="product/product_listsf3cc.html?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10201">프랑스</a>
								</li>
								<li class="ico_italia"><a
									href="product/product_listsf523.html?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10202">이탈리아</a>
								</li>
								<li class="ico_spain"><a
									href="product/product_lists0266.html?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10203">스페인</a>
								</li>
								<li class="ico_germ"><a
									href="product/product_lists50d2.html?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10204">독일</a>
								</li>
							</ul>
						</div>
						<div class="box other">
							<p class="tit">
								<strong>BEER & LIQUOR</strong>
							</p>
							<ul>
								<li class="ico_whiskey"><a
									href="product/product_listsf1c9.html?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20101">위스키</a>
								</li>
								<li class="ico_cognac"><a
									href="product/product_listse72d.html?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20102">꼬냑</a>
								</li>
								<li class="ico_tequila"><a
									href="product/product_listsb363.html?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20105">데킬라</a>
								</li>
								<li class="ico_jin"><a
									href="product/product_lists1cbb.html?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20103">진</a>
								</li>
								<li class="ico_rum"><a
									href="product/product_lists3273.html?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20106">럼</a>
								</li>
								<li class="ico_beer"><a
									href="product/product_lists9a59.html?sh_category1_cd=20000&amp;sh_category2_cd=20200&amp;sh_category3_cd=20201">맥주</a>
								</li>
							</ul>
							<p class="tit">
								<strong>TICKET</strong>
							</p>
							<ul>
								<li class="ico_ticket"><a
									href="product/product_lists9a3e.html?sh_category1_cd=50000">티켓</a></li>
							</ul>
							<p class="tit">
								<strong>OTHER</strong>
							</p>
							<ul>
								<li class="ico_acc"><a
									href="product/product_listse5ca.html?sh_category1_cd=40000&amp;sh_category2_cd=40100&amp;sh_category3_cd=40101">액세서리</a>
								</li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">
								<a href="product/best_product_lists2532.html?group_cd=20240206"><strong>En
										Primeur</strong></a>
							</p>
							<p class="tit">
								<strong>PROMOTION</strong>
							</p>
							<ul>
								<li><a href="event/event_lists.html">이달의 프로모션</a></li>
								<li><a href="event/event_end.html">완료된 프로모션</a></li>
								<li><a href="cs/special.html">특판문의</a></li>
							</ul>
							<p class="tit">
								<a href="company/store.html"><strong>SHOP</strong></a>
							</p>
							<p class="tit">
								<strong>BLOG</strong>
							</p>
							<ul>
								<li><a href="community/brandstory_lists.html">OUR
										BRANDS</a></li>
								<li><a href="community/magazine_con_lists.html">OUR
										STORIES</a></li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">
								<strong>VIDEO</strong>
							</p>
							<ul>
								<li><a href="community/video_lists.html">BRANDS FILM</a></li>
								<li><a href="community/film_lists.html">WINENARA FILM</a></li>
							</ul>
							<p class="tit">
								<strong>ABOUT US</strong>
							</p>
							<ul>
								<li><a href="company/about_us.html">WINENARA</a></li>
								<li><a href="company/brand.html">BRANDS</a></li>
								<li><a href="company/store.html">SHOP</a></li>
								<li><a href="company/fnb.html">F&B</a></li>
								<li><a href="community/press_lists.html">PRESS</a></li>
								<li><a href="company/member_benefit.html">MEMBERSHIP</a></li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">
								<strong>고객센터</strong>
							</p>
							<ul>
								<li><a href="cs/notice_lists.html">공지사항</a></li>
								<li><a href="cs/faq_lists.html">자주하는 질문</a></li>
								<li><a href="cs/qna_write.html">1:1문의</a></li>
								<li><a href="cs/nomem_cert.html">비회원 주문조회</a></li>
							</ul>
							<div class="info">
								<a href="tel:0807320101">080-732-0101</a>
								<p>
									<em>[운영시간]</em> 10:00~17:00<br> (점심시간 12:00~13:00)<br>
									<em>[휴무]</em> 주말 및 공휴일
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<button type="button" onclick="commonUI.header.Search.clickFn()"
				class="fixed_search_btn">PC Search</button>
			<a href="mypageping/mypage.html" class="fixed_mypage"><img
				src="./images/default/pc_icon_mypage.png" alt="My Page"></a> <a
				href="cart/cart_lists.html" class="fixed_cart"> </a>
		</div>
		<div class="mb_lnb pc_hidden">
			<ul>
				<li class="btn_order"><button type="button"
						onclick="commonUI.layer.open('login_layer.html')">
						<span>ORDER LIST</span>
					</button></li>

				<li class="btn_search"><button type="button"
						onclick="commonUI.layer.open('category_layer.html')">
						<span>SEARCH</span>
					</button></li>
				<li class="btn_home"><button type="button"
						onclick="location.href='main.html'">
						<span>mobile Home</span>
					</button></li>
				<li class="btn_wish"><button type="button"
						onClick="commonUI.layer.open('login_layer.html');">
						<span>WISH LIST</span>
					</button></li>
				<li class="btn_mypage"><button type="button"
						onClick="commonUI.layer.open('login_layer.html');">
						<span>MY PAGE</span>
					</button></li>
			</ul>
		</div>

		<form action="https://www.winenara.com/order/barcode_view"
			id="BarcodeForm" name="BarcodeForm" method="post"
			accept-charset="utf-8">
			<input type="hidden" name="witplus_csrf_token"
				value="6d4b67b6bb470edeee07d5a9e38ef1d6" /> <input type="hidden"
				name="barcode" value="">
		</form>

		<form action="https://www.winenara.com/product/search_product_lists"
			id="searchForm" name="searchForm" method="get" accept-charset="utf-8">
			<div class="search_layer">
				<div class="search_box">
					<button type="button" class="btn_close"
						onclick="commonUI.header.Search.clickFn()">Search</button>
					<input type="text" name="keyword" id="keyword"
						placeholder='오늘 마시고 싶은 와인을 검색해 보세요.' autocomplete="off"
						class="srch_close_event" value="">
					<button type="submit" id="s_btn">검색</button>
				</div>

				<div class="search_result srch_close_event" id="search_block">
					<div class="result_inner">
						<div class="allDelete off">
							<h2 class="tit">최근검색어</h2>
							<button type="button" class="btn del_btn"
								onclick="all_del_item();">
								전체삭제</span>
						</div>
						<ul id="result_list" class="result_list">
							<li id="nodata">최근검색어 내역이 없습니다.</li>
						</ul>
					</div>
				</div>

			</div>
		</form>
	</header>
	<form action="https://www.winenara.com/login" id="LoginPostFrm"
		onkeydown="javascript:onEnterLogin();" method="post"
		accept-charset="utf-8">
		<input type="hidden" name="witplus_csrf_token"
			value="be7b38b9302ff3c05cc7f68a617d7dd7" />
		<div class="layer login_layer" id="login_layer">
			<div class="display_table">
				<div class="table_cell">
					<div class="layer_area">
						<h2 class="layer_tit">
							회원서비스
							<!-- <p class="check"><span>로그인</span></p>
                    <p><span><a href="/member/join/law_agreement">회원가입</a></span></p> -->
						</h2>
						<button type="button" class="layer_close"
							onclick="commonUI.layer.close()">닫기</button>
						<div class="layer_con">
							<div class="login_tab">
								<p class="check">
									<span>기존회원</span>
								</p>
								<p>
									<span><a href="/member/join/law_agreement">신규회원가입</a></span>
								</p>
							</div>
							<div class="social_login">
								<h2 class="social_tit">소셜아이디로 로그인</h2>
								<ul>
									<li><a href="#none" class="social_btn naver">네이버</a></li>
									<li><a href="#none" class="social_btn kakao">카카오</a></li>
									<li><a href="#none" class="social_btn google">구글</a></li>
									<!-- <li><a href="#none" class="social_btn apple">애플</a></li> -->
								</ul>
							</div>
							<div class="form_area">
								<ul>
									<li>
										<div class="form_box">
											<input type="text" id="login_user_id" name="login_user_id"
												value="" placeholder="아이디를 입력하세요">
										</div>
									</li>
									<li>
										<div class="form_box">
											<input type="password" id="login_passwd" name="login_passwd"
												placeholder="비밀번호를 입력하세요">
										</div>
									</li>
								</ul>
							</div>
							<input type="hidden" id="login_return_url_param"
								name="login_return_url_param">
							<div class="save_box">
								<div class="checkbox">
									<input type="checkbox" name="login_auto" id="login_auto"
										value="Y" checked> <label for="login_auto">로그인유지</label>
								</div>
								<div class="checkbox">
									<input type="checkbox" name="id_save" id="id_save" value="Y">
									<label for="id_save">아이디저장</label>
								</div>
								<p class="input_info_txt">※ 공공장소에서는 꺼주세요.</p>
							</div>
							<div class="btn_area">
								<button type="button" class="btn_txt btn_black" id="loginBtn">
									<span>로그인</span>
								</button>
							</div>
							<div class="login_sub_btn">
								<a href="/member/forgoten/forgoten_id" class="btn">아이디 찾기</a> <a
									href="/member/forgoten/forgoten_pw" class="btn">비밀번호 재발급</a> <a
									href="/member/forgoten/forgoten_pw" class="btn">관리자 로그인</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>