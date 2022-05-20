<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="row">
	<div class="col text-center">
		<br><h4>Registra il tuo account</h4> 
	</div>
</div>
<div class="row justify-content-center">
	<div class="col-6">
		<form:form method="POST" modelAttribute="user"
			acceptCharset="ISO-8859-1">
			<div class="row">
				<div class="col-6">
					<label for="username">Username:</label>
					<form:input path="username" id="username" type="text"
						cssClass="form-control" required="required"
						aria-describedby="emailHelp"
						placeholder="Inserisci la tua email..." />
					<form:errors path="username" id="usernameError"
						cssClass="text-danger" />
				</div>
				<div class="col-6">
					<label for="password">Password:</label>
					<form:input path="password" id="password" type="text"
						cssClass="form-control" required="required"
						placeholder="Inserisci la tua password..." />
					<form:errors path="password" id="passwordError"
						cssClass="text-danger" />
				</div>
				<div class="row mt-4">
					<div class="col-12 text-center">
						<input type="submit" value="Registrati"
							class="btn btn-primary btn-lg">
					</div>
				</div>
			</div>
		</form:form>
	</div>
</div>
