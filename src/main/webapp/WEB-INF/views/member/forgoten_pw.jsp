<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<head>
    <title>WINENARA 1987 ㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다!</title>

</head>
<script type="text/javascript" src="/WineVillage/src/main/resources/static/js/front_ui9442.js"></script>
<body>
<%@ include file="../common/common.jsp"%>
<section id="contents" style="margin-top: 188px;"><div class="lnb event_lnb lnb_wrap">
    <div class="pc_hidden">
        <a href="javascript:history.go(-1);" class="prev">이전</a>
        <div class="select_brand js_select" id="select_brand">
            <button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>비밀번호 재발급</span></button>
            <ul class="mb_lnb_lists">
                <li><a href="/forgoten_id.do">아이디 찾기</a></li>
                <li class="on"><a href="/forgoten_pw.do">비밀번호 재발급</a></li> 
            </ul>
        </div>
    </div>
    <div class="pc_lnb mb_hidden">
        <div class="page_tit">
            <h2><span>비밀번호 재발급</span></h2>
        </div>
        <ul class="menu tab2">
            <li><a href="/forgoten_id.do"><span>아이디 찾기</span></a></li>
            <li class="on"><a href="/forgoten_pw.do"><span>비밀번호 재발급</span></a></li>
        </ul>
    </div>
</div>
<div class="wrap">    <div class="content member forgoten_pw_page">
        <div class="top_txt">
            <p>비밀번호가 생각나지 않을 경우, <br class="pc_hidden">이름과 아이디를 아래에 입력하시면<br>새로운 비밀번호를 받으실 수 있습니다.</p>
        </div>
        <div class="form_area">
            <form action="https://www.winenara.com/shop/member/forgoten/forgoten_pw_ok" name="find_form" id="find_form" method="post" accept-charset="utf-8">
<input type="hidden" name="witplus_csrf_token" value="b32dabb317949aeecbf4f8b0cf4e3930">                                                      
                <ul>
                    <li>
                        <div class="l_tit">
                            <label for="user_nm">이름</label>
                        </div>
                        <div class="form_box">
                            <input type="text" name="user_nm" id="user_nm" placeholder="가입한 이름을 입력하세요.">
                        </div>
                    </li>
                    <li>
                        <div class="l_tit">
                            <label for="user_id">아이디</label>
                        </div>
                        <div class="form_box success">
                            <input type="text" id="user_id" name="user_id" placeholder="아이디를 입력하세요.">
                        </div>
                    </li>
                </ul>
            </form>
        </div>
        <div class="btn_area">
            <button type="button" class="btn_txt btn_black" onclick="find_submit()"><span>비밀번호 재발급</span></button>
        </div>
    </div>
</div>

<script>
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

    $(find_form.user_nm).on('keyup', function(){
		form_check.user_nm(this);
	});

    var form_check = {
        user_nm : function(input){
            if(!$(input).val()){
                input_error(input, '이름을 입력해주세요.');
                return false;
            }else{
                if($(input).val().length < 2){
					input_error(input, '정확한 이름을 입력해주세요.');
					return false;
				}
			input_success(input);
			return true;
            }
        }
    }

    function find_submit(){
        var check = true;
        if(!form_check.user_nm(find_form.user_nm)){
			check = false;
		}
        if(!check){
			return false;
		}else{
            Csrf.Set(_CSRF_NAME_);
            $('#find_form').submit();
        }
    }
</script>
</section>
</body>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</html>
