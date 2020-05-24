<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/main/header.css"> 

<header id="main-header">
	<section id="top-contents-box">
		<div class="top-contents">
			<div class="support">
				<img src="https://s33.postimg.cc/fg6w0x1a7/Icon-headset.png"
					alt="headset-icon"> <span class="support-tel" tabindex="0"><data
						value="24/7 037-2339-9874">24/7 037-2339-9874</data></span>
			</div>
			<h2>
				<a href="#">EunSam</a> 
			</h2>
			<div class="top-menu clearfix">
				<ul>
					<li><a href="#" class="purchase-list"><img
							src="https://s33.postimg.cc/ahjdmecwv/Icon-lock.png"
							alt="lock-icon"></a></li>
					<c:if test="${empty loginUser}">
						<li><img
							src="https://s33.postimg.cc/7ng88wsq7/Icon-face.png"
							alt="face-icon"><a href="/app/auth/form"
							class="user-logIn">LOG IN<a></li>
					</c:if>
					<c:if test="${not empty loginUser}">
						<li><a href="#" class='user-logIn'>Hello! ${loginUser.memberNo}</a></li>
						<li><a class='user-logIn' href='/app/auth/logout'>Sign out</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</section>
	<nav class="main-menu clearfix">
		<ul>
			<li><a href="#">MEN</a><img
				src="https://s33.postimg.cc/ltvz478r3/Icon-select.png"
				alt="select-icon"></li>
			<li><a href="#">WOMEN</a><img
				src="https://s33.postimg.cc/ltvz478r3/Icon-select.png"
				alt="select-icon"></li>
			<li><a href="#">KIDS</a><img
				src="https://s33.postimg.cc/ltvz478r3/Icon-select.png"
				alt="select-icon"></li>
			<li><a href="#">COLLECTION</a><img
				src="https://s33.postimg.cc/ltvz478r3/Icon-select.png"
				alt="select-icon"></li>
			<li><a href="#">OUTERWEAR</a><img
				src="https://s33.postimg.cc/ltvz478r3/Icon-select.png"
				alt="select-icon"></li>
			<li><a href="#">SALE</a></li>
			<li><a href="#">ABOUT</a></li>
			<li><a href="#">BLOG</a></li>
			<li><a href="#">SERVICES</a></li>
			<li><a href="#">CONTACTS</a></li>
		</ul>
	</nav>
</header>
