<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<footer class="footer mt-auto py-3 bg-light container">
	<c:if test="${isLoginPage && !loginSuccess}">
		<label for="newSp">Non hai un account?<a
			href=<c:url value="/register"/>>Iscriviti!</a>
		</label>
	</c:if>

	<div class="container text-center">
		<span class="text-muted">Copyright 2022 Libreria senza speranza</span>
	</div>
</footer>
