<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<section class="pt-5 pb-5">
	<div class="container">
		<div class="row w-100">
			<div class="col-lg-12 col-md-12 col-12">
				<h3 class="display-5 mb-2 text-center">Riepilogo ordine</h3>
				
				<table id="shoppingCart"
					class="table table-condensed table-responsive">
					<thead>
						<tr>
							<th style="width: 60%">Libro</th>
							<th style="width: 12%">Prezzo</th>
							<th style="width: 10%">Quantita'</th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${orders}" var="o">
							<tr>
								<td data-th="Product">
									<div class="row">
										<div class="col-md-3 text-left">
											<img src='<c:url value="/static/images/articles/book${o.book.id}.png"/>'
												alt=""
												class="img-fluid d-none d-md-block rounded mb-2 shadow ">
										</div>
										
										<div class="col-md-9 text-left mt-sm-2">
											
											<h4>${o.book.title}</h4>
											
											<p class="font-weight-light">${o.book.category.name}</p>
											
											<p>${o.book.shortDesch}</p>
										
										</div>
									
									</div>
								
								</td>
								
								<td data-th="Price">${o.price}</td>
								
								<td>${o.quantity}</td>
								
								
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="float-right text-end">
					<h4>Totale:</h4>
					<h1>${totalPrice}</h1>
				</div>
			</div>
		</div>
		<div class="row mt-4 d-flex align-items-center">
			
			<div class="col-sm-6 order-md-2 text-right">
				<a href='<c:url value="/account/order-history"/>' class="btn btn-primary mb-4 btn-lg pl-5 pr-5">Torna alla Lista Ordini</a>
			</div>
			
			<div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
				<a href='<c:url value="/home"/>'> <i class="fas fa-arrow-left mr-2"></i>
				 	Torna al Catalogo
				</a>
			</div>
			
		</div>
	</div>
</section>
