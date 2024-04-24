<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WINE VILLAGE | WINE</title>
</head>
<body>
	<%@ include file="../../common/common.jsp"%>
	<div class="wrap">
		<div class="content product product_lists_page test">
			<div class="product_lists_wrap">
				<div class="prd_list_tit">
					<div class="top">
						<h2>SPARKLING</h2>
						<div class="line_map">
							<ul>
								<li onclick="location.href='../main.html'"
									style="cursor: pointer;">HOME</li>
								<li
									onclick="location.href='product_listsf694.html?sh_category1_cd=10000&amp;sh_category2_cd=&amp;sh_category3_cd='"
									style="cursor: pointer;" id="cate_txt">ALL</li>
							</ul>
						</div>
					</div>
					<div class="tab_area prd_tab_area tab3">
						<ul>
							<li class="state_li on" id="state_li_1"><a
								href="javascript:void(0);" onclick="state_list('1');">VALUE
							</a></li>
							<li class="state_li " id="state_li_5"><a
								href="javascript:void(0);" onclick="state_list('5');">EXCLUSIVE</a></li>
							<li class="state_li " id="state_li_all"><a
								href="javascript:void(0);" onclick="state_list('all');">ALL</a></li>
						</ul>

						<button class="smart_search" onclick="commonUI.layer.open('filter_layer')"><span>SMART SEARCH</span></button>

					</div>
				</div>

				<!-- 필터 -->
				<div class="layer filter_layer">
					<div class="display_table">
						<div class="table_cell">
							<div class="layer_area">
								<button type="button" class="layer_close"
									onclick="commonUI.layer.close()">
									<span>Layer Close</span>
								</button>
								<div class="layer_tit">SMART SEARCH</div>
								<!-- 검색창 시작 -->
									<form action="" id="searchForm" name="searchForm" method="get" accept-charset="utf-8">
										<div class="search_layer">
											<div class="search_box" style="position:relative;">
												<input type="text" name="keyword" id="keyword" placeholder='오늘 마시고 싶은 와인을 검색해 보세요' 
													   autocomplete="off" class="srch_close_event" value="" style="text-align: center; letter-spacing:0.3px;">  
												<button type="submit" id="s_btn" style="position:absolute;right:60px;opacity:0.3;">검색</button>
											</div>
											<div class="search_result srch_close_event" id="search_block">
												<div class="result_inner">
													<div class="allDelete off">
														<h2 class="tit">최근검색어</h2>
															<button type="button" class="btn del_btn" onclick="all_del_item();">전체삭제</span>
													</div>
													<ul id="result_list" class="result_list">
														<li id="nodata">최근검색어 내역이 없습니다.</li>
													</ul>
												</div>
											</div>
										</div>
									</form>
								<!-- 검색창 끝  -->
								<div class="layer_con">
									<div class="filter">
										<div class="check_area ">
											<p>와인 종류</p>
											<div class="check_type">
												<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_29"
														value="29" data-nm="레드" onclick="filter_submit();">
													<label for="type_check_29">레드 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_28"
														value="28" data-nm="화이트" onclick="filter_submit();">
													<label for="type_check_28">화이트 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_27"
														value="27" data-nm="스파클링" onclick="filter_submit();">
													<label for="type_check_27">스파클링 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_26"
														value="26" data-nm="디저트" onclick="filter_submit();">
													<label for="type_check_26">디저트 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_25"
														value="25" data-nm="로제" onclick="filter_submit();">
													<label for="type_check_25">로제 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_100"
														value="100" data-nm="주정강화" onclick="filter_submit();">
													<label for="type_check_100">주정강화 <!--()--></label>
												</div>
											</div>
										</div>
										<div class="check_area price">
											<p>가격</p>
											<div class="check_type">
												<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
												<div class="checkbox radio">
													<input type="radio" name="item_seq" id="type_check_35"
														value="35" data-nm="~30,000" onclick="filter_submit();">
													<label for="type_check_35">~30,000 <!--()--></label>
												</div>
												<div class="checkbox radio">
													<input type="radio" name="item_seq" id="type_check_36"
														value="36" data-nm="30,000~60,000"
														onclick="filter_submit();"> <label
														for="type_check_36">30,000~60,000 <!--()--></label>
												</div>
												<div class="checkbox radio">
													<input type="radio" name="item_seq" id="type_check_66"
														value="66" data-nm="60,000~100,000"
														onclick="filter_submit();"> <label
														for="type_check_66">60,000~100,000 <!--()--></label>
												</div>
												<div class="checkbox radio">
													<input type="radio" name="item_seq" id="type_check_67"
														value="67" data-nm="100,000~" onclick="filter_submit();">
													<label for="type_check_67">100,000~ <!--()--></label>
												</div>
											</div>
										</div>
										<div class="check_area ">
											<p>생산 국가</p>
											<div class="check_type">
												<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_75"
														value="75" data-nm="프랑스" onclick="filter_submit();">
													<label for="type_check_75">프랑스 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_76"
														value="76" data-nm="이탈리아" onclick="filter_submit();">
													<label for="type_check_76">이탈리아 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_77"
														value="77" data-nm="스페인" onclick="filter_submit();">
													<label for="type_check_77">스페인 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_80"
														value="80" data-nm="미국" onclick="filter_submit();">
													<label for="type_check_80">미국 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_78"
														value="78" data-nm="독일" onclick="filter_submit();">
													<label for="type_check_78">독일 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_79"
														value="79" data-nm="칠레" onclick="filter_submit();">
													<label for="type_check_79">칠레 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_83"
														value="83" data-nm="아르헨티나" onclick="filter_submit();">
													<label for="type_check_83">아르헨티나 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_81"
														value="81" data-nm="호주" onclick="filter_submit();">
													<label for="type_check_81">호주 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_82"
														value="82" data-nm="뉴질랜드" onclick="filter_submit();">
													<label for="type_check_82">뉴질랜드 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_103"
														value="103" data-nm="포루투갈" onclick="filter_submit();">
													<label for="type_check_103">포루투갈 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_114"
														value="114" data-nm="기타구대륙" onclick="filter_submit();">
													<label for="type_check_114">기타구대륙 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_115"
														value="115" data-nm="기타신대륙" onclick="filter_submit();">
													<label for="type_check_115">기타신대륙 <!--()--></label>
												</div>
											</div>
										</div>
										<div class="check_area ">
											<p>생산 지역</p>
											<div class="check_type">
												<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_198"
														value="198" data-nm="랑그독루시용" onclick="filter_submit();">
													<label for="type_check_198">랑그독루시용 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_199"
														value="199" data-nm="론" onclick="filter_submit();">
													<label for="type_check_199">론 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_71"
														value="71" data-nm="보르도" onclick="filter_submit();">
													<label for="type_check_71">보르도 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_177"
														value="177" data-nm="루아르" onclick="filter_submit();">
													<label for="type_check_177">루아르 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_202"
														value="202" data-nm="보졸레" onclick="filter_submit();">
													<label for="type_check_202">보졸레 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_72"
														value="72" data-nm="부르고뉴" onclick="filter_submit();">
													<label for="type_check_72">부르고뉴 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_203"
														value="203" data-nm="샴페인" onclick="filter_submit();">
													<label for="type_check_203">샴페인 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_204"
														value="204" data-nm="알자스" onclick="filter_submit();">
													<label for="type_check_204">알자스 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_205"
														value="205" data-nm="프로방스" onclick="filter_submit();">
													<label for="type_check_205">프로방스 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_206"
														value="206" data-nm="라치오" onclick="filter_submit();">
													<label for="type_check_206">라치오 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_207"
														value="207" data-nm="롬바르디아" onclick="filter_submit();">
													<label for="type_check_207">롬바르디아 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_208"
														value="208" data-nm="리구리아" onclick="filter_submit();">
													<label for="type_check_208">리구리아 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_209"
														value="209" data-nm="베네토" onclick="filter_submit();">
													<label for="type_check_209">베네토 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_180"
														value="180" data-nm="시실리" onclick="filter_submit();">
													<label for="type_check_180">시실리 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_210"
														value="210" data-nm="아브루쪼" onclick="filter_submit();">
													<label for="type_check_210">아브루쪼 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_211"
														value="211" data-nm="에밀리아" onclick="filter_submit();">
													<label for="type_check_211">에밀리아 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_212"
														value="212" data-nm="움브리아" onclick="filter_submit();">
													<label for="type_check_212">움브리아 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_213"
														value="213" data-nm="캄파니아" onclick="filter_submit();">
													<label for="type_check_213">캄파니아 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_74"
														value="74" data-nm="토스카나" onclick="filter_submit();">
													<label for="type_check_74">토스카나 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_214"
														value="214" data-nm="풀리아" onclick="filter_submit();">
													<label for="type_check_214">풀리아 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_215"
														value="215" data-nm="프리울리" onclick="filter_submit();">
													<label for="type_check_215">프리울리 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_73"
														value="73" data-nm="피에몬테" onclick="filter_submit();">
													<label for="type_check_73">피에몬테 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_216"
														value="216" data-nm="갈리시아" onclick="filter_submit();">
													<label for="type_check_216">갈리시아 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_217"
														value="217" data-nm="까딸루냐 " onclick="filter_submit();">
													<label for="type_check_217">까딸루냐 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_218"
														value="218" data-nm="나바라 " onclick="filter_submit();">
													<label for="type_check_218">나바라 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_178"
														value="178" data-nm="리오하" onclick="filter_submit();">
													<label for="type_check_178">리오하 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_219"
														value="219" data-nm="카스틸라 라만차" onclick="filter_submit();">
													<label for="type_check_219">카스틸라 라만차 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_220"
														value="220" data-nm="카스틸라 이 레온" onclick="filter_submit();">
													<label for="type_check_220">카스틸라 이 레온 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_221"
														value="221" data-nm="캘리포니아" onclick="filter_submit();">
													<label for="type_check_221">캘리포니아 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_222"
														value="222" data-nm="오레곤" onclick="filter_submit();">
													<label for="type_check_222">오레곤 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_223"
														value="223" data-nm="워싱턴 " onclick="filter_submit();">
													<label for="type_check_223">워싱턴 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_230"
														value="230" data-nm="기타" onclick="filter_submit();">
													<label for="type_check_230">기타 <!--()--></label>
												</div>
											</div>
										</div>
										<div class="check_area ">
											<p>포도 품종</p>
											<div class="check_type">
												<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_37"
														value="37" data-nm="카베르네 소비뇽" onclick="filter_submit();">
													<label for="type_check_37">카베르네 소비뇽 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_157"
														value="157" data-nm="쉬라즈" onclick="filter_submit();">
													<label for="type_check_157">쉬라즈 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_38"
														value="38" data-nm="메를로" onclick="filter_submit();">
													<label for="type_check_38">메를로 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_92"
														value="92" data-nm="카베르네 프랑" onclick="filter_submit();">
													<label for="type_check_92">카베르네 프랑 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_90"
														value="90" data-nm="템프라니요" onclick="filter_submit();">
													<label for="type_check_90">템프라니요 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_87"
														value="87" data-nm="피노 누아" onclick="filter_submit();">
													<label for="type_check_87">피노 누아 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_88"
														value="88" data-nm="말벡" onclick="filter_submit();">
													<label for="type_check_88">말벡 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_168"
														value="168" data-nm="진판델" onclick="filter_submit();">
													<label for="type_check_168">진판델 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_89"
														value="89" data-nm="산지오베제" onclick="filter_submit();">
													<label for="type_check_89">산지오베제 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_164"
														value="164" data-nm="가메" onclick="filter_submit();">
													<label for="type_check_164">가메 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_167"
														value="167" data-nm="네비올로" onclick="filter_submit();">
													<label for="type_check_167">네비올로 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_156"
														value="156" data-nm="카르메네르" onclick="filter_submit();">
													<label for="type_check_156">카르메네르 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_91"
														value="91" data-nm="그르나슈" onclick="filter_submit();">
													<label for="type_check_91">그르나슈 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_231"
														value="231" data-nm="몬테풀치아노" onclick="filter_submit();">
													<label for="type_check_231">몬테풀치아노 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_232"
														value="232" data-nm="바르베라" onclick="filter_submit();">
													<label for="type_check_232">바르베라 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_171"
														value="171" data-nm="샤르도네" onclick="filter_submit();">
													<label for="type_check_171">샤르도네 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_161"
														value="161" data-nm="세미용" onclick="filter_submit();">
													<label for="type_check_161">세미용 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_159"
														value="159" data-nm="소비뇽 블랑" onclick="filter_submit();">
													<label for="type_check_159">소비뇽 블랑 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_160"
														value="160" data-nm="리슬링" onclick="filter_submit();">
													<label for="type_check_160">리슬링 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_224"
														value="224" data-nm="슈냉 블랑" onclick="filter_submit();">
													<label for="type_check_224">슈냉 블랑 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_225"
														value="225" data-nm="모스카토" onclick="filter_submit();">
													<label for="type_check_225">모스카토 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_166"
														value="166" data-nm="피노그리" onclick="filter_submit();">
													<label for="type_check_166">피노그리 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_226"
														value="226" data-nm="비오니에" onclick="filter_submit();">
													<label for="type_check_226">비오니에 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_163"
														value="163" data-nm="게뷔르츠트라미너" onclick="filter_submit();">
													<label for="type_check_163">게뷔르츠트라미너 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_227"
														value="227" data-nm="그뤼너 펠트리너" onclick="filter_submit();">
													<label for="type_check_227">그뤼너 펠트리너 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_162"
														value="162" data-nm="베르데호" onclick="filter_submit();">
													<label for="type_check_162">베르데호 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_228"
														value="228" data-nm="알리고떼" onclick="filter_submit();">
													<label for="type_check_228">알리고떼 <!--()--></label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_174"
														value="174" data-nm="기타" onclick="filter_submit();">
													<label for="type_check_174">기타 <!--()--></label>
												</div>
											</div>
										</div>

									</div>

									<div class="bottom">
										<div class="current_filter filter_item nodata_fiter">
											<button type="button" class="reset" onclick="all_reset();">초기화</button>
										</div>

										<div class="btn_area">
											<button type="button" class="btn_txt btn_filter"
												onclick="filter_btn();">적용</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 필터 -->

				<div class="prd_list_area">
					<div class="search_result">
						<div class="result_area">
							<p class="result" id="total_count_text">394개의 상품</p>
						</div>

						<div class="second_order">
							<select name="js_select" id="js_select" class="">
								<option value="A">최신순</option>
								<option value="C">높은 가격순</option>
								<option value="B">낮은 가격순</option>
								<option value="F">판매량순</option>
							</select>
						</div>
					</div>
					<ul class="n_prd_list" id="product_ul">
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_view9f82.html?product_cd=03T999"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/32f8106a802290f578b2fd00bb18757e.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/32f8106a802290f578b2fd00bb18757e.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T999 "
											id="wish_03T999" onclick="product.likeProduct('03T999');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view9f82.html?product_cd=03T999"><span>디아블로
													데블스 카나발 스위트</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">칠레</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">70%</em>
											<del>50,000원</del>
											<ins>14,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_view56a9.html?product_cd=03U001"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/aa7a7a81345a0f66e00a0962f5ab3904.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/aa7a7a81345a0f66e00a0962f5ab3904.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/aa7a7a81345a0f66e00a0962f5ab3904.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03U001 "
											id="wish_03U001" onclick="product.likeProduct('03U001');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view56a9.html?product_cd=03U001"><span>디아블로
													데블스 카나발 카베르네</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">칠레</span> <span
											style="background: #E0D8EA">카베르네 소비뇽</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">70%</em>
											<del>50,000원</del>
											<ins>14,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #F6EC9C">
									<a href="product_viewacc9.html?product_cd=04F033"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/0bb964fdc5052765a1fc3f6ccfd37d6d.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/0bb964fdc5052765a1fc3f6ccfd37d6d.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/0bb964fdc5052765a1fc3f6ccfd37d6d.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_04F033 "
											id="wish_04F033" onclick="product.likeProduct('04F033');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_viewacc9.html?product_cd=04F033"><span>디아블로
													데블스 카나발 소비뇽 </span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background: #F6EC9C">화이트</span> <span
											style="background: #F6EC9C">칠레</span> <span
											style="background: #F6EC9C">소비뇽 블랑</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">70%</em>
											<del>50,000원</del>
											<ins>14,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_view1e3f.html?product_cd=03T989"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/546ccbcb4c22a81defb341b9be9b4c10.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/546ccbcb4c22a81defb341b9be9b4c10.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/546ccbcb4c22a81defb341b9be9b4c10.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T989 "
											id="wish_03T989" onclick="product.likeProduct('03T989');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view1e3f.html?product_cd=03T989"><span>디아블로
													데블스 카나발 레드</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">칠레</span> <span
											style="background: #E0D8EA">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">70%</em>
											<del>50,000원</del>
											<ins>14,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_view154f.html?product_cd=03T786"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/65b95cf91ef4678a3376cf742f7e5749.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/65b95cf91ef4678a3376cf742f7e5749.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/65b95cf91ef4678a3376cf742f7e5749.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T786 "
											id="wish_03T786" onclick="product.likeProduct('03T786');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view154f.html?product_cd=03T786"><span>마틴
													레이 오크빌 카베르네 소비뇽</span><span class="en"></span></a>
										</p>
										<p class="prd_info">세계적인 와인 평론가들로부터 높은 평가를 받고 있으며, 매년 평균
											90points 이상의 점수를 받는 프리미엄 나파밸리 와인</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">미국</span> <span
											style="background: #E0D8EA">피노누아</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">33%</em>
											<del>300,000원</del>
											<ins>200,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_view2445.html?product_cd=03S801"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/74804eb1e4f3451e09af1e3a24c95b99.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/74804eb1e4f3451e09af1e3a24c95b99.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/74804eb1e4f3451e09af1e3a24c95b99.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03S801 "
											id="wish_03S801" onclick="product.likeProduct('03S801');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view2445.html?product_cd=03S801"><span>앤젤린
													멘도치노 피노누아 </span><span class="en"></span></a>
										</p>
										<p class="prd_info">"고급 레스토랑에서 판매하는 고퀄리티 글라스 와인으로 시작해서 현재는
											해외 판매까지 성공시킨 역주행 성공의 브랜드"</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">미국</span> <span
											style="background: #E0D8EA">피노누아</span>
									</div>
									<div class="price_area">
										<p class="price set">
											<!-- n병 구매시 -->
											<span class="regular_price price"> <em
												class="discount">50%</em> <del>60,000원</del> <ins>29,900원</ins>
											</span> <em class="discount">53%</em> <i>3병 이상 구매시</i>
											<ins>28,400원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_viewbe60.html?product_cd=03N417"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/0636ea1b6e96aeb66eb3b82098a19528.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/0636ea1b6e96aeb66eb3b82098a19528.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/0636ea1b6e96aeb66eb3b82098a19528.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03N417 "
											id="wish_03N417" onclick="product.likeProduct('03N417');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_viewbe60.html?product_cd=03N417"><span>샤또
													라 프랑스 델 옴므 메독CB</span><span class="en"></span></a>
										</p>
										<p class="prd_info">200년 역사의 보르도 메독의 크뤼 부르주아 등급 와인</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">프랑스</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">79%</em>
											<del>200,000원</del>
											<ins>42,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0EBF8">
									<a href="product_view81b0.html?product_cd=02B054"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/0bf2addff4ed53c84e7e017a9edd5aca.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/0bf2addff4ed53c84e7e017a9edd5aca.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/0bf2addff4ed53c84e7e017a9edd5aca.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_02B054 "
											id="wish_02B054" onclick="product.likeProduct('02B054');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view81b0.html?product_cd=02B054"><span>폴
													당장 뀌베 로제 </span><span class="en"></span></a>
										</p>
										<p class="prd_info">영국 왕실 납품 샴페인 하우스</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0EBF8">프랑스</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">20%</em>
											<del>100,000원</del>
											<ins>80,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0EBF8">
									<a href="product_view0526.html?product_cd=02A774"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/ef628fa73851885efe15f3896e003776.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/ef628fa73851885efe15f3896e003776.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/ef628fa73851885efe15f3896e003776.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_02A774 "
											id="wish_02A774" onclick="product.likeProduct('02A774');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view0526.html?product_cd=02A774"><span>룩벨레어
													로제 기프트박스 </span><span class="en">LUC BELAIRE ROSE W GIFT
													BOX 750ML</span></a>
										</p>
										<p class="prd_info">기프트 박스안에 기존 로제 제품의 넌 루미너스 보틀이 들어있습니다.</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0EBF8">스파클링</span> <span
											style="background: #E0EBF8">프랑스</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">31%</em>
											<del>80,000원</del>
											<ins>55,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #D7F9E2">
									<a href="product_viewbb3a.html?product_cd=04E694"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/20b77ab950298c3968d82ff53c335eb3.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/20b77ab950298c3968d82ff53c335eb3.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/20b77ab950298c3968d82ff53c335eb3.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_04E694 "
											id="wish_04E694" onclick="product.likeProduct('04E694');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_viewbb3a.html?product_cd=04E694"><span>마르쿠스
													M 위르지거 뷔르츠가르텐 아우스레제 </span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background: #D7F9E2">독일</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">27%</em>
											<del>300,000원</del>
											<ins>220,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #D7F9E2">
									<a href="product_view038e.html?product_cd=04E803"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/5a003c0c26fb9f91c41b042233854688.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/5a003c0c26fb9f91c41b042233854688.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/5a003c0c26fb9f91c41b042233854688.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_04E803 "
											id="wish_04E803" onclick="product.likeProduct('04E803');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view038e.html?product_cd=04E803"><span>닥터루젠
													리슬링 베렌아우스레제 </span><span class="en"></span></a>
										</p>
										<p class="prd_info">세계 3대 스위트 와인을 만드는 독일. 모젤에서 제일 가는 포도밭들인
											벨레너 존넨우어(해시계), 위르찌거 뷔르츠가르텐(향신료의 정원), 에르데너 트렙첸(지구의 계단), 그라쳐
											힘멜라이히(천국) 에서 자란 평균 수령 60년 포도나무들에서 수확한 포도로 만들었다. 보트리티스 즉 노블롯
											포도로만 만드려면 110 도 이상의 왹슬레 (독일의 당도 단위) 이상의 당도를 가져야만 한다. 닥터루젠에서는
											그보다 더 높은 단위인 120 도 이상으로 만든다.</p>
									</div>
									<div class="cate_label">
										<span style="background: #D7F9E2">독일</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">33%</em>
											<del>90,000원</del>
											<ins>60,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #D7F9E2">
									<a href="product_view264a.html?product_cd=29E759"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/3bbce77486eb4eb329f9b2963a3f7276.jpg"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/3bbce77486eb4eb329f9b2963a3f7276.jpg"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/3bbce77486eb4eb329f9b2963a3f7276.jpg"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_29E759 "
											id="wish_29E759" onclick="product.likeProduct('29E759');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view264a.html?product_cd=29E759"><span>빌라엠
													로쏘 봄 패키지</span><span class="en">VILLA M ROSSO SPRING
													PACKAGE</span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background: #D7F9E2">디저트</span> <span
											style="background: #D7F9E2">이탈리아</span> <span
											style="background: #D7F9E2">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">38%</em>
											<del>40,000원</del>
											<ins>25,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #D7F9E2">
									<a href="product_view4eb5.html?product_cd=29E758"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/b9cc0bad255fce23383b44ede1827863.jpg"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/b9cc0bad255fce23383b44ede1827863.jpg"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/b9cc0bad255fce23383b44ede1827863.jpg"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_29E758 "
											id="wish_29E758" onclick="product.likeProduct('29E758');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view4eb5.html?product_cd=29E758"><span>빌라엠
													비앙코 봄 패키지</span><span class="en">VILLA M BIANCO SPRING
													PACKAGE</span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background: #D7F9E2">디저트</span> <span
											style="background: #D7F9E2">이탈리아</span> <span
											style="background: #D7F9E2">모스카토</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">34%</em>
											<del>36,000원</del>
											<ins>23,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_view5c45.html?product_cd=03T993"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/d9b081adcc9e7bd4bdc623d8033b8be9.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/d9b081adcc9e7bd4bdc623d8033b8be9.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/d9b081adcc9e7bd4bdc623d8033b8be9.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T993 "
											id="wish_03T993" onclick="product.likeProduct('03T993');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view5c45.html?product_cd=03T993"><span>썸머
													드림즈 트와일라잇 피노누아</span><span class="en">Summer Dreams
													Twilight Pinot Noir</span></a>
										</p>
										<p class="prd_info">썸머 드림즈 와인 중 제임스 우든 브릿지의 정교한 와인 양조 기술이
											강조된 와인으로 떼루아의 본질과 포도의 순수함이 그대로 담긴 와인.</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">미국</span> <span
											style="background: #E0D8EA">피노누아</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">36%</em>
											<del>500,000원</del>
											<ins>320,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_viewced1.html?product_cd=03T995"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/d224182a9d60664769a2d0faf64b9575.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/d224182a9d60664769a2d0faf64b9575.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/d224182a9d60664769a2d0faf64b9575.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T995 "
											id="wish_03T995" onclick="product.likeProduct('03T995');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_viewced1.html?product_cd=03T995"><span>썸머
													드림즈 슈퍼 칠 피노누아</span><span class="en">Summer Dreams Super
													Chill Pinot Noir</span></a>
										</p>
										<p class="prd_info">썸머 드림즈 와인 중 매혹적인 소노마 코스트의 피노 누아를 가장
											우아하게 표현한 와인.</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">미국</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">36%</em>
											<del>500,000원</del>
											<ins>320,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_view5929.html?product_cd=03T206"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/8b7b73cbaba8dd1882a40536f57c3ea4.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/8b7b73cbaba8dd1882a40536f57c3ea4.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/8b7b73cbaba8dd1882a40536f57c3ea4.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T206 "
											id="wish_03T206" onclick="product.likeProduct('03T206');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view5929.html?product_cd=03T206"><span>브란둘린
													피코트노</span><span class="en">BRANDULIN PIKOTNO</span></a>
										</p>
										<p class="prd_info">높은 산도와 은은한 꽃향기 캐릭터를 가진 '레불라', 바디감을
											잡아주는 '토카이', 화사한 허브 뉘앙스를 가진 '말바시아'가 뛰어난 밸런스를 보여주는 와인.</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">기타구대륙</span> <span
											style="background: #E0D8EA">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">39%</em>
											<del>90,000원</del>
											<ins>55,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_viewfcd0.html?product_cd=03R034"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/a29088f6fe89c15752800987279fdf2b.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/a29088f6fe89c15752800987279fdf2b.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/a29088f6fe89c15752800987279fdf2b.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03R034 "
											id="wish_03R034" onclick="product.likeProduct('03R034');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_viewfcd0.html?product_cd=03R034"><span>베반
													셀러스 텐치 EE </span><span class="en">BEVAN CELLARS TENCH EE </span></a>
										</p>
										<p class="prd_info">스크리밍 이글 바로 옆의 밭 (Tench Vineyard Block
											2A)에서 생산되는 포도로 만들어지며 기교와 세련된 질감의 표현이 훌륭하다.</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">미국</span> <span
											style="background: #E0D8EA">카베르네 소비뇽</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">20%</em>
											<del>500,000원</del>
											<ins>399,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_viewac76.html?product_cd=03R033"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/807edb275e9b0531907e03bd98edd584.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/807edb275e9b0531907e03bd98edd584.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/807edb275e9b0531907e03bd98edd584.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03R033 "
											id="wish_03R033" onclick="product.likeProduct('03R033');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_viewac76.html?product_cd=03R033"><span>베반
													셀러스 텐치 카베르네 소비뇽 </span><span class="en">BEVAN CELLARS TENCH
													CABERNET SAUVIGNON</span></a>
										</p>
										<p class="prd_info">1,005 케이스가 생산 되었으며 Tench Vineyard
											Block 1A와 1B에서 자란 포도가 블랜딩 되어 있다. 암석이 많고 붉은 토양은 와인에 강건한 텍스쳐를
											느끼기에 훌륭한 컨디션을 제공한다.</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">미국</span> <span
											style="background: #E0D8EA">카베르네 소비뇽</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">20%</em>
											<del>500,000원</del>
											<ins>399,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_view1ca6.html?product_cd=03R032"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/ba311a7cd78ab813cffef46c58087c30.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/ba311a7cd78ab813cffef46c58087c30.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/ba311a7cd78ab813cffef46c58087c30.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03R032 "
											id="wish_03R032" onclick="product.likeProduct('03R032');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view1ca6.html?product_cd=03R032"><span>베반
													셀러스 온토게니</span><span class="en">BEVAN CELLARS ONTOGENY</span></a>
										</p>
										<p class="prd_info">Jeb Dunnuck 나파 밸리 100 달러 미만 전체 1위에 해당
											되는 빈티지 와인이다. (3,952 케이스 생산)</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">미국</span> <span
											style="background: #E0D8EA">카베르네 소비뇽</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">34%</em>
											<del>300,000원</del>
											<ins>199,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0EBF8">
									<a href="product_view93a8.html?product_cd=02A936"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/faa7bd77d1c5ccec692f5ed176a82b02.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/faa7bd77d1c5ccec692f5ed176a82b02.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/faa7bd77d1c5ccec692f5ed176a82b02.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_02A936 "
											id="wish_02A936" onclick="product.likeProduct('02A936');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view93a8.html?product_cd=02A936"><span>산테로
													958 파티 이슬로 에디션</span><span class="en">SANTERO 9.5.8 PARTY
													YISLOW LIMITED EDITION</span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0EBF8">이탈리아</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">28%</em>
											<del>40,000원</del>
											<ins>29,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_view870d.html?product_cd=03T784"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/01250123a2a863738acbbdbce1a6a391.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/01250123a2a863738acbbdbce1a6a391.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/01250123a2a863738acbbdbce1a6a391.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T784 "
											id="wish_03T784" onclick="product.likeProduct('03T784');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view870d.html?product_cd=03T784"><span>피리아토
													하모니엄 네로 다볼라 </span><span class="en">FIRRIATO HARMONIUM NERO
													D'AVOLA</span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">이탈리아</span> <span
											style="background: #E0D8EA">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">40%</em>
											<del>150,000원</del>
											<ins>90,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #F6EC9C">
									<a href="product_viewa446.html?product_cd=04E967"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/8148c36d28b682bcd0e42b13b44a670e.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/8148c36d28b682bcd0e42b13b44a670e.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/8148c36d28b682bcd0e42b13b44a670e.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_04E967 "
											id="wish_04E967" onclick="product.likeProduct('04E967');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_viewa446.html?product_cd=04E967"><span>피리아토
													끼아라몬테 샤르도네 </span><span class="en">FIRRIATO CHIARAMONTE
													CHARDONNAY</span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background: #F6EC9C">화이트</span> <span
											style="background: #F6EC9C">이탈리아</span> <span
											style="background: #F6EC9C">샤르도네</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">55%</em>
											<del>80,000원</del>
											<ins>36,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_viewf05e.html?product_cd=03T783"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/aa0a7d333cd6e4ec309d91903265a050.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/aa0a7d333cd6e4ec309d91903265a050.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/aa0a7d333cd6e4ec309d91903265a050.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T783 "
											id="wish_03T783" onclick="product.likeProduct('03T783');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_viewf05e.html?product_cd=03T783"><span>피리아토
													끼아라몬테 네로 다볼라 </span><span class="en">FIRRIATO CHIARAMONTE
													NERO D'AVOLA</span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">이탈리아</span> <span
											style="background: #E0D8EA">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">55%</em>
											<del>80,000원</del>
											<ins>36,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0D8EA">
									<a href="product_view6f83.html?product_cd=03T785"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/9cd2021d76d68ebc1951287642102cba.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/9cd2021d76d68ebc1951287642102cba.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/9cd2021d76d68ebc1951287642102cba.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T785 "
											id="wish_03T785" onclick="product.likeProduct('03T785');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view6f83.html?product_cd=03T785"><span>피리아토
													리베카 페리코네 </span><span class="en">FIRRIATO RIBECA PERRICONE</span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0D8EA">레드</span> <span
											style="background: #E0D8EA">이탈리아</span> <span
											style="background: #E0D8EA">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">40%</em>
											<del>150,000원</del>
											<ins>90,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background: #E0EBF8">
									<a href="product_view8db4.html?product_cd=02B045"
										class="prd_img table_box"> <picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
										<source
											srcset="/uploads/product/200/cb9b2a97459c8e39e07729e53fa32cc1.png"
											media="(min-width:1024px)">
										<!-- pc이미지 -->
										<source
											srcset="/uploads/product/200/cb9b2a97459c8e39e07729e53fa32cc1.png"
											media="(max-width:1023px)">
										<!-- mb이미지 --> <!--[if IE 9]></video><![endif]--> <img
											src="../../uploads/product/200/cb9b2a97459c8e39e07729e53fa32cc1.png"
											loading="lazy" alt=""><!-- pc이미지 --> </picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_02B045 "
											id="wish_02B045" onclick="product.likeProduct('02B045');">
											<span>찜하기</span>
										</button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="product_view8db4.html?product_cd=02B045"><span>뵈브
													드 베르네 아이스 드미 섹 200ml</span><span class="en">VEUVE DU VERNAY
													BRUT ICE DEMI SEC</span></a>
										</p>
										<p class="prd_info">샤르마 방식(Charmat Method) 생산 / 도사쥬:
											38gr/L (Demi-Sec)</p>
									</div>
									<div class="cate_label">
										<span style="background: #E0EBF8">스파클링</span> <span
											style="background: #E0EBF8">프랑스</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">13%</em>
											<del>12,000원</del>
											<ins>10,500원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>

				<div class="pagination">
					<a
						href="product_lists9852.html?sh_category1_cd=10000&amp;sh_category2_cd=10100"
						data-ci-pagination-page="1" rel="start" class="">&lt;&lt;</a><a
						href="product_lists9852.html?sh_category1_cd=10000&amp;sh_category2_cd=10100"
						data-ci-pagination-page="1" rel="prev" class="">&lt;</a><span
						class="page"><a href="#self" class="on">1</a><a
						href="product_lists1c12.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=2"
						data-ci-pagination-page="2">2</a><a
						href="product_listsaa3a.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=3"
						data-ci-pagination-page="3">3</a><a
						href="product_lists3ad3.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=4"
						data-ci-pagination-page="4">4</a><a
						href="product_listse51b.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=5"
						data-ci-pagination-page="5">5</a><a
						href="product_listsef68.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=6"
						data-ci-pagination-page="6">6</a><a
						href="product_lists79f4.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=7"
						data-ci-pagination-page="7">7</a><a
						href="product_lists0a8d.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=8"
						data-ci-pagination-page="8">8</a><a
						href="product_lists3972.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=9"
						data-ci-pagination-page="9">9</a><a
						href="product_listsb188.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=10"
						data-ci-pagination-page="10">10</a></span><a
						href="product_lists1c12.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=2"
						data-ci-pagination-page="2" rel="next" class="">&gt;</a><a
						href="product_lists0783.html?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;page=16"
						data-ci-pagination-page="16" class="">&gt;&gt;</a>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>