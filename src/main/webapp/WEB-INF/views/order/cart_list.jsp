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
        <div class="c_lists">
            <div class="top">
                <div class="checkbox type2">
                    <input type="checkbox" id="all_sel">
                    <label for="all_sel">전체선택</label>
                </div>
				<button type="button" id="btn_del">선택삭제</button>
            </div>
            <ul>
<c:forEach var="cartItem" items="${cartList}" >
<c:set var="wineStyles"
	   value="${{'레드':'#E0D8EA','화이트':'#F6EC9C','로제':'#EEC1CC','스파클링':'#E0EBF8','주정강화':'#E1D5CA','디저트':'#D7F9E2'}}" />
                <li class="${cartItem.orderNo }">
                    <div class="box ip_img">
                        <div class="checkbox type2">
                           		<input type="checkbox" id="cart_seq_${cartItem.orderNo }" name="cart_seq[]" class="ip_check" value="${cartItem.productCode }" data-qty="${cartItem.orderAmount }" data-price="${cartItem.discountPrice }" data-supply-price="${cartItem.fullPrice }" data-promotion-limit="N">
								<label for="cart_seq_${cartItem.orderNo }">
                                <picture style="background: ${empty cartItem.wine ? '#fff' : wineStyles[cartItem.wine]}">
                                    <source srcset="/uploads/product/200/${cartItem.productImg }" media="(min-width:768px)"><!-- pc이미지 -->
                                    <source srcset="/uploads/product/200/${cartItem.productImg }" media="(max-width:767px)"><!-- mb이미지 -->
                                    <img src="/uploads/product/200/${cartItem.productImg }" alt=""><!-- pc이미지 -->
                                </picture>
                            </label>
                        </div>
                    </div>
                    <div class="box con">
                        <div class="more_info" style="white-space: nowrap; overflow: visible;">
                            <p class="prd_name">
                                <a style="overflow: visible;" href="/product_view.do?category=${cartItem.wine }&productCode=${cartItem.productCode}" target="_blank">${cartItem.productName }<br>
                              	</a>
                            </p>

							<div class="cate_label" >
								<c:if test="${not empty cartItem.wine }">
									<span class="label" style="background: ${wineStyles[cartItem.wine]};">${cartItem.wine }</span>
								</c:if>
								<c:if test="${not empty cartItem.country }">
									<span class="label" style="background: ${wineStyles[cartItem.wine]};">${cartItem.country }</span>
								</c:if>
								<c:if test="${not empty cartItem.grapeVariety }">
									<span class="label" style="background: ${wineStyles[cartItem.wine]};">${cartItem.grapeVariety }</span>
								</c:if>
							</div>
                        </div>
                    </div>
                    <div class="box opt">
						<span> </span>
					</div>
                    <div class="box price_amount">
                        <div class="box amount">
                            <div class="quantity" data-cart-seq="${cartItem.orderNo }" data-product-cd="${cartItem.productCode }" data-base-price="${cartItem.fullPrice }" data-stock="${cartItem.stock }">
                                <button type="button" class="minus" onclick="box_qty(this, -1);">감소</button>
                                <input type="text" class="qty" title="수량" value="${cartItem.orderAmount }" readonly>
                                <button type="button" class="plus" onclick="box_qty(this, +1);">증가</button>
                            </div>
                        </div>
						<div style="white-space:nowrap" class="box price price_con">
							<div>
								<span>상품금액</span>
								<ins id="originalSupply_${cartItem.orderNo }"><fmt:formatNumber value="${cartItem.fullPrice * cartItem.orderAmount}" pattern="#,##0"/>원</ins>
							</div>
							<div class="discount">
								<span>할인금액</span>
								<ins id="originalSale_${cartItem.orderNo }"><fmt:formatNumber value="${(cartItem.fullPrice - cartItem.discountPrice) * cartItem.orderAmount}" pattern="#,##0"/>원</ins>
							</div>
							<div class="total">
								<span>총 결제금액</span>
								<ins id="originalTotal_${cartItem.orderNo }"><fmt:formatNumber value="${cartItem.discountPrice * cartItem.orderAmount}" pattern="#,##0"/>원</ins>
							</div>
						</div>
                    </div>
                </li>
                </c:forEach>
			</ul>
        </div>

		<div class="reload_container">
			<div class="total_price">
				<dl class="dash">
					<dt>상품금액</dt>
					<dd id="supply">원</dd>
				</dl>
				<dl class="plus">
					<dt>할인금액</dt>
					<dd id="sale">원</dd>
				</dl>
				<dl class="total">
					<dt>총 결제금액</dt>
					<dd id="total">원</dd>
				</dl>
			</div>
		</div>

        <div class="btn_area col2">
            <button type="button" class="btn_txt" onclick="location.href='/shop/product/product_lists?sh_category1_cd=10000'"><span>계속 쇼핑하기</span></button>
            <!-- <button type="button" class="btn_txt" onclick="orderSet('c')"><span>선택상품 주문</span></button> -->
            <button type="button" class="btn_txt" onclick="location.href='/order_write.do'"><span>선택상품 주문</span></button>
           <!--  <button type="button" class="btn_txt btn_black" onclick="orderSet('a')"><span>전체상품 주문</span></button> -->
            <button type="button" class="btn_txt btn_black" onclick="location.href='/order_write.do'"><span>전체상품 주문</span></button>
        </div>

        <div class="recommend_area">
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
	// 수량변경 및 가격 출력
    function box_qty(element, value) {
        var parent = element.parentNode;
        var qtyInput = parent.querySelector('.qty');
        var currentQty = parseInt(qtyInput.value);
        var newQty = currentQty + value;
        
        var maxQty = parseInt(parent.getAttribute('data-stock'));
        
        if (newQty > maxQty) {
            alert("주문 가능한 수량은 " + maxQty + "개 입니다");
            return;
        }
        
        qtyInput.value = newQty >= 0 ? newQty : 0;

        $.ajax({
            url: '/update-quantity', 
            type: 'POST', 
            data: {
                orderNo: parent.getAttribute('data-cart-seq'),
                productCode: parent.getAttribute('data-product-cd'), 
                orderAmount: newQty,  
            },
            success: function(response) {
                console.log('수량 업데이트 성공:', response); 
                
                $('#originalSupply_' + response.orderNo).text((response.fullPrice * response.orderAmount).toLocaleString() + '원');
                $('#originalSale_' + response.orderNo).text(((response.fullPrice - response.discountPrice) * response.orderAmount).toLocaleString() + '원');
                $('#originalTotal_' + response.orderNo).text((response.discountPrice * response.orderAmount).toLocaleString()+'원');
            },
            error: function(xhr, status, error) {
                console.error('수량 업데이트 실패:', error);
            }
        });
    }
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
	상품 수령 변경
	
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