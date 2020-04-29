<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>게시물 목록</title>
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
  <link rel='stylesheet' href='/css/common.css'>
</head>
<body>


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

<%--    <td>${product.commCode.codeName}</td>  --%>

</c:forEach> 
  </tr>
</table>
</div>


</body></html>