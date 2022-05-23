<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- FORM SPRING -->
<div class="row mt-4">
	<div class="col-12 text-center">
		<h5>Inserisci i dati del nuovo libro</h5>
	</div>
</div>

<div class="row justify-content-center">
	<div class="col-8">
		<form:form method="POST" modelAttribute="book"
			acceptCharset="ISO-8859-1">
			<form:errors path="*" cssClass="alert alert-danger" element="div"
				id="generalAlert" />

			<div class="row">
				<div class="col-6">
					<label for="titleSp">Titolo:</label>
					<form:input path="title" id="titleSp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="title" id="titleSpError" cssClass="text-danger" />
				</div>
				<div class="col-6">
					<label for="authorSp">Autore:</label>
					<form:input path="author" id="authorSp" type="text"
						cssClass="form-control" required="required" />
					<form:errors path="author" id="authorSpError"
						cssClass="text-danger" />
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label for="descriptionSp">Descrizione:</label>
					<form:textarea path="description" id="descriptionSp"
						cssClass="form-control" rows="3" style="resize:none;"
						required="required" />
					<form:errors path="description" id="descriptionSpError"
						cssClass="text-danger" />
				</div>

				<div class="col-6">
					<label for="descriptionSp">Anno di pubblicazione:</label>
					<form:input path="public_year" id="public_yearnSp" type="number"
						step="any" cssClass="form-control" rows="3" style="resize:none;"
						required="required" />
					<form:errors path="public_year" id="public_yearSpError"
						cssClass="text-danger" />
				</div>
			</div>
			
			<div class="col-6">
					<label for="price_flexiblecoverSp">Prezzo copertina flessibile:</label>
					<form:input path="price_flexiblecover" id="price_flexiblecoverSp" type="number" step="any"
						cssClass="form-control" required="required" />
					<form:errors path="price_flexiblecover" id="price_flexiblecoverSpError" cssClass="text-danger" />
				</div>

			<div class="row">
				<div class="col-6">
					<label for="price_hardcoverSp">Prezzo copertina rigida:</label>
					<form:input path="price_hardcover" id="price_hardcoverSp" type="number" step="any"
						cssClass="form-control" required="required" />
					<form:errors path="price_hardcover" id="price_hardcoverSpError" cssClass="text-danger" />
				</div>
				
				
				
				<div class="col-6">
				    <label for="quantitySp">Disponibilità in magazzino:</label>
					<form:input path="quantity" id="quantitySp" type="number"
						step="any" cssClass="form-control" required="required" />
					<form:errors path="quantity" id="quantitySpError"
						cssClass="text-danger" />
				</div>
				<div class="col-6 text-center">
					<input type="submit" value="Registra Libro"
						class="btn btn-primary mt-4">
				</div>

			</div>

		</form:form>
	</div>
</div>