
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<head>
<link href='<c:url value="/static/css/sexycard.css"/>' rel="stylesheet"
	type="text/css">
<link
	href='<spring:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>'
	rel="stylesheet">
</head>
<div class="row row-cols-1 row-cols-md-2 g-4">
<c:forEach items="${category}" var="category">
	<div class="card mb-3" style="max-width: 540px;">
		<div class="row g-0">
			<div class="col-md-4">
				<img class="img-fluid rounded-start"
					src='<c:url value="/static/images/categories/${category.name}.png"/>'>
			</div>
			<div class="col-md-8">
				<div class="card-body">

					<h2 class="card-title">${category.name}</h2>


					<p class="card-text">${category.description}</p>
					<a
						href='<spring:url value="/category-list/category?id=${category.id}"/>'
						style="text-decoration: none"><button
							class="btn-sm btn-group btn-danger " type="submit">Scopri
							di piu</button></a>
				</div>
			</div>

		</div>
	</div>
</c:forEach>
</div>