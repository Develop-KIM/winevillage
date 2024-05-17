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

<div class="local_ov mart30" style="border-top:0;">
	전체 : <b class="fc_red">${maps.totalCount }</b> 건 조회
	<c:set var="totalPrice" value="0" />
	<c:forEach items="${lists}" var="item">
	    <c:set var="totalPrice" value="${totalPrice + item.finalPrice}" />
	</c:forEach>
	<strong class="ov_a">총주문액 : <fmt:formatNumber value="${totalPrice}" type="number" groupingUsed="true"/>원</strong>
</div>

<form name="forderlist" id="forderlist" method="post">
<input type="hidden" name="q1" value="code=list">
<input type="hidden" name="page" value="1">

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
</body>
</html>

