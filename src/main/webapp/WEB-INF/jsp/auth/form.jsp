
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>SignIn or SignUp</title>
<link rel="stylesheet" href="/css/member/signin.css">
</head>
<body>
<div class="container" id="container">
  <div class="form-container sign-up-container">
    <form action="../member/add" method="POST" name="form">
      <h1>Create Account</h1>
      <div class="social-container">
        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
      </div>
      <span>or use your email for registration</span>
      <input type="text" name="name" placeholder="Name" />
      <input type="text" name="memberNo" placeholder="Id" />
      <input type="password" name="password" placeholder="Password" />
      <input type="email" name="email" placeholder="Email" />
      <button>Sign Up</button>
    </form>
  </div>
  <div class="form-container sign-in-container">
    <form action="login" method="POST" name="signinform">
      <h1>Sign in</h1>
      <div class="social-container">
        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
      </div>
      <span>or use your account</span>
      <input type="text" name="memberNo" placeholder="ID" value='${cookie.memberNo.value}' required/>
      <input type="password" name="password" placeholder="Password" required/>
      <a href="#">Forgot your password?</a>
      <button>Sign In</button>
    </form>
  </div>
  <div class="overlay-container">
    <div class="overlay">
      <div class="overlay-panel overlay-left">
        <h1>Welcome Back!</h1>
        <p>To keep connected with us please login with your personal info</p>
        <button class="ghost" id="signIn">Sign In</button>
      </div>
      <div class="overlay-panel overlay-right">
        <h1>Hello, Friend!</h1>
        <p>Enter your personal details and start journey with us</p>
        <button class="ghost" id="signUp">Sign Up</button>
      </div>
    </div>
  </div>
</div>

// signup and signin 애니메이션 js부분.
<script>
  const signUpButton = document.getElementById('signUp');
  const signInButton = document.getElementById('signIn');
  const container = document.getElementById('container');
  signUpButton.addEventListener('click', () => {
    container.classList.add("right-panel-active");
  });
  signInButton.addEventListener('click', () => {
    container.classList.remove("right-panel-active");
  });
</script>

// json의 결과값으로 id랑 password 맞는지 여부.
<script>
		function check_signin() {
			var userEmail = $("input[name=email]").val();
			var userPssword = $("input[name=password]").val();

			$
					.post(
							"/app/json/auth/login",
							{
								email : userEmail,
								password : userPssword
							},
							function(data) {
								if (data.state == "success") {
									window.location.href = '/app/index';
								} else {
									document.getElementById("password_chk").innerHTML = "가입하지 않은 아이디거나, 잘못된 비밀번호입니다.";
									$("#password_chk").css('color', 'red');
								}
							});
		}
</script>
</body>
</html>
