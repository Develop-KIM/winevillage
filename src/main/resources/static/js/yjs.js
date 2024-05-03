var move = function(url){
	if(url == '/'){
		location.reload(true);
		return;
	}
	
	window.addEventListener('popstate', function(event) {
	    move(document.location);
	}, false);
	
	$.ajax({
		type: 'GET',
		url: url,
		async: true,
		data: "",
		contentType: "application/octet-stream; charset=UTF-8",
		success: function(data) {
			history.pushState(null, null, url);
			/* $('#contents').attr('style', 'margin-top: 126px'); */
			$('body').html(data);
			if(isMenuHide) menuOff();
		},
		error: function(request, status, error) {
			alert(error);
		}
	});
}