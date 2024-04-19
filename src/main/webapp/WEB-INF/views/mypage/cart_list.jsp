<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.winenara.com/shop/main?login_on=Y&return_url=https://me2.do/Fijy5pow by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Apr 2024 13:02:33 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<head>
    <title>WINENARA 1987 ㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다!</title>

</head>
<script type="text/javascript" src="/WineVillage/src/main/resources/static/js/front_ui9442.js"></script>
<body>
<%@ include file="../common/common.jsp"%>
<section id="contents" class="mb_margin_0" style="margin-top: 188px;"><div class="lnb cart_lnb lnb_wrap step_wrap">
    <div class="pc_hidden">
        <a href="javascript:history.go(-1);" class="prev">이전</a>
        <div class="select_brand js_select" id="select_brand">
            <button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span class="no_arrow">장바구니</span></button>
            <!-- <ul class="mb_lnb_lists">
            </ul> -->
        </div>
    </div>
    <div class="pc_lnb mb_hidden">
        <div class="page_tit">
            <h2><span>장바구니</span></h2>
            <ul>
                <li class="on"><span>장바구니</span></li>
                <li class=""><span>주문결제</span></li>
                <li class=""><span>주문완료</span></li>
            </ul>
        </div>
        <!-- <ul class="menu">
        </ul> -->
    </div>
</div>
<div class="wrap">    <script src="/asset/js/wn.product.js"></script>
    <div class="content order cart_lists_page">
	
        <!-- 탭 버튼 형식 -->
        <!-- <div class="tab_area">
            <ul class="tab1">
                <li class="on">
					<button type="button" onclick="location.href='/shop/cart/cart_lists?order_gb=P'">
						<span>온라인주문
						<em class="count">1</em> 						</span>
					</button>
				</li>
                
				<li >
					<button type="button" onclick="location.href='/shop/cart/cart_lists?order_gb=V'">
						<span>
							매장방문주문
														</span>
					</button>
				</li>
                
				<li >
					<button type="button" onclick="location.href='/shop/cart/cart_lists?order_gb=D'">
						<span>
							택배배송
													</span>
					</button>
				</li>
            </ul>
        </div> -->
        

        <!-- 라디오박스 형식(두 개 중 골라 쓰시면 됩니다) -->
        <!-- <div class="radio_area">
            <div class="radiobox">
                <input type="radio" name="receive_way" id="pickup" checked>
                <label for="pickup"><span>직접픽업(Array건)</span></label>
            </div>
            <div class="radiobox">
                <input type="radio" name="receive_way" id="store">
                <label for="store"><span>매장방문(0건)</span></label>
            </div>
            <div class="radiobox">
                <input type="radio" name="receive_way" id="shipping">
                <label for="shipping"><span>택배배송</span></label>
            </div>
        </div> -->
        
        <div class="c_lists">
            <div class="top">
                <div class="checkbox type2">
                    <input type="checkbox" id="all_sel">
                    <label for="all_sel">전체선택</label>
                </div>
				<button type="button" id="btn_del">선택삭제</button>
            </div>
            <ul>
            						
                <li class="65402">
                    <div class="box ip_img">
                        <div class="checkbox type2">
                            <input type="checkbox" id="cart_seq_65402" name="cart_seq[]" class="ip_check" value="65402" data-qty="1" data-price="14900" data-supply-price="14900" data-promotion-limit="N">
                            <label for="cart_seq_65402">
                                <picture style="background:#E0D8EA">
                                    <!--[if IE 9]><video style="display: none;"><![endif]-->
                                    <source srcset="/uploads/product/aa7a7a81345a0f66e00a0962f5ab3904.png" media="(min-width:768px)"><!-- pc이미지 -->
                                    <source srcset="/uploads/product/aa7a7a81345a0f66e00a0962f5ab3904.png" media="(max-width:767px)"><!-- mb이미지 -->
                                    <!--[if IE 9]></video><![endif]-->
                                    <img src="/uploads/product/aa7a7a81345a0f66e00a0962f5ab3904.png" alt=""><!-- pc이미지 -->
                                </picture>
                            </label>
                        </div>
                    </div>
                    <div class="box con">
                        <div class="more_info">
                            <p class="prd_name">
                                <a href="/shop/product/product_view?product_cd=03U001" target="_blank">
                                    디아블로 데블스 카나발 카베르네<br>
                                                                    </a>
                            </p>

							<div class="cate_label">
								<span class="label" style="background:#E0D8EA">레드</span>								<span class="label" style="background:#E0D8EA">칠레</span>								<span class="label" style="background:#E0D8EA">카베르네 소비뇽</span>							</div>

							<!-- 픽업제외매장 -->
														<!-- //픽업제외매장 -->

							
                        </div>
						                        						                    </div>
                    <div class="box opt">
						<span> </span>
						<!-- <span></span> -->
					</div>
                    <div class="box price_amount">
                        <div class="box amount">
                            <div class="quantity" data-cart-seq="65402" data-product-cd="03U001" data-base-price="14900" data-opt-gb="C">
                    
                                <button type="button" class="minus" onclick="box_qty(this, -1);">감소</button>
                                <input type="text" class="qty" title="수량" value="1">
                                <button type="button" class="plus" onclick="box_qty(this, +1);">증가</button>
                            </div>
														<!-- <select class="packing" onchange="change_packing('65402',this.value)">
								<option value="">포장선택</option>
																	<option 
										value="2701"
																			>
										쇼핑백									</option>
																	<option 
										value="2702"
																			>
										완충포장									</option>
																	<option 
										value="2703"
																			>
										칠링백(+2,000원)									</option>
																	<option 
										value="2704"
																			>
										선물포장(+5,000원)									</option>
															</select> -->
							                        </div>
						<div class="box price price_con">
							<div>
								<span>상품금액</span>
								<ins>14,900원</ins>
							</div>
							<div class="discount">
								<span>할인금액</span>
								<ins>0원</ins>
							</div>
							<div class="total">
								<span>총 결제금액</span>
								<ins>14,900원</ins>
							</div>
						</div>
                    </div>
                    <!-- <div class="box btn">
                        <button type="button" class="btn_like wish_03U001 " id="wish_03U001" onclick="product.likeProduct('03U001');">좋아요</button>
                        <button type="button" class="btn_del basic" value="65402">삭제</button>
                    </div> -->
                </li>
				                
			                        </ul>
        </div>
        
		
		<div class="reload_container">
			<div class="total_price">
				<dl class="dash">
					<dt>상품금액</dt>
					<dd id="supply">14,900원</dd>
				</dl>
				<dl class="plus">
					<dt>할인금액</dt>
					<dd id="sale">0원</dd>
				</dl>
			<!-- 	<dl class="equal">
					<dt>배송비</dt>
					<dd>0원</dd>
				</dl> -->
				<dl class="total">
					<dt>총 결제금액</dt>
					<dd id="total">14,900원</dd>
				</dl>
			</div>
		</div>
        
        <!-- <p class="txt">당일 픽업은 오늘(04월19일) 오후 4시 이전 주문 완료 후 1시간 이후 픽업만 가능합니다.</p> -->

        <div class="btn_area col2">
            <button type="button" class="btn_txt" onclick="location.href='/shop/product/product_lists?sh_category1_cd=10000'"><span>계속 쇼핑하기</span></button>
            <!-- <button type="button" class="btn_txt" onclick="orderSet('c')"><span>선택상품 주문</span></button> -->
            <button type="button" class="btn_txt" onclick="location.href='/order_write.do'"><span>선택상품 주문</span></button>
           <!--  <button type="button" class="btn_txt btn_black" onclick="orderSet('a')"><span>전체상품 주문</span></button> -->
            <button type="button" class="btn_txt btn_black" onclick="location.href='/order_write.do'"><span>전체상품 주문</span></button>
        </div>

        <div class="recommend_area">
          <!--   <h3>추천 상품</h3>
            
            <ul class="prd_list" id="cart_recommend">
            </ul> -->
            
            <!-- <div class="btn_area">
			                <button type="button" class="btn_txt" id="more_button_wine" onclick="getList('add')"><span>더보기</span></button>
			            </div> -->
        </div>
    </div>
</div>

<form action="https://www.winenara.com/shop/cart/cart_lists" id="UpdateCartForm" name="UpdateCartForm" method="post" accept-charset="utf-8">
                    <input type="hidden" name="witplus_csrf_token" value="1f07d7574108f334993e9bc5182fc2ea">
<input type="hidden" name="cart_seq" value="">
<input type="hidden" name="qty" value="">
</form>
<!-- page_script -->
<link rel="stylesheet" type="text/css" href="/asset/css/shop/slick.css">
<script type="text/javascript" src="/asset/js/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="/asset/css/shop/jqcloud.min.css">
<script type="text/javascript" src="/asset/js/jqcloud.min.js"></script>
<script>
//전체선택
$("#all_sel").click(function() {
	if($("#all_sel").is(":checked")) $(".ip_check").prop("checked", true);
	else $(".ip_check").prop("checked", false);

	var price = 0;
	$("input:checkbox[name='cart_seq[]']").each(function (index) {
		
		if($(this).is(":checked")==true){
			price += $(this).data('qty') * $(this).data('price');
		}
	});
	$("#total").text(price.toLocaleString()+'원');
});

$(".ip_check").click(function() {
	var total = $(".ip_check").length;
	var checked = $(".ip_check:checked").length;

	if(total != checked) $("#all_sel").prop("checked", false);
	else $("#all_sel").prop("checked", true); 
});

$('.main_img .slider').slick({
    dots: true,
    arrows: true
});

// 슬라이드시 비비노 키워드 호출
    $('.main_img .slider').on("afterChange", function(){
    	var product_cd = $(this).data('cd');
    	 var words = [];	// 키워드 담을 배열
    	
    	Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url : "/shop/product/vivino_keyword_ajax",
            data: {product_cd:product_cd},
            success : function (res) {
                if (typeof(res)=="string"){ res = JSON.parse(res); }
				
				if(res.status == "ok"){
					var vivino = res.list;
                	for(var i = 0;i < vivino.length;i++){
//                 		console.log(vivino[i]);	
                		var tempObj = {};
                		tempObj['text'] = vivino[i]['keyword_kr'];
        				tempObj['weight'] = vivino[i]['score'];
        				
        				words.push(tempObj);
                	}
    				var some_words_with_same_weight = $(".cloud_"+product_cd).jQCloud(words, {
                        width: 334,
                        height: 135
                    });
					return false;
				}else{
					$(".cloud_"+product_cd).html("<span>no data</span>");
					console.log("no_list");
					return false;
				}
            },
            error: function (res) {
                alert("상품 리스트 조회시 에러가 발생했습니다.");
                alert(res.responseText);
            }
        });
    });

	// 단일 삭제
	$(".basic").on("click", function(){
		var cart_seq = $(this).val();
		if(confirm("장바구니에서 삭제하시겠습니까?")){
			Csrf.Set(_CSRF_NAME_); //토큰 초기화

			$.post("/shop/cart/cart_proc_ajax?ajax_mode=DEL", {
				cart_seq: cart_seq
			},function(res) {
				if(typeof (res) == "string"){
					res = JSON.parse(res);
				}
				if(res.status == 'ok'){
					location.reload();
				}else{
					alert("삭제에 실패했습니다.");
					return false;
				 }
			}).fail(function(error){
				alert("장바구니 삭제중 오류가 발생했습니다.");
			});

		}
	});

	// 단일 삭제(추가옵션)
	/*
	$(".opt").on("click", function(){
		var cart_opt_seq = $(this).val();
		if(confirm("장바구니에서 삭제하시겠습니까?")){
			Csrf.Set(_CSRF_NAME_); //토큰 초기화

			$.post("/shop/cart/cart_proc_ajax?ajax_mode=DEL_OPT", {
				cart_opt_seq: cart_opt_seq
			},function(res) {
				if(typeof (res) == "string"){
					res = JSON.parse(res);
				}
				if(res.status == 'ok'){
					location.reload();
				}else{
					alert("삭제에 실패했습니다.");
					return false;
				 }
			}).fail(function(error){
				alert("장바구니 삭제중 오류가 발생했습니다.");
			});

		}
	});
	*/


	// 선택 삭제
	$("#btn_del").on("click", function(){
		var frm = document.DelForm;
		var cart_val = []; 
		var cart_opt_val = [];
		if( $("input[name='cart_seq[]']:checked").length > 0 || $("input[name='cart_opt_seq[]']:checked").length > 0  ){
			$("input[name='cart_seq[]']:checked").each(function(idx){
				cart_val.push($(this).val());
			});

			$("input[name='cart_opt_seq[]']:checked").each(function(idx){
				cart_opt_val.push($(this).val());
			});
	
			if(confirm("선택한 상품을 삭제하시겠습니까?")){		//추가옵션 외
			if(cart_val.length  !== 0) {
				Csrf.Set(_CSRF_NAME_); 
				$.ajax({
					type: "POST",
					url: "/shop/cart/cart_proc_ajax?ajax_mode=DEL",
					dataType: 'json',
					data: {cart_seq: cart_val},
					success: function(res){
						location.reload();
					},
					error: function(res){
						alert(res.responseText);
					}
				});
			}

				if(cart_opt_val.length  !== 0) {		//선택한 (추가)옵션 삭제
					Csrf.Set(_CSRF_NAME_); 
					$.ajax({
						type: "POST",
						url: "/shop/cart/cart_proc_ajax?ajax_mode=DEL_OPT",
						dataType: 'json',
						data: {cart_opt_seq: cart_opt_val},
						success: function(res){
							location.reload();
						},
						error: function(res){
							alert(res.responseText);
						}
					});
				}
			}

		}else{
			alert("삭제할 상품을 선택해 주세요.");
			return false;
		}
	});


	function box_qty(e, add){
		var qty				=	parseInt( $(e).siblings('.qty').val() ) + parseInt(add);
		var cart_seq		=	$(e).parents('.quantity').data('cart-seq');
		var opt_gb			=	$(e).parents('.quantity').data('opt-gb');
		var product_cd      =	$(e).parents('.quantity').data('product-cd');
		//	alert(product_cd);
		if( qty > 0 ){
			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			$.ajax({
			       type: "POST",
			       url: "/shop/cart/cart_proc_ajax?ajax_mode=UPD_QTY",
			       dataType: 'json',
				   async: false,
			       data: {cart_seq: cart_seq, qty: qty, opt_gb : opt_gb, product_cd : product_cd},
			       success: function(res){
				       if($.trim(res.status) == "ok"){
							//$(e).siblings('.qty').val(qty);
							//alert('test');
							//$('.tab_area').load(location.href+' .tab_area');
							location.href='/shop/cart/cart_lists?upt=Y';
				       } else{
					       if($.trim(res.status) == "err2"){
						       if(res.data.length > 0){
							       var stock = parseInt(res.data[0].stock) - parseInt(res.data[0].limit_cnt);

							       alert("재고가 부족합니다. 현재 남아있는 재고의 수는 " + stock + "개 입니다.");
							       location.reload();
						       }
					       }else if($.trim(res.status) == "err3"){
								alert('해당 옵션의 최소 수량은 ' +res.data+ '개 이상입니다. ');
								return;
							}else{
						       alert(res.msg);
						       location.reload();
						       return;
					       }
				       return;
					   }
			       },
			       error: function(res){
				       alert(res.responseText);
			       }
		      });
		}
	}


	// 구매하기
	function orderSet(state){        
		if(state == 'a'){
			$("input[type=checkbox]").prop("checked", true);
		}

		if($("input:checkbox[name='cart_seq[]']:checked").length < 1){
			alert("주문할 상품을 선택해 주세요.");
			return false;
		}

		var promotion_limit_yn = 'N';

		$("input:checkbox[name='cart_seq[]']:checked").each(function(idx){
			if( $(this).data('promotion-limit') == 'Y' ) {
				promotion_limit_yn = 'Y';
			}
		});

		if( promotion_limit_yn == 'Y' ){
			alert("기업회원이 구매할 수 없는 상품이 포함되어 있습니다");
			return;
		} else {
			jsOrderSubmit();
		}
	}

	function jsOrderSubmit(){
		var frm = document.UpdateCartForm;
		var cart_val = '';

		$("input[name='cart_seq[]']:checked").each(function(idx){
			if(cart_val == ""){
				cart_val = $(this).val() ;
			}else{
				cart_val += "," + $(this).val();
			}
		});

		frm.cart_seq.value = cart_val;
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type: "POST",
			url: "/shop/cart/cart_proc_ajax?ajax_mode=ORDER",
			dataType: 'json',
			async: false,
			data: $("#UpdateCartForm").serialize(),
			success: function(res){
				if($.trim(res.status) == "ok"){
					location.href = '/shop/order/order_write';
				}else
					if($.trim(res.status) == "err2"){
						if(res.data.length > 0){
							for(var i = 0; i < res.data.length; i++){
								if(msg){
									msg += ", \n" + res.data[i].product_nm + res.data[i].opt_nm2
								}else{
								   msg = res.data[i].product_nm + res.data[i].opt_nm2
								}
							}
								msg += "의 재고가 부족 합니다.";
							    alert(msg);
							    return;
						    }
					    }else if($.trim(res.status) == "err3"){
							alert('해당 옵션의 최소 수량은 ' +res.data+ '개 이상입니다. ');
							return;
						}else{
							alert(res.msg);
						    return;
					    }
			       },
			       error: function(res){
				       alert(res.responseText);
			       }
		       });
	}

var list_page=1;
var product = '["03U001"]';
var product_cd;
product_cd = JSON.parse(product);
var mode ='init';

/*
if( product_cd ) {
	getList('init');
}else{
	//$(".recommend_area").hide();  
	getList2('init');
}
*/
    
//스크롤 바닥 감지
window.addEventListener('scroll', moreShowList);

var scrollVal = true;
function moreShowList() {
	if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
		// getList('add');
		//console.log(list_page);
		//console.log('실행');

		if(mode === 'init'){
			if( product_cd ) {
				//getList(mode);
			}else{
				//$(".recommend_area").hide();  
				//getList2(mode);
			}
			mode = 'add';
		}else{

			if( scrollVal === true) {
				if( product_cd ) {
					//console.log(1);
					//getList(mode);
				}else{
					//$(".recommend_area").hide();  
					//console.log(2);
					//getList2(mode);
				}
			}
		}
	}
}

function getList(mode){
	scrollVal = false;
	window.removeEventListener('scroll', moreShowList);

	if( mode=="init"){
		list_page = 1;
	}else{
		list_page += 1;
	}
	console.log(mode);

    $.ajax({
        type: "get",
        url : "/shop/cart/RecommedWine",
        data: { page : list_page, 'product_cd' : product_cd },
        success : function (res) {
			
			if(!res){
				//alert('마지막 페이지입니다.');
				if(mode === 'init'){
					$(".recommend_area").hide();  
					window.removeEventListener('scroll', moreShowList);
				}
				// $("#more_button_wine").hide();
				window.removeEventListener('scroll', moreShowList);
	
			}else{
				$(".prd_list").append(res);
			}
            $('.main_img .slider').not('.slick-initialized').slick({
                dots: true,
                arrows: true
            });

			scrollVal = true;
			window.addEventListener('scroll', moreShowList);
        },
        error: function (res) {
            alert("불편하시지만 다시 시도해주세요. 감사합니다.");
        }
    });
}


function getList2(mode){
	scrollVal = false;
	window.removeEventListener('scroll', moreShowList);

	if( mode=="init"){
		list_page = 1;
	}else{
		list_page += 1;
	}

    $.ajax({
        type: "get",
        url : "/shop/cart/getList",
        data: { 'page' : list_page },
        success : function (res) {
			if(!res){
				//alert('마지막 페이지입니다.');
				// $("#more_button_wine").hide();
				window.removeEventListener('scroll', moreShowList);
	
			}else{
				$(".prd_list").append(res);
			}
            $('.main_img .slider').not('.slick-initialized').slick({
                dots: true,
                arrows: true
            });

			scrollVal = true;
			window.addEventListener('scroll', moreShowList);
        },
        error: function (res) {
            alert("불편하시지만 다시 시도해주세요. 감사합니다.");
        }
    });
}

$("#header").addClass('top_hidden');
$("#contents").addClass('mb_margin_0');


$("input[type=checkbox]").change(function() {
	var price = 0;
	var supply_price = 0;
	$("input:checkbox[name='cart_seq[]']").each(function (index) {
		
		if($(this).is(":checked")==true){
			price += $(this).data('qty') * $(this).data('price');
			supply_price += $(this).data('qty') * $(this).data('supply-price');
		}
	});
	$("#supply").text(supply_price.toLocaleString()+'원');
	$("#sale").text((supply_price-price).toLocaleString()+'원');
	$("#total").text(price.toLocaleString()+'원');
});

$("#all_sel").trigger("click");
</script>
<script src="/asset/js/wn.product.js"></script>

<!-- //page_script -->

<!--백로그 API-->
<script type="text/JavaScript">

	var cart_log = '{"03U001":"1"}';
	
	if(cart_log.length>2){
		console.log('적재');
		cart_log = JSON.parse(cart_log);
		console.log(cart_log);
		RC_Method({
			sign_up_data: "2024-04-03 19:56:46",
			page_type:"cart_lists", 
			behavior:"page_view",
			extra: {
				'shopping_basket' : cart_log
			}
		});
	}

	function change_packing(cart_seq,val){
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url : "/shop/cart/cart_proc_ajax?ajax_mode=UPD_PACKING",
            data: {
					cart_seq	:	cart_seq
					,packing	:	val
			},
            success : function (res) {
				alert("변경되었습니다.");
				location.reload();
            },
            error: function (res) {
                alert("ERROR!");
            }
        });
		
	}


</script>
<!--백로그 API-->
</section>
</body>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</html>
