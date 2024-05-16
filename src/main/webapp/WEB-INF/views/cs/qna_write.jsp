<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<title>WINENARA 1987 ㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다!</title>
</head>
<script type="text/javascript" src="/WineVillage/src/main/resources/static/js/front_ui9442.js"></script>
<body>
<%@ include file="../common/common.jsp"%>
<section id="contents" style="margin-top: 188px;"><div class="lnb cs_lnb lnb_wrap">
    <div class="pc_hidden">
        <a href="javascript:history.go(-1);" class="prev">이전</a>
        <div class="select_brand js_select" id="select_brand">
            <button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>1:1문의</span></button>
            <ul class="mb_lnb_lists">
                <li><a href="/notice_list.do">공지사항</a></li>
                <li><a href="/faq_list.do">자주하는 질문</a></li>
                <li class="on"><a href="/qna_write.do">1:1문의</a></li>
                <li><a href="/shop/company/member_benefit">회원혜택</a></li>
            </ul>
        </div>
    </div>
    <div class="pc_lnb mb_hidden">
        <div class="page_tit">
            <h2><span>1:1문의</span></h2>
        </div>
        <ul class="menu tab3">
            <li><a href="/notice_list.do"><span>공지사항</span></a></li>
            <li><a href="/faq_list.do"><span>자주하는 질문</span></a></li>
                	<li class="on"><a href="/qna_write.do"><span>1:1문의</span></a></li>
        </ul>
    </div>
</div>
<div class="wrap">
	<div class="content cs qna_lists_page">
        <div class="qna_lists_wrap" style="position:relative;">
        	<%
        		Boolean loggedIn = (Boolean) request.getAttribute("loggedIn");
        		String qnaTopMsg;
        		
        		if (!loggedIn) {
        	        qnaTopMsg = "로그인하지 않으신 분은 이용하실 수 없습니다.";
        	    } else {
        	        qnaTopMsg = "와인나라 이용 중에 생긴<br>불편한 점이나 문의사항을 보내주세요.";
        	    }
			%>
        	<div class="top">
       			<span><%= qnaTopMsg %></span>
       		</div>
            <!-- <div class="top">
                <span>와인나라 이용 중에 생긴<br>불편한 점이나 문의사항을 보내주세요.</span>
            </div> -->
            <c:if test="${!loggedIn}">
	            <div class="disable" style="position:absolute;
	            top:60px;bottom:0;left:0;right:0;background:rgba(0,0,0,0.3);">
	            </div>
            </c:if>
            <div class="form_area">
            <form action="qna_write.do" method="post" id="postFrm" accept-charset="utf-8">
				<input type="hidden" name="witplus_csrf_token" value="ea2f7313ebf1263a2796ee85bb21ab14">
				<input type="hidden" name="memberNo" value="${ user.memberNo }">
				<input type="hidden" name="memberId" value="${ user.memberId }">
                <ul>
                    <li>
                        <div class="l_tit">
                            <label for="qna_writer">이름</label>
                        </div>
                        <div class="form_box">
                            <input type="text" id="qna_writer" name="qna_writer" value="${ user.name }">
                        </div>
                    </li>
                    <li>
                        <div class="l_tit">
                            <label for="qna_phonenumber">연락처</label>
                        </div>
                        <div class="form_box">
                            <input type="text" id="qna_phonenumber" name="qna_phonenumber" placeholder=" '-'제외한 숫자만 입력해주세요." maxlength="11" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value="${ user.phonenumber }">
                            <!-- <p class="input_info_txt">안내메시지 텍스트</p> -->
                        </div>
                    </li>
                    <li>
					<div class="l_tit">
						<label for="qna_category">구분</label>
					</div>
					<div class="form_box">
						<select name="qna_category" id="qna_category">
							<option value="상품관련">상품관련</option>
							<option value="주문/결제관련">주문/결제관련</option>
							<option value="반품/환불관련">반품/환불관련</option>
							<option value="건강정보관련">건강정보관련</option>
							<option value="기타관련">기타관련</option>
							<option value="상품문의">상품문의</option>
							<option value="회원/정보관리">회원/정보관리</option>
							<option value="배송">배송</option>
							<option value="영수증/증빙서류">영수증/증빙서류</option>
						</select>
					</div>
                    </li>
                    <li>
                        <div class="l_tit">
                            <label for="qna_title">제목</label>
                        </div>
                        <div class="form_box">
                            <input type="text" id="qna_title" name="qna_title" placeholder="제목을 입력해주세요.">
                            <!-- <p class="input_info_txt">안내메시지 텍스트</p> -->
                        </div>
                    </li>
                    <li>
                        <div class="l_tit">
                            <label for="qna_content">문의내용</label>
                        </div>
                        <div class="form_box">
                            <textarea type="text" id="qna_content" name="qna_content" placeholder="문의내용을 입력해주세요."></textarea>
                            <p class="input_info_txt">안내메시지 텍스트</p>
                        </div>
                    </li>
                </ul>
            </form>
            <button type="button" class="btn_txt btn_black" onclick="form_submit();"><span>문의하기</span></button>
            </div>
        </div><!--//qna_lists_wrap-->
    </div><!--//cs qna_lists_page-->
</div>

<script>
function form_submit(){
	if( !$('#qna_writer').val() ){
	    alert('이름을 입력해주세요.');
	    $('#qna_writer').focus();
	    return false;
	}
	if( !$('#qna_phonenumber').val() ){
	    alert('연락처를 입력해주세요.');
	    $('#qna_phonenumber').focus();
	    return false;
	}
	if( !$('#qna_category').val() ){
	    alert('구분을 선택해주세요.');
	    $('#code_gb').focus();
	    return false;
	}
	if( !$('#qna_title').val().trim() ){
	    alert('제목을 입력해주세요.');
	    $('#title').focus();
	    return false;
	}
	if( !$('#qna_content').val() ){
	    alert('내용을 입력해주세요.');
	    $('#content').focus();
	    return false;
	} else{
	    var str = $('#qna_content').val();
	    var qna_phonenumber = document.getElementById('qna_phonenumber');
	    /* str = str.replace(/(?:\r\n|\r|\n)/g, '<br />');
	    qna_phonenumber.value = qna_phonenumber.value.replace(/\D/g, ''); */
	    $('#qna_content').val(str);
	}
	//Csrf.Set(_CSRF_NAME_); // 토큰 초기화
	var loggedIn = ${loggedIn};
	if (loggedIn) {
		$('#postFrm').submit();		
	}
	else {
		alert("로그인 이용자만 1:1 문의가 가능합니다.");
	}
}
</script>
</section>
</body>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</html>