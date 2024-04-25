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
<h2>상품설정</h2>
<div class="local_desc02 local_desc">
	<p>등록하실 상품 종류를 선택하셔야 합니다.</p>
</div>
<div class="tbl_frm02">
	<table>
	<colgroup>
		<col class="w180">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">상품 선택</th>
			<td>
				<label><input class="wine_choice" type="radio" name="option" value="Y"> 와인</label>
				<label><input class="other_choice" type="radio" name="option" value="Y"> 액세서리</label>
			</td>
	</tr>
	</tbody>
	</table>
</div>

<div class="wine_select">
<h2>메인 카테고리</h2>
<div class="local_desc02 local_desc">
	<p>선택된 카테고리에 <span class="fc_084">최상위 카테고리는 대표 카테고리로 자동설정</span>되며, 최소 1개의 카테고리는 등록하셔야 합니다.</p>
</div>
<div class="tbl_frm02">

				
	<table>
	<tbody>
	<tr>
		<th scope="row">카테고리 선택</th>
		<td>
			<div class="sub_frm01">
				<table>
				<tr>
					<td class="w20p bg1">
						<select id="sel_ca1" name="sel_ca1" size="10" class="multiple-select">
							<option value="">=와인선택=</option>
							<option value="레드">레드</option>
							<option value="화이트">화이트</option>
							<option value="로제">로제</option>
							<option value="스파클링">스파클링</option>
							<option value="주정강화">주정강화</option>
						</select>
					</td>
					<td class="w20p bg1">
						<select id="sel_ca2" name="sel_ca2" size="10" class="multiple-select">
							<option value="">=원산지선택=</option>
							<option value="프랑스">프랑스</option>
							<option value="이탈리아">이탈리아</option>
							<option value="스페인">스페인</option>
							<option value="독일">독일</option>
							<option value="미국">미국</option>
							<option value="칠레">칠레</option>
							<option value="아르헨티나">아르헨티나</option>
							<option value="호주">호주</option>
						</select>
					</td>
					<td class="w20p bg1">
						<select id="sel_ca3" name="sel_ca3" size="10" class="multiple-select">
						<option value="">=품종선택=</option>
							<option value="카베르네 소비뇽">카베르네 소비뇽</option>
							<option value="쉬라즈">쉬라즈</option>
							<option value="메를로">메를로</option>
							<option value="카베르네 프랑">카베르네 프랑</option>
							<option value="템프라니요">템프라니요</option>
							<option value="피노 누아">피노 누아</option>
							<option value="말벡">말벡</option>
							<option value="진판델">진판델</option>
							<option value="산지오베제">산지오베제</option>
							<option value="가메">가메</option>
							<option value="네비올로">네비올로</option>
							<option value="카르메네르">카르메네르</option>
							<option value="그르나슈">그르나슈</option>
							<option value="몬테풀치아노">몬테풀치아노</option>
							<option value="바르베라">바르베라</option>
							<option value="샤르도네">샤르도네</option>
							<option value="세미용">세미용</option>
							<option value="소비뇽 블랑">소비뇽 블랑</option>
							<option value="리슬링">리슬링</option>
							<option value="슈냉 블랑">슈냉 블랑</option>
							<option value="모스카토">모스카토</option>
							<option value="피노그리">피노그리</option>
							<option value="비오니에">비오니에</option>
							<option value="게뷔르츠트라미너">게뷔르츠트라미너</option>
							<option value="그뤼너 펠트리너">그뤼너 펠트리너</option>
							<option value="베르데호">베르데호</option>
							<option value="알리고떼">알리고떼</option>
							<option value="기타">기타</option>
						</select>
					</td>
				</tr>
				</table>
			</div>
			<div class="btn_confirm02">
				<button type="button" class="btn_lsmall blue" onclick="category_add();">카테고리 추가</button>
			</div>
			<script>
			$(function() {
				$("#sel_ca1").multi_select_box("#sel_ca",3,tb_admin_url+"/ajax.category_select_json.php","=카테고리선택=");
				$("#sel_ca2").multi_select_box("#sel_ca",3,tb_admin_url+"/ajax.category_select_json.php","=카테고리선택=");
				$("#sel_ca3").multi_select_box("#sel_ca",3,tb_admin_url+"/ajax.category_select_json.php","=카테고리선택=");
			});
			</script>
		</td>
	</tr>
	<tr>
		<th scope="row">선택된 카테고리<br><span class="fc_red">(최대 3개까지만 등록)</span></th>
		<td>
			<select name="sel_ca_id" id="sel_ca_id" size="3" class="multiple-select">
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
<h2>세부 카테고리</h2>
<div class="local_desc02 local_desc">
	<p>해당 카테고리는 선택사항 입니다.</p>
</div>
<div class="tbl_frm02">

				
	<table>
	<colgroup>
		<col class="w180">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">바디</th>
		<div class="sub_frm01">
			<td>
				<label><input type="radio" name="body" value=""> 없음</label>
				<label><input type="radio" name="body" value="가벼움"> 가벼움</label>
				<label><input type="radio" name="body" value="약간가벼움"> 약간가벼움</label>
				<label><input type="radio" name="body" value="중간"> 중간</label>
				<label><input type="radio" name="body" value="약간무거움"> 약간무거움</label>
				<label><input type="radio" name="body" value="무거움"> 무거움</label>
			</td>
		</div>
	</tr>
	<tr>
		<th scope="row">산도</th>
		<div class="sub_frm01">
			<td>
				<label><input type="radio" name="acidity" value=""> 없음</label>
				<label><input type="radio" name="acidity" value="낮음"> 낮음</label>
				<label><input type="radio" name="acidity" value="약간낮음"> 약간낮음</label>
				<label><input type="radio" name="acidity" value="중간"> 중간</label>
				<label><input type="radio" name="acidity" value="약간높음"> 약간높음</label>
				<label><input type="radio" name="acidity" value="높음"> 높음</label>
			</td>
		</div>
	</tr>
	<tr>
		<th scope="row">타닌</th>
		<div class="sub_frm01">
			<td>
				<label><input type="radio" name="tannins" value=""> 없음</label>
				<label><input type="radio" name="tannins" value="약함"> 약함</label>
				<label><input type="radio" name="tannins" value="약간약함"> 약간약함</label>
				<label><input type="radio" name="tannins" value="중간"> 중간</label>
				<label><input type="radio" name="tannins" value="약간강함"> 약간강함</label>
				<label><input type="radio" name="tannins" value="강함"> 강함</label>
			</td>
		</div>
	</tr>
	</tbody>
	</table>
</div>
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

