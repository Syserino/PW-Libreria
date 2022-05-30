<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="container rounded bg-white mt-5 mb-5">
	<div class="row">
		<div class="col-md-3 border-right">
			<div
				class="d-flex flex-column align-items-center text-center p-3 py-5">
				<img class="rounded-circle mt-5" width="150px"
					src='<c:url value="/static/images/header/penna_logo.png"/>'><span
					class="font-weight-bold">Username: ${username}</span><span
					class="text-black-50">${anagraphic.mail}</span><span> </span>
			</div>
		</div>
		<div class="col-md-5 border-right">
			<div class="p-3 py-5">
				<div class="d-flex justify-content-between align-items-center mb-3">
					<h4 class="text-right">Il Mio Profilo</h4>
				</div>
				<form:form method="POST" modelAttribute="anagraphic"
					acceptCharset="ISO-8859-1">
					
					<div class="row">
				<div class="col-6">
					<label for="titleSp">Nome:</label>
					<form:input path="name" id="nameSp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="name" id="nameSpError" cssClass="text-danger" />
				</div>
				<div class="col-6">
					<label for="surnameSp">Cognome:</label>
					<form:input path="surname" id="surnameSp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="surname" id="surnameSpError"
						cssClass="text-danger" />
				</div>
					
						<br>
						<div class="form-group col-md-12">
							<label>Gender: </label> 
							Male <form:radiobutton path="Gender" value="Male"/>  
       						Female <form:radiobutton path="Gender" value="Female"/>
       						Altro <form:radiobutton path="Gender" value="Altro"/> 
						</div>
					</div>
				
					<div class="row">
				<div class="col-6">
					<label for="mailSp">Email:</label>
					<form:input path="mail" id="mailSp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="mail" id="mailSpError" cssClass="text-danger" />
				</div>
				<div class="col-6">
					<label for="codiceFiscaleSp">Codice Fiscale:</label>
					<form:input path="codiceFiscale" id="codiceFiscaleSp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="codiceFiscale" id="codiceFiscaleSpError"
						cssClass="text-danger" />
				</div>
				
				</div>
				
					<div class="row">
				<div class="col-6">
					<label for="phoneSp">Numero di telefono:</label>
					<form:input path="phone" id="phoneSp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="phone" id="phoneSpError" cssClass="text-danger" />
				</div>
				<div class="col-6">
					<label for="streetSp">Indirizzo:</label>
					<form:input path="street" id="streetSp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="street" id="streetSpError"
						cssClass="text-danger" />
				</div>
				
						<div class="row">
				<div class="col-6">
					<label for="civicNumberSp">N°:</label>
					<form:input path="civicNumber" id="civicNumberSp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="civicNumber" id="civicNumberSpError" cssClass="text-danger" />
				</div>
				<div class="col-6">
					<label for="capSp">Cap:</label>
					<form:input path="cap" id="capSp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="cap" id="capSpError"
						cssClass="text-danger" />
				</div>
					</div>
					<div class="row">
				<div class="col-6">
					<label for="townSp">Provincia:</label>
					<form:input path="town" id="townSp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="town" id="townSpError" cssClass="text-danger" />
				</div>
				<div class="col-6">
					<label for="cityleSp">Comune:</label>
					<form:input path="city" id="citySp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="city" id="citySpError"
						cssClass="text-danger" />
				</div>
						</div>
						</div>
					</div>
					<div class="row mt-3">
					<div class="mt-5 text-center">					
						<button class="btn btn-primary profile-button" type="submit">Aggiorna
							il Profilo</button>
							</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>