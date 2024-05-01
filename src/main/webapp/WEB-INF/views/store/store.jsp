<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<%@ include file="../common/common.jsp"%>
 <!-- contents -->
    <section id="contents">
        <div class="lnb comm_lnb bg_lnb company_lnb lnb_wrap">
            <div class="pc_hidden">
                <a href="javascript:history.go(-1);" class="prev">이전</a>
                <div class="select_brand js_select" id="select_brand">
                    <button type="button" class="my_value js_selectBtn"
                        onclick="$(this).toggleClass('on')"><span>Shop</span></button>
                    <ul class="mb_lnb_lists">
                        <li><a href="about_us.html">Wine</a></li>
                        <li><a href="brand.html">Other</a></li>
                        <li><a href="fnb.html">About Us</a></li>
                    </ul>
                </div>
            </div>
            <div class="pc_lnb mb_hidden">
                <div class="page_tit">
                    <h2><span>Store</span></h2>
                </div>
             
            </div>
        </div>
        <div class="wrap">
            <div class="content cs store_page">
                <div class="mb_page_tit">
                    <div class="img">
                        <img src="../../asset/images/shop/company/mb_page_tit_store.png" alt="">
                    </div>
                    <h2><span>SHOP</span></h2>
                </div>
                <div class="inner">
                    <div class="con_top">
                        <h3>Wine Village 매장안내</h3>
                        <!-- <span>와인이 필요한 순간에, <br class="pc_hidden">가장 가까운 와인나라 매장을 찾아주세요!<br>11개 직영매장 () 및 입점매장으로 운영됩니다.</span> -->
                        <span>와인이 필요한 순간, 가장 가까운 Wine Village 매장을 찾아주세요!</span>
                    </div>
                    <div class="store_map">
                        <div class="map">
                            <div id="map"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
 <!-- //contents -->
<%@ include file="../common/footer.jsp"%>
</body>
</html>