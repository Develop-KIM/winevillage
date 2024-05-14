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
	
	$('.fullPrice').on('keyup', function() {
		let originPrice = $('.fullPrice').val();
		$('.discountPrice').val(originPrice);
		$('.discountRate').val(0);
	})
/*		if(! originPrice || !discountRate) {
		return false;
	} else if(discountRate === ""){*/
	$('.discountRate').on('keyup', function() {
		let originPrice = parseInt($('.fullPrice').val());
		let discountRate = $('.discountRate').val();
		if(discountRate > 100) {
			alert("할인율은 100%를 넘어갈 수 없습니다.")
			$('.discountRate').val(0);
			$('.discountPrice').val(originPrice);
		} else {
			if(discountRate === ""){
			discountRate = 0;
			$('.discountPrice').val(originPrice);
		} else {
			discountRate = parseInt(discountRate);
			let discounted = Math.floor(originPrice * (discountRate / 100));
			let newPrice = originPrice - discounted;
			
			
	        let lastDigit = newPrice % 100;
	        if (lastDigit > 0) {
	            newPrice -= lastDigit;
	        }
			$('.discountPrice').val(newPrice);
		}
		}


	})
	
	let admin_num = /^[0-9]*$/; // 영문+숫자 검사
	let admin_Id = /^[a-zA-Z0-9]*$/; // 영문+숫자 검사
	let admin_Name = /^[ㄱ-ㅎ가-힣]*$/; // 한글 검사
	let admin_Pass = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/ // 영문+숫자+특수기호 검사
	
	$('#number_only1').on('keyup', function() {
		if(!admin_num.test($('#number_only1').val())){
			alert('숫자만 입력 가능합니다.');
			$('#number_only1').val('');
			$('.discountPrice').val('');
			return false;
		}
	})
	$('#number_only2').on('keyup', function() {
		if(!admin_num.test($('#number_only2').val())){
			alert('숫자만 입력 가능합니다.');
			$('#number_only2').val('');
			$('.discountPrice').val('');
			return false;
		}
	})
	
    $('#generateCodeBtn').on('click', function(e) {
        e.preventDefault();

        $.ajax({
            type: 'GET',
            url: '/productCode.do', 
            success: function(response) {
                $('#productCode').val(response);
            },
            error: function(xhr, status, error) {
                console.error('에러 발생:', error);
            }
        });
    });
	
	$('#admin_signup').on('click', function() {
	
	if( !admin_Id.test( $('#admin_id').val() ) ){ 
		alert('아이디는 영문+숫자로 입력해주세요');
		$('#admin_id').focus();
	    return false; 
	}
	
	if ($('#admin_id').val().length > 0) {
        if ($('#admin_pass_re').val().length < 4) {
            alert("비밀번호를 4글자 이상 입력하십시오.");
            $('#admin_pass_re').focus();
            return false;
        }
    }
	
	if( !admin_Name.test( $('#admin_name').val() ) ){ 
		alert('이름은 한글로 입력해주세요');
		$('#admin_name').focus();
	    return false; 
	}
	
	if( !admin_Pass.test( $('#admin_pass').val() ) ){ 
		alert('패스워드는 영문+숫자+특수기호의 조합입니다.');
		$('#admin_pass').focus();
	    return false; 
	}
	
    if ($('#admin_pass').val() !== $('#admin_pass_re').val()) {
        alert("비밀번호가 같지 않습니다.");
        $('#admin_pass_re').focus();
        return false;
    }
    
    if ($('#admin_pass').val().length > 0) {
        if ($('#admin_pass_re').val().length < 4) {
            alert("비밀번호를 4글자 이상 입력하십시오.");
            $('#admin_pass_re').focus();
            return false;
        }
    }
	
	alert('아이디 입력이 완료되었습니다.')
		
	})
	
	
});




	
	let admin_Id = /^[a-zA-Z0-9]*$/; // 영문+숫자 검사
	let admin_Name = /^[ㄱ-ㅎ가-힣]*$/; // 한글 검사
	let admin_Pass = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/ // 영문+숫자+특수기호 검사
	
	$('#admin_signup').on('click', function() {
	
	if( !admin_Id.test( $('#admin_id').val() ) ){ 
		alert('아이디는 영문+숫자로 입력해주세요');
		$('#admin_id').focus();
	    return false; 
	}
	
	if ($('#admin_id').val().length > 0) {
        if ($('#admin_pass_re').val().length < 4) {
            alert("비밀번호를 4글자 이상 입력하십시오.");
            $('#admin_pass_re').focus();
            return false;
        }
    }
	
	if( !admin_Name.test( $('#admin_name').val() ) ){ 
		alert('이름은 한글로 입력해주세요');
		$('#admin_name').focus();
	    return false; 
	}
	
	if( !admin_Pass.test( $('#admin_pass').val() ) ){ 
		alert('패스워드는 영문+숫자+특수기호의 조합입니다.');
		$('#admin_pass').focus();
	    return false; 
	}
	
    if ($('#admin_pass').val() !== $('#admin_pass_re').val()) {
        alert("비밀번호가 같지 않습니다.");
        $('#admin_pass_re').focus();
        return false;
    }
    
    if ($('#admin_pass').val().length > 0) {
        if ($('#admin_pass_re').val().length < 4) {
            alert("비밀번호를 4글자 이상 입력하십시오.");
            $('#admin_pass_re').focus();
            return false;
        }
    }
	
	alert('아이디 입력이 완료되었습니다.')
		
	})
/*$(document).ready(function() {
    var ctx = $('#myChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
            datasets: [{
                label: '# of Votes',
                data: [12, 19, 3, 5, 2, 3],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
});*/
	
	














