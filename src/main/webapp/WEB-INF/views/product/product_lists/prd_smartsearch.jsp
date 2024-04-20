<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="layer filter_layer" style="display: none;">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">SMART SEARCH</div>
				<div class="layer_con">
					<div class="filter">
						<div class="check_area ">
							<p>와인 종류</p>
							<div class="check_type">
								<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_29" value="29" data-nm="레드" onclick="filter_submit();">
									<label for="type_check_29">레드</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_28" value="28" data-nm="화이트" onclick="filter_submit();">
									<label for="type_check_28">화이트</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_27" value="27" data-nm="스파클링" onclick="filter_submit();">
									<label for="type_check_27">스파클링</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_26" value="26" data-nm="디저트" onclick="filter_submit();">
									<label for="type_check_26">디저트</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_25" value="25" data-nm="로제" onclick="filter_submit();">
									<label for="type_check_25">로제</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_100" value="100" data-nm="주정강화" onclick="filter_submit();">
									<label for="type_check_100">주정강화</label>
								</div>
							</div>
						</div>
						<div class="check_area price">
							<p>
								가격
							</p>
							<div class="check_type">
								<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
								<div class="checkbox radio">
									<input type="radio" name="item_seq" id="type_check_35" value="35" data-nm="~30,000" onclick="filter_submit();">
									<label for="type_check_35">~30,000</label>
								</div>
								<div class="checkbox radio">
									<input type="radio" name="item_seq" id="type_check_36" value="36" data-nm="30,000~60,000" onclick="filter_submit();">
									<label for="type_check_36">30,000~60,000</label>
								</div>
								<div class="checkbox radio">
									<input type="radio" name="item_seq" id="type_check_66" value="66" data-nm="60,000~100,000" onclick="filter_submit();">
									<label for="type_check_66">60,000~100,000</label>
								</div>
								<div class="checkbox radio">
									<input type="radio" name="item_seq" id="type_check_67" value="67" data-nm="100,000~" onclick="filter_submit();">
									<label for="type_check_67">100,000~ </label>
								</div>
							</div>
						</div>
						<div class="check_area ">
							<p>생산 국가</p>
							<div class="check_type">
								<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_75" value="75" data-nm="프랑스" onclick="filter_submit();">
									<label for="type_check_75">프랑스</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_76" value="76" data-nm="이탈리아" onclick="filter_submit();">
									<label for="type_check_76">이탈리아</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_77" value="77" data-nm="스페인" onclick="filter_submit();">
									<label for="type_check_77">스페인</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_80" value="80" data-nm="미국" onclick="filter_submit();">
									<label for="type_check_80">미국</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_78" value="78" data-nm="독일" onclick="filter_submit();">
									<label for="type_check_78">독일</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_79" value="79" data-nm="칠레" onclick="filter_submit();">
									<label for="type_check_79">칠레</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_83" value="83" data-nm="아르헨티나" onclick="filter_submit();">
									<label for="type_check_83">아르헨티나</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_81" value="81" data-nm="호주" onclick="filter_submit();">
									<label for="type_check_81">호주</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_82" value="82" data-nm="뉴질랜드" onclick="filter_submit();">
									<label for="type_check_82">뉴질랜드</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_103" value="103" data-nm="포루투갈" onclick="filter_submit();">
									<label for="type_check_103">포루투갈</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_114" value="114" data-nm="기타구대륙" onclick="filter_submit();">
									<label for="type_check_114">기타구대륙</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_115" value="115" data-nm="기타신대륙" onclick="filter_submit();">
									<label for="type_check_115">기타신대륙</label>
								</div>
							</div>
						</div>
						<div class="check_area ">
							<p>
								생산 지역
							</p>
							<div class="check_type">
								<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_198" value="198" data-nm="랑그독루시용" onclick="filter_submit();">
									<label for="type_check_198">랑그독루시용</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_199" value="199" data-nm="론" onclick="filter_submit();">
									<label for="type_check_199">론</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_71" value="71" data-nm="보르도" onclick="filter_submit();">
									<label for="type_check_71">보르도</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_177" value="177" data-nm="루아르" onclick="filter_submit();">
									<label for="type_check_177">루아르</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_202" value="202" data-nm="보졸레" onclick="filter_submit();">
									<label for="type_check_202">보졸레</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_72" value="72" data-nm="부르고뉴" onclick="filter_submit();">
									<label for="type_check_72">부르고뉴</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_203" value="203" data-nm="샴페인" onclick="filter_submit();">
									<label for="type_check_203">샴페인</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_204" value="204" data-nm="알자스" onclick="filter_submit();">
									<label for="type_check_204">알자스</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_205" value="205" data-nm="프로방스" onclick="filter_submit();">
									<label for="type_check_205">프로방스</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_206" value="206" data-nm="라치오" onclick="filter_submit();">
									<label for="type_check_206">라치오</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_207" value="207" data-nm="롬바르디아" onclick="filter_submit();">
									<label for="type_check_207">롬바르디아</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_208" value="208" data-nm="리구리아" onclick="filter_submit();">
									<label for="type_check_208">리구리아</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_209" value="209" data-nm="베네토" onclick="filter_submit();">
									<label for="type_check_209">베네토</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_180" value="180" data-nm="시실리" onclick="filter_submit();">
									<label for="type_check_180">시실리</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_210" value="210" data-nm="아브루쪼" onclick="filter_submit();">
									<label for="type_check_210">아브루쪼</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_211" value="211" data-nm="에밀리아" onclick="filter_submit();">
									<label for="type_check_211">에밀리아 </label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_212" value="212" data-nm="움브리아" onclick="filter_submit();">
									<label for="type_check_212">움브리아</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_213" value="213" data-nm="캄파니아" onclick="filter_submit();">
									<label for="type_check_213">캄파니아</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_74" value="74" data-nm="토스카나" onclick="filter_submit();">
									<label for="type_check_74">토스카나</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_214" value="214" data-nm="풀리아" onclick="filter_submit();">
									<label for="type_check_214">풀리아</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_215" value="215" data-nm="프리울리" onclick="filter_submit();">
									<label for="type_check_215">프리울리</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_73" value="73" data-nm="피에몬테" onclick="filter_submit();">
									<label for="type_check_73">피에몬테</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_216" value="216" data-nm="갈리시아" onclick="filter_submit();">
									<label for="type_check_216">갈리시아</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_217" value="217" data-nm="까딸루냐 " onclick="filter_submit();">
									<label for="type_check_217">까딸루냐</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_218" value="218" data-nm="나바라 " onclick="filter_submit();">
									<label for="type_check_218">나바라</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_178" value="178" data-nm="리오하" onclick="filter_submit();">
									<label for="type_check_178">리오하</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_219" value="219" data-nm="카스틸라 라만차" onclick="filter_submit();">
									<label for="type_check_219">카스틸라 라만차</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_220" value="220" data-nm="카스틸라 이 레온" onclick="filter_submit();">
									<label for="type_check_220">카스틸라 이 레온</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_221" value="221" data-nm="캘리포니아" onclick="filter_submit();">
									<label for="type_check_221">캘리포니아</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_222" value="222" data-nm="오레곤" onclick="filter_submit();">
									<label for="type_check_222">오레곤</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_223" value="223" data-nm="워싱턴 " onclick="filter_submit();">
									<label for="type_check_223">워싱턴</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_230" value="230" data-nm="기타" onclick="filter_submit();">
									<label for="type_check_230">기타</label>
								</div>
							</div>
						</div>
						<div class="check_area ">
							<p>포도 품종</p>
							<div class="check_type">
								<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_37" value="37" data-nm="카베르네 소비뇽" onclick="filter_submit();">
									<label for="type_check_37">카베르네 소비뇽</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_157" value="157" data-nm="쉬라즈" onclick="filter_submit();">
									<label for="type_check_157">쉬라즈</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_38" value="38" data-nm="메를로" onclick="filter_submit();">
									<label for="type_check_38">메를로</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_92" value="92" data-nm="카베르네 프랑" onclick="filter_submit();">
									<label for="type_check_92">카베르네 프랑</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_90" value="90" data-nm="템프라니요" onclick="filter_submit();">
									<label for="type_check_90">템프라니요</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_87" value="87" data-nm="피노 누아" onclick="filter_submit();">
									<label for="type_check_87">피노 누아</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_88" value="88" data-nm="말벡" onclick="filter_submit();">
									<label for="type_check_88">말벡</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_168" value="168" data-nm="진판델" onclick="filter_submit();">
									<label for="type_check_168">진판델</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_89" value="89" data-nm="산지오베제" onclick="filter_submit();">
									<label for="type_check_89">산지오베제</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_164" value="164" data-nm="가메" onclick="filter_submit();">
									<label for="type_check_164">가메</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_167" value="167" data-nm="네비올로" onclick="filter_submit();">
									<label for="type_check_167">네비올로</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_156" value="156" data-nm="카르메네르" onclick="filter_submit();">
									<label for="type_check_156">카르메네르</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_91" value="91" data-nm="그르나슈" onclick="filter_submit();">
									<label for="type_check_91">그르나슈</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_231" value="231" data-nm="몬테풀치아노" onclick="filter_submit();">
									<label for="type_check_231">몬테풀치아노</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_232" value="232" data-nm="바르베라" onclick="filter_submit();">
									<label for="type_check_232">바르베라</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_171" value="171" data-nm="샤르도네" onclick="filter_submit();">
									<label for="type_check_171">샤르도네</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_161" value="161" data-nm="세미용" onclick="filter_submit();">
									<label for="type_check_161">세미용</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_159" value="159" data-nm="소비뇽 블랑" onclick="filter_submit();">
									<label for="type_check_159">소비뇽 블랑</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_160" value="160" data-nm="리슬링" onclick="filter_submit();">
									<label for="type_check_160">리슬링</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_224" value="224" data-nm="슈냉 블랑" onclick="filter_submit();">
									<label for="type_check_224">슈냉 블랑</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_225" value="225" data-nm="모스카토" onclick="filter_submit();">
									<label for="type_check_225">모스카토</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_166" value="166" data-nm="피노그리" onclick="filter_submit();">
									<label for="type_check_166">피노그리</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_226" value="226" data-nm="비오니에" onclick="filter_submit();">
									<label for="type_check_226">비오니에</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_163" value="163" data-nm="게뷔르츠트라미너" onclick="filter_submit();">
									<label for="type_check_163">게뷔르츠트라미너</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_227" value="227" data-nm="그뤼너 펠트리너" onclick="filter_submit();">
									<label for="type_check_227">그뤼너 펠트리너</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_162" value="162" data-nm="베르데호" onclick="filter_submit();">
									<label for="type_check_162">베르데호</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_228" value="228" data-nm="알리고떼" onclick="filter_submit();">
									<label for="type_check_228">알리고떼</label>
								</div>
								<div class="checkbox type2">
									<input type="checkbox" name="item_seq" id="type_check_174" value="174" data-nm="기타" onclick="filter_submit();">
									<label for="type_check_174">기타</label>
								</div>
							</div>
						</div>
					</div>
					<div class="bottom">
						<div class="current_filter filter_item nodata_fiter">
							<button type="button" class="reset" onclick="all_reset();">초기화</button>
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt btn_filter" onclick="filter_btn();">적용</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>