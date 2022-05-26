<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="it" class="h-100">
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- CSS HEADER -->
<link href='<c:url value="/static/css/header.css"/>' rel="stylesheet"
	type="text/css">


<c:if test="${isAboutUs}">
	<link href='<c:url value="/static/css/about-us.css"/>' rel="stylesheet"
		type="text/css">
</c:if>
<c:if test="${isHome}">
	<link
		href='<spring:url value="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"/>'
		rel="stylesheet">
	<link href='<c:url value="/static/css/homepage.css"/>' rel="stylesheet"
		type="text/css">
</c:if>

<link rel="icon" type="image/svg"
	href="static/images/header/La-penna-d_oro.ico">
</head>
<body class="d-flex flex-column">
	<div class="container">
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="content" />
	</div>
	<tiles:insertAttribute name="footer" />
</body>
</html>