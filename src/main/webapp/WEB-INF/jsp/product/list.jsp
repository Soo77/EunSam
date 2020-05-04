<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>게시물 목록</title>
 <link rel='stylesheet' href='/css/product/style.css'> 
</head>

 <style>
.max-small {
    width: auto; height: auto;
    max-width: 200px;
    max-height: 300px;
}
</style>

<body>
<%-- 

<div id='content'>
<h1>게시물 목록</h1>
<a href='form'>새 글</a><br>
<table class='table table-hover'>
<tr>
  <th>번호</th>
  <th>내용</th>
  <th>가격</th>
  <th>상세</th>
  <th>카테고리</th>
</tr>
<c:forEach items="${products}" var="product">
  <tr>
    <td>${product.productNo}</td>
    <td>${product.productName}</td>
    <td>${product.productPrice}</td>
    <td>${product.productDetail}</td>
    <td>${product.category}</td> 

   <td>${product.commCode.codeName}</td> 

</c:forEach> 
  </tr>
</table>
</div>
 --%>


   <h1>My cool products</h1>

<div class="list">
	<c:forEach items="${products}" var="product">
	
			<div class="product">
				<img class='max-small' alt="shoes1" src="<%=request.getContextPath()%>/upload/product/${product.productPhoto.filePath}">
				<div><h2>${product.productName}</h2>
          <p class="price">${product.productPrice}<sup>WON</sup></p>
          <p class="descr">${product.productDetail}</b></p>
				<br>
				<a href="../product/form"><p>Add to cart</p></a></div>
			</div>
			
	</c:forEach>
			<!-- <div class="product">
				<img alt="shoes2" src="https://i.ibb.co/ctgdL77/shoes2.jpg">
				<div><h2>SOME SHOES</h2>
           <p class="price">15<sup>.00</sup></p>
          <p class="descr">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
				<br>
				<a href="#"><p>Add to cart</p></a></div>
			</div>
			<div class="product">
				<img alt="shoes3" src="https://i.ibb.co/1TKmGRd/shoes3.jpg">
				<div><h2>SOME SHOES</h2>
           <p class="price">15<sup>.00</sup></p>
          <p class="descr">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
				<br>
				<a href="#"><p>Add to cart</p></a></div>
			</div>
 			<div class="product">
				<img alt="shoes4" src="https://i.ibb.co/0j9Rp1p/shoes4.jpg">
				<div><h2>SOME SHOES</h2>
           <p class="price">15<sup>.00</sup></p>
          <p class="descr">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
				<br>
				<a href="#"><p>Add to cart</p></a></div>
			</div>  -->
</div>

</body></html>