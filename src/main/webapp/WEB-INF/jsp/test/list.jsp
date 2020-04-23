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
</tr>
<c:forEach items="${tests}" var="test">
  <tr>
    <td>${test.no}</td>
    <td>${test.contents}</td>
  </tr>
</c:forEach>  
</table>
</div>


</body></html>