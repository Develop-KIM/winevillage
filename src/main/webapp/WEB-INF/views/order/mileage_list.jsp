<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<%@ include file="../common/common.jsp"%>

<div class="lnb mypage_lnb lnb_wrap">
	<div class="mypage_link mb_hidden" style="top:166px; z-index:9999;">
		<ul class="depth_01">
			<li><a href="javascript:void(0);">나의 쇼핑</a>
				<ul class="depth_02">
					<li><a href="/order_list.do">주문내역</a></li>
					<li><a href="/return_order_list.do">교환/반품내역</a></li>
					<li><a href="/wish_list.do">위시리스트</a></li>
					<li><a href="/cart_list.do">장바구니</a></li>
					<li class="on"><a href="/mileage_list.do">나의 마일리지</a></li>
				</ul></li>
			<li><a href="#none">개인정보</a>
				<ul class="depth_02">
					<li><a href="/qna_list.do">문의내역확인</a></li>
					<li><a href="/password_cert.do">회원정보수정</a></li>
					<li><a href="/change_password.do">비밀번호
							변경</a></li>
					<li><a href="/withdrawal.do">회원탈퇴</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div>
<!-- contents -->
  <section id="contents">
    <div class="lnb mypage_lnb lnb_wrap" style="padding-top:0px;">
      <div class="pc_hidden">
        <a href="javascript:history.go(-1);" class="prev">이전</a>
        <div class="select_brand js_select" id="select_brand">
          <button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>나의
              마일리지</span></button>
          <ul class="mb_lnb_lists">
            <li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
            <li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
            <li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
            <!-- <li><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li> -->
            <!-- <li><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
            <li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
            <!-- <li><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
            <li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
            <li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
            <li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천</a></li>
            <!-- <li><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li> -->
            <li><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
            <li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
            <li><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
            <li><a href="/shop/mypage/account/sns_connect">SNS 연동관리</a></li>
            <li><a href="/shop/mypage/account/change_password">비밀번호 변경</a></li>
            <li><a href="/shop/mypage/account/withdrawal">회원탈퇴</a></li>
          </ul>
        </div>
      </div>

      <div class="common_lnb mileage_lnb">
        <div class="my">
          <div class="txt">
            <div class="img gold grade_info g100"><span>실버</span></div>
            <p><strong class="name">홍길동</strong>님 </p>
          </div>
          <div class="btn_area">
            <button type="button" class="btn_txt" onclick="commonUI.layer.open('grade_layer')">등급 혜택보기</button>
            <!-- <span>시음노트 작성하면 등급 UP</span> -->
          </div>
        </div>
        <div class="my_class_info">
          <ul class="">
            <li class="on">
              <p class="tit">누적 마일리지</p>
              <div class="num_box">
                <span>0</span>
              </div>
            </li>
            <li>
              <p class="tit">사용 마일리지</p>
              <div class="num_box">
                <span>0</span>
              </div>
            </li>
            <li>
              <p class="tit">가용 마일리지</p>
              <div class="num_box">
                <span>0</span>
              </div>
            </li>
            <li class="on">
              <p class="tit">소멸예정마일리지</p>
              <div class="num_box">
                <span>0</span>
              </div>
            </li>
          </ul>
        </div>
      </div>
    <script>
      // $(".mypage_lnb .common_lnb").remove();

      function myPublic() {
        var follower_yn = $("#follower_yn").val();

        if (follower_yn === 'Y') {
          follower_yn = 'N';
        } else {
          follower_yn = 'Y';
        }

        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
          type: "POST",
          url: "/shop/mypage/action/proc",
          data: {
            'mode': "FYN",
            'follower_yn': follower_yn
          },
          success: function (result) {
            location.reload();
          },
          error: function (a, b, c) {
            alert('변경중 에러가 발생했습니다.');
          }
        });
      }
    </script>
    <div class="content mypage note shopping mileage_lists_page mileage_lists_test_page top_gap">
      <div class="inner" style="max-width:100%; margin-top:10px; padding: 0 0 0 220px; width:100%;">
        <div class="top_info" style="margin-bottom: 0px;">
          <div class="page_tit" style="border-bottom: none;">
            <h2 class="tit">나의 마일리지</h2>
          </div>
          <div class="term_box">
            <div class="datepicker_area">
              <div class="datepicker">
                <input type="text" id="date_s" name="sh_s_date" value="2024-03-23">
              </div>
              <span>~</span>
              <div class="datepicker">
                <input type="text" id="date_e" name="sh_e_date" value="2024-04-23">
              </div>
            </div>
            <button type="button" class="btn_txt btn_black" onclick="get_mlg_list();"><span>검색</span></button>
          </div>
        </div>
        <div class="mileage_box tab_area js_tab">
          <ul class="js_tabBtn tab2">
            <li class="on"><button type="button" data-val="plus_list">적립내역</button></li>
            <li><button type="button" data-val="minus_list">사용내역</button></li>
          </ul>
          <div class="js_tabCon o_lists on">
            <ul class="mypage_lists">

            </ul>
          </div>
          <div class="js_tabCon o_lists">
            <ul class="mypage_use_lists">

            </ul>
          </div>
        </div>
      </div>
    </div>
    </div>


    <script>

    </script>
    <!-- //page_script -->
    <input type="hidden" id="page" value="1">
    <script>
      var list_gb = "plus_list";

      $(".js_tab > ul > li > button").on("click", function () {
        list_gb = $(this).attr("data-val");
        get_mlg_list();
      });

      $(document).ready(function () {
        get_mlg_list();
      })
      //스크롤 바닥 감지
      window.addEventListener('scroll', moreShowList);

      function moreShowList() {
        //  if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
        if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3)) {
          get_mlg_list('more');
        }
      }
      var page = 1;

      function get_mlg_list(mode) {
        Csrf.Set(_CSRF_NAME_);
        if (mode == 'more') {
          page = $('#page').val();
          page++;
          $('#page').val(page);
        } else {
          page = 1;
        }

        $.ajax({
          url: '/shop/mypage/note/mileage_erp_lists_ajax',
          type: 'post',
          data: {
            'page': page,
            "list_gb": list_gb,
            "sh_s_date": $("#date_s").val(),
            "sh_e_date": $("#date_e").val()
          },
          success: function (res) {
            if ($.trim(res) == "") {
              if (mode == 'more') {
                // alert("마지막 페이지입니다.");
                window.removeEventListener('scroll', moreShowList);
              } else {

                if (list_gb == 'minus_list') {
                  $('.mypage_use_lists').html("<li class='nodata'>내역이 없습니다.</li>");
                } else {
                  $('.mypage_lists').html("<li class='nodata'>내역이 없습니다.</li>");
                }
              }
            } else {
              if (mode == 'more') {
                console.log(res);

                if (list_gb == 'minus_list') {
                  $('.mypage_use_lists').append(res);
                } else {
                  $('.mypage_lists').append(res);
                }
              } else {
                if (list_gb == 'minus_list') {
                  $('.mypage_use_lists').html(res);
                } else {
                  $('.mypage_lists').html(res);
                }
              }
            }

          },
          error: function (res) {
            console.log(res);
          }
        });
      }
    </script>
    <!-- page_script -->
  </section>
  <!-- //contents --> 
  
  
  
  
<%@ include file="../common/footer.jsp"%>
</body>
</html>