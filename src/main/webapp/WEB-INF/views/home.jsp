<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<title>Home</title>
<!-- <!-- 합쳐지고 최소화된 최신 CSS
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

부가적인 테마
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

합쳐지고 최소화된 최신 자바스크립트
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="resources/style.css" type="text/css">
</head>
<body>
<div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">REGISTER</button>
                </div>
                <div class="social-icons">
                    <img src="resources/img/fb.png" alt="facebook">
                    <img src="resources/img/tw.png" alt="twitter">
                    <img src="resources/img/gl.png" alt="google">
                </div>
                <form method="POST" id="login" action="/member/login" class="input-group">
                    <input type="text" id="user_id" name="user_id" class="input-field" placeholder="아이디를 입력해 주세요" required>
                    <input type="password" id="user_pw" name="user_pw" class="input-field" placeholder="비밀번호를 입력해 주세요" required>
                    <input type="checkbox" class="checkbox"><span>Remember Password</span>
                    <button class="submit">Login</button>
                </form>
                <form method="POST" id="register" action="/member/register" class="input-group">                 
                    <input type="text" id="user_id" name="user_id" class="input-field" placeholder="사용할 아이디" required>
                    <input type="password" id="user_pw" name="user_pw" class="input-field" placeholder="사용할 비밀번호" required>
                    <input type="checkbox" class="checkbox"><span>회원가입 동의</span>
                    <button class="submit">REGISTER</button>
                </form>
            </div>
        </div>
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
        </script>
	<%-- <h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<p>
		<c:if test="${member != null }">
			<a href="/board/listPageSearch?num=1">게시물 목록</a><br /> 
			<a href="/board/write">게시물 작성</a><br />
		</c:if>
	</p>
	<c:if test="${member == null }">
	<form method="POST" role="form" autocomplete="off" action="/member/login">
		<p>
			<label for="user_id">아이디</label> 
			<input type="text" id="user_id" name="user_id" />
		</p>
		<p>
			<label for="user_pw">비밀번호</label> 
			<input type="password" id="user_pw" name="user_pw" />
		</p>
		<p>
			<button type="submit">로그인</button>
		</p>
		<p>
			<a href="/board/register">회원가입</a>
		</p>
	</form>
	</c:if>
	<c:if test="${msg == false }">
		<p style="color:#f00;">로그인에 실패하였습니다. 아이디 또는 패스워드를 다시 입력해주십시요.</p>
	</c:if>
	
	<c:if test="${member != null }">
		<p>${member.user_id}님 환영합니다.</p>
		<a href="/member/logout">로그아웃</a>
	</c:if> --%>
</body>
</html>
