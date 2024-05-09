//주문자정보 동일 버튼
$(function() {
    $("#copy_mem_info").click(function() {
        if ($(this).is(":checked")) {
            // 주문자 정보 가져오기
            var orderName = $("#or_name").val();
            var orderPhoneNumber = $("#or_hp").val();
            var orderAddress = $("#address1").val();

            // 수령자 정보에 복사
            $("#receipt_name").val(orderName);
            $("#receipt_tel").val(orderPhoneNumber);
            $("#receipt_address1").val(orderAddress);
        } else {
            // 체크박스 해제 시 입력 필드 초기화
            $("#receipt_name").val("");
            $("#receipt_tel").val("");
            $("#receipt_address1").val("");
        }
    });
});

//포인트 동기화, 포인트 전액사용
$(document).ready(function() {
    $('#use_reserve').on('input', function() {
        var useReserve = $(this).val();
        var reservePrice = useReserve ? '-' + addCommas(useReserve) + '원' : '- 0원';
        $('#reserve_price_dd').text(reservePrice);
    });

    $('#all_use_reserve').on('click', function() {
        if ($(this).is(':checked')) {
            $('#use_reserve').val(availablePoints);
            var reservePrice = '-' + addCommas(availablePoints) + '원';
            $('#reserve_price_dd').text(reservePrice);
        } else {
            $('#use_reserve').val(0);
            $('#reserve_price_dd').text('- 0원');
        }
    });

    function addCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
});