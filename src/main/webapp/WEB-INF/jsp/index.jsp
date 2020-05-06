
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>림심</title>
<link rel="stylesheet" href="/css/main/index.css">
</head>
<body>
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
						<li><a href="#" class="lang-setting">EN</a><img
							src="https://s33.postimg.cc/ltvz478r3/Icon-select.png"
							alt="select-icon"></li>
						<li><a href="#" class="currency">USD</a><img
							src="https://s33.postimg.cc/ltvz478r3/Icon-select.png"
							alt="select-icon"></li>
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
							<li><a href="#" class='user-logIn'>Hello! ${member.memberNo}</a></li>
						</c:if>
						<c:if test="${not empty loginUser}">
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
	<main id="main-content">
		<div class="main-slider">
			<div class="slider-title">
				<h2>arbuzz</h2>
				<p>Up to 70% off sale</p>
			</div>
			<img class="slider-top-img"
				src="https://s33.postimg.cc/dpnuzdelb/woman.png" alt="woman">
			<img class="slider-bottom-img"
				src="https://s33.postimg.cc/qttfc1r7j/woman.jpg" alt="woman">
		</div>
		<div class="product-view clearfix">
			<div class="product-module1 clearfix">
				<div class="product-sub1">
					<h3>shoes</h3>
					<p>sale</p>
				</div>
				<div class="product-sub2">
					<h3>
						leather <br> bags
					</h3>
				</div>
				<div class="product-sub3">
					<h3>collection</h3>
					<p>fall 2016</p>
					<label><button type="button" class="btn-type-01">more</button></label>
				</div>
			</div>
			<div class="product-module2">
				<h3>women</h3>
				<p>save 50%</p>
				<label><button type="button" class="btn-type-01">shop
						now</button></label>
			</div>
		</div>
		<div class="product-toggle">
			<div class="toggle-box clearfix">
				<p>
					<span>FEATRUED PRODUCTS</span> <img
						src="https://s33.postimg.cc/564h1ptf3/marker.png" alt="marker"
						class="marker1">
				</p>
				<p>
					<span>NEW ARRIVALS</span> <img
						src="https://s33.postimg.cc/564h1ptf3/marker.png" alt="marker"
						class="marker2">
				</p>
				<p>
					<span>BEST SELLERS</span> <img
						src="https://s33.postimg.cc/564h1ptf3/marker.png" alt="marker"
						class="marker3">
				</p>
			</div>
		</div>
		<div class="product-list-box">
			<ul>
				<li class="product-list">
					<div class="add-buttons clearfix">
						<button type="button" class="add-cart"></button>
						<button type="button" class="add-wishlist"></button>
					</div>
					<div class="new-label">
						<p>NEW</p>
					</div>
					<div class="product-thumb">
						<img
							src="https://s33.postimg.cc/lwfuqtmmn/flowy-printed-dress.jpg"
							alt="flowy-printed-dress">
					</div>
					<div class="product-price">
						<h4>flowy printed dress</h4>
						<p>$16</p>
					</div>
				</li>
				<li class="product-list">
					<div class="add-buttons clearfix">
						<button type="button" class="add-cart"></button>
						<button type="button" class="add-wishlist"></button>
					</div>
					<div class="new-label">
						<p>NEW</p>
					</div>
					<div class="product-thumb">
						<img src="https://s33.postimg.cc/oqj049h33/fitted-dress.jpg"
							alt="fitted-dress">
					</div>
					<div class="product-price">
						<h4>fitted dress</h4>
						<p class="discount-price">
							$29,99<s>$35</s>
						</p>
					</div>
				</li>
				<li class="product-list">
					<div class="add-buttons clearfix">
						<button type="button" class="add-cart"></button>
						<button type="button" class="add-wishlist"></button>
					</div>
					<div class="hit-label">
						<p>HIT</p>
					</div>
					<div class="product-thumb">
						<img src="https://s33.postimg.cc/qv3d5d5v3/fluted-hem-dress.jpg"
							alt="fluted-hem-dress">
					</div>
					<div class="product-price">
						<h4>futed hem dress</h4>
						<p>$48,99</p>
					</div>
				</li>
				<li class="product-list">
					<div class="add-buttons clearfix">
						<button type="button" class="add-cart"></button>
						<button type="button" class="add-wishlist"></button>
					</div>
					<div class="sale-label">
						<p>
							SALE <br>30%
						</p>
					</div>
					<div class="product-thumb">
						<img
							src="https://s33.postimg.cc/4vwyi5hb3/textured-pleats-dress.jpg"
							alt="textured-pleats-dress">
					</div>
					<div class="product-price">
						<h4>textured pleats dress</h4>
						<p>$35,99</p>
					</div>
				</li>
			</ul>
		</div>
		<section class="arbuzz-intro">
			<h3>about us</h3>
			<blockquote>
				<p>Contrary to popular belief, Lorem Ipsum is notsimply random
					text. It has roots in a piece ofclassical Latin literature from 45
					BC, making itover 2000 years old. Richard McClintock, a
					Latinprofessor at Hampden-Sydney College in Virginia,looked up one
					of the more obscure Latin words,consectetur, from a Lorem Ipsum
					passage, and goingthrough the cites of the word in
					classicalliterature, discovered the undoubtable source.Lorem Ipsum
					comes from sections 1.10.32 and 1.10.33of "de Finibus Bonorum et
					Malorum" (The Extremes ofGood and Evil) by Cicero, written in 45
					BC. Thisbook is a treatise on the theory of ethics, verypopular
					during the</p>
			</blockquote>
			<div class="button-box">
				<button type="button" class="btn-type-02">about more</button>
			</div>
		</section>
		<div class="blog-article-title">
			<h1>from the blog</h1>
		</div>
		<div class="product-toggle2">
			<div class="toggle-box2 clearfix">
				<p>
					<span>LAST ARTICLES</span> <img
						src="https://s33.postimg.cc/564h1ptf3/marker.png" alt="marker"
						class="marker5">
				</p>
				<p>
					<span>MOST VIEWED</span> <img
						src="https://s33.postimg.cc/564h1ptf3/marker.png" alt="marker"
						class="marker6">
				</p>
				<p>
					<span>FEATURED</span> <img
						src="https://s33.postimg.cc/564h1ptf3/marker.png" alt="marker"
						class="marker7">
				</p>
			</div>
		</div>
		<section class="blog-articles clearfix">
			<h2 hidden>blog title</h2>
			<article class="blog-box blog-article-01">
				<h3>TECHNO</h3>
				<p>Sci-Fi Films Make Us Think Real-Life Robots Will Be Rriendly
					Says Study</p>
				<p>Robotics designers should model robots based on those in
					films if they want the public to interact</p>
				<img src="https://s33.postimg.cc/807mf3qfj/Icon-clock.png"
					alt="clock-icon"> <span class="posting-time"><data
						value="5">5</data> minutes ago</span>
			</article>
			<article class="blog-box blog-article-02">
				<h3>LIFE</h3>
				<p>Kanye West Claims He Sold $1 Million Worth Of Merchandise In
					Two Dayse</p>
				<p>We sort of want to see the receipts though.</p>
				<img src="https://s33.postimg.cc/cyv4tm733/Icon-comments.png"
					alt="comment-icon"> <span class="posting-number"><data
						value="43">43</data></span>
			</article>
			<article class="blog-box blog-article-03">
				<h3>TRAVEL</h3>
				<div class="post-bg">
					<p>
						The Five Most <br>Lust-Worthy Watches From Baselworld
					</p>
				</div>
				<div class="post-author">
					<img src="https://s33.postimg.cc/7d8ppu91r/jared-paul-stern.png"
						alt="jared-paul-stern">
					<p>jared-paul-stern</p>
				</div>
			</article>
		</section>
	</main>
	<footer id="main-footer">
		<section class="footer-top">
			<h4 hidden>footer product list</h4>
			<div class="footer-list-box">
				<div class="footer-product-list clearfix">
					<ul>
						<li class="list-category">men</li>
						<li><a href="#">Jeans</a></li>
						<li><a href="#">Jumpers</a></li>
						<li><a href="#">Leather</a></li>
						<li><a href="#">Polo Shirts</a></li>
						<li><a href="#">Shorts</a></li>
						<li><a href="#">Boots</a></li>
						<li><a href="#">Watches</a></li>
					</ul>
					<ul>
						<li class="list-category">women</li>
						<li><a href="#">Dresses</a></li>
						<li><a href="#">Jumpsuits</a></li>
						<li><a href="#">Shirts</a></li>
						<li><a href="#">T-shirts</a></li>
						<li><a href="#">Sweatshirts</a></li>
						<li><a href="#">Jackets</a></li>
						<li><a href="#">Coats</a></li>
					</ul>
					<ul>
						<li class="list-category">kids</li>
						<li><a href="#">Shirts</a></li>
						<li><a href="#">T-shirts</a></li>
						<li><a href="#">Polos</a></li>
						<li><a href="#">Sweaters</a></li>
						<li><a href="#">Sweatshirts</a></li>
						<li><a href="#">Jackets</a></li>
						<li><a href="#">Watches</a></li>
					</ul>
				</div>
				<div class="footer-contact-list">
					<p>follow us</p>
					<a href="#"><img
						src="https://s33.postimg.cc/5vn9e2m8v/Icon-_Twitter.png"
						alt="Twitter" class="sns-icon"></a> <a href="#"><img
						src="https://s33.postimg.cc/eqo3ok8gf/Icon-_Instagram.png"
						alt="Instagram" class="sns-icon"></a> <a href="#"><img
						src="https://s33.postimg.cc/9s0la0p7z/Icon-_Facebook.png"
						alt="Facebook" class="sns-icon"></a> <a href="#"><img
						src="https://s33.postimg.cc/bwkyb3j4v/Icon-_Dribbble.png"
						alt="Dribbble" class="sns-icon"></a> <a href="#"><img
						src="https://s33.postimg.cc/xvrcy9xe7/Icon-_Behance.png"
						alt="Behance" class="sns-icon"></a>
				</div>
				<div class="footer-subscription">
					<p>subscribe us</p>
					<label> <input type="email" id="user_mail"
						placeholder="E-mail" class="user_mail"></label> <label>
						<button type="button" class="apply-button"></button>
					</label>
				</div>
			</div>

		</section>
		<section class="footer-bottom clearfix">
			<h4 hidden>footer information</h4>
			<figure class="card_group">
				<a href="#"><img
					src="https://s33.postimg.cc/w3ye3fqwv/Icon-_Master_Card.png"
					alt="MasterCard"></a>
				<a href="#"><img
					src="https://s33.postimg.cc/5ivv7wr4f/Icon-_Visa.png" alt="Visa"></a>
				<a href="#"><img
					src="https://s33.postimg.cc/hxin878bz/Icon-_Pay_Pal.png"
					alt="PayPal"></a>
				<a href="#"><img
					src="https://s33.postimg.cc/nloxz0kdb/Icon-_American_Express.png"
					alt="AmericanExpress"></a>
			</figure>
			<div class="footer-info clearfix">
				<p>
					<a href="#">arbuzz</a>
				</p>
				<small>&copy; 2016 Arbuzz UI Kit. All rights reserved</small>
			</div>
		</section>
	</footer>
</body>
</html>
