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
<!--                    <a target="_blank" href="http://jobcan.co.kr">-->
<!--                        <img src="/st/image/header/jobcan_logo_foreign.png" style="width: calc(200px * 0.727);" alt="JOBCAN">-->
<!--                    </a>-->
                    <img src="images/admin/wine_village.png" style="width: calc(200px * 0.727);" alt="Wine Village">
                </h1>
            </div>
            <h2 class="login-title">관리자 페이지 로그인</h2>
            <form method="post" action="/login/pc-employee-global" name="form" role="form">
                <div class="form-group">
                    <label for="client_id">관리자 ID</label>
                    <input id="client_id" type="text" class="form-control" name="client_id" value="">
                </div>
<!--                <div class="form-group">-->
<!--                    <label for="email">메일주소 또는 직원코드</label>-->
<!--                    <input id="email" type="text" class="form-control" name="email" value="">-->
<!--                </div>-->
                <div class="form-group">
                    <label for="password">패스워드</label>
                    <input id="password" type="password" class="form-control" name="password">
                </div>
                <div class="form-group" style="display: table;">
                    <input id="save" class="save" type="checkbox" name="save_login_info" value="0">
                    <label class="save" for="save">로그인 정보 저장</label>
                </div>
                <div class="form-group" style="margin-bottom: 5px;">
                    <button type="submit" class="btn-login" onClick="setCookie()" >로그인</button>
                </div>
                <input type="hidden" name="url" value="/pc-employee-global">
                <input type="hidden" name="login_type"  value="1">
                <input type="hidden" name="lang_code"  value="ko">
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
    <button type="button" class="btn-login" onClick="location.href='admin_index.do'">관리자 페이지이동</button>
</div>
</body>
</html>