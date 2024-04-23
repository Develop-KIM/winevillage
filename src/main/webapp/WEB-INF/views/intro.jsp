<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="shortcut icon" href="./images/default/favicon.ico"
	type="image/x-icon" />
<link rel="icon" href="./images/default/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="./css/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" href="./css/layouta0da.css" />
<link rel="stylesheet" type="text/css" href="./css/layout_pcdc60.css"
	media="screen and (min-width:1024px)">
<link rel="stylesheet" type="text/css" href="./css/layout_jj7f50.css" />
<link rel="stylesheet" type="text/css" href="./css/layout_pc_jj7d5a.css"
	media="screen and (min-width:1024px)">
<link rel="stylesheet" type="text/css" href="./css/layout_elly302b.css" />
<link rel="stylesheet" type="text/css"
	href="./css/layout_pc_elly1d8d.css"
	media="screen and (min-width:1024px)">
<link rel="stylesheet" type="text/css" href="./css/layout_ch1bc4.css" />
<link rel="stylesheet" type="text/css" href="./css/layout_pc_chae31.css"
	media="screen and (min-width:1024px)">
<link rel="stylesheet" type="text/css" href="./css/layout_sy6617.css" />
<link rel="stylesheet" type="text/css" href="./css/layout_pc_sy231a.css"
	media="screen and (min-width:1024px)">
<link rel="stylesheet" type="text/css" href="./css/main99d9.css" />
<link rel="stylesheet" type="text/css" href="./css/main_pc2092.css"
	media="screen and (min-width:1024px)">
<title>와인 빌리지</title>
</head>
<body>
	<form action="/setCookie" method="get">
		<div class="content intro_page">
			<div class="intro_area">
				<div class="txt_area">
					<div class="inner_box">
						<h2 class="logo">
							<a href="/"><img src="./images/default/wine_village.svg"
								alt="인트로 와인빌리지"></a>
						</h2>
						<p class="txt">
							만 19세 이상 <br class="pc_hidden">음주 가능한 연령입니까 ?
						</p>
						<div class="btn_area col2">
							<button type="submit" class="btn_txt btn_black">예</button>
							<button type="button" onclick="alert('19세 미만은 이용하실 수 없습니다.')"
								class="btn_txt">아니요</button>
						</div>
						<div class="sub_area">
							<p class="sub_txt">이 사이트는 만 19세 이상만 입장 가능합니다.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>