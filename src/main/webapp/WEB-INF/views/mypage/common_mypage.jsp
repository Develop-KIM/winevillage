<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA ㅣ MY PAGE    </title>

<script>
    //if (document.location.protocol == 'http:' && location.hostname.indexOf("winenara.com") != -1) {
    //    document.location.href = document.location.href.replace('http:', 'https:');
    //}
    var _BASE_URL_ = "https://www.winenara.com/";
    var _CSRF_NAME_ = "witplus_csrf_token";
    var sesId = "";
    var sesCustSeq = "";
    var session_id = "";
    var ci_cookie = "s3klkmjskuf6n4ruqsf4t1673qfpejlf";
</script>
<!--백로그 API-->
<script type="text/JavaScript" language="JavaScript" src="https://winenara-recommend-method.s3.ap-northeast-2.amazonaws.com/rcMethod.js" charset="UTF-8"></script>
<!-- <script type="text/JavaScript">
        RC_Initialize('https://waapi.winenara.com:18099', "", "s3klkmjskuf6n4ruqsf4t1673qfpejlf", "visitor");
    </script> -->
<!--백로그 API-->
<meta id="CsrfSecrets" name="witplus_csrf_token" content="be7b38b9302ff3c05cc7f68a617d7dd7"/>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-217574467-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() { dataLayer.push(arguments); }
	gtag('js', new Date());
	gtag('config', 'UA-217574467-1');
</script>
<!-- 구글 로그 분석 220428 -->
<!-- 트래킹 관련 include -->
<!-- 트래킹 관련 include -->
</head>
<body>
<!-- skip_menu -->
<div class="skip_menu" id="skip_menu">
	<ul>
		<li><a href="#header">메인메뉴 바로가기</a></li>
		<li><a href="#contents">본문 바로가기</a></li>
		<li><a href="#footer">하단메뉴 바로가기</a></li>
	</ul>
</div>
<!-- //skip_menu -->
<!-- header - 로그인 상태 -->

<form action="https://www.winenara.com/shop/login" id="LoginPostFrm" onkeydown="javascript:onEnterLogin();" method="post" accept-charset="utf-8">
	<input type="hidden" name="witplus_csrf_token" value="be7b38b9302ff3c05cc7f68a617d7dd7"/>
	<div class="layer login_layer" id="login_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<h2 class="layer_tit">
					회원서비스 
					<!-- <p class="check"><span>로그인</span></p>
                    <p><span><a href="/shop/member/join/law_agreement">회원가입</a></span></p> -->
					</h2>
					<button type="button" class="layer_close" onclick="commonUI.layer.close()">닫기</button>
					<div class="layer_con">
						<div class="login_tab">
							<p class="check">
								<span>기존회원</span>
							</p>
							<p>
								<span><a href="/shop/member/join/law_agreement">신규회원가입</a></span>
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
									<input type="text" id="login_user_id" name="login_user_id" value="" placeholder="아이디를 입력하세요">
								</div>
								</li>
								<li>
								<div class="form_box">
									<input type="password" id="login_passwd" name="login_passwd" placeholder="비밀번호를 입력하세요">
								</div>
								</li>
							</ul>
						</div>
						<input type="hidden" id="login_return_url_param" name="login_return_url_param">
						<div class="save_box">
							<div class="checkbox">
								<input type="checkbox" name="login_auto" id="login_auto" value="Y" checked>
								<label for="login_auto">로그인유지</label>
							</div>
							<div class="checkbox">
								<input type="checkbox" name="id_save" id="id_save" value="Y">
								<label for="id_save">아이디저장</label>
							</div>
							<p class="input_info_txt">
								※ 공공장소에서는 꺼주세요.
							</p>
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt btn_black" id="loginBtn"><span>로그인</span></button>
						</div>
						<div class="login_sub_btn">
							<a href="/shop/member/forgoten/forgoten_id" class="btn">아이디 찾기</a>
							<a href="/shop/member/forgoten/forgoten_pw" class="btn">비밀번호 재발급</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
<!-- 와인 프로파일 레이어 -->
<!-- /shop/mypage/shopping/wine_profile_ajax.php LOAD -->
<div class="layer wine_profile_layer">
</div>
<!-- //와인 프로파일 레이어 -->
<!-- 회원 등급현황 레이어 - 로그인 했을 때만 노출 -->
<div class="layer grade_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">
					등급현황
				</div>
				<div class="layer_con">
					<ul class="grade_status">
						<li>
						<p class="ico_silver">
							<span><i>Silver</i></span>
						</p>
						<em>실버</em>
						</li>
						<li>
						<p class="ico_gold">
							<span><i>Gold</i></span>
						</p>
						<em>골드</em>
						</li>
						<li>
						<p class="ico_diamond">
							<span><i>Diamond</i></span>
						</p>
						<em>다이아몬드</em>
						</li>
						<li>
						<p class="ico_trinity">
							<span><i>Trinity</i></span>
						</p>
						<em>트리니티</em>
						</li>
					</ul>
					<div class="grade_ex">
						<dl>
							<dt>내 구입금액</dt>
							<dd>
							0 원 (주문 0 건) </dd>
						</dl>
						<div class="g_list_box">
							<ul>
								<li class="tit">회원<br class="mb_hidden">
								등급</li>
								<li class="tit">실버</li>
								<li class="tit">골드</li>
								<li class="tit">다이아몬드</li>
								<li class="tit">트리니티</li>
							</ul>
							<ul>
								<li class="tit">등급<br class="mb_hidden">
								조건</li>
								<li>일반회원</li>
								<li>200만원 <br class="mb_hidden">
								이상구매</li>
								<li>500만원 <br class="mb_hidden">
								이상구매</li>
								<li>1000만원 <br class="mb_hidden">
								이상구매</li>
							</ul>
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt btn_black" onclick="location.href='/shop/company/member_benefit'"><span>혜택 자세히보기</span></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //회원 등급현황 레이어 -->
<!-- 알림설정 레이어 -->
<div class="layer push_layer" id="push_layer" style="display:none;">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">
					알림설정
				</div>
				<div class="layer_con">
					<ul>
						<li>
						<div class="btn switch">
							<strong class="tit">푸시알림</strong>
							<div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="btn_switch01" class="btn_switch_check" onchange="">
								<div class="btn_switch_area">
									<div class="btn_switch">
										<label class="bar" for="btn_switch01">&nbsp;</label>
									</div>
								</div>
							</div>
						</div>
						<p class="info">와인나라 앱에서 보내는 알림을 받을 수 있습니다.</p>
						</li>
						<li>
						<div class="btn switch">
							<strong class="tit">광고성 정보 수신 동의</strong>
							<div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="btn_switch02" class="btn_switch_check" onchange="">
								<div class="btn_switch_area">
									<div class="btn_switch">
										<label class="bar" for="btn_switch02">&nbsp;</label>
									</div>
								</div>
							</div>
						</div>
						<p class="info">신규서비스 및 고객 맞춤 혜택 정보를 받을 수 있습니다.</p>
						</li>
						<li>
						<div class="btn switch">
							<strong class="tit">야간 수신 동의</strong>
							<div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="btn_switch03" class="btn_switch_check" onchange="">
								<div class="btn_switch_area">
									<div class="btn_switch">
										<label class="bar" for="btn_switch03">&nbsp;</label>
									</div>
								</div>
							</div>
						</div>
						<p class="info">야간(오후 9시 ~ 오전8시)에 알림을 받을 수 있습니다.</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //알림설정 레이어 -->
<!-- 알림내역 레이어 -->
<div class="layer push_lists_layer" id="push_lists_layer" style="display:none;">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">
					알림내역
				</div>
				<div class="layer_con">
					<ul>
						<li>
						<strong class="tit">4월 이달의 와인</strong>
						<p class="info">
							봄에 어울리는 색, 그리고 향을 테마로 준비한 이달의 와인 5종을 소개합니다.
						</p>
						<div class="img">
							<img src="../../../asset/images/shop/product/mb_recom_lnb.jpg" alt="">
						</div>
						<div class="btn_box">
							<span class="date">2022.04.01</span>
							<button type="button" class="btn_more">자세히보기</button>
						</div>
						</li>
						<li>
						<strong class="tit">아발론 브랜드 기획전</strong>
						<p class="info">
							최고 가성비 와인, 아바론 브랜드 기획전
						</p>
						<div class="btn_box">
							<span class="date">2022.04.01</span>
							<button type="button" class="btn_more">자세히보기</button>
						</div>
						</li>
						<li>
						<strong class="tit">아발론 브랜드 기획전</strong>
						<p class="info">
							최고 가성비 와인, 아바론 브랜드 기획전
						</p>
						<div class="btn_box">
							<span class="date">2022.04.01</span>
							<button type="button" class="btn_more">자세히보기</button>
						</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //알림내역 레이어 -->
<!-- 설정 레이어 -->
<div class="layer set_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close btn_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">
					설정
				</div>
				<div class="layer_con">
					<strong class="tit">푸시설정</strong>
					<div class="set_con">
						<span>알림설정</span>
						<div class="btn_switch_module js_switch css_switch">
							<input type="checkbox" id="btn_alarm" class="btn_switch_check" onchange="push_ajax('push',this);">
							<div class="btn_switch_area">
								<div class="btn_switch">
									<!-- <span class="txt left">ON</span> -->
									<label class="bar" for="btn_alarm">&nbsp;</label>
									<!-- <span class="txt right">OFF</span> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //설정 레이어 -->
<!-- 모바일 카테고리 레이어 -->
<div class="layer category_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_con">
					<div class="open_search_area">
						<button type="button" id="mb_search_btn" onclick="$('.mb_search_layer').show();$('.mb_search_layer #search_box').focus();">오늘 마시고 싶은 와인을 검색해 보세요.</button>
					</div>
					<div class="category_area">
						<div class="box cate">
							<p class="tit">
								카테고리
							</p>
							<ul>
								<li><a href="/shop/product/group_product_lists?group_cd=1901">신상품</a></li>
								<li><a href="/shop/product/group_product_lists?group_cd=1902">베스트</a></li>
								<li><a href="/shop/event/event_lists">프로모션</a></li>
								<!-- <li><a href="#">시그니쳐</a></li> -->
								<li><a href="/shop/cs/special">대량구매 할인</a></li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">
								와인
							</p>
							<ul>
								<li class="ico_red"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10101">레드</a>
								</li>
								<li class="ico_white"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10102">화이트</a>
								</li>
								<li class="ico_rose"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10108">로제</a>
								</li>
								<li class="ico_sparkling"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10103">스파클링</a>
								</li>
								<li class="ico_dessert"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10104">디저트</a>
								</li>
								<li class="ico_spirits"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10105">주정강화</a>
								</li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">
								기타 주류
							</p>
							<ul>
								<li class="ico_whiskey"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20101">위스키</a>
								</li>
								<li class="ico_cognac"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20102">꼬냑</a>
								</li>
								<li class="ico_tequila"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20105">데킬라</a>
								</li>
								<li class="ico_jin"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20103">진</a>
								</li>
								<li class="ico_rum"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20106">럼</a>
								</li>
								<li class="ico_beer"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20200&sh_category3_cd=20201">맥주</a>
								</li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">
								OTHER
							</p>
							<ul>
								<li class="ico_acc"><a href="/shop/product/product_lists?sh_category1_cd=40000&sh_category2_cd=40100&sh_category3_cd=40101">악세서리</a>
								</li>
								<li class="ico_ticket"><a href="/shop/product/product_lists?sh_category1_cd=40000&sh_category2_cd=40100&sh_category3_cd=40102">티켓</a>
								</li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">
								국가별 와인
							</p>
							<ul>
								<li class="ico_france"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10201">프랑스</a>
								</li>
								<li class="ico_italia"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10202">이탈리아</a>
								</li>
								<li class="ico_spain"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10203">스페인</a>
								</li>
								<li class="ico_germ"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10204">독일</a>
								</li>
								<li class="ico_usa"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10206">미국</a>
								</li>
								<li class="ico_chile"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10205">칠레</a>
								</li>
								<li class="ico_argentina"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10209">아르헨티나</a>
								</li>
								<li class="ico_aus"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10207">호주</a>
								</li>
								<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10210">기타 구대륙</a></li>
								<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10211">기타 신대륙</a></li>
							</ul>
						</div>
					</div>
					<!-- 모바일 검색 레이어 -->
					<div class="mb_search_layer">
						<div class="display_table">
							<div class="table_cell">
								<div class="layer_area">
									<div class="layer_con">
										<form action="https://www.winenara.com/shop/product/search_product_lists" id="searchForm" name="searchForm" method="get" accept-charset="utf-8">
											<div class="search_box">
												<button type="button" class="btn_close" onclick="$('.mb_search_layer').hide();">모바일 검색창 닫기</button>
												<input type="text" id="search_box" name="keyword" placeholder='오늘 마시고 싶은 와인을 검색해 보세요.' autocomplete="off" value="">
												<button type="submit" id="s_btn">검색</button>
											</div>
										</form>
										<!-- 최근검색어 -->
										<div class="search_result" id="search_block">
											<div class="result_inner">
												<div class="allDelete off">
													<h2 class="tit">최근검색어</h2>
													<button type="button" class="btn del_btn" onclick="all_del_item();">전체삭제</span>
												</div>
												<ul id="result_list" class="result_list">
													<li id="nodata">최근검색어 내역이 없습니다.</li>
												</ul>
											</div>
										</div>
										<!-- 지금 인기 있는 검색어 -->
										<!-- <div class="search_popular">
                                                <h2 class="tit">지금 인기 있는 검색어</h2>
                                                <ul>
                                                    <li><a href="/shop/product/search_product_lists?keyword=프랑스">추석</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=레드">레드</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=제로">제로</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=스파클링">스파클링</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=로제">로제</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=레드와인">레드와인</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=이벤트 와인">이벤트 와인</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=논알콜">논알콜</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=디저트 와인">디저트 와인</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=화이트">화이트</a></li>
                                                </ul>
                                            </div> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //모바일 카테고리 레이어 -->
<input type="hidden" id="path_gb" value="">
<link rel="stylesheet" type="text/css" href="asset/css/shop/slick.css">
<script type="text/javascript" src="asset/js/slick.min.js"></script>
<script type="text/javascript">
    //배너 슬라이드
    $('.top_banner .top_banner_slide').slick({
        dots: false,
        arrows: false,
        autoplay: true,
        autoplaySpeed: 8000,
        slidesToShow: 1,
    });
    $(window).scroll(function () {
        if (!$("#header").hasClass("fixed")) {
            $('.top_banner .top_banner_slide').slick('refresh');
        }
    });
    $(".top_banner.time_out").hide();
    $(".top_banner.time_out").slideDown('300');
    setTimeout(function () {
        $(".top_banner.time_out").slideUp('300');
    }, 3000);
    function onEnterLogin() {
        if (window.event.keyCode === 13) {
            $("#loginBtn").trigger("click");
        }
    }
    //모바일 gnb toggle menu
    $(".mb_gnb_area .menu_list li button").on("click", function () {
        $(this).next("ul").slideToggle();
        $(this).parent("li").siblings().find("ul").slideUp();
    });
    //테이스트 프로파일 타이틀 주석
    $(".ico_note").on("click", function () {
        $(this).toggleClass("on");
    });
    //선택한 sns 노출
    $(".sns_area li").on("click", function () {
        var selSns = $(this).find("span").attr("class");
        $(".sns_area .btn_sel span").attr("class", selSns);
        $(".sns_area").removeClass("on");
    });
    //선택한 store 노출
    $(".store_area li").on("click", function () {
        var selStore = $(this).find("span").text();
        $(".store_area .btn_sel span").text(selStore);
        $(".store_area").removeClass("on");
    });
    /*공유 및 URL 복사*/
    var img_url = "";
    if (img_url !== '') {
        img_url = 'https://am.witplus.com/uploads/product/';
    }
    function share_sns(e) {
        RC_Method({ page_type: 'product_page', behavior: 'user_action', action: 'sharing' });
        var url = window.document.location.href;
        if (e == 'U') {
            var textarea = document.createElement("textarea");
            document.body.appendChild(textarea);
            textarea.value = url;
            textarea.select();
            document.execCommand("copy");
            document.body.removeChild(textarea);
            alert("URL이 복사되었습니다.");
        } else if (e == 'F') {
            window.open('http://www.facebook.com/sharer.php?u=' + encodeURIComponent(url));
        } else if (e == 'K') {
            Kakao.init('b129fd9215e06b4366c1a76b2c37d98b');
            Kakao.Link.sendDefault({
                objectType: 'feed',
                content: {
                    title: '와인나라',
                    description: "",
                    imageUrl: 'https://www.winenara.com/asset/images/shop/default/pc_logo.png',
                    link: {
                        mobileWebUrl: location.href,
                        webUrl: location.href,
                    },
                },
                buttons: [
                    {
                        title: '와인나라',
                        link: {
                            mobileWebUrl: location.href,
                        },
                    },
                ]
            });
        }
    };
    $(document).ready(function () {
        $("#loginBtn").on("click", function () {
            if (!$("#login_user_id").val()) {
                alert("아이디를 입력하여 주세요.");
                $("#login_user_id").focus();
                return false;
            }
            if (!$("#login_passwd").val()) {
                alert("비밀번호를 입력하여 주세요.");
                $("#login_passwd").focus();
                return false;
            }
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type: 'POST',
                url: "/shop/auth/login_check",
                dataType: 'json',
                data: $("#LoginPostFrm").serialize(),
                success: function (res) {
                    console.log(res);
                    if (res.status == 'Y') {
                        console.log(JSON.stringify(res.data));
                        // alert(res.msg);
                        location.href = res.url;
                    } else if (res.status == "N") {
                        alert(res.msg);
                        if (res.pass_err_cnt >= 5) {
                            recaptcha_load();
                        }
                    } else if (res.status === 'AUTH_DENIED') {
                        alert(res.msg);
                        location.href = res.url;
                    } else if (res.status === 'OUT_YN') {
                        alert(res.msg);
                        return false;
                    } else if (res.status === 'TOKEN_ERROR') {
                        alert(res.msg);
                        return false;
                    } else if (res.status == 'D') {
                        if (confirm(res.msg)) {
                            // location.href = res.url;
                            $('#dormant_layer').show();
                        }
                    } else {
                        alert(res.msg);
                    }
                }
            });
        });
    });
    $(document).ready(function () {
        get_keyword_list_ajax();
    });
    function html_escape(str) {
        /**
         * 엔티티 코드 매핑을 위한 변수
         * @type {{"`": string, "\"": string, "&": string, "'": string, "<": string, "=": string, ">": string, "/": string}}
         */
        let entityMap = {
            '&': '&amp;',
            '<': '&lt;',
            '>': '&gt;',
            '"': '&quot;',
            "'": '&#39;',
            '/': '&#x2F;',
            '`': '&#x60;',
            '=': '&#x3D;'
        };
        for (const [specialCharacter, entityCode] of Object.entries(entityMap)) {
            str = str.split(specialCharacter).join(entityCode);
        }
        return str;
    }
    function get_keyword_list_ajax() {
        var html = "";
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url: "/shop/product/get_keyword_list_ajax",
            data: { mode: 'list' },
            success: function (res) {
                if (typeof (res) == 'string') { res = JSON.parse(res); }
                if (res.status == 'ok') {
                    var keyword_list = res.data.keyword_list;
                    if (keyword_list.length > 0) {
                        for (var i = 0; i < keyword_list.length; i++) {
                            console.log(keyword_list[i]['keyword']);
                            html += '<li><span onclick="sch_item(';
                            html += "'" + html_escape(keyword_list[i]['keyword']) + "'";
                            html += ')" style="cursor:pointer;">' + html_escape(keyword_list[i]['keyword']) + '</span>';
                            html += '<button type="button" class="del_btn" onclick="del_item(';
                            html += "'" + keyword_list[i]['keyword'] + "'";
                            html += ')"></button></li>';
                        }
                        $(".result_list").empty();
                        $(".result_list").html(html);
                    } else {
                        $(".result_list").empty();
                        $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                    }
                } else {
                    //alert(res.msg);
                    return;
                }
            },
            error: function (res) {
                console.log("최근 검색어 리스트에 오류가 발생했습니다.");
                // alert(res.responseText);
            }
        });
    }
    // 키워드 개별 삭제
    function del_item(keyword) {
        var html = "";
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: 'POST',
            url: "/shop/product/update_keyword_ajax",
            dataType: 'json',
            data: { keyword: keyword, mode: 'single' },
            success: function (res) {
                if (typeof (res) == 'string') { res = JSON.parse(res); }
                if (res.status == 'ok') {
                    var keyword_list = res.data.keyword_list;
                    if (keyword_list.length > 0) {
                        for (var i = 0; i < keyword_list.length; i++) {
                            html += '<li><span onclick="sch_item(';
                            html += "'" + keyword_list[i]['keyword'] + "'";
                            html += ')" style="cursor:pointer;">' + keyword_list[i]['keyword'] + '</span>';
                            html += '<button type="button"  class="del_btn" onclick="del_item(';
                            html += "'" + keyword_list[i]['keyword'] + "'";
                            html += ')"></button></li>';
                        }
                        $("#result_list").empty();
                        $("#result_list").html(html);
                    } else {
                        $("#result_list").empty();
                        $("#result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                    }
                }
            },
            error: function (res) {
                alert("검색 키워드 삭제시 에러가 발생했습니다.");
                alert(res.responseText);
            }
        });
    }
    // 키워드 전체 삭제
    function all_del_item() {
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: 'POST',
            url: "/shop/product/update_keyword_ajax",
            dataType: 'json',
            data: { mode: 'all' },
            success: function (res) {
                if (res.status == 'ok') {
                    $("#result_list").empty();
                    $("#result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                }
            },
            error: function (res) {
                alert("검색 키워드 삭제시 에러가 발생했습니다.");
                alert(res.responseText);
            }
        });
    }
    // 선택 키워드 검색
    function sch_item(keyword) {
        location.href = '/shop/product/search_product_lists?keyword=' + keyword;
    }
    $('.social_login .social_btn.naver').click(function () {
        Cookie.Set('join_gb', 'N', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
        Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
        Cookie.Set('error_url', location.href, 1, true);
        if ($('#login_return_url_param').val()) {
            Cookie.Set('login_return_url_param', $('#login_return_url_param').val(), 1, true);
        }
        location.href = '/shop/auth/oauth';
    });
    $('.social_login .social_btn.kakao').click(function () {
        Cookie.Set('join_gb', 'K', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
        Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
        Cookie.Set('error_url', location.href, 1, true);
        if ($('#login_return_url_param').val()) {
            Cookie.Set('login_return_url_param', $('#login_return_url_param').val(), 1, true);
        }
        location.href = '/shop/auth/oauth';
    });
    $('.social_login .social_btn.google').click(function () {
        Cookie.Set('join_gb', 'G', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
        Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
        Cookie.Set('error_url', location.href, 1, true);
        if ($('#login_return_url_param').val()) {
            Cookie.Set('login_return_url_param', $('#login_return_url_param').val(), 1, true);
        }
        location.href = '/shop/auth/oauth';
    });
    $('.social_login .social_btn.face').click(function () {
        Cookie.Set('join_gb', 'F', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
        Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
        Cookie.Set('error_url', location.href, 1, true);
        if ($('#login_return_url_param').val()) {
            Cookie.Set('login_return_url_param', $('#login_return_url_param').val(), 1, true);
        }
        location.href = '/shop/auth/oauth';
    });
    //PC 모바일 구분
    if (chkDevice.isPC()) {
        $("#path_gb").val('WEB');
    } else {
        $("#path_gb").val('MOBILE');
    }
    /**
     * 매장 선택
     * @param {[type]} store_code [description]
     */
    function setHeaderStore(store_code) {
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url: "/shop/auth/store_setting_ajax",
            data: { "store_code": store_code },
            success: function (res) {
                console.log(res);
                location.reload();
            },
            error: function (res) {
                console.log(res.responseText);
            }
        });
    }
    /*
    * 바코드 스크립트
        */
    window.addEventListener("flutterInAppWebViewPlatformReady", function (event) {
        //호출코드 (호출가능시기확인 후 호출가능)
    });
    function jsOpenBarcode() {
        window.flutter_inappwebview.callHandler('scanBarcode');
    }
    //응답코드
    function resultBarcode(barcode) {
        // console.log("barcode: ",barcode);
        var form = document.BarcodeForm;
        form.barcode.value = barcode;
        // form.submit();
        location.href = '/shop/order/barcode_view?barcode=' + barcode;
    }
    function openProfile() {
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url: "/shop/mypage/shopping/wine_profile_ajax",
            data: {},
            success: function (res) {
                $(".wine_profile_layer").html(res);
                commonUI.layer.open('wine_profile_layer');
            },
            error: function (res) {
                console.log(res.responseText);
            }
        });
    }
    function checkUserAndRedirect(event) {
        event.preventDefault(); // Prevent default link behavior
        var sesId = "";
        // Check if user data contains user_id
        if (sesId) {
            // If user_id exists, redirect to the link's href
            window.location.href = event.target.href;
        } else {
            // If user_id doesn't exist, open the login layer
            commonUI.layer.open('login_layer');
        }
    }
    // Find the anchor element and attach the event listener
    const clubLink = document.querySelector('a.club-link');
    if (clubLink) {
        clubLink.addEventListener('click', checkUserAndRedirect);
    }
    // Find the anchor element for MOOD LIVE and attach the event listener
    const moodLiveLink = document.querySelector('a.mood-live-link');
    if (moodLiveLink) {
        moodLiveLink.addEventListener('click', checkUserAndRedirect);
    }
</script>
<!-- contents -->
<section id="contents" style="margin-top: 188px;">
	<div class="lnb mypage_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand js_select" id="select_brand">
				<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>회원정보수정</span></button>
				<ul class="mb_lnb_lists">
					<li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
					<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
					<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
					<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
					<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
					<li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
					<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천</a></li>
					<li><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
					<li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
					<li><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
					<li><a href="/shop/mypage/account/sns_connect">SNS 연동관리</a></li>
					<li><a href="/shop/mypage/account/change_password">비밀번호 변경</a></li>
					<li><a href="/shop/mypage/account/withdrawal">회원탈퇴</a></li>
				</ul>
			</div>
		</div>
		<div class="common_lnb">
			<div class="my">
				<div class="txt grade_area">
					<div class="img gold grade_info g100">
						<span>실버</span>
					</div>
					<p>
						<strong class="name">윤영길</strong>님
					</p>
				</div>
				<div class="btn_area">
					<button type="button" class="btn_txt" onclick="commonUI.layer.open('grade_layer')">등급 혜택보기</button>
					<!-- <span>시음노트 작성하면 등급 UP</span> -->
				</div>
			</div>
			<div class="my_info my_class_info">
				<ul class="">
					<li>
						<a href="/shop/mypage/shopping/order_lists">
							<p class="tit">주문내역</p>
							<div class="num_box"><span>0</span></div>
						</a>
					</li>
					<li class="on">
						<a href="/shop/mypage/note/mileage_lists">
						<p class="tit">
							나의 마일리지
						</p>
						<div class="num_box">
							<span>0</span>
						</div>
					</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="mypage_link mb_hidden">
			<ul class="depth_01">
				<li>
				<a href="/shop/mypage/shopping/mypage">나의 쇼핑</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
					<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
					<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
					<li><a href="/shop/cart/cart_lists">장바구니</a></li>
				</ul>
				</li>
				<li>
				<a href="#none">개인정보</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
					<li class="on"><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
					<li><a href="/shop/mypage/account/change_password">비밀번호 변경</a></li>
					<li><a href="/shop/mypage/account/withdrawal">회원탈퇴</a></li>
				</ul>
				</li>
			</ul>
		</div>
	</div>
	<script>
	function myPublic(){
		var follower_yn = $("#follower_yn").val();
		if( follower_yn === 'Y'){
			follower_yn = 'N';
		}else{
			follower_yn = 'Y';
		}
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type: "POST",
			url:"/shop/mypage/action/proc",
			data : {
				'mode'					: "FYN",
				'follower_yn'			: follower_yn
			},
			success : function(result){
				location.reload();
			},
			error : function(a, b, c){
				alert('변경중 에러가 발생했습니다.');
			}
		});
	}
	</script>
	
	<!-- page_script -->
	<script>
		$('input[id="user_pw"]').keydown(function() {
			if (event.keyCode === 13) {
				passwd_submit();
			}
		});
		function passwd_submit(){
			Csrf.Set(_CSRF_NAME_);
			var pw = $('#user_pw').val();
			$.ajax({
				type:"POST",
				url:"/shop/mypage/account/chk_passwd_ajax",
				data : {'pw':pw},
				dataType:'json',
				success:function(res){
					if(res.state == 'Y'){
						location.href = res.url;
					}else{
						alert(res.msg);
					}
				},error:function(res){
					console.log("ERROR :: " + res);
				}
			})
		}
	</script>
	<!-- //page_script -->
</section>
<!-- //contents -->

<script language=javascript>
    $(".quick_menu .menu_open").on("click", function () {
        $(".quick_menu").toggleClass("on")
    });
</script>
</body>
</html>
<!--백로그 API-->
<script type="text/JavaScript">
	var page = '';
	if( page == false){
		page = 'main';
	}
	if( page !== 'product_view' && page !== 'order_ok'){
		console.log(page);
		/*
			RC_Method({
				sign_up_data: "",
				page_type : page, 
				behavior:"page_view"
			});
			*/
	}
</script>
<!--백로그 API-->
<!--lazy_loading-->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
<script>
	const observer = lozad();
	observer.observe();
	console.log('test');
</script>
<!--lazy_loading-->