<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="prd_list_tit">
	<div class="top">
		<h2>RED</h2>
		<div class="line_map">
			<ul>
				<li onclick="location.href='/shop/main'" style="cursor: pointer;">HOME</li>
                <li onclick="location.href='/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10101'" style="cursor: pointer;" id="cate_txt">VALUE</li>
			</ul>
		</div>
	</div>
	<div class="tab_area prd_tab_area tab3">
		<ul>
			<li class="state_li on" id="state_li_1"><a href="javascript:void(0);" onclick="state_list('1');">VALUE </a></li>
            <li class="state_li " id="state_li_5"><a href="javascript:void(0);" onclick="state_list('5');">EXCLUSIVE</a></li>
            <li class="state_li " id="state_li_all"><a href="javascript:void(0);" onclick="state_list('all');">ALL</a></li>
		</ul>
		<button class="smart_search" onclick="commonUI.layer.open('filter_layer')"><span>SMART SEARCH</span></button>
	</div>
</div>
<%@ include file="prd_smartsearch.jsp" %>