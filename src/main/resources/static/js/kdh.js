var code = "";
$(".send").click(function() {
	alert("인증번호 발송이 완료되었습니다.\n");
	var phone = $("#phone").val();
	$.ajax({
		url: "/join_form.do", // 여기를 수정해야 합니다.
		type: "POST",
		data: { phone: phone }, // 여기도 수정해야 합니다.
		success: function(data) {
			const checkNum = data;

			$('#enterBtn').click(function() {
				const userNum = $('#certification').val();
				if (checkNum == userNum) {
					alert('인증 성공하였습니다.');
				} else {
					alert('인증 실패하였습니다. 다시 입력해주세요.');
				}
			});
		}
	});
});
