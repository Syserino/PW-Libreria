<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="row mt-4">
	<div class="col-12 text-center">
		<h5>Inserisci i dati di accesso</h5>
	</div>
</div>
<div class="row justify-content-center">
	<div class="col-8">
		<form:form method="POST" modelAttribute="login"
			acceptCharset="ISO-8859-1">
			<form:errors path="*" cssClass="alert alert-danger" element="div"
				id="generalAlert" />
			<div class="row">
				<div class="col-5">
					<label for="usernameSp">Username</label>
					<form:input path="username" id="usernameSp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="username" id="usernameSpError"
						cssClass="text-danger" />
				</div>
				<div class="col-5">
					<label for="passwordSp">Password</label>
					<form:input path="password" id="passwordSp" type="password"
						cssClass="form-control" required="required" />
					<form:errors path="password" id="passwordSpError"
						cssClass="text-danger" />
				</div>	
				<div class="col-2">
				<input type="submit" value="Accedi" class="btn btn-primary mt-4">
			</div>
			</div>
		

		</form:form>
	</div>
</div>
