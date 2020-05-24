
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

<jsp:include page="header.jsp"/>

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
	
<jsp:include page="footer.jsp"/>
</body>
</html>
