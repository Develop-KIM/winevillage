<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WINE VILLAGE | 회원가입</title>
</head>
<style>
#enterBtn {
	margin-top: 10px;
}
</style>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<body>
	<%@ include file="../../common/common.jsp"%>
	<section id="contents">
		<div class="lnb member_lnb lnb_wrap step_wrap">
			<div class="pc_hidden">
				<a href="javascript:history.go(-1);" class="prev">이전</a>
				<div class="select_brand js_select" id="select_brand">
					<button type="button" class="my_value js_selectBtn"
						onclick="$(this).toggleClass('on')">
						<span>회원가입</span>
					</button>
					<ul class="mb_lnb_lists">
						<li><a href="law_agreement.html">약관동의 및 소셜인증</a></li>
					</ul>
				</div>
			</div>
			<div class="pc_lnb mb_hidden">
				<div class="page_tit">
					<h2>
						<span>회원가입</span>
					</h2>
					<ul>
						<li class="on">1. 회원정보 입력</li>
						<li class="">2. 회원가입 완료</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="wrap">
			<form action="join_form.do" name='join_form' id='join_form'
				method="post" accept-charset="utf-8">
				<input type="hidden" name="witplus_csrf_token"
					value="6d4b67b6bb470edeee07d5a9e38ef1d6" />
				<div class="content member join join_form_page">
					<div class="inner">
						<div class="form_area">
							<ul>
								<li>
									<div class="l_tit">
										<label for="user_nm">이름*</label>
									</div>
									<div class="form_box">
										<input type="text" id="name" name="name"
											placeholder="이름을 입력해주세요." value="">
										<p class="input_info_txt"></p>
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="user_birth">생년월일*</label>
									</div>
									<div class="form_box">
										<input type="text" id="birthday" name="birthday"
											placeholder="생년월일을 입력해주세요. (ex yyyymmdd)" maxlength="8"
											oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');"
											value="">
									</div>
								</li>
								<li class="tel_li">
									<div class="l_tit">
										<label for="phone">휴대폰번호*</label>
									</div>
									<div class="form_box">
										<div class="tel_box">
											<input type="text" id="phoneNumber" name="phoneNumber"
												placeholder="휴대폰번호를 입력해주세요.">
											<button type="button" id="sendBtn"
												class="btn_txt btn_bgray btn_m_view"
												onclick="sendPhoneNumber();">휴대폰 인증</button>
											<input type="text" id="certification"
												placeholder="인증 번호를 입력해주세요." />
											<button type="button" onclick="verifyCode();" id="enterBtn"
												class="btn_txt btn_bgray btn_m_view">확인</button>
											<p class="input_info_txt"></p>
										</div>
									</div>
								</li>
								<li class="tel_li">
									<div class="tel_box">
										<div class="l_tit">
											<label for="user_id">아이디*</label>
											<p class="input_info_txt" id="id_length_chk">5~20자의 영문 혹은
												영문+숫자 조합</p>
										</div>
										<div class="form_box">
											<input type="text" id="memberId" name="memberId"
												placeholder="5~20자의 영문 혹은 영문+숫자 조합"
												style="width: calc(100% - 165px);" value="">
											<p class="input_info_txt" id="id_chk" style="display: none;">입력해
												주신 아이디는 사용중인 아이디입니다.</p>
											<button onclick="checkUserIDExist();return false;"
												title="중복확인" class="btn_txt btn_bgray btn_m_view"
												type="button">중복확인</button>
										</div>
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="user_pass_01">비밀번호*</label>
										<p class="input_info_txt" id="pw_chk">영문+숫자+특수문자 조합 8자
											이상(공백제외)</p>
									</div>
									<div class="form_box">
										<input type="password" id="password" name="password"
											placeholder="영문 + 숫자 + 특수문자 조합 8자 이상" autocomplete="off"
											value="">
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="user_pass_02">비밀번호 확인*</label>
									</div>
									<div class="form_box">
										<input type="password" id="password2" name="password2"
											placeholder="비밀번호를 한번 더 입력해주세요." autocomplete="off">
										<p class="input_info_txt"></p>
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="user_email">이메일*</label>
									</div>
									<div class="form_box">
										<input type="text" id="email" name="email"
											placeholder="이메일을 입력해주세요." value="">
										<p class="input_info_txt"></p>
									</div>
								</li>
								<li class="add_li">
									<div class="l_tit">
										<label for="postcode">주소</label>
									</div>
									<div class="form_box">
										<div class="add_box_01">
											<input type="text" id="postcode" name="postcode"
												placeholder="주소를 입력해주세요." readonly>
											<button type="button" class="btn_txt btn_bgray"
												id="addr_open">우편번호찾기</button>
										</div>
										<div class="add_box_02">
											<input type="text" id="address1" name="address1">
											<input type="text" id="address2" name="address2">
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt btn_black"
								onclick="submit_join(); return false;">회원가입</button>
						</div>
					</div>
				</div>
			</form>
		</div>
		<form
			action="https://www.winenara.com/shop/member/join/KCP/kcpcert_proc"
			name='form_auth' id='form_auth'>
			<input type="hidden" name="site_cd" id="site_cd" value="AI3K5">
			<input type="hidden" name="ordr_idxx" id="ordr_idxx"> <input
				type="hidden" name="req_tx" id="req_tx" value="cert"> <input
				type="hidden" name="cert_method" id="cert_method" value="01">
			<input type="hidden" name="cert_otp_use" id="cert_otp_use" value="Y">
			<input type="hidden" name="action" id="action"
				value="https://cert.kcp.co.kr/kcp_cert/cert_view.jsp"> <input
				type="hidden" name="Ret_URL" id="Ret_URL"
				value="kcpcert_response_ajax.html"> <input type="hidden"
				name="cert_enc_use_ext" id="cert_enc_use_ext" value="Y"> <input
				type="hidden" name="kcp_birth" id="kcp_birth"> <input
				type="hidden" name="veri_up_hash" id="veri_up_hash"> <input
				type="hidden" name="param_opt_1" id="param_opt_1"
				value="p4ct82411fecoli87cm8qthpp0hg4fq0"> <input
				type="hidden" name="param_opt_2" id="param_opt_2" value="">
			<input type="hidden" name="param_opt_3" id="param_opt_3"
				value="join_form_page">
		</form>

		<div id="layer"
			style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
			<img
				src="../../../../t1.daumcdn.net/postcode/resource/images/close.png"
				id="btnCloseLayer"
				style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
				onclick="closeDaumPostcode()" alt="닫기 버튼">
		</div>

		<script>
    
    /* function chk_wine_member(){
        var name = $('#user_nm').val();
        var phone = $('#phone').val();
        if(!name || !phone){
            alert('성인인증을 진행해주세요.');
            $('#auth_btn').focus();
            return false;
        }else{
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type:'POST',
                url :'/shop/auth/chk_wine_member',
                data : {'name':name, 'phone':phone},
                dataType:'json',
                success:function(res){
                    if(res.state == 'Y'){
                        wine_mem_chk = true;
                        console.log(res.data);
                        if(res.data.length !== 0){
                            var input="";
                            var i = 1;
                            merge_mem_chk = false;
                            $.each(res.data, function(index, entry){
                                input += "<li>"
                                        + "<div class='checkbox type2'>"
                                        + "<input type='radio' id='m_view0"+i+"' name='mem_num' value='"+entry.q_cst+"' data-shop='"+entry.q_shop+"'>"
                                        + "<label for='m_view0"+i+"'>"
                                        + "<span class='tit'>"
                                        + "<em>"+entry.q_cst_knm+"</em>"
                                        + entry.q_tel_1
                                        + "</span>"
                                        + "<span>"
                                        + "회원번호 : "+entry.q_cst+"<br>"
                                        + "가입매장 : "+entry.q_shop_nm
                                        + "</span>"
                                        + "</label>"
                                        + "</div>"
                                        + "</li>"
                                i++;
                            });
                            $('#wine_mem_list').empty();
                            $('#wine_mem_list').append(input);
                            commonUI.layer.open('m_view_layer.html');
                        }else{
                            alert(res.msg);
                        }
                        
                    }else{
                        alert('통합회원 조회 중 오류가 발생했습니다.');
                    }
                },error:function(res){
                    alert('통합회원 조회 중 오류가 발생했습니다.');
                    console.log(res);
                }
            })
        }

    } */
    var wine_mem_chk = false;
    var merge_mem_chk = true;
    function auth_type_check(){
        var auth_form = document.form_auth;
        init_orderid();
        
        $('#auth_btn').hide();

        if( auth_form.ordr_idxx.value == "" ){
            alert( "다시 시도해주세요." );
            return false;
        }else{
            if( ( navigator.userAgent.indexOf("Android") > - 1 || navigator.userAgent.indexOf("iPhone") > - 1 ) == false ){ // 스마트폰이 아닌경우
            
                var return_gubun;
                var width  = 410;
                var height = 500;

                var leftpos = screen.width  / 2 - ( width  / 2 );
                var toppos  = screen.height / 2 - ( height / 2 );

                var winopts  = "width=" + width   + ", height=" + height + ", toolbar=no,status=no,statusbar=no,menubar=no,scrollbars=no,resizable=no";
                var position = ",left=" + leftpos + ", top="    + toppos;
                var AUTH_POP = window.open('kcpcert_proc.html','auth_popup', winopts + position);
                auth_form.target = "auth_popup";
            }else{
                auth_form.target = "kcp_cert";
                document.getElementById( "kcp_cert"  ).style.display = "";
            }
            auth_form.kcp_birth.value = $('#user_birth').val();
            auth_form.method = "post";
            
            auth_form.action = "/shop/member/join/kcpcert_proc_ajax";
            auth_form.submit();
            return true;
        }
    }

    // 앱에서 webView는 opener 를 인식하지 못해서, 모바일 별도처리
    function Mobile(){
	    return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
    }

    var adult_chk = false;

    function adult_auth(){
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        var site_cd = $('#site_cd').val();
        var ordr_idxx = $('#ordr_idxx').val();
        $('#up_hash').val(site_cd + ordr_idxx + "000000");
        if(Mobile()){
            var auth_form = document.form_auth;
            auth_form.veri_up_hash.value = site_cd + ordr_idxx + "000000";
            adult_chk = true;
        }
        $('#form_auth').submit();
    }

    
    
    function auth_data( frm ){
        
        var auth_form     = document.form_auth;

        if( frm.up_hash.value != auth_form.veri_up_hash.value ){
            alert("비정상적인 접근입니다."); 
            console.log('up_hash 변조 위험');
        }    

        const today = new Date(); 
        const birthDate = new Date(parseInt(frm.r_birth.value.substring(0,4)), parseInt(frm.r_birth.value.substring(4,6))-1, parseInt(frm.r_birth.value.substring(6,8)));
        let age = today.getFullYear() - birthDate.getFullYear();
        const m = today.getMonth() - birthDate.getMonth();
        if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
            age--;
        }

        if(age < 19){
            alert('만 19세 이상만 가입이 가능합니다.');
            location.href = "../../main.html";
        }

        $('#phoneNumber').val(frm.r_phone.value);
        $('#birthday').val(frm.r_birth.value);
        $('#name').val(frm.r_user_name.value);
        adult_chk = true;
        $('#auth_div').hide();
        $('#kcp_cert').hide();
    }

    function init_orderid(){
        var today = new Date();
        var year  = today.getFullYear();
        var month = today.getMonth()+ 1;
        var date  = today.getDate();
        var time  = today.getTime();

        if(parseInt(month) < 10){
            month = "0" + month;
        }

        var vOrderID = year + "" + month + "" + date + "" + time;
        document.form_auth.ordr_idxx.value = vOrderID;
    }

    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        element_layer.style.display = 'none';
    }

    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 400; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }

    function input_reset(input, append){ 
        var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;
        $(input).closest('.form_box').removeClass('error success');
        $(input).closest(appendTo).find('p').remove();
    }

    function input_success(input, msg, appendTo){
		var msg = typeof msg == 'undefined' ? '' : msg;
		var msg = msg ? msg : '정상 입력입니다.';
		var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;

		input_reset(input);

		$(input).closest('.form_box').addClass('success');
		$(input).closest(appendTo).append('<p class="input_info_txt">' + msg + '</p>');
	}

	function input_error(input, msg, appendTo){
		var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;

		input_reset(input);

		$(input).closest('.form_box').addClass('error');
		$(input).closest(appendTo).append('<p class="input_info_txt">' + msg + '</p>');
	}

    function check_reset(id){
        $(id).css({'color':'#999'});
        $(id).removeClass('error success');
    }

    function check_success(id){
        check_reset(id);
        $(id).css({'color':'green'});
        $(id).addClass('success');
    }

    function check_error(id){
        check_reset(id);
        $(id).css({'color':'red'});
        $(id).addClass('error');
        $(id).focus();
    }

    var form_check = {
        user_nm : function(input){
            if(!$(input).val()){
                input_error(input, '이름을 입력해주세요.');
                return false;
            }else{
                if(/^[가-힣]+$/.test($(input).val())){
                    if($(input).val().length < 2 || $(input).val().length > 8){
                        input_error(input, '정확한 이름을 입력해주세요.');
                        return false;
                    }
                }else if(/^[a-zA-Z ]+$/.test($(input).val())){
                    if($(input).val().length < 8 ){
                        input_error(input, '정확한 이름을 입력해주세요.');
                        return false;
                    }
                }else{
                    input_error(input, '정확한 이름을 입력해주세요.');
                    return false;
                }
                
                input_success(input);
                return true;
            }
        },
        user_id : function(input, usable_check_reset){
            var usable_check_reset = typeof usable_check_reset == 'undefined' ? true : usable_check_reset;
            if(!$(input).val()){
                check_error('#id_length_chk');
                return false;
            }else{
                if(!/^[a-zA-Z0-9]+$/.test($(input).val())){
                    check_error('#id_length_chk');
					return false;
				}else if( $(input).val().length < 5 || $(input).val().length > 20 ){
                    check_error('#id_length_chk');
                    return false;
                }else{
                    check_success('#id_length_chk');
                }
            }
            if(usable_check_reset){
				form_check.user_id_usable = 'W'
			}
            if(form_check.user_id_usable != 'Y'){
                // input_reset(input);
                if(form_check.user_id_usable_timeout){
					clearTimeout(form_check.user_id_usable_timeout);
				}
                form_check.user_id_usable_timeout = setTimeout(function(){
                    Csrf.Set(_CSRF_NAME_);
					$.ajax({
						       url: 'id_check_ajax',
						       type: 'POST',
						       data: {'id': $(input).val()},
						       dataType: 'json',
						       error: function(){
							    //    input_error(input, '아이디 중복 검사 중 오류가 발생했습니다.');
                                check_error('#id_chk');
						       },
						       success: function(result){
							       if(result.usable){
								       form_check.user_id_usable = 'Y';
								    //    input_success(input);
                                        check_reset('#id_chk');
                                        $('#id_chk').css({'display':'none'});
							       }else{
								       form_check.user_id_usable = 'N';
								    //    input_error(input, '사용할 수 없는 아이디입니다.');
                                        check_error('#id_chk');
                                        $('#id_chk').css({'display':'block'});
							       }
						       }
					       });
				}, 1000);
            }
            return true;
        },
        user_id_usable: 'N',
		user_id_usable_timeout: '',
        passwd:function(input){
            if($(input).val()==""){
                check_error('#pw_chk');
				return false;
            }else{
                if(/(.)\1{3,}/.test($(input).val())){
                    input_error(input, '동일문자 3자 이상 연속 입력할 수 없습니다.');
                    return false;
                }else{
                    if(!/^.{8,}$/.test($(input).val())){
                        // input_error(input, '8자 이상 20자 이하로 입력되어야 합니다.');
                        check_error('#pw_chk');
                        return false;
                    }else{
                        if(!/[a-zA-Z]+/.test($(input).val())){
                            // input_error(input, '영문이 반드시 포함되어야 합니다.');
                            check_error('#pw_chk');
                            return false;
                        }else{
                            if(!/[0-9]+/.test($(input).val())){
                                // input_error(input, '숫자가 반드시 포함되어야 합니다.');
                                check_error('#pw_chk');
                                return false;
                            }else{
                                if(!/[^ㄱ-ㅎㅏ-ㅣ가-힣0-9a-zA-Z]+/.test($(input).val())){
                                    // input_error(input, '특수문자가 반드시 사용되어야 합니다.');
                                    check_error('#pw_chk');
                                    return false;
                                }
                            }
                        }
                    }
                }
            }
            check_success('#pw_chk');
			return true;
        },
        passwd_repeat: function(input){
			if($(input).val() == ''){
				input_error(input, '비밀번호 확인을 입력해주세요.');
				return false;
			}else{
				if($(input).val() != $(join_form.password).val()){
					input_error(input, '입력하신 비밀번호가 일치하지 않습니다.');
					return false;
				}
            }
			input_success(input);
			return true;
		},
        birth_chk:function(input){
            if($(input).val()==''){
                input_error(input, '본인 인증 후 자동으로 기입됩니다.');
                return false;
            }else{
                var birth = $(input).val();
                var year = birth.substr(0,2);
                var month = birth.substr(4,2);
                var day = birth.substr(6,2);
                if(year == '19' || year == '20'){
                    if(month > 0 && month < 13 && day > 0 && day < 32){
                        input_success(input);
			            return true;
                    }else{
                        input_error(input, '올바른 생년월일을 입력해주세요.');
                        return false;
                    }
                }else{
                    input_error(input, '올바른 년도를 입력해주세요.');
                    return false;
                }
            }
        },
        email: function(input){
			if($(input).val() == ''){
				input_error(input, '이메일을 입력해주세요.');
				return false;
			}else
				if(!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($(input).val())){
					input_error(input, '이메일 주소를 다시 확인해주세요.');
					return false;
				}

			input_success(input);
			return true;
		},
        addr_open:function(button){
            new daum.Postcode({
                oncomplete: function(data) {
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    $('#zip_code').val(data.zonecode);
                    $('#addr_first').val(data.roadAddress);

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                    
                    } else {
                        // document.getElementById("sample2_extraAddress").value = '';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('postcode').value = data.zonecode;
                    document.getElementById("address1").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("address2").focus();

                    // iframe을 넣은 element를 안보이게 한다.
                    // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                    element_layer.style.display = 'none';
                },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
            }).embed(element_layer);

            // iframe을 넣은 element를 보이게 한다.
            element_layer.style.display = 'block';
            // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
            initLayerPosition();
        }
    }

    $(join_form.name).on('keyup', function(){
		form_check.user_nm(this);
	});

    $(join_form.memberId).on('keyup', function(){
		form_check.user_id_usable = 'W';
		form_check.user_id(this);
	});

    $(join_form.password).on('keyup', function(){
		input_reset(join_form.user_pass_02);
		form_check.passwd(this);
	});

	$(join_form.password2).on('keyup', function(){
		form_check.passwd_repeat(this);
	});

    $(join_form.birthday).on('keyup', function(){
        form_check.birth_chk(this);
    });

    $(join_form.phoneNumber).on('keyup', function(){
        form_check.phone(this);
    });

    $(join_form.email).on('keyup', function(){
		form_check.email(this);
	});

    $('#addr_open').click(function(){
        form_check.addr_open(this);
    })


    function submit_join() {
    var form = document.getElementById("join_form");
    var formData = new FormData(form);

    var memberId = document.getElementById("memberId").value.trim();
    var birthday = document.getElementById("birthday").value.trim();
    var phoneNumber = document.getElementById("phoneNumber").value;
    var name = document.getElementById("name").value.trim();
    var password = document.getElementById("password").value.trim();
    var email = document.getElementById("email").value.trim();
    var address1 = document.getElementById("address1").value.trim();
    var address2 = document.getElementById("address2").value.trim();
    var postcode = document.getElementById("postcode").value.trim();
	
    // 빈 값 또는 유효하지 않는 값인 필드를 저장할 배열
    var invalidFields = [];

    // 각 필수 항목이 비어 있는지 확인하고, 빈 값인 경우 emptyFields 배열에 추가
    if (memberId === "") {
        invalidFields.push("이름");
    }
    if (birthday === "") {
        invalidFields.push("생년월일");
    }
    if (phoneNumber === "") {
        invalidFields.push("휴대폰 번호");
    }
    if (memberId === "" || !/^[a-zA-Z0-9_]+$/.test(memberId)) {
        invalidFields.push("아이디");
    }
    if (password === "" || password.length < 8) {
        invalidFields.push("비밀번호");
    }
    if (email === "" || !/\S+@\S+\.\S+/.test(email)) {
        invalidFields.push("이메일");
    }

    // 빈 값인 필드가 있을 경우 알림 메시지 생성
    if (invalidFields.length > 0) {
        var errorMessage = "다음 항목을 확인해주세요\n";
        errorMessage += invalidFields.join(", ");
        alert(errorMessage);
        return;
    }
    
    // AJAX 요청
    $.ajax({
        type: "POST",
        url: "/join_form",
        contentType: "application/json",
        data: JSON.stringify(Object.fromEntries(new Map(formData))),
        success: function(response) {
            if (response === "success") {
                alert("회원 가입이 완료되었습니다.");
                window.location.href = "/join_success.do";
            } else {
                alert("회원 가입에 실패했습니다. 다시 시도해주세요.");
            }
        },
        error: function() {
            alert("서버와의 통신 중 오류가 발생했습니다.");
        }
    });
    
}

    function sendPhoneNumber() {
        var phoneNumber = document.getElementById('phoneNumber').value;
        
        // AJAX를 이용하여 서버로 전화번호를 전송하고 인증번호 요청
        $.ajax({
            url: '/send_sms', // 휴대폰 인증 번호를 전송할 API 엔드포인트
            type: 'POST',
            data: { phoneNumber: phoneNumber },
            success: function(response) {
                // 성공적으로 전화번호가 전송되면 사용자에게 메시지 표시
                alert('인증번호가 전송되었습니다.');
            },
            error: function(xhr, status, error) {
                // 오류 발생 시 사용자에게 오류 메시지 표시
                alert('전화번호 전송에 실패했습니다. 다시 시도해주세요.');
            }
        });
    }

    function verifyCode() {
        var code = document.getElementById('certification').value;
        
        // AJAX를 이용하여 서버로 인증번호를 전송하여 확인
        $.ajax({
            url: '/verify_code',
            type: 'POST',
            data: { code: code },
            success: function(response) {
                // 성공적으로 인증번호가 확인되면 사용자에게 메시지 표시
                alert('인증되었습니다.');
                // 폼 요소를 비활성화
                document.getElementById('phoneNumber').readOnly = true;
                document.getElementById('certification').disabled = true;
                document.getElementById('enterBtn').disabled = true;
                document.getElementById('sendBtn').disabled = true; // 휴대폰 인증 버튼 비활성화
            },
            error: function(xhr, status, error) {
                // 오류 발생 시 사용자에게 오류 메시지 표시
                alert('인증번호 확인에 실패했습니다. 다시 시도해주세요.');
            }
        });
    }
    
    function checkUserIDExist() {
    	if (document.getElementById("user_id").value) {
    		//XHR 객체를 생성한다.
    		var xhr = new XMLHttpRequest();
    		/* XHR을 post방식으로 요청하고 MemberCheckExist.java(서블릿)으로
    		폼에서 받아온 아이디값을 전송한다. */
            xhr.open("POST", "join_form.do", true);
    		//post방식인 경우 Content-Type을 지정해야 한다고 한다.
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            
    		//콜백함수
            xhr.onreadystatechange = function() {
    			//xhr.readyState==4 : 데이터를 전부 받은 상태, xhr.status==200 : 요청성공
            	if (xhr.readyState == 4 && xhr.status == 200) {
            		//뒤에 trim() 안 붙이면 응답값의 좌우에 무조건 공백이 있는걸로 인식되서 처리 안됨
            		if (xhr.responseText.trim() == "id_exist") {
            			alert("이미 존재하는 아이디입니다.");
            			document.getElementById("user_id").focus();
            		} else if (xhr.responseText.trim() == "id_no_exist") {
            			alert("사용 가능한 아이디입니다.");
            		} else {
            			alert("아이디 검사 중 오류 발생. 다시 시도해주세요.");
            		}
            	}
            };
            //POST방식으로 "user_id"값 전송. 서블릿에도 해당 파라미터를 받아오는 구문이 있다.
            xhr.send("user_id=" + document.getElementById("user_id").value);
    	} else {
    		alert("아이디를 입력해주세요.");
    	}
    	return false;
    }
    
 	
</script>
	</section>
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>