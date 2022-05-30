<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row mt-4">
	
	<div class="col-2"></div>
	<div class="col-4">
		<div class="row mt-4">
			<div class="col-12 text-center">
				<form action="upload" method="POST" enctype="multipart/form-data">
					<h6>Seleziona e salva copertina</h6>
					<input type="hidden" id="fileName" name="fileName" value="${bookId}">
					<input type="file" class="form-control mt-2" id="image" name="image">
					<input type="submit" class="btn btn-primary mt-3" value="Salva Immagine">
				</form>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-12 text-center ms-2">
				<c:choose>
					<c:when test="${hasImage}">
						<img class="img-thumbnail" style="width: 180px; height: 250px;max-width: 180px; max-height: 250px;" 
							alt="Book Image" src="<c:url value="/static/books/${bookId}.png" />">
					</c:when>
					<c:otherwise>
						<img class="img-thumbnail" style="width: 180px; height: 250px;max-width: 180px; max-height: 250px;" 
							alt="Book Image" src="<c:url value="/static/image/markerImage.png" />">
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-12 text-center">
				<a href='<spring:url value="bookcard/deleteimage?name=${bookId}"></spring:url>'>
					<img class="img-thumbnail ms-4" alt="Delete" src="<c:url value="/static/image/deleteIcon.png" />">
				</a>
			</div>
		</div>
	</div>
</div>