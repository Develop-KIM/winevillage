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
	})
	
	$('.other_choice').on('click', function() {
		$('.wine_select').hide();
		$('#wine_category1 option:selected').val("");
		$('#wine_category2 option:selected').val("");
		$('#wine_category3 option:selected').val("");
		$('#wine_category_sub').prop("checked",false);
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
	
	
	
	
	
});









