<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="name"%>

<c:if test="${!empty name}">
	<a href="join.jsp">${name}님 마이페이지</a> <a href="logout.do">Logout</a>
</c:if>
<c:if test="${empty name}">
	<a href="login.jsp">Login</a> <a href="join.jsp">Signup</a>
</c:if>
