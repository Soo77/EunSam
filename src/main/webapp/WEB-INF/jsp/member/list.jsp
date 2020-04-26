
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Title</title>
</head>
<body>
	<c:forEach items="${members}" var="member">
		<p>
			번호 : ${member.no}<br>
		</p>
		<p>
			내용 : ${memberS.contents}<br>
		</p>
	</c:forEach>
</body>
</html>
