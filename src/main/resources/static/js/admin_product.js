$(function() {
	
	$('#wine_category1').on('click', function() {
		
		$('#wine_category1 option:selected').val();
		$('.wine_category_select1').html($('#wine_category1 option:selected').val());
	})
	
	$('#wine_category2').on('click', function() {

		$('#wine_category2 option:selected').val();
		$('.wine_category_select2').html($('#wine_category2 option:selected').val());
	})
	
	$('#wine_category3').on('click', function() {

		$('#wine_category3 option:selected').val();
		$('.wine_category_select3').html($('#wine_category3 option:selected').val());
	})
	
	$('.wine_choice').on('click', function() {
		$('.wine_select').show();
		$('#wine_category_sub1').val("value").change();
		alert($('#wine_category_sub1').val());
	})
	
	$('.other_choice').on('click', function() {
		$('.wine_select').hide();
		$('#wine_category1 option:selected').val("");
		$('#wine_category2 option:selected').val("");
		$('#wine_category3 option:selected').val("");
		
		$('#wine_category_sub1').val("").change();
		alert($('#wine_category_sub1').val());
	})
	
/*	$('.wine_choice').on('click', function() {
			
		$('.wine_select').removeClass('on')
	})
	
	$('.other_choice').on('click', function() {
		$('.wine_select').addClass('on')
	})*/
	
	
	$('.other_choice').on('click', function() {
		$('.wine_select').addClass('on')
	})
	

/*	$('.fullPrice').on('keyup', function() {
		let originPrice = $('.fullPrice').val();
		let priceString2 = originPrice.toLocaleString('ko-KR');
		$('.fullPrice').val(priceString2);
		console.log(priceString2);
	})*/
	
	$('.discountRate').on('keyup', function() {
		let originPrice = $('.fullPrice').val();
		let discountRate = $('.discountRate').val();
		
		if(! originPrice || !discountRate) {
			return false;
		} else {
			let discounted = Math.round(originPrice * (discountRate / 100));	
			let newPrice = originPrice - discounted;
			$('.discountPrice').val(newPrice);
/*			$('.discountPrice').val(priceString);
			let priceString = newPrice.toLocaleString('ko-KR');
			console.log(priceString);*/
		}
	})
	
	function deleteSelectedProducts() {
    var productNos = [];
    $('input[name="productNo"]:checked').each(function() {
        productNos.push($(this).val());
    });

    if (productNos.length > 0) {
        var confirmed = confirm("정말로 선택된 상품을 삭제하시겠습니까?");
        if (confirmed) {
            $.ajax({
                type: "POST",
                url: "admin_delete_selected_products.do",
                data: { productNos: productNos },
                success: function(response) {
                    // 삭제 성공 시 처리할 작업
                    alert("선택된 상품이 삭제되었습니다.");
                    location.reload(); // 페이지 새로고침
                },
                error: function() {
                    // 삭제 실패 시 처리할 작업
                    alert("상품 삭제에 실패했습니다.");
                }
            });
        }
    } else {
        alert("삭제할 상품을 선택해주세요.");
    }
}
	
	
	
	
});









