<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="11264373594-v17ti619msdqg94fdh10l60c157u3tl5.apps.googleusercontent.com">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Photogram</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/instaStyle.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/insta.svg">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
<script src="https://apis.google.com/js/platform.js" async defer></script>

<style>
div.abcRioButton {
margin: 0 auto;
}

</style>
</head>

<body>
    <div class="container">
        <main class="loginMain">
        <!--로그인섹션-->
            <section class="login">
               <!--로그인박스-->
                <article class="login__form__container">
                   <!--로그인 폼-->
                   <div class="login__form">
                        <h1><a href="/page/index" ><img src="${pageContext.request.contextPath}/resources/images/sky.png" alt=""></a></h1>
                        
                        <!--로그인 인풋-->
                        <form class="login__input" action="/page/getID" method="post"id="signFrm">
                            <input type="text" name="name" placeholder="이름" id="name">
                       		<input type="email" class="email_input" name="email" required="/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)?$/i" placeholder="이메일"id="email">
                            <input type="submit" class="findID" id = "signUp"value="아이디 찾기" >
                        </form>
                        <!--로그인 인풋end-->
                        
                    <!--계정이 없으신가요?-->
                    <div class="login__register">
                    	<span>계정이 있으신가요?</span>
                        <a href="/auth/loginForm">로그인</a>
                        <br>
                        <span>계정이 없으신가요?</span>
                        <a href="../auth/joinForm">가입하기</a>
                    </div>
                    <!--계정이 없으신가요?end-->
                </article>
            </section>
        </main>
        
    </div>
</body>

<script type="text/javascript">
	$(document).ready(function(e){
		$('#signUp').click(function(){
			if($.trim($('#name').val()) == ''){
				alert("이름 입력.");
				$('#name').focus();
				return;
			}else if($.trim($('#email').val()) == ''){
				alert("이메일 입력.");
				$('#email').focus();
				return;
			}else{
				$('#signFrm').submit();
			}
		});
	});
</script>

</html>