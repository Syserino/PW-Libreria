  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:forEach items="${category}" var="category">
   <div class="card">
        <div class="card__header">
            <img src=<c:url value="/static/images/articles/harrypotter.jpg"/> alt="card__image" class="card__image" width="600">
        </div>
        <div class="card__body">
            <span class="tag tag-blue">${category.name}</span>
            <p>${category.description}</p>
        </div>
        <div class="card-footer text-end">
       	<a href='<spring:url value="/search?idCategory=${category.id}"/>'>    <button class="btn btn-danger">Scopri di piu'</button></a>
        </div>
    </div>
    </c:forEach>