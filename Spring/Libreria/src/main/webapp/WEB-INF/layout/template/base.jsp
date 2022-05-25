<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="it" class="h-100">
	<head>
		<meta charset="UTF-8">
		<title><tiles:insertAttribute name="title"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<link href='<spring:url value="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>' rel="stylesheet">
		<link href='<spring:url value="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"/>' rel="stylesheet">
		<link href='<spring:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>' rel="stylesheet">
		<link href='<spring:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>' rel="stylesheet">

		<c:if test="${isBookCard}">
			<link href='<c:url value="/static/css/book-card.css"/>'
				rel="stylesheet" type="text/css">
		</c:if>
		<c:if test="${isAboutUs}">
			<link href='<c:url value="/static/css/about-us.css"/>' rel="stylesheet"
			type="text/css">
		</c:if>
		
	</head>
	<body class="d-flex flex-column h-100">
		<div class="container">
			<tiles:insertAttribute name="header"/>
			<tiles:insertAttribute name="content"/>
		</div>
		<tiles:insertAttribute name="footer"/>
	</body>
</html>