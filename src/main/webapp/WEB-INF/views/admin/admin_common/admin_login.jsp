<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<head>
<link rel="stylesheet" href="css/admin/login.css">
<link rel="stylesheet" href="css/admin/admin.css">
</head>
<html lang="ko">
<body>
<div class="login-content">
    <div class="login-container">
        <div class="login-block">
            <div class="login-logo">
                <h1>
                    <img src="images/admin/wine_village.png" style="width: calc(200px * 0.727);" alt="Wine Village">
                </h1>
            </div>
            <h2 class="login-title">관리자 페이지 로그인</h2>
            <form method="post" action="/admin_login.do">
                <div class="form-group">
                    <label >관리자 ID</label>
                    <input type="text" class="form-control" name="admin_id" value="">
                </div>
                <div class="form-group">
                    <label >패스워드</label>
                    <input type="password" class="form-control" name="admin_pass" value="">
                </div>
    <!--             <div class="form-group" style="display: table;">
                    <input id="save" class="save" type="checkbox" name="save_login_info" value="0">
                    <label class="save" for="save">로그인 정보 저장</label>
                </div> -->
                <div class="form-group" style="margin-bottom: 5px;">
                    <button type="submit" class="btn-login" >로그인</button>
                </div>
            </form>
            <br />
            <style>
                li.langage-choices {
                    display: inline-block;
                //width: 5em;
                    margin-left: 1em;
                }
            </style>
        </div>
    </div>
</div>
</body>
</html>