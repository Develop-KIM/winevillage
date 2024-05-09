    $("#loginBtn").click(function() {
        var formData = $("#LoginPostFrm").serialize();
        $.ajax({
            type: "POST",
            url: "/login", // Spring Security에 설정된 로그인 URL
            data: formData,
            success: function(response) {
                // 로그인 성공 시 처리
                alert("로그인 성공!");
                location.reload(); // 페이지 새로고침 또는 다른 작업 수행
            },
            error: function(xhr, status, error) {
                // 로그인 실패 시 처리
                alert("로그인 실패: " + xhr.responseText);
            }
        });
    });