<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WINE VILLAGE | 회원가입</title>
</head>
<body>
	<%@ include file="../../common/common.jsp" %>
    <section id="contents">
        <div class="lnb member_lnb lnb_wrap step_wrap">
            <div class="pc_hidden">
                <a href="javascript:history.go(-1);" class="prev">이전</a>
                <div class="select_brand js_select" id="select_brand">
                    <button type="button" class="my_value js_selectBtn"
                        onclick="$(this).toggleClass('on')"><span>회원가입</span></button>
                    <ul class="mb_lnb_lists">
                        <li><a href="law_agreement.html">약관동의 및 소셜인증</a></li>
                    </ul>
                </div>
            </div>
            <div class="pc_lnb mb_hidden">
                <div class="page_tit">
                    <h2><span>회원가입</span></h2>
                    <ul>
                        <li class="on">1. 이용약관 동의</li>
                        <li class="">2. 회원정보 입력</li>
                        <li class="">3. 회원가입 완료</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="wrap">
            <div class="content member join law_agreement_page">
                <div class="inner">
                    <p>와인빌리지 이용을 위한 약관에 동의해 주세요.</p>
                    <div class="check_list">
                        <div class="top">
                            <h3><span>(필수)</span> 홈페이지 이용약관</h3>
                            <div class="all_check">
                                <div class="checkbox">
                                    <input type="checkbox" id="all_chk_default" class="all_chk">
                                    <label for="all_chk_default">모두 동의하기</label>
                                </div>
                            </div>
                        </div>
                        <ul class="list all_chk_default">
                            <li>
                                <div class="chk">
                                    <div class="checkbox">
                                        <input type="checkbox" id="age_chk" class="ip_all">
                                        <label for="age_chk">만 19세 이상 성인</label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="chk">
                                    <div class="checkbox">
                                        <input type="checkbox" id="law_chk" class="ip_all">
                                        <label for="law_chk">홈페이지 이용약관</label>
                                    </div>
                                </div>
                                <div class="view">
                                    <button type="button" class="view_btn"
                                        onclick="commonUI.layer.open('law_layer.html')"><span>자세히보기</span></button>
                                </div>
                            </li>
                            <li>
                                <div class="chk">
                                    <div class="checkbox">
                                        <input type="checkbox" id="pri_chk" class="ip_all">
                                        <label for="pri_chk">개인정보수집 및 이용동의</label>
                                    </div>
                                </div>
                                <div class="view">
                                    <button type="button" class="view_btn"
                                        onclick="commonUI.layer.open('privacy_layer.html')"><span>자세히보기</span></button>
                                </div>
                            </li>
                        </ul>

                        <div class="top">
                            <h3>(선택) 마케팅 활용 동의/철회</h3>
                            <!-- <div class="all_check">
                        <div class="checkbox">
                            <input type="checkbox" id="all_chk_select" class="all_chk">
                            <label for="all_chk_select">모두 동의하기</label>
                        </div>                
                    </div> -->
                        </div>
                        <ul class="list all_chk_select">
                            <li>
                                <div class="chk">
                                    <div class="checkbox">
                                        <input type="checkbox" id="maketing_01" class="ip_all">
                                        <label for="maketing_01">개인(신용)정보의 수집·이용에 관한 사항</label>
                                    </div>
                                </div>
                                <div class="view">
                                    <button type="button" class="view_btn"
                                        onclick="commonUI.layer.open('credit_use_layer.html')"><span>자세히보기</span></button>
                                </div>
                            </li>
                            <li>
                                <div class="chk">
                                    <div class="checkbox">
                                        <input type="checkbox" id="maketing_02" class="ip_all">
                                        <label for="maketing_02">개인(신용)정보에 따른 프로모션 및 할인 혜택/정보 수신 동의</label>
                                    </div>
                                </div>
                                <div class="view">
                                    <button type="button" class="view_btn"
                                        onclick="commonUI.layer.open('credit_view_layer.html')"><span>자세히보기</span></button>
                                </div>
                            </li>
                            <!-- <li>
                        <div class="chk">
                            <div class="checkbox">
                                <input type="checkbox" id="sms_chk">
                                <label for="sms_chk">SMS 수신동의 <span class="not_point">(선택)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="chk">
                            <div class="checkbox">
                                <input type="checkbox" id="email_chk">
                                <label for="email_chk">이메일 수신동의 <span class="not_point">(선택)</span></label>
                            </div>
                        </div>
                    <li> -->
                        </ul>
                        <div class="expiry">
                            <div class="top">
                                <h3>(선택) 개인정보 유효기간</h3>
                            </div>
                            <ul class="expiry_list">
                                <li>
                                    <div class="checkbox">
                                        <input type="radio" name="expiry" id="term_01" class="" checked value="1">
                                        <label for="term_01">1년</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox">
                                        <input type="radio" name="expiry" id="term_02" class="" value="3">
                                        <label for="term_02">3년</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox">
                                        <input type="radio" name="expiry" id="term_03" class="" value="0">
                                        <label for="term_03">회원 탈퇴 시</label>
                                    </div>
                                </li>
                            </ul>
                            <p>- 기간 선택하지 않는 경우, 기본 1년 후 휴면계정 전환</p>
                        </div>
                    </div>
                    <div class="social_login">
                        <h2 class="social_tit">회원가입 방법 선택</h2>
                        <ul>
                            <li><a href="#none" class="social_btn naver">네이버</a></li>
                            <li><a href="#none" class="social_btn kakao">카카오</a></li>
                            <li><a href="#none" class="social_btn google">구글</a></li>
                            <li><a href="/join_form.do" class="social_btn id">아이디</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- page_script -->
        <script>

            function terms_check() { // 약관동의체크
                if (!$('#age_chk').is(':checked') || !$('#law_chk').is(':checked') || !$('#pri_chk').is(':checked')) {
                    alert("필수 약관에 동의해주세요.");
                    return false;
                }

                Cookie.Set('join_agreement_age', $('#age_chk').is(':checked'), 1);
                Cookie.Set('join_agreement_service', $('#law_chk').is(':checked'), 1);
                Cookie.Set('join_agreement_private', $('#pri_chk').is(':checked'), 1);
                Cookie.Set('join_agreement_marketing_1', $('#maketing_01').is(':checked'), 1);
                Cookie.Set('join_agreement_marketing_2', $('#maketing_02').is(':checked'), 1);
                Cookie.Set('join_agreement_sms', $('#sms_chk').is(':checked'), 1);
                Cookie.Set('join_agreement_email', $('#email_chk').is(':checked'), 1);
                Cookie.Set('join_expiry', $('input[name=expiry]:checked').val(), 1);

                return true;
            }

            $('.law_agreement_page .social_btn.id').click(function () {
                if (!terms_check()) {
                    return false;
                }

                Cookie.Set('join_gb', 'W', 1);

                location.href = 'join_form.html';
            });

            $('.law_agreement_page .social_btn.kakao').click(function () {
                if (!terms_check()) {
                    return false;
                }

                Cookie.Set('join_gb', 'K', 1, true);
                Cookie.Set('success_url', '/shop/member/join/join_form', 1, true);
                Cookie.Set('error_url', location.href, 1, true);

                location.href = '../../auth/oauth.html';
            });

            $('.law_agreement_page .social_btn.naver').click(function () {
                if (!terms_check()) {
                    return false;
                }

                Cookie.Set('join_gb', 'N', 1, true);
                Cookie.Set('success_url', '/shop/member/join/join_form', 1, true);
                Cookie.Set('error_url', location.href, 1, true);

                location.href = '../../auth/oauth.html';
            });

            $('.law_agreement_page .social_btn.face').click(function () {
                if (!terms_check()) {
                    return false;
                }

                Cookie.Set('join_gb', 'F', 1, true);
                Cookie.Set('success_url', '/shop/member/join/join_form', 1, true);
                Cookie.Set('error_url', location.href, 1, true);

                location.href = '../../auth/oauth.html';
            });

            $('.law_agreement_page .social_btn.google').click(function () {
                if (!terms_check()) {
                    return false;
                }

                Cookie.Set('join_gb', 'G', 1, true);
                Cookie.Set('success_url', '/shop/member/join/join_form', 1, true);
                Cookie.Set('error_url', location.href, 1, true);

                location.href = '../../auth/oauth.html';
            });

            $('.law_agreement_page .social_btn.apple').click(function () {
                if (!terms_check()) {
                    return false;
                }

                Cookie.Set('join_gb', 'A', 1, true);
                Cookie.Set('success_url', '/shop/member/join/join_form', 1, true);
                Cookie.Set('error_url', location.href, 1, true);

                location.href = '../../auth/oauth.html';
            });

            // 체크리스트 모두체크 해제 및 개별선택
            $('.all_chk').click(function () {
                var chkId = $(this).attr("id");

                if (chkId == "all_chk_default") {
                    $('.all_chk_default .ip_all').prop('checked', this.checked);
                    $('.all_chk_select .ip_all').prop('checked', this.checked);
                } else if (chkId == "all_chk_select") {
                    $('.all_chk_select .ip_all').prop('checked', this.checked);
                }
            });

            // 체크박스 개별 선택
            $(".ip_all").on("click", function () {
                var chkList = $(this).closest(".list"),
                    chkLength = chkList.find(".ip_all").length,
                    chkedLength = chkList.find(".ip_all:checked").length,
                    selUl = $(this).closest("ul"),
                    allChk = selUl.prev(".top").find(".all_chk");

                if (chkLength == chkedLength) {
                    allChk.prop("checked", true);
                } else {
                    allChk.prop("checked", false);
                }
            });          
        </script>
        <!-- //page_script -->
    </section>
    <%@ include file="../../common/footer.jsp" %>
</body>
</html>