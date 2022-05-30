<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>




<c:forEach items="${orders}" var="o">
	<div class="card text-center ">
		<div class="bg-image hover-overlay ripple"
			data-mdb-ripple-color="light">
			<img src="https://mdbootstrap.com/img/new/standard/nature/111.webp"
				class="img-fluid" /> <a href="#!">
				<div class="mask"
					style="background-color: rgba(251, 251, 251, 0.15)"></div>
			</a>
		</div>

		<div class="card-body">
			<h5 class="card-title">ss</h5>
			<p class="card-text">sss.</p>

			<button type="button" class="btn btn-primary">Button</button>
		</div>
	</div>
</c:forEach>