<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- FORM SPRING -->
<div class="row mt-4">
	<div class="col-12 text-center">
		<h5>Gestione libro</h5>
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
					<label for="isbnSp">ISBN-10:</label>
					<form:textarea path="isbn" id="isbnSp"
						cssClass="form-control" rows="3" style="resize:none;"
						required="required" />
					<form:errors path="isbn" id="isbnSpError"
						cssClass="text-danger" />
				</div>
				
			
				<div class="col-6">
					<label for="descriptionSp">Descrizione:</label>
					<form:textarea path="description" id="descriptionSp"
						cssClass="form-control" rows="3" style="resize:none;"
						required="required" />
					<form:errors path="description" id="descriptionSpError"
						cssClass="text-danger" />
				</div>
			</div>
			
			<div class="row">
				<div class="col-6">
					<label for="shortDeschSp">Breve descrizione:</label>
					<form:textarea path="shortDesch" id="shortDeschSp"
						cssClass="form-control" rows="3" style="resize:none;"
						required="required" />
					<form:errors path="shortDesch" id="shortDeschSpError"
						cssClass="text-danger" />
				</div>
				
				<div class="col-6">
					<label for="publicYearSp">Anno di pubblicazione:</label>
					<form:input path="publicYear" id="publicYearSp" type="number"
						step="any" cssClass="form-control" rows="3" style="resize:none;"
						required="required" />
					<form:errors path="publicYear" id="publicYearSpError"
						cssClass="text-danger" />
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label for="priceFlexibleCoverSp">Prezzo copertina
						flessibile:</label>
					<form:input path="priceFlexibleCover" id="priceFlexibleCoverSp"
						type="number" step="any" cssClass="form-control"
						required="required" />
					<form:errors path="priceFlexibleCover"
						id="priceFlexibleCoverSpError" cssClass="text-danger" />
				</div>
				<div class="col-6">
					<label for="priceHardCoverSp">Prezzo copertina rigida:</label>
					<form:input path="priceHardCover" id="priceHardCoverSp"
						type="number" step="any" cssClass="form-control"
						required="required" />
					<form:errors path="priceHardCover" id="priceHardCoverSpError"
						cssClass="text-danger" />
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label for="eBookSp">Prezzo formato e-Book:</label>
					<form:input path="eBook" id="eBookSp" type="number" step="any"
						cssClass="form-control" required="required" />
					<form:errors path="eBook" id="eBookSpError" cssClass="text-danger" />
				</div>

				<div class="col-6">
					<label for="quantitySp">Disponibilità in magazzino:</label>
					<form:input path="quantity" id="quantitySp" type="number"
						step="any" cssClass="form-control" required="required" />
					<form:errors path="quantity" id="quantitySpError"
						cssClass="text-danger" />
				</div>

				<div class="col-6">
					<br> <label for="categorySp">Categoria:</label>
					
					<form:select class="selectpicker form-control select-di" path="category.id" id="east-order" isChanged="false">
		                 <form:option value="1" selected="${category.id =='1'? 'selected' : ''}">Avventura</form:option>
		                 <form:option value="2" selected="${category.id =='2'? 'selected' : ''}">Storico</form:option>
		                 <form:option value="3" selected="${category.id =='3'? 'selected' : ''}">Fantasy</form:option>
		                 <form:option value="4" selected="${category.id =='4'? 'selected' : ''}">Horror</form:option>
		                 <form:option value="5" selected="${category.id =='5'? 'selected' : ''}">Saggistica</form:option>
		                 <form:option value="6" selected="${category.id =='6'? 'selected' : ''}">Romantico</form:option>
		              </form:select>
				</div>
			</div>
			<div class="col-6 text-center">
				<input type="submit" value="Registra Libro"
					class="btn btn-primary mt-4">
			</div>

		</form:form>
	</div>
</div>