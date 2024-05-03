<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ 장바구니</title> 
<script type="text/JavaScript" language="JavaScript"
	src="https://winenara-recommend-method.s3.ap-northeast-2.amazonaws.com/rcMethod.js"
	charset="UTF-8"></script>
<!--백로그 API-->
<meta id="CsrfSecrets" name="witplus_csrf_token"
	content="be7b38b9302ff3c05cc7f68a617d7dd7" />
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-217574467-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() { dataLayer.push(arguments); }
	gtag('js', new Date());
	gtag('config', 'UA-217574467-1');
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script>
$(function() {
	//버튼을 클릭하면 ajax함수를 호출한다.
	$('#btnBoard').click(function() {
		/*버튼을 클릭하면 새로운 데이터를 요청하는 것이므로 로딩 이미지가 화면에 출력되어야 한다.*/
		$('#loading').show();
		console.log($('#pageNum').val());
		setTimeout(() => {
			$.ajax({
				//전송방식
				type : 'get',
				//요청 URL(요청명)
				url : 'http://192.168.0.141:8587/restBoardSearch.do',
				
				//파라미터(페이지번호 : <select>에 지정되어있음})
				data : { searchField : 'memberNo',
					searchWord : 29},
				//컨텐츠타입
				contentType : "text/html;charset:utf-8",
				//콜백데이터 형식
				dataType : "json",
				//성공/실패시 호출할 콜백함수
				success : sucCallBack,
				error : errCallBack
			});
		}, 1000);
	});
	//HTML페이지가 로드되었을 때 자동으로 이벤트 실행
	$('#btnBoard').trigger('click');
});
//요청에 성공했을 때 호출되는 콜백함수 정의
function sucCallBack(resData) {
	console.log(resData);
	//매개변수 resData로 JSON 배열이 전달된다. 
	let tableData = "";
	//배열의 크기만큼 반복한다. 
	$(resData).each(function(index, data) {
		//파싱한 데이터는 <tr>태그로 누적해서 저장한다. 
		tableData += ""
		+"<tr>"
		+"     <td>"+data.memberNo+"</td>"
		+"     <td>"+data.memberId+"</td>"
		+"     <td>"+data.name+"</td>"
		+"     <td>"+data.birthday+"</td>"
		+"     <td>"+data.phoneNumber+"</td>"
		+"     <td>"+data.email+"</td>"
		+"     <td>"+data.memberGrade+"</td>"
		+"</tr>";
	});
	//누적된 <tr>데이터를 해당 테이블에 삽입한다. 
	$('#show_data').html(tableData);
	/* $('#show_data').append(tableData); */
	//모든 데이터가 출력되면 로딩 이미지를 숨김처리한다.
	$('#loading').hide();
}
//요청에 실패했을때 호출되는 콜백함수
function errCallBack(errData) {
	console.log(errData.status + ":" + errData.statusText);
}
</script>

</head>
<body>
	<%@ include file="../common/common.jsp"%>
	<!-- contents -->
	<section id="contents" class="mb_margin_0" style="margin-top: 188px;">
		<div class="lnb order_lnb lnb_wrap step_wrap">
			<div class="pc_hidden">
				<a href="javascript:history.go(-1);" class="prev">이전</a>
				<div class="select_brand" id="select_brand">
					<h2 class="my_value js_selectBtn">주문서 작성</h2>
				</div>
			</div>
			<!-- 주문서 작성페이지 -->
			<div class="pc_lnb order_tit">
				<div class="page_tit">
					<picture>
					<source srcset="images/order/pc_smart_pickup.jpg"
						media="(min-width:768px)">
					<source srcset="images/order/mb_smart_pickup.jpg"
						media="(max-width:767px)">
					<img src="images/order/pc_smart_pickup.jpg" alt="스마트 픽업"
						draggable="false"> </picture>
				</div>
			</div>
		</div>
		<div class="wrap">
			<script type="text/javascript" src="./js/wn.order.js?v=240318123259"></script>
			<style>
				.quick_menu {
					display: none
			}
			</style>
			<form action="https://www.winenara.com/order/order_write"
				id="orderForm" name="orderForm" method="post" accept-charset="utf-8">
				<input type="hidden" name="witplus_csrf_token"
					value="49e9b547a35b367f65c20229c78cc14e"> <input
					type="hidden" name="session_id" id="session_id"
					value="71u2njvsv4ist0gg22ue51rvobkjeol4">
				<div class="content order order_write_page">
					<div class="c_lists">
						<ul>
							<li>
								<div class="box ip_img">
									<picture style="background:#E0D8EA"> <!--[if IE 9]><video style="display: none;"><![endif]-->
									<source
										srcset="../../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png"
										media="(min-width:768px)">
									<!-- pc이미지 -->
									<source
										srcset="../../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png"
										media="(max-width:767px)">
									<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
										src="../../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png"
										alt=""> <!-- pc이미지 --> </picture>
								</div>
								<div class="box con">
									<div class="more_info">
										<p class="prd_name">
											<a href="/product/product_view?product_cd=03T999">디아블로
												데블스 카나발 스위트</a>
										</p>
										<span class="label" style="background: #E0D8EA">레드</span><span
											class="label" style="background: #E0D8EA">칠레</span>
									</div>
								</div>
								<div class="box opt mb_hidden">
									<span>용량 : </span>
								</div>
								<div class="box price_amount">
									<div class="box price">
										<ins>14,900원</ins>
										<span>1EA</span>
									</div>
								</div>
							</li>
							<input type="hidden" id="cNo" name="cNo" value="65279">
							<input type="hidden" id="qty65279" name="qty65279" value="1">
							<input type="hidden" id="sum_product_price65279"
								name="sum_product_price65279" value="14900">
							<!-- 합계액 -->
							<input type="hidden" id="product_cd65279" name="product_cd65279"
								value="03T999">
							<!-- 상품코드 -->
							<input type="hidden" id="free_trans_yn65279"
								name="free_trans_yn65279" value="Y">
							<!-- 상품별 무료배송 여부 -->
							<input type="hidden" id="coupon_yn65279" name="coupon_yn65279"
								value="Y">
							<!-- 상품별 쿠폰적용 여부 -->
							<input type="hidden" id="reserve_price65279"
								name="reserve_price65279" value="0">
							<!-- 상품별 적립금 -->
						</ul>
					</div>
					<div class="form_area left">
						<div class="f_top">
							<h2>주문자 정보</h2>
							<!-- <div class="checkbox type2">
						<input type="checkbox" id="info_update" name="info_update" value="Y">
						<label for="info_update">회원정보로 자동 업데이트</label>
						</div> -->
						</div>
						<ul>
							<li>
								<div class="l_tit">
									<label for="or_name"></label>
								</div>
								<div class="form_box">
									<input type="text" id="or_name" name="or_name"
										placeholder="이름을 입력해주세요." value="윤영길" readonly="">
								</div>
							</li>
							<li>
								<div class="l_tit">
									<label for="or_email">이메일</label>
								</div>
								<div class="form_box">
									<input type="text" id="or_email" name="or_email"
										placeholder="이메일을 입력해주세요." value="ygyun3580@hanmail.net">
								</div>
							</li>
							<li>
								<div class="l_tit">
									<label for="or_hp">연락처</label>
								</div>
								<div class="form_box">
									<input type="text" id="or_hp" name="or_hp"
										placeholder="'-'제외한 숫자만 입력해주세요." value="01072044511">
								</div>
							</li>
						</ul>
						<input type="hidden" id="home_zip" value=""> <input
							type="hidden" id="home_addr1" value=""> <input
							type="hidden" id="home_addr2" value="">
						<div class="f_top">
							<h2>수령/배송정보</h2>
							<div class="checkbox type2">
								<input type="checkbox" name="copy_mem_info" id="copy_mem_info"
									value="Y" onclick="order.setReAddr();"> <label
									for="copy_mem_info">주문자와 동일</label>
							</div>
						</div>
						<ul>
							<input type="hidden" name="order_gb" value="P">
							<!-- 수령방법 - 직접픽업 선택시 -->
							<li class="receive_way_con pickup">
								<ul>
									<li>
										<div class="l_tit">
											<label for="re_name">수령자명</label>
										</div>
										<div class="form_box">
											<input type="text" id="receipt_name" name="re_name"
												placeholder="이름을 입력해주세요.">
											<p class="input_info_txt">수령자명을 입력해주세요.</p>
										</div>
									</li>
									<li>
										<div class="l_tit">
											<label for="re_hp">연락처</label>
										</div>
										<div class="form_box">
											<input type="text" id="receipt_tel" name="re_hp"
												placeholder="'-'제외한 숫자만 입력해주세요.">
											<p class="input_info_txt">연락처를 입력해주세요.</p>
										</div>
									</li>
									<li>
										<div class="l_tit">
											<label for="pickup_store_cd">수령장소</label>
										</div> <input type="hidden" id="store_holiday" name="store_holiday">
										<div class="form_box">
											<select name="pickup_store_cd" id="pickup_store_cd">
												<option value="">매장 선택</option>
												<option value="2212">경희궁점</option>
												<option value="2214">코엑스점</option>
												<option value="2215">서래마을점</option>
												<option value="2217">일산점</option>
												<option value="2218">홍대점</option>
												<option value="2219">시청점</option>
												<option value="2220">성수점</option>
												<option value="2221">압구정점</option>
												<option value="2222">신용산점</option>
												<option value="2223">송도점</option>
												<option value="2224">MOWa Shop</option>
											</select>
										</div>
									</li>
									<li class="date">
										<div class="l_tit">
											<label for="receipt_date">수령일</label>
										</div>
										<div class="form_box">
											<div class="checkbox type2 " id="today_checkbox">
												<input type="radio" id="r_today" name="pickup_date"
													value="2024-04-19"> <label for="r_today">오늘
													(04월19일)</label>
											</div>
											<div class="checkbox type2 " id="tomorrow_checkbox">
												<input type="radio" id="r_tomorrow" name="pickup_date"
													value="2024-04-20"> <label for="r_tomorrow">내일
													(04월20일)</label>
											</div>
											<div class="checkbox type2" id="next_tomorrow_checkbox">
												<input type="radio" id="r_next_tomorrow" name="pickup_date"
													value="2024-04-21"> <label for="r_next_tomorrow">모레
													(04월21일)</label>
											</div>
											<div class="pick_area">
												<div class="checkbox type2">
													<input type="radio" id="r_day_pick" name="pickup_date">
													<label for="r_day_pick">당일픽업</label>
												</div>
												<div class="datepicker">
													<input type="text" id="receipt_date"
														placeholder="수령일을 선택해주세요." readonly="readonly"
														class="hasDatepicker">
													<button type="button" class="ui-datepicker-trigger">선택</button>
												</div>
												<button id="store_map" type="button"
													class="btn_txt btn_black" onclick="">매장위치</button>
											</div>
											<p class="input_info_txt">
												<b id="store_info_basic">매장을 선택하면 매장 영업 시간이 표시됩니다.</b> <b
													id="weekdays_store_info_txt1" style="display: none">-“***점의</b><b
													id="weekdays_store_info_txt2" style="display: none">*월*일</b><b
													id="weekdays_store_info_txt3" style="display: none">영업시간은
													**시 ~ **시입니다”</b> <b id="weekend_store_info_txt1"
													style="display: none">-“***점의</b><b
													id="weekend_store_info_txt2" style="display: none">*월*일</b><b
													id="weekend_store_info_txt3" style="display: none">영업시간은
													**시 ~ **시입니다”</b><br> - 주문하신 상품의 <em class="info">준비가
													완료되면 알림톡을 통해 안내드릴 예정이오니, 꼭 확인 후 방문 부탁</em> 드립니다. <br> - <em
													class="info">14시까지의 결제완료</em> 건은 <em class="info">익일
													17시부터 수령 가능</em>합니다.<br> - <em class="info">14시이후의
													결제완료</em> 건은 <em class="info">익익일 17시부터 수령 가능</em>합니다.<br>
												- <em class="info">금요일 14시까지의 결제완료</em> 건은 <em class="info">토/일/월
													수령 가능</em>합니다. (일요일 코엑스점만 가능)<br> - <em class="info">금요일
													14시이후~월요일 14시까지의 결제완료</em> 건은 <em class="info">화요일 17시부터 수령
													가능</em>합니다.<br> <b>- 주류통신 판매에 대한 명령위임 고시에 따라 주류상품은 <em
													class="info">온라인 결제 후 매장픽업</em>이 필요합니다.
												</b>
											</p>
										</div>
									</li>
									<li class="receipt_memo_con">
										<div class="l_tit">
											<label for="receipt_memo">요청사항</label>
										</div>
										<div class="form_box">
											<textarea name="trans_memo" id="receipt_memo"
												placeholder="내용을 입력해주세요."></textarea>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="form_area right">
						<div class="f_top">
							<h2>주문계산기</h2>
						</div>
						<ul>
							<li class="t_price">
								<div class="l_tit">
									<p>총 상품가격</p>
								</div>
								<div class="form_box">
									<p id="order_price_span">14,900원</p>
								</div>
							</li>
							<li class="coupon">
								<div class="l_tit">
									<label for="coupon">쿠폰할인</label>
								</div>
								<div class="form_box">
									<div class="ip_box">
										<input type="text" id="coupon_sale" name="coupon_sale"
											value="0" class="numeric" title="쿠폰할인금액" readonly="readonly">
									</div>
									<div class="btn_area col2">
										<button type="button" class="btn_txt" id="openCouponList">
											<span>쿠폰조회</span>
										</button>
										<button type="button" class="btn_txt btn_lgray"
											onclick="order.CouponReSet();">
											<span>쿠폰리셋</span>
										</button>
									</div>
								</div>
							</li>
							<li class="mileage">
								<div class="l_tit">
									<label for="mileage">마일리지</label>
								</div>
								<div class="form_box">
									<div class="ip_box">
										<input type="text" id="use_reserve" name="use_reserve"
											value="0" class="numeric" title="사용할 마일리지">
									</div>
									<p class="input_info_txt">
										(<span class="info"> 0P</span> 사용가능 )
									</p>
									<div class="checkbox type2">
										<input type="checkbox" id="all_use_reserve" value="Y">
										<label for="all_use_reserve">전액사용</label>
									</div>
								</div>
							</li>
							<li class="gift">
								<div class="l_tit">
									<label for="gift">기프트카드</label>
								</div>
								<div class="form_box">
									<div class="ip_box">
										<input type="text" id="use_giftcard" name="use_giftcard"
											value="0" class="numeric" title="사용할 키프트카드">
									</div>
									<p class="input_info_txt">
										(<span class="info"> 0원</span> 사용가능 )
									</p>
									<div class="checkbox type2">
										<input type="checkbox" id="all_use_giftcard" value="Y">
										<label for="all_use_giftcard">전액사용</label>
									</div>
								</div>
							</li>
						</ul>
						<input type="hidden" id="add_trans_yn" name="add_trans_yn"
							value="N">
						<!-- 도서산간지역 -->
						<input type="hidden" id="add_trans_price" name="add_trans_price"
							value="0">
						<!-- 추가배송비 -->
						<input type="hidden" id="buy_coupon_price" name="buy_coupon_price"
							value="14900">
						<!-- 쿠폰할인 가능금액 -->
						<input type="hidden" id="trans_price" name="trans_price" value="0">
						<!-- 현재 배송비 -->
						<input type="hidden" id="const_trans_limit"
							name="const_trans_limit" value="0">
						<!-- 기본 국내 배송비 제한금액 30000 -->
						<input type="hidden" id="const_trans_price"
							name="const_trans_price" value="4500">
						<!-- 기본 국내 배송비 3000 -->
						<input type="hidden" id="mb_reserve" name="mb_reserve" value="">
						<input type="hidden" id="mb_deposit" name="mb_deposit" value="0">
						<input type="hidden" id="mb_giftcard" name="mb_giftcard" value="0">
						<input type="hidden" id="order_price" name="order_price"
							value="14900">
						<!-- 최종금액(배송비 포함)-->
						<input type="hidden" id="order_origin_price"
							name="order_origin_price" value="14900">
						<!-- 총상품가(배송비 미포함)-->
						<input type="hidden" id="coupon_member_seq"
							name="coupon_member_seq">
						<!-- 쿠폰 사용번호 -->
						<input type="hidden" id="coupon_gb" name="coupon_gb">
						<!-- 무료배송쿠폰번호-->
						<input type="hidden" id="cart_seqs" name="cart_seqs"> <input
							type="hidden" id="ticket_yn" name="ticket_yn" value="N">
						<div class="f_top">
							<h2>결제정보</h2>
						</div>
						<div class="t_price_info">
							<dl>
								<dt>총 구매금액</dt>
								<dd id="order_price_dd">14,900원</dd>
							</dl>
							<dl style="display: none">
								<dt>
									배송비
									<!-- <span class="sub_txt">총 구입금액 5만원 이상 무료 배송</span> -->
								</dt>
								<dd id="trans_price_span">+ 0원</dd>
							</dl>
							<dl>
								<dt>쿠폰할인</dt>
								<dd id="coupon_span">- 0원</dd>
							</dl>
							<dl>
								<dt>마일리지</dt>
								<dd id="reserve_price_dd">- 0원</dd>
							</dl>
							<dl>
								<dt>기프트카드</dt>
								<dd id="giftcard_price_dd">- 0원</dd>
							</dl>
							<dl class="total">
								<dt>최종결제금액</dt>
								<dd id="finish_price_span">14,900원</dd>
							</dl>
							<dl class="pay">
								<dt>결제수단</dt>
								<dd>
									<div class="radiobox type2">
										<input type="radio" name="otype_cd" id="otype_cd_20"
											value="20" checked=""> <label for="otype_cd_20">신용카드</label>
									</div>
									<div class="radiobox type2">
										<input type="radio" name="otype_cd" id="otype_cd_70"
											value="70"> <label for="otype_cd_70">카카오페이</label>
									</div>
									<div class="radiobox type2">
										<input type="radio" name="otype_cd" id="otype_cd_60"
											value="60"> <label for="otype_cd_60">페이코</label>
									</div>
									<div class="radiobox type2">
										<input type="radio" name="otype_cd" id="otype_cd_40"
											value="40"> <label for="otype_cd_40">휴대폰결제</label>
									</div>
								</dd>
							</dl>
						</div>
					</div>
					<div class="btn_area col2">
						<button type="button" class="btn_txt"
							onclick="location.href='/cart/cart_lists'">
							<span>취소</span>
						</button>
						<button type="button" class="btn_txt btn_black"
							onclick="order.orderSubmit();">
							<span>주문하기</span>
						</button>
					</div>
				</div>
				<!-- 매장위치 레이어 -->
				<div class="layer store_layer" id="store_layer">
					<div class="display_table">
						<div class="table_cell">
							<div class="layer_area">
								<button type="button" class="layer_close"
									onclick="commonUI.layer.close()">
									<span>Layer Close</span>
								</button>
								<div class="layer_con">
									<div id="daumRoughmapContainer1704935441335"
										name="daumRoughmap"
										class="root_daum_roughmap root_daum_roughmap_landing"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<style type="text/css">
		.kcpTransDiv {
			filter: alpha(opacity = 10);
			-khtml-opacity: 0.1;
			-moz-opacity: 0.1;
			opacity: 0.1;
			top: 0px;
			left: 0;
			background-color: #000000;
			width: 100%;
			height: 100%;
			position: absolute;
			z-index: 10000;
		}
		</style>
	</section>
	<div class="container">
		<h2>게시판 API 활용하여 목록 출력하기</h2>
		<div id="loading">
			<img src="./loading.gif" />
		</div>
		<table class="table table-bordered">
			<tr>
				<th>회원번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>회원등급</th>
			</tr>
			<tbody id="show_data"></tbody>
		</table>
	<div>
		<select id="pageNum">
		<c:forEach begin ="1" end="10" var="num">
			<option value="${num}">${num}page</option>
		</c:forEach>
		</select>
		<input type="button" value="목록불러오기" id="btnBoard" />
	</div>
</div>
	<!-- footer -->
	<%@ include file="../common/footer.jsp"%>
	<!-- //footer -->
	<script language=javascript>
    $(".quick_menu .menu_open").on("click", function () {
        $(".quick_menu").toggleClass("on")
    });
</script>
</body>
</html>