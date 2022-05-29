
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
<c:forEach items="${category}" var="category">
	<div class="card">
		<div class="row">
			<div class="col-md-6 text-center align-self-center">
				<img class="img-fluid"
					src='<c:url value="/static/images/articles/harrypotter.jpg"/>'>
			</div>
			<div class="col-md-6 info">
				<div class="row title">
					<div class="col">
						<h2>${category.name}</h2>
					</div>
					<div class="col text-right">
						<a href="#"> <i class="fa fa-heart-o"></i>
						</a>
					</div>
				</div>
				<p>${category.description}</p>		 
            <button class="btn btn-danger">Scopri di piu'</button>
			</div>
		
		</div>
	</div>
</c:forEach>