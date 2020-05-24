<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>상품 목록</title>
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
<jsp:include page="../header.jsp"/>


   <h1>My cool products</h1>

<div class="list" style="
    padding-left: 200px;
    padding-right: 200px;">
    
	<c:forEach items="${products}" var="product">
			<div OnClick="location.href='../product/detail2?productNo=${product.productNo}'" class="product">
				<img class='max-small' alt="shoes1" src="<%=request.getContextPath()%>/upload/product/${product.productPhoto.filePath}">
				<div><h2>${product.productName}</h2>
          <p class="price">${product.productPrice}<sup>WON</sup></p>
          <p class="descr">${product.productDetail}</b></p>
				<br>
				<a href="../product/form"><p>Add to cart</p></a></div>
			</div>
			
	</c:forEach>

</div>
<jsp:include page="../footer.jsp"/>
</body></html>