$(document).ready(function() {
    // 아이디 입력 필드에서 keyup 이벤트 감지
    $("#memberId").on("keyup", function() {
        var memberId = $(this).val();
        console.log("아이디: " + memberId);
        
        // 아이디 유효성 검사
        var isValid = validateMemberId(memberId);
        
        // 유효성 검사 결과에 따라 메시지 표시
        if (isValid) {
            $("#id_info").text("사용 가능한 아이디입니다.").removeClass("invalid").addClass("valid");
        } else {
            $("#id_info").text("5~20자의 소문자 영문으로만 가능합니다.").removeClass("valid").addClass("invalid");
        }
    });
});