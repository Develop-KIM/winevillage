<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<link rel="stylesheet" type="text/css" href="./css/header.css" /> 
<title>Insert title here</title>
</head>
<body>
	<header class="header">
        <div class="header_wrap">
                <h2 class="logo">
                    <a href="main.do">
                        <picture>
                            <img src="./images/default/wine_village.svg" alt="WINEVILLAGE">
                            <!-- 테블릿 -->
                            <source srcset="/asset/images/shop/default/pc_logo.png" media="(min-width:768px)">
       						<!-- 모바일 -->
                            <source srcset="/asset/images/shop/default/mb_logo.png" media="(max-width:767px)">                        
                    	</picture>
                    </a>
                </h2>
                <div class="gnb">
                    <ul>
                        <li class="">
                            <a href="/product/product_lists?category=">WINE</a>
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
                            </div>
                        </li>
                        <li class="">
                            <a href="product/product_lists421d.html?sh_category1_cd=40000">OTHER</a>
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
                            </div>
                        </li>
                        <li>
                            <a href="company/store.html">SHOP</a>
                        </li>
                        <li>
                            <a href="company/about_us.html">ABOUT US</a>
                        </li>
                    </ul>
                </div>
                <ul class="right_menu">
                    <li class="cart">
                    <a href="cart/cart_lists.html">
                    	<span>Cart List</span>
                    </a>
                    </li>
                    <li class="mb_hidden wish">
                    <a href="wish_lists.html">
                    <img src="../asset/images/shop/default/pc_icon_wish.png" alt="Wish List"></a></li>
                    <li class="mypage mb_hidden">
                        <button type="button" onclick="commonUI.header.Mypage.clickFn()"><img
                                src="../asset/images/shop/default/pc_icon_mypage.png" alt="My Page"></button>
                        <div class="mypage_layer">
                            <div class="no_login">
                                <a href="#" onclick="$('.layer.login_layer').show();">로그인</a>
                                <a href="member/join/law_agreement.html">회원가입</a>
                                <!-- <a href="javascript:commonUI.layer.open('wine_profile_layer')">와인 프로파일(임시 테스트용)</a> -->
                            </div>
                        </div>
                    </li>
                    <li class="mb_hidden"><a href="cs/notice_lists.html"><img
                                src="../asset/images/shop/default/pc_icon_center.png" alt="Info Center"></a></li>
                </ul>

            </div>
	</header>
</body>
</html>