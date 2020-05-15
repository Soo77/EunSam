
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
    <form action="login" method="POST" name="signinform" onsubmit="return checkAll();">
      <h1>Sign in</h1>
      <div class="social-container">
        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
      </div>
      <span>or use your account</span>
      <input type="text" name="memberNo" placeholder="ID" value='${cookie.memberNo.value}' onblur="memberNo_check();" required/>
      <div id="memberNo_chk" class="vali_check"></div>
      <input type="password" name="password" placeholder="Password" onblur="password_check();" required/>
      <div id="memberNoPassword_chk" class="vali_check"></div>
      <a href="#">Forgot your password?</a>
      <button onblur="check_signin();">Sign In</button>
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


<script type="text/javascript">
		function email_check() {
			var eCheckFlag = false;
			console.log("memberNo_check");
			if (signinform.memberNo.value == "") { // 빈 값 검사
				document.getElementById("memberNo_chk").innerHTML = "이메일을 입력하세요.";
				$("#memberNo_chk").css('color', 'red');
			} else {
				document.getElementById("memberNo_chk").innerHTML = "";
				eCheckFlag = true;
			}
			return eCheckFlag;
		}

		function password_check() {
			var pCheckFlag = false;
			console.log("password_check");
			if (signinform.password.value == "") {
				document.getElementById("password_chk").innerHTML = "비밀번호를 입력하세요.";
				$("#password_chk").css('color', 'red');
			} else {
				document.getElementById("password_chk").innerHTML = "";
				pCheckFlag = true;
			}

			return pCheckFlag;
		}

		function checkAll() {
			var checkCnt = 0;
			if (memberNo_check()) {
				checkCnt++;
			}
			if (password_check()) {
				checkCnt++;
			}

			return checkCnt == 2 ? true : false;
		};
	</script>

</body>
</html>
