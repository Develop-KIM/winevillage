<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="ko">
<head>
<body>
<%@ include file="../admin_common/admin_header.jsp"%>
<div id="wrapper">
	
<div id="snb">
			<div class="snb_header ico_config">
				<h2><i class="ionicons ion-bag"></i>상품관리</h2>
			</div>
			<dl>
				<dt class="g10 menu_toggle">상품관리</dt>
				<dd class="g10 active">
					<a href="admin_product_lists.do">
						전체 상품관리</a>
				</dd>
				<dd class="g10">
					<a href="admin_product_review.do">
						상품 리뷰관리
						<em>0</em>
					</a>
				</dd>
				<dd class="g10">
					<a href="admin_product_category.do">
						카테고리 관리
						<em>0</em>
					</a>
				</dd>
			</dl>
		</div>
		<div id="content">
		<div class="breadcrumb">
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 상품관리 <i class="ionicons ion-ios-arrow-right"></i> 신규 상품등록		</div>
	
<div class="s_wrap">
	<h1>신규 상품등록</h1>
	
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script>
jQuery(function($){
    $.datepicker.regional["ko"] = {
        closeText: "닫기",
        prevText: "이전달",
        nextText: "다음달",
        currentText: "오늘",
        monthNames: ["1월(JAN)","2월(FEB)","3월(MAR)","4월(APR)","5월(MAY)","6월(JUN)", "7월(JUL)","8월(AUG)","9월(SEP)","10월(OCT)","11월(NOV)","12월(DEC)"],
        monthNamesShort: ["1월","2월","3월","4월","5월","6월", "7월","8월","9월","10월","11월","12월"],
        dayNames: ["일","월","화","수","목","금","토"],
        dayNamesShort: ["일","월","화","수","목","금","토"],
        dayNamesMin: ["일","월","화","수","목","금","토"],
        weekHeader: "Wk",
        dateFormat: "yymmdd",
        firstDay: 0,
        isRTL: false,
        showMonthAfterYear: true,
        yearSuffix: ""
    };
	$.datepicker.setDefaults($.datepicker.regional["ko"]);
});
</script>
<script src="http://demofran.com/js/categoryform.js?ver=20240416184431"></script>

<form name="fregform" method="post" onsubmit="return fregform_submit(this)" enctype="MULTIPART/FORM-DATA">
<input type="hidden" name="w" value="">
<input type="hidden" name="gs_id" value="">
<input type="hidden" name="q1" value="">
<input type="hidden" name="page" value="">
<input type="hidden" name="bak" value="">
<input type="hidden" name="ca_id" value="">
<input type="hidden" name="ca_id2" value="">
<input type="hidden" name="ca_id3" value="">

<section id="anc_sitfrm_cate">
<h2>카테고리</h2>
<div class="local_desc02 local_desc">
	<p>선택된 카테고리에 <span class="fc_084">최상위 카테고리는 대표 카테고리로 자동설정</span>되며, 최소 1개의 카테고리는 등록하셔야 합니다.</p>
</div>
<div class="tbl_frm02">
	<table>
	<colgroup>
		<col class="w180">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">스마트 서치 선택 : 생산지역</th>
		<div class="sub_frm01">
			<td>
				<label><input type="checkbox" name="" value="Y"> 랑그독루시용</label>
				<label><input type="checkbox" name="" value="Y"> 론</label>
				<label><input type="checkbox" name="" value="Y"> 보르도</label>
				<label><input type="checkbox" name="" value="Y"> 루아르</label>
				<label><input type="checkbox" name="" value="Y"> 보졸레</label>
				<label><input type="checkbox" name="" value="Y"> 부르고뉴</label>
				<label><input type="checkbox" name="" value="Y"> 샴페인</label>
				<label><input type="checkbox" name="" value="Y"> 알자스</label>
				<label><input type="checkbox" name="" value="Y"> 프로방스</label>
				<label><input type="checkbox" name="" value="Y"> 라치오</label>
				<br>
				<label><input type="checkbox" name="" value="Y"> 롬바르디아</label>
				<label><input type="checkbox" name="" value="Y"> 리구리아</label>
				<label><input type="checkbox" name="" value="Y"> 베네토</label>
				<label><input type="checkbox" name="" value="Y"> 시실리</label>
				<label><input type="checkbox" name="" value="Y"> 아브루쪼</label>
				<label><input type="checkbox" name="" value="Y"> 에밀리아</label>
				<label><input type="checkbox" name="" value="Y"> 움브리아</label>
				<label><input type="checkbox" name="" value="Y"> 캄파니아</label>
				<label><input type="checkbox" name="" value="Y"> 토스카나</label>
				<label><input type="checkbox" name="" value="Y"> 풀리아</label>
				<br>
				<label><input type="checkbox" name="" value="Y"> 프리울리</label>
				<label><input type="checkbox" name="" value="Y"> 피에몬테</label>
				<label><input type="checkbox" name="" value="Y"> 갈리시아</label>
				<label><input type="checkbox" name="" value="Y"> 까딸루냐</label>
				<label><input type="checkbox" name="" value="Y"> 나바라</label>
				<label><input type="checkbox" name="" value="Y"> 리오하</label>
				<label><input type="checkbox" name="" value="Y"> 카스틸라 라만차</label>
				<label><input type="checkbox" name="" value="Y"> 카스틸라 이 레온</label>
				<label><input type="checkbox" name="" value="Y"> 캘리포니아</label>
				<label><input type="checkbox" name="" value="Y"> 오레곤</label>
				<label><input type="checkbox" name="" value="Y"> 워싱턴</label>
				<label><input type="checkbox" name="" value="Y"> 기타</label>
			</td>
		</div>
	</tr>
	<tr>
		<th scope="row">스마트 서치 선택 : 포도품종</th>
		<div class="sub_frm01">
			<td>
				<label><input type="checkbox" name="" value="Y"> 카베르네 소비뇽</label>
				<label><input type="checkbox" name="" value="Y"> 쉬라즈</label>
				<label><input type="checkbox" name="" value="Y"> 메를로</label>
				<label><input type="checkbox" name="" value="Y"> 카베르네 프랑</label>
				<label><input type="checkbox" name="" value="Y"> 템프라니요</label>
				<label><input type="checkbox" name="" value="Y"> 피노 누아</label>
				<label><input type="checkbox" name="" value="Y"> 말벡</label>
				<label><input type="checkbox" name="" value="Y"> 진판델</label>
				<label><input type="checkbox" name="" value="Y"> 산지오베제</label>
				<label><input type="checkbox" name="" value="Y"> 가메</label>
				<br>
				<label><input type="checkbox" name="" value="Y"> 네비올로</label>
				<label><input type="checkbox" name="" value="Y"> 카르메네르</label>
				<label><input type="checkbox" name="" value="Y"> 그르나슈</label>
				<label><input type="checkbox" name="" value="Y"> 몬테풀치아노</label>
				<label><input type="checkbox" name="" value="Y"> 바르베라</label>
				<label><input type="checkbox" name="" value="Y"> 샤르도네</label>
				<label><input type="checkbox" name="" value="Y"> 세미용</label>
				<label><input type="checkbox" name="" value="Y"> 소비용 블랑</label>
				<label><input type="checkbox" name="" value="Y"> 리슬링</label>
				<label><input type="checkbox" name="" value="Y"> 슈냉 블랑</label>
				<br>
				<label><input type="checkbox" name="" value="Y"> 모스카토</label>
				<label><input type="checkbox" name="" value="Y"> 피노그리</label>
				<label><input type="checkbox" name="" value="Y"> 비오니에</label>
				<label><input type="checkbox" name="" value="Y"> 게뷔르츠트라미너</label>
				<label><input type="checkbox" name="" value="Y"> 그뤼너 펠트리너</label>
				<label><input type="checkbox" name="" value="Y"> 베르데호</label>
				<label><input type="checkbox" name="" value="Y"> 알리고떼</label>
				<label><input type="checkbox" name="" value="Y"> 기타</label>
			</td>
		</div>
	</tr>
	<tr>
		<th scope="row">카테고리 선택</th>
		<td>
			<div class="sub_frm01">
				<table>
				<tr>
					<td class="w20p bg1">
						<select id="sel_ca1" name="sel_ca1" size="10" class="multiple-select">
							<option value="">=카테고리선택=</option>
							<option value="001">와인</option>
							<option value="002">액세서리</option>
						</select>
					</td>
					<td class="w20p bg1">
						<select id="sel_ca2" name="sel_ca2" size="10" class="multiple-select">
							<option value="">=카테고리선택=</option>
							<option value="001">레드</option>
							<option value="002">화이트</option>
							<option value="003">로제</option>
							<option value="004">스파클링</option>
							<option value="005">주정강화</option>
						</select>
					</td>
					<td class="w20p bg1">
						<select id="sel_ca3" name="sel_ca3" size="10" class="multiple-select">
							<option value="">=카테고리선택=</option>
							<option value="001">프랑스</option>
							<option value="002">이탈리아</option>
							<option value="003">스페인</option>
							<option value="004">독일</option>
							<option value="005">미국</option>
							<option value="006">칠레</option>
							<option value="007">아르헨티나</option>
							<option value="008">호주</option>
					</td>
				</tr>
				</table>
			</div>
			<div class="btn_confirm02">
				<button type="button" class="btn_lsmall blue" onclick="category_add();">카테고리 추가</button>
			</div>
			<script>
			$(function() {
				$("#sel_ca1").multi_select_box("#sel_ca",5,tb_admin_url+"/ajax.category_select_json.php","=카테고리선택=");
				$("#sel_ca2").multi_select_box("#sel_ca",5,tb_admin_url+"/ajax.category_select_json.php","=카테고리선택=");
				$("#sel_ca3").multi_select_box("#sel_ca",5,tb_admin_url+"/ajax.category_select_json.php","=카테고리선택=");
				$("#sel_ca4").multi_select_box("#sel_ca",5,tb_admin_url+"/ajax.category_select_json.php","=카테고리선택=");
				$("#sel_ca5").multi_select_box("#sel_ca",5,"","=카테고리선택=");
			});
			</script>
		</td>
	</tr>
	<tr>
		<th scope="row">선택된 카테고리<br><span class="fc_red">(최대 3개까지만 등록)</span></th>
		<td>
			<select name="sel_ca_id" id="sel_ca_id" size="5" class="multiple-select">
						</select>
			<div class="btn_confirm02">
				<button type="button" class="btn_lsmall bx-white" onclick="category_move('sel_ca_id', 'prev');">▲ 위로</button>
				<button type="button" class="btn_lsmall bx-white" onclick="category_move('sel_ca_id', 'next');">▼ 아래로</button>
				<button type="button" class="btn_lsmall frm_option_del red">카테고리 삭제</button>
			</div>
		</td>
	</tr>
	</tbody>
	</table>
</div>
</section>

<section id="anc_sitfrm_ini">
<h2>기본정보</h2>
<div class="tbl_frm02">
	<table>
	<colgroup>
		<col class="w180">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">상품코드</th>
		<td>
			<input type="text" name="gcode" value="0000000011" required itemname="상품코드" class="required frm_input">
					</td>
	</tr>
	<tr>
		<th scope="row">상품명</th>
		<td><input type="text" name="gname" value="" required itemname="상품명" class="required frm_input" size="80"></td>
	</tr>
	<tr>
		<th scope="row">영문명</th>
		<td><input type="text" name="gname" value="" required itemname="상품명" class="required frm_input" size="80"></td>
	</tr>
	<tr>
		<th scope="row">짧은설명</th>
		<td><input type="text" name="explan" value="" class="frm_input" size="80"></td>
	</tr>
	<tr>
		<th scope="row">검색키워드</th>
		<td>
			<input type="text" name="keywords" value="" class="frm_input wfull">
			<span class="frm_info fc_125">단어와 단어 사이는 콤마 ( , ) 로 구분하여 여러개를 입력할 수 있습니다. 예시) 빨강, 노랑, 파랑</span>		</td>
	</tr>
	<tr>
		<th scope="row">판매여부</th>
		<td class="td_label">
			<label><input type="radio" name="isopen" value="1" checked="checked"> 진열</label>
			<label><input type="radio" name="isopen" value="2"> 품절</label>
			<label><input type="radio" name="isopen" value="3"> 단종</label>
			<label><input type="radio" name="isopen" value="4"> 중지</label>
		</td>
	</tr>
	<tr>
		<th scope="row">이미지 등록방식</th>
		<td class="td_label">
			<input type="radio" name="simg_type" id="simg_type_1" value="0" checked="checked" onclick="chk_simg_type(0);">
			<label for="simg_type_1">직접 업로드</label>
			<input type="radio" name="simg_type" id="simg_type_2" value="1" onclick="chk_simg_type(1);">
			<label for="simg_type_2">URL 입력</label>
		</td>
	</tr>
		<tr class="item_img_fld">
		<th scope="row">이미지1 <span class="fc_197">(400 * 400)</span> <strong class="fc_red">[필수]</strong></th>
		<td>
			<div class="item_file_fld">
				<input type="file" name="simg1">
							</div>
			<div class="item_url_fld">
				<input type="text" name="simg1" value="" class="frm_input" size="80" placeholder="http://">
			</div>
		</td>
	</tr>
		<tr class="item_img_fld">
		<th scope="row">이미지2 <span class="fc_197">(400 * 400)</span> <strong class="fc_red">[필수]!</strong></th>
		<td>
			<div class="item_file_fld">
				<input type="file" name="simg2">
							</div>
			<div class="item_url_fld">
				<input type="text" name="simg2" value="" class="frm_input" size="80" placeholder="http://">
			</div>
		</td>
	</tr>
	<tr>
		<th scope="row">상세설명</th>
		<td>
			<span class="sound_only">웹에디터 시작</span>
<script src="http://demofran.com/plugin/editor/smarteditor2/js/HuskyEZCreator.js"></script>
<script>var tw_editor_url = "http://demofran.com/plugin/editor/smarteditor2", oEditors = [];</script>
<script src="http://demofran.com/plugin/editor/smarteditor2/config.js"></script>
<textarea id="memo" name="memo" class="smarteditor2" maxlength="65536" style="width:100%"></textarea>
<span class="sound_only">웹 에디터 끝</span>		</td>
	</tr>
	</tbody>
	</table>
</div>
</section>

<h2>가격 및 재고</h2>
<div class="tbl_frm02">
	<table>
	<colgroup>
		<col class="w180">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">판매가격</th>
		<td>
			<input type="text" name="normal_price" value="0" class="frm_input w80" onkeyup="addComma(this);"> 원
			<span class="fc_197 marl5">해당 상품의 기본 판매가격</span>
		</td>
	</tr>
	<tr>
		<th scope="row">할인율</th>
		<td>
			<input type="text" name="marper" class="frm_input w50"> %
			<span class="fc_197 marl5">할인비율(1% 단위로 표시)</span>
		</td>
	</tr>
	<tr>
		<th scope="row">할인가격</th>
		<td>
			<input type="text" name="goods_price" value="0" class="frm_input w80" onkeyup="addComma(this);"> 원
			<span class="fc_197 marl5">할인 적용된 가격 (할인율 없을경우 비활성화)</span>
		</td>
	</tr>
	<tr>
		<th scope="row">포인트</th>
		<td>
			<input type="text" name="gpoint" value="0" class="frm_input w80" onkeyup="addComma(this);"> P
			<span class="fc_197 marl5">고객에게 제공되는 포인트</span>
		</td>
	</tr>
	<tr>
		<th scope="row">수량</th>
		<td>
			<input type="radio" name="stock_mod" value="0" id="ids_stock_mode1" checked="checked" onclick="chk_stock(0);">
			<label for="ids_stock_mode1" class="marr10">무제한</label>
			<input type="radio" name="stock_mod" value="1" id="ids_stock_mode2" onclick="chk_stock(1);">
			<label for="ids_stock_mode2">한정</label>
			<input type="text" name="stock_qty" value="0" class="frm_input w80" onkeyup="addComma(this);"> 개,
			<b class="marl10">재고 통보수량</b> <input type="text" name="noti_qty" value="999" class="frm_input w80" onkeyup="addComma(this);"> 개
			<p class="fc_197 mart7">상품의 재고가 통보수량보다 작을 때 상품 재고관리에 표시됩니다.<br>옵션이 있는 상품은 개별 옵션의 통보수량이 적용됩니다. 설정이 무제한이면 재고관리에 표시되지 않습니다.</p>
		</td>
	</tr>
	</tbody>
	</table>
</div>
</section>





<div class="btn_confirm">
    <input type="submit" value="저장" class="btn_large" accesskey="s"></div></form>

<script>
function fregform_submit(f) {
	var multi_caid = new Array();
	var new_caid = "";

	$("select#sel_ca_id option").each(function() {
        new_caid = $(this).val();
        if(new_caid == "")
            return true;

        multi_caid.push(new_caid);
    });

    if(multi_caid.length > 0) {
		$("input[name=ca_id]").val(multi_caid[0]);
		$("input[name=ca_id2]").val(multi_caid[1]);
		$("input[name=ca_id3]").val(multi_caid[2]);
	}

	if(!f.ca_id.value) {
        alert("카테고리를 하나이상 선택하세요.");
        return false;
    }

	var sel_count = $("select#sel_ca_id option").size();
	if(sel_count > 3) {
		alert('카테고리는 최대 3개까지만 등록 가능합니다.');
		return false;
	}

	var item = new Array();
    var re_item = gs_id = "";

    $("#reg_relation input[name='re_gs_id[]']").each(function() {
        gs_id = $(this).val();
        if(gs_id == "")
            return true;

        item.push(gs_id);
    });

    if(item.length > 0)
        re_item = item.join();

    $("input[name=gs_list]").val(re_item);

	var memo_editor_data = oEditors.getById['memo'].getIR();
oEditors.getById['memo'].exec('UPDATE_CONTENTS_FIELD', []);
if(jQuery.inArray(document.getElementById('memo').value.toLowerCase().replace(/^\s*|\s*$/g, ''), ['&nbsp;','<p>&nbsp;</p>','<p><br></p>','<div><br></div>','<p></p>','<br>','']) != -1){document.getElementById('memo').value='';}

	f.action = "./goods/goods_form_update.php";
    return true;
}

// 배송비 설정
function chk_sc_type(type) {
	switch(type) {
		case "0" : // 공통설정
			$("#sc_amt").hide();
			$("#sc_minimum").hide();
			$("#sc_method").show();
			$("input[name=sc_amt]").attr('disabled', true);
			$("input[name=sc_minimum]").attr('disabled', true);
			$("select[name=sc_method]").attr('disabled', false);
			break;
		case "1" : // 무료배송
			$("#sc_amt").hide();
			$("#sc_minimum").hide();
			$("#sc_method").hide();
			$("input[name=sc_amt]").attr('disabled', true);
			$("input[name=sc_minimum]").attr('disabled', true);
			$("select[name=sc_method]").attr('disabled', true);
			break;
		case "2" : // 조건부무료배송
			$("#sc_amt").show();
			$("#sc_minimum").show();
			$("#sc_method").show();
			$("input[name=sc_amt]").attr('disabled', false);
			$("input[name=sc_minimum]").attr('disabled', false);
			$("select[name=sc_method]").attr('disabled', false);
			break;
		case "3" : // 유료배송
			$("#sc_amt").show();
			$("#sc_minimum").hide();
			$("#sc_method").show();
			$("input[name=sc_amt]").attr('disabled', false);
			$("input[name=sc_minimum]").attr('disabled', true);
			$("select[name=sc_method]").attr('disabled', false);
			break;
	}
}

// 이미지 등록방식
function chk_simg_type(type) {
	if(type == 0) { // 직접업로드
		$(".item_file_fld").show();
		$(".item_url_fld").hide();
	} else { // URL 입력
		$(".item_img_fld").show();
		$(".item_file_fld").hide();
		$(".item_url_fld").show();
	}
}

// 재고수량 체크
function chk_stock(type) {
	if(type == 0) {
		$("input[name=stock_qty]").attr('disabled', true);
		$("input[name=noti_qty]").attr('disabled', true);
	} else {
		$("input[name=stock_qty]").attr('disabled', false);
		$("input[name=noti_qty]").attr('disabled', false);
	}
}

// 수수료 적용
function chk_ppay_type(type) {
	if(type == 0) {
		$("input[name=ppay_dan]").attr('disabled', true);
		$("select[name=ppay_rate]").attr('disabled', true);
		$("#chk_ppay_auto").text("가맹점관리 > 가맹점 수수료정책 (기본설정 사용중)");
	} else {
		$("input[name=ppay_dan]").attr('disabled', false);
		$("select[name=ppay_rate]").attr('disabled', false);
		$("#chk_ppay_auto").text("수수료를 적용할 단계를 입력하세요");
	}
}

function chk_ppay_dan(no, index){
	$.post(
		tb_admin_url+"/goods/goods_form_auto.php",
		{ "no": no, "index": index },
		function(data) {
			$("#chk_ppay_auto").empty().html(data);
		}
	);
}
</script>

<script>
chk_sc_type("0");
chk_simg_type("0");
chk_stock("0");
chk_ppay_type("0");
</script>
</div>

</div>
</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

