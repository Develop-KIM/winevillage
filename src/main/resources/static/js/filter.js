/************************ 필터 ************************/
$(function() {
  $("#info_ul li").first().addClass("on"); // 대분류 처음꺼
  $(".js_tabCon").first().addClass("on"); // 중분류 처음꺼
});

function filter_submit() {
  var seq = '';
  var html = '';
  $(".current_filter").empty(); // 클릭마다 초기화
  $("#page").val(1);
  $("input[name='searchField']:checked, input[name='priceRange']:checked").each(function() {
    if (seq == "") {
      seq = String($(this).val());
    } else {
      seq = String($(this).val()) + "," + seq;
    }
    html += '<div class="check_select item_chk" id="filtet_btn_' + $(this).val() + '" onclick="DelFilterEvent(' + $(this).val() + ');">';
    html += $(this).data('nm');
    html += '<button type="button" class="del" name="del_btn" value="' + $(this).val() + '" onclick="DelFilterEvent(' + $(this).val() + ');">삭제</button>';
    html += '</div>';
  });
  html += '<button type="button" class="reset" onclick="all_reset();">초기화</button>';
  $(".current_filter").html(html);
  if ($('.current_filter .check_select').length > 0) {
    $('.current_filter').removeClass('nodata_fiter');
  } else {
    $('.current_filter').addClass('nodata_fiter');
  }
  $("#sh_filter_code").val(seq);
  if (sessionStorage.getItem("checkFilterList") == seq) {
    $('.btn_filter').addClass('apply');
  } else {
    $('.btn_filter').removeClass('apply');
  }
  DelFilterEvent();
}

function DelFilterEvent() {
  $("#page").val(1);
  $(".current_filter").on('click', "button[name='del_btn']", function() {
    var remove_val = $(this).val();
    $("input:checkbox[name='searchField']:checked").each(function() {
      if ($(this).val() == remove_val) {
        $(this).prop("checked", false);
      }
    });
    $("input:radio[name='priceRange']:checked").each(function() {
      if ($(this).val() == remove_val) {
        $(this).prop("checked", false);
      }
    });
    filter_submit();
  });
}

function all_reset() {
  $("#sh_filter_code").val("");
  $("input:checkbox[name='searchField']").prop("checked", false);
  $("input:radio[name='priceRange']").prop("checked", false);
  $(".current_filter").empty();
  $(".current_filter").addClass("nodata_fiter");
  $('.btn_filter').removeClass('apply');
  sessionStorage.setItem("checkFilterList", $("#sh_filter_code").val());
  var form = document.listFrm;
  form.submit();
}

function filter_btn() {
  var form = document.listFrm;
  form.submit();
}

function goList() {
  window.location.href = 'list_search.do';
}


/************************ 필터 ************************/
