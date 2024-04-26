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
			
		$('.wine_select').removeClass('on')
	})
	
	$('.other_choice').on('click', function() {
		$('.wine_select').addClass('on')
	})
});