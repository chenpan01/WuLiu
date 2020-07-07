<!doctype html>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>翻转式用户登录注册界面设计</title>
	<link rel="stylesheet" type="text/css" href="CSS/log_styles.css">
<style type="text/css">  
body {  
    margin: 0;  
    background-image: url('log_re_image/bg.jpg');    
    background-repeat:no-repeat;  
        background-position:0% 0%;  
    background-size:cover;  
    background-color: #22C3AA;  
}  
</style>
</head>
<!-- 
style="background-image:url(../log_re_image/bg.jpg)"
 -->
<body>
<jsp:include page="top.jsp" />
	<div class="container" style="padding-top:100px">
		<div class="login-wrap">
			<div class="login-html">
				<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">登入</label>
				<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">注册</label>
				<div class="login-form">
					<div class="sign-in-htm">
						<div class="group">
							<label for="user" class="label">用户名</label>
							<input id="user" type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">密码</label>
							<input id="pass" type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"><span class="icon"></span> Keep me Signed in</label>
						</div>
						<div class="group">
							<input type="submit" class="button" value="登入">
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<a href="#forgot">Forgot Password?</a>
						</div>
					</div>
					<div class="sign-up-htm">
						<div class="group">
							<label for="user" class="label">用户名</label>
							<input id="user" type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">密码</label>
							<input id="pass" type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<label for="pass" class="label">重置密码</label>
							<input id="pass" type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<label for="pass" class="label">电子邮箱</label>
							<input id="pass" type="text" class="input">
						</div>
						<div class="group">
							<input type="submit" class="button" value="注册">
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<label for="tab-1">Already Member?</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>