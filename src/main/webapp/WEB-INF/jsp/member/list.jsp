<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="members" scope="request" type="java.util.List"/>
test
<c:forEach items="${members}" var="member">
    <p>
        번호 : ${member.memberNo}<br>
    </p>
    <p>
        이름 : ${member.name}<br>
    </p>
    <p>
        이메일 : ${member.email}<br>
    </p>
    <p>
        전화번호: ${member.mobileNo}<br>
    </p>
</c:forEach>
</body>
</html>
