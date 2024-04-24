<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<head>
    <title>WINENARA 1987 ㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다!</title>

</head>
<script type="text/javascript" src="/WineVillage/src/main/resources/static/js/front_ui9442.js"></script>
<body>
<%@ include file="../common/common.jsp"%>
<section id="contents" style="margin-top: 188px;"><div class="lnb cs_lnb lnb_wrap">
    <div class="pc_hidden">
        <a href="javascript:history.go(-1);" class="prev">이전</a>
        <div class="select_brand js_select" id="select_brand">
            <button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>공지사항</span></button>
            <ul class="mb_lnb_lists">
                <li class="on"><a href="/notice_list.do">공지사항</a></li>
                <li><a href="/faq_list.do">자주하는 질문</a></li>
                        	<li><a href="/qna_write.do">1:1문의</a></li>
                        <li><a href="/shop/company/member_benefit">회원혜택</a></li>
            </ul>
        </div>
    </div>
    <div class="pc_lnb mb_hidden">
        <div class="page_tit">
            <h2><span>공지사항</span></h2>
        </div>
        <ul class="menu tab3">
            <li class="on"><a href="/notice_list.do"><span>공지사항</span></a></li>
            <li><a href="/faq_list.do"><span>자주하는 질문</span></a></li>
                	<li><a href="/qna_write.do"><span>1:1문의</span></a></li>
        </ul>
    </div>
</div>
<div class="wrap">    <div class="content cs notice_lists_page">
        <div class="notice_lists_wrap">
            <form action="https://www.winenara.com/shop/cs/notice_lists_ajax" method="post" id="listFrm" accept-charset="utf-8">
<input type="hidden" name="witplus_csrf_token" value="ab3740380312bdc653282710568c8d2d">                                                                                              
                <div class="search_box">
                    <input type="text" name="keyword" placeholder="검색어를 입력해주세요.">
                    <input type="hidden" name="page" id="page" value="2">
                    <button type="button" onclick="get_notice_list('search');">검색</button>
                </div>
            </form>
            <table class="tbl_list">
                <caption>공지사항</caption>
                <colgroup>
                    <col class="num">
                    <col class="tit">
                    <col class="date">
                </colgroup>
                <thead>
                    <tr class="tbl_list_tit">
                        <th class="num">번호</th>
                        <th class="tit">제목</th>
                        <th class="date">작성일</th>
                    </tr>
                </thead>
                <tbody class="notice_lists">
                    
                            <tr>
                                    <td class="num"><span class="ico_ntc">공지</span></td>
                                <td class="tit">
                                            <span class="ico_ntc">공지</span>
                                        <a href="/shop/cs/notice_view?no=1175"><p>[공지] 와인나라 온라인몰 이용안내</p></a>
                                    </td>
                <td class="date">2024.02.23</td>
            </tr>
                    <tr>
                                    <td class="num"><span class="ico_ntc">공지</span></td>
                                <td class="tit">
                                            <span class="ico_ntc">공지</span>
                                        <a href="/shop/cs/notice_view?no=1156"><p>[공지] 개인정보 보호법 개정에 따른 휴면 회원 복귀 안내</p></a>
                                    </td>
                <td class="date">2023.12.01</td>
            </tr>
                    <tr>
                                    <td class="num"><span class="ico_ntc">공지</span></td>
                                <td class="tit">
                                            <span class="ico_ntc">공지</span>
                                        <a href="/shop/cs/notice_view?no=1021"><p>와인나라의 개인정보취급방침 및 이용 약관을 개정 안내 (7월 1일) </p></a>
                                    </td>
                <td class="date">2022.06.13</td>
            </tr>
                    <tr>
                                    <td class="num">318</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=1061"><p>와인나라 서울창고 이전으로 인한 배송 불가 안내</p></a>
                                    </td>
                <td class="date">2022.10.21</td>
            </tr>
                    <tr>
                                    <td class="num">317</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=1050"><p>[공지] 추석 명절 와인나라 직영점 및 온라인몰 운영 안내</p></a>
                                    </td>
                <td class="date">2022.09.08</td>
            </tr>
                    <tr>
                                    <td class="num">316</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=659"><p>[공지] 2022 3월 공휴일 와인나라 휴무 안내</p></a>
                                    </td>
                <td class="date">2022.02.28</td>
            </tr>
                    <tr>
                                    <td class="num">315</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=658"><p>[공지] 2022 설연휴 와인나라 휴무 안내</p></a>
                                    </td>
                <td class="date">2022.01.28</td>
            </tr>
                    <tr>
                                    <td class="num">314</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=657"><p>[RAFFLE WEEK 10: 아르망드브리냑 골드브뤼] 당첨자 발표</p></a>
                                    </td>
                <td class="date">2021.12.23</td>
            </tr>
                    <tr>
                                    <td class="num">313</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=656"><p>[RAFFLE WEEK 09: 샤또마고2014] 당첨자 발표</p></a>
                                    </td>
                <td class="date">2021.12.16</td>
            </tr>
                    <tr>
                                    <td class="num">312</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=655"><p>[RAFFLE WEEK 08: 샤또무똥로칠드2015] 당첨자 발표</p></a>
                                    </td>
                <td class="date">2021.12.09</td>
            </tr>
                    <tr>
                                    <td class="num">311</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=654"><p>[RAFFLE WEEK 07: 슈발블랑2009] 당첨자 발표</p></a>
                                    </td>
                <td class="date">2021.12.02</td>
            </tr>
                    <tr>
                                    <td class="num">310</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=653"><p>[마감] 부온크리스티아니x초이닷 갈라디너 진행 안내</p></a>
                                    </td>
                <td class="date">2021.11.30</td>
            </tr>
                    <tr>
                                    <td class="num">309</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=652"><p>[RAFFLE WEEK 06: 헌드레드에이커 카일리모건 2017] 당첨자 발표</p></a>
                                    </td>
                <td class="date">2021.11.18</td>
            </tr>
                    <tr>
                                    <td class="num">308</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=651"><p>[RAFFLE WEEK 05: 샤또마고 2014] 당첨자 발표</p></a>
                                    </td>
                <td class="date">2021.11.11</td>
            </tr>
                    <tr>
                                    <td class="num">307</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=650"><p>[RAFFLE WEEK 04: 사시카이아 2016] 당첨자 발표</p></a>
                                    </td>
                <td class="date">2021.11.04</td>
            </tr>
                    <tr>
                                    <td class="num">306</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=649"><p>서비스 이전에 따른 와인나라 온라인몰(winenara.com) 개인정보 이전 안내</p></a>
                                    </td>
                <td class="date">2021.10.28</td>
            </tr>
                    <tr>
                                    <td class="num">305</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=648"><p>[RAFFLE WEEK 03: 사시카이아 2015] 당첨자 발표</p></a>
                                    </td>
                <td class="date">2021.10.28</td>
            </tr>
                    <tr>
                                    <td class="num">304</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=647"><p>[RAFFLE WEEK 02: 티냐넬로 2017] 당첨자 발표</p></a>
                                    </td>
                <td class="date">2021.10.21</td>
            </tr>
                    <tr>
                                    <td class="num">303</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=646"><p>[RAFFLE WEEK 런칭 스페셜 오프라인 응모 : 사시카이아 2017] 6개 직영점 당첨자 발표</p></a>
                                    </td>
                <td class="date">2021.10.21</td>
            </tr>
                    <tr>
                                    <td class="num">302</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=645"><p>[RAFFLE WEEK 01: 사시카이아 2017] 당첨자 발표</p></a>
                                    </td>
                <td class="date">2021.10.14</td>
            </tr>
        
<script>
    // var page = 1;
    // var cnt = 20;
    // if(page == 1 && cnt < 1){
    //     $('#more_btn').hide();
    // }else if(page > 1 && cnt < 1){  
    //     alert('마지막 글입니다.');
    //     $('#more_btn').hide();
    // }else{
    //     $('#more_btn').show();
    // }
</script>            <tr>
                                    <td class="num">301</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=644"><p>[점검완료] 와인나라 회원가입시 오류 해결 안내</p></a>
                                    </td>
                <td class="date">2021.09.30</td>
            </tr>
                    <tr>
                                    <td class="num">300</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=643"><p>[공지] 와인나라 온라인몰 회원가입시 장애 발생 안내</p></a>
                                    </td>
                <td class="date">2021.09.17</td>
            </tr>
                    <tr>
                                    <td class="num">299</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=642"><p>[공지] 추석 명절 와인나라 직영점 및 온라인몰 운영 안내</p></a>
                                    </td>
                <td class="date">2021.09.15</td>
            </tr>
                    <tr>
                                    <td class="num">298</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=641"><p>[공지] 와인나라 일시적 접속 중단 안내</p></a>
                                    </td>
                <td class="date">2021.09.15</td>
            </tr>
                    <tr>
                                    <td class="num">297</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=640"><p>[2021 추석] 온라인몰 100만원 이상 구매 시 5% 할인쿠폰 적용 안내</p></a>
                                    </td>
                <td class="date">2021.09.03</td>
            </tr>
                    <tr>
                                    <td class="num">296</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=639"><p>[2021 추석] 와인나라 추석 선물 카달로그</p></a>
                                            <button class="down_f">파일 다운로드</button>
                                    </td>
                <td class="date">2021.08.30</td>
            </tr>
                    <tr>
                                    <td class="num">295</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=638"><p>[공지] SK베네피아 복지몰 이용 고객 대상 안내 (2021/08)</p></a>
                                    </td>
                <td class="date">2021.08.04</td>
            </tr>
                    <tr>
                                    <td class="num">294</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=637"><p>[공지] 와인나라 W.Point 소멸 안내</p></a>
                                    </td>
                <td class="date">2021.07.21</td>
            </tr>
                    <tr>
                                    <td class="num">293</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=636"><p>[공지] 와인나라 VIP 멤버십 안내</p></a>
                                    </td>
                <td class="date">2021.07.21</td>
            </tr>
                    <tr>
                                    <td class="num">292</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=635"><p>구정명절 직영점 휴무안내</p></a>
                                    </td>
                <td class="date">2021.02.09</td>
            </tr>
                    <tr>
                                    <td class="num">291</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=634"><p>[점검완료] 와인나라 회원가입시 오류 해결안내</p></a>
                                    </td>
                <td class="date">2021.02.02</td>
            </tr>
                    <tr>
                                    <td class="num">290</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=633"><p>[장애안내] 와인나라 온라인몰 회원가입시 오류</p></a>
                                    </td>
                <td class="date">2021.02.01</td>
            </tr>
                    <tr>
                                    <td class="num">289</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=632"><p>[핫딜] 실속있는 구매 VS 다시없는 기회</p></a>
                                    </td>
                <td class="date">2021.01.20</td>
            </tr>
                    <tr>
                                    <td class="num">288</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=631"><p>와인나라 직영매장 휴무 안내 (1월1일)</p></a>
                                    </td>
                <td class="date">2021.01.01</td>
            </tr>
                    <tr>
                                    <td class="num">287</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=630"><p>[수요와인특가 BIG3 샴페인] 판매일 변경 안내</p></a>
                                    </td>
                <td class="date">2020.12.29</td>
            </tr>
                    <tr>
                                    <td class="num">286</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=629"><p>2020 Brand Week : Louis Latour</p></a>
                                    </td>
                <td class="date">2020.11.26</td>
            </tr>
                    <tr>
                                    <td class="num">285</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=628"><p>핫딜상품과 관련하여 고객님들께 양해의 말씀 드립니다.</p></a>
                                    </td>
                <td class="date">2020.11.20</td>
            </tr>
                    <tr>
                                    <td class="num">284</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=627"><p>와인나라 스마트오더 안내</p></a>
                                    </td>
                <td class="date">2020.11.13</td>
            </tr>
                    <tr>
                                    <td class="num">283</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=626"><p>홈페이지 리뉴얼과 관련한 신규회원 가입 양해의 말씀</p></a>
                                    </td>
                <td class="date">2020.11.09</td>
            </tr>
                    <tr>
                                    <td class="num">282</td>
                                <td class="tit">
                                        <a href="/shop/cs/notice_view?no=625"><p>11월 이달의 와인</p></a>
                                    </td>
                <td class="date">2020.11.08</td>
            </tr>
        
<script>
    // var page = 2;
    // var cnt = 20;
    // if(page == 1 && cnt < 1){
    //     $('#more_btn').hide();
    // }else if(page > 1 && cnt < 1){  
    //     alert('마지막 글입니다.');
    //     $('#more_btn').hide();
    // }else{
    //     $('#more_btn').show();
    // }
</script></tbody>
            </table>
            <!-- <button type="button" class="btn_txt" id="more_btn" onclick="get_notice_list('more');"><span>더보기</span></button> -->
        </div><!--//event-lists-wrap-->
    </div><!--//event event_lists_page-->
</div>
    </div><!--//cs qna_lists_page-->
</div>
<script>

    // 검색
    $('input[name="keyword"]').keydown(function(event) {
        if (event.keyCode === 13) {
            event.preventDefault();
            get_faq_list('search');
        };
    });

    //faq list
	$(document).on("click",".faq_lists .q",function(){
		$(this).parent().toggleClass("on");
        $(this).parent().siblings().removeClass("on");
        $(this).parent().siblings().find(".a").slideUp();
        $(this).next(".a").stop().slideToggle();
	});

    $(document).ready(function(){
        get_faq_list();

        //스크롤 바닥 감지
        window.addEventListener('scroll', moreShowList);

        function moreShowList() {
        // 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
            if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
                get_faq_list('more');
            }
        }

        // if(더 호출할 것이 없을 때 스크롤 기능 제거){
        //      window.removeEventListener('scroll', moreShowList);
        // }
    })

    function get_faq_list(mode){
        Csrf.Set(_CSRF_NAME_);
        if(mode == 'more'){
            var page = $('#page').val();
            page++;
            $('#page').val(page);
        }else if(mode == 'search'){
            $('#page').val(1);
            $('.faq_lists *').remove();
        }
        var params = $("#listFrm").serialize();

        $.ajax({
            url : "/shop/cs/faq_lists_ajax",
            type : "post",
            data : params,
            success:function(data){
                // console.log(data);
                $('.faq_lists').append(data);
                
                // if(더 호출할 것이 없을 때 스크롤 기능 제거){
                //      window.removeEventListener('scroll', moreShowList);
                // }
            },error:function(request,status,error){
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        })
    }
</script>
<script language="javascript">
    $(".quick_menu .menu_open").on("click", function () {
        $(".quick_menu").toggleClass("on")
    });
</script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
</section>
</body>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</html>
