<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!doctype html>
<html lang="ko">
<head>
<body>
<%@ include file="../admin_common/admin_header.jsp"%>
<div id="wrapper">
	
<div id="snb">
	<div class="snb_header ico_config">
		<h2><i class="ionicons ion-clipboard"></i>주문관리</h2>
	</div>
		<dl>
			<dt class="o10 menu_toggle">주문관리</dt>
			<dd class="o10 active">
				<a href="admin_order_lists.do">주문리스트(전체)
					<em class="snb_air">34</em>
				</a>
			</dd>		
			<dd class="o10">
				<a href="admin_order2.do">입금대기
					<em>0</em>
				</a>
			</dd>		
			<dd class="o10">
				<a href="admin_order3.do">입금완료
					<em>0</em>
				</a>
			</dd>		
			<dd class="o10">
				<a href="admin_order4.do">배송준비
					<em>0</em>
				</a>
			</dd>		
			<dd class="o10">
				<a href="admin_order5.do">배송중
					<em>0</em>
				</a>
			</dd>		
			<dd class="o10">
				<a href="admin_order6.do">배송완료
					<em class="snb_air">1</em>
				</a>
			</dd>
			<dt class="o20 menu_toggle">취소/교환/반품/환불 관리</dt>
			<dd class="o20">
				<a href="admin_order7.do">입금전 취소
					<em class="snb_air">33</em>
				</a>
			</dd>		
			<dd class="o20">
				<a href="admin_order8.do">배송전 환불
					<em>0</em>
				</a>
			</dd>		
			<dd class="o20">
				<a href="admin_order9.do">배송후 반품
					<em>0</em>
				</a>
			</dd>		
			<dd class="o20">
				<a href="admin_order10.do">배송후 교환
					<em>0</em>
				</a>
			</dd>		
		</dl>
	</div>
	<div id="content">
		<div class="breadcrumb">
			<span>HOME</span> <i class="ionicons ion-ios-arrow-right"></i> 주문관리 <i class="ionicons ion-ios-arrow-right"></i> 주문리스트(전체)		</div>
	
<div class="s_wrap">
	<h1>주문리스트(전체)</h1>
	
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<!-- <h2>기본검색</h2>
<form name="fsearch" id="fsearch" method="get">
<input type="hidden" name="code" value="list">
<div class="tbl_frm01">
	<table>
	<colgroup>
		<col class="w100">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">검색어</th>
		<td>
			<select name="searchField">
				<option value="all">전체</option>
				<option value="memberNo">회원번호</option>
				<option value="name">주문자</option>
				<option value="productName">주문상품</option>
				<option value="receiverName">수령자명</option>
				<option value="receiverPhone">수령자전화번호</option>
				<option value="receiverAddress1">수령주소</option>
			</select>
			<input type="text" name="searchKeyword" value="" class="frm_input" size="30">
		</td>
	</tr> -->
<!-- 	<tr>
		<th scope="row">결제방법</th>
		<td>
			<label><input type="radio" name="od_settle_case" value="" checked="checked"> 전체</label>
			<label><input type="radio" name="od_settle_case" value="가상계좌"> 가상계좌</label>
			<label><input type="radio" name="od_settle_case" value="KAKAOPAY"> KAKAOPAY</label>
		</td>
	</tr> -->
<!-- 	<tr>
		<th scope="row">주문상태</th>
		<td>
			<label><input type="radio" name="od_status" value="" checked="checked"> 전체</label>
			<label><input type="radio" name="od_status" value="1"> 입금대기</label>
			<label><input type="radio" name="od_status" value="2"> 입금완료</label>
			<label><input type="radio" name="od_status" value="3"> 배송준비</label>
			<label><input type="radio" name="od_status" value="4"> 배송중</label>
			<label><input type="radio" name="od_status" value="5"> 배송완료</label>
			<label><input type="radio" name="od_status" value="6"> 취소</label>
			<label><input type="radio" name="od_status" value="9"> 환불</label>
			<label><input type="radio" name="od_status" value="7"> 반품</label>
			<label><input type="radio" name="od_status" value="8"> 교환</label>
		</td>
	</tr> -->
<!-- 	<tr>
		<th scope="row">구매확정</th>
		<td>
			<label><input type="radio" name="od_final" value="" checked="checked"> 전체</label>
			<label><input type="radio" name="od_final" value="1"> 구매확정</label>
			<label><input type="radio" name="od_final" value="0"> 구매미확정</label>
		</td>
	</tr> -->
	<!-- </tbody>
	</table>
</div>
<div class="btn_confirm">
	<input type="submit" value="검색" class="btn_medium">
	<input type="button" value="초기화" id="frmRest" class="btn_medium grey">
</div>
</form> -->

<div class="local_ov mart30" style="border-top:0;">
	전체 : <b class="fc_red">${maps.totalCount }</b> 건 조회
	<!-- <select id="page_rows" onchange="location='/admin/order.php?code=list&page=1&page_rows='+this.value;" class="marl5">
		<option value="30" selected="selected">30줄 정렬</option>
		<option value="50">50줄 정렬</option>
		<option value="100">100줄 정렬</option>
		<option value="150">150줄 정렬</option>
	</select> -->
	<c:set var="totalPrice" value="0" />
	<c:forEach items="${lists}" var="item">
	    <c:set var="totalPrice" value="${totalPrice + item.finalPrice}" />
	</c:forEach>
	<!-- <strong class="ov_a">총주문액 : 2,437,700원</strong> -->
	<strong class="ov_a">총주문액 : <fmt:formatNumber value="${totalPrice}" type="number" groupingUsed="true"/>원</strong>
</div>

<form name="forderlist" id="forderlist" method="post">
<input type="hidden" name="q1" value="code=list">
<input type="hidden" name="page" value="1">

<!-- <div class="local_frm01">
	<a href="#" id="frmOrderPrint" class="btn_lsmall white"><i class="fa fa-print"></i> 주문서출력</a>
	<a href="#" id="frmOrderExcel" class="btn_lsmall white"><i class="fa fa-file-excel-o"></i> 선택 엑셀저장</a>
	<a href="./order/order_excel.php?code=list" class="btn_lsmall white"><i class="fa fa-file-excel-o"></i> 검색결과 엑셀저장</a>
</div> -->
<div class="tbl_head01">
	<table id="sodr_list">
	<colgroup>
		<col class="w40">
		<col class="w100">
		<col class="w100">
		<col class="w40">
		<col class="w20">
		<col class="w40">
		<col>
		<col class="w40">
		<col class="w60">
		<col class="w80">
		<col class="w100">
		<col class="w200">
		<col class="w90">
		<col class="w70">
	</colgroup>
	<thead>
	<tr>
		<th scope="col">번호</th>
		<th scope="col">주문일시</th>
		<!-- 추가 --><th scope="col">주문자</th>
		<!-- 변경 --><th scope="col">회원번호</th>
		<th scope="col"><input type="checkbox" name="chkall" value="1" onclick="check_all(this.form);"></th>
		<!-- <th scope="col" colspan="2">주문상품</th> -->
		<!-- null --><th colspan="2" scope="col">주문상품</th>
		<!-- null --><th scope="col">수량</th>
		<!-- null --><th scope="col">상품금액</th>
		<!-- 변경 --><th scope="col">수령자명</th>
		<!-- 변경 --><th scope="col">수령자전화번호</th>
		<!-- 변경 --><th scope="col">수령주소</th>
		<!-- 변경 --><th scope="col">총주문액</th>
		<!-- 주문상태 --><th scope="col">주문상태</th>
		<!-- 삭제 --><!-- <th scope="col">총주문액</th> -->
		<!-- 삭제 --><!-- <th scope="col" colspan="2">결제방법</th> -->
	</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${ empty lists }">
				<tr>
					<td colspan='14' class="empty_table">리스트가 없습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:set var="previousOrderNo" value=""/>
		        <c:forEach items="${lists}" var="item" varStatus="loop">
		            <tr class="${item.orderNo % 2 == 0 ? 'list1' : 'list0'}">
		                <c:if test="${item.orderNo != previousOrderNo}">
		                    <td rowspan="${item.order_rowspan}">
		                        <a href="/" onclick="return false;">${item.orderNo}</a>
		                    </td>
		                </c:if>
		                <c:if test="${item.orderNo != previousOrderNo}">
		                    <td rowspan="${item.order_rowspan}">
		                    	<a href="/" onclick="return false;">
		                    		<span class="ellipsis2">${item.createDate}</span>
		                    	</a>
		                    </td>
		                </c:if>
		                <c:if test="${item.orderNo != previousOrderNo}">
		                    <td rowspan="${item.order_rowspan}">
		                    	<a href="/" onclick="return false;">
		                    		<span class="ellipsis1">${item.name}</span>
		                    		<%-- <span class="list_mb_id">(${item.memberId})</span> --%>
		                    	</a>
		                    </td>
		                </c:if>
		                <c:if test="${item.orderNo != previousOrderNo}">
		                    <td rowspan="${item.order_rowspan}">
		                    	<a href="/" onclick="return false;">${item.memberNo}</a>
		                    </td>
		                </c:if>
		                <td style="border-left:1px solid #e4e5e7 !important;">
		                    <input type="hidden" name="od_id[0]" value="${item.order_usersNo}">
		                    <label for="chk_0" class="sound_only">주문번호 ${item.order_usersNo}</label>
		                    <input type="checkbox" name="chk[]" value="0" id="chk_0">
		                </td>
		                <td class="td_img"><img src="../uploads/product/200/${item.productImg}" width="30" height="30"></td>
		                <td class="td_itname"><span class="ellipsis1">${item.productName}</span></td>
		                <td><a href="/" onclick="return false;">${item.orderAmount}</a></td>
		                <td>
		                	<span class="ellipsis1">
			                	<fmt:formatNumber value="${item.discountPrice}" type="number" groupingUsed="true"/>
			                </span>
		                </td>
		                <c:if test="${item.orderNo != previousOrderNo}">
		                    <td rowspan="${item.order_rowspan}">
		                    	<a href="/" onclick="return false;">
		                    		<span class="ellipsis1">${item.receiverName}</span>
		                    	</a>
		                    </td>
		                </c:if>
		                <c:if test="${item.orderNo != previousOrderNo}">
		                    <td rowspan="${item.order_rowspan}">
		                    	<a href="/" onclick="return false;">
		                    		<span class="receiver_phone ellipsis1">${item.receiverPhone}</span>
									<script>
									// receiver_phone 클래스를 가진 모든 요소 선택
								    var receiverPhoneSelector = document.querySelectorAll(".receiver_phone");

								    // 각 요소에 대해 반복하여 처리
								    receiverPhoneSelector.forEach(function(element) {
								        // 요소에서 전화번호를 가져와서 문자열로 변환
								        var receiverPhoneRaw = element.textContent;
								        // 전화번호를 형식에 맞게 변환
								        var receiverPhone = receiverPhoneRaw.replace(/^(\d{3})(\d{4})(\d{4})$/, "$1-$2-$3");
								        // 형식에 맞게 변환된 전화번호를 요소에 적용
								        element.textContent = receiverPhone;
								    });
									</script>
		                    	</a>
		                    </td>
		                </c:if>
		                <c:if test="${item.orderNo != previousOrderNo}">
		                    <td rowspan="${item.order_rowspan}">
		                    	<a href="/" onclick="return false;">
		                    		<span class="ellipsis1">${item.receiverAddress1}</span>
		                    	</a>
		                    </td>
		                </c:if>
		                <c:if test="${item.orderNo != previousOrderNo}">
		                    <td rowspan="${item.order_rowspan}">
		                    	<a href="/" onclick="return false;">
		                    		<span class="ellipsis1">
		                    			<fmt:formatNumber value="${item.finalPrice}" type="number" groupingUsed="true"/>
		                    		</span>
		                    	</a>
		                    </td>
		                </c:if>
		                <c:if test="${item.orderNo != previousOrderNo}">
		                    <td rowspan="${item.order_rowspan}">
		                    	<a href="/" onclick="return false;">
		                    		<c:choose>
					                    <c:when test="${item.orderStatus == 'PAYMENT_PENDING'}">
					                        <div class="btn_small red" style="cursor:initial;">결제대기</div>
					                    </c:when>
					                    <c:when test="${item.orderStatus == 'PAYMENT_COMPLETED'}">
					                        <div class="btn_small white" style="cursor:initial;">결제완료</div>
					                    </c:when>
					                    <c:otherwise>${item.orderStatus}</c:otherwise>
					                </c:choose>
		                    	</a>
		                    </td>
		                </c:if>
		            </tr>
		            <c:set var="previousOrderNo" value="${item.orderNo}"/>
		        </c:forEach>
			</c:otherwise>
		</c:choose>
	</tbody>
</table>
</div>
</form>

<!-- <nav class="pg_wrap"><span class="pg"><span class="pg_start">처음</span>
<span class="pg_prev">이전</span>
<span class="sound_only">열린</span><strong class="pg_current">1</strong><span class="sound_only">페이지</span>
<a href="/admin/order.php?code=list&page=2" class="pg_page">2<span class="sound_only">페이지</span></a>
<span class="pg_next">다음</span>
<a href="/admin/order.php?code=list&page=2" class="pg_page pg_end">맨끝</a>
</span></nav> -->

<nav class="pg_wrap"><span class="pg">${ pagingImg }</span></nav>

<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.17/jquery-ui.min.js"></script>
<script>
$(function(){
    $("#fr_date, #to_date").datepicker({ changeMonth: true, changeYear: true, dateFormat: "yy-mm-dd", showButtonPanel: true, yearRange: "c-99:c+99", maxDate: "+0d" });

	// 주문서출력
	$("#frmOrderPrint, #frmOrderExcel").on("click", function() {
		var type = $(this).attr("id");
		var od_chk = new Array();
		var od_id = "";
		var $el_chk = $("input[name='chk[]']");

		$el_chk.each(function(index) {
			if($(this).is(":checked")) {
				od_chk.push($("input[name='od_id["+index+"]']").val());
			}
		});

		if(od_chk.length > 0) {
			od_id = od_chk.join();
		}

		if(od_id == "") {
			alert("처리할 자료를 하나 이상 선택해 주십시오.");
			return false;
		} else {
			if(type == 'frmOrderPrint') {
				var url = "./order/order_print.php?od_id="+od_id;
				window.open(url, "frmOrderPrint", "left=100, top=100, width=670, height=600, scrollbars=yes");
				return false;
			} else {
				this.href = "./order/order_excel2.php?od_id="+od_id;
				return true;
			}
		}
	});
});
</script>
</div>

</div>
</div>
<%@ include file="../admin_common/admin_footer.jsp"%>
</body>
</html>

