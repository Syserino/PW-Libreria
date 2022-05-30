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
				<h3 class="display-5 mb-2 text-center">Shopping Cart</h3>
				<p class="mb-5 text-center">
					<i class="text-info font-weight-bold">3</i> items in your cart
				</p>
				<table id="shoppingCart"
					class="table table-condensed table-responsive">
					<thead>
						<tr>
							<th style="width: 60%">Libro</th>
							<th style="width: 12%">Prezzo</th>
							<th style="width: 10%">Quantita'</th>
							<th style="width: 16%"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${orders}" var="o">
							<tr>
								<td data-th="Product">
									<div class="row">
										<div class="col-md-3 text-left">
											<img src="https://via.placeholder.com/250x250/5fa9f8/ffffff"
												alt=""
												class="img-fluid d-none d-md-block rounded mb-2 shadow ">
										</div>
										<div class="col-md-9 text-left mt-sm-2">
											<h4>${o.book.title}</h4>
											<p class="font-weight-light">Brand &amp; Name</p>
										</div>
									</div>
								</td>
								<td data-th="Price">$${o.price}</td>
								<td data-th="Quantity"><input type="number"
									class="form-control form-control-lg text-center" value="1">
								</td>
								<td class="actions" data-th="">
									<div class="text-right">
										<button
											class="btn btn-white border-secondary bg-white btn-md mb-2">
											<i class="fas fa-sync"></i>
										</button>
										<button
											class="btn btn-white border-secondary bg-white btn-md mb-2">
											<i class="fas fa-trash"></i>
										</button>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="float-right text-right">
					<h4>Totale:</h4>
					<h1>${totalPrice}</h1>
				</div>
			</div>
		</div>
		<div class="row mt-4 d-flex align-items-center">
			<div class="col-sm-6 order-md-2 text-right">
				<a href="catalog.html" class="btn btn-primary mb-4 btn-lg pl-5 pr-5">Checkout</a>
			</div>
			<div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
				<a href="catalog.html"> <i class="fas fa-arrow-left mr-2"></i>
					Continue Shopping
				</a>
			</div>
		</div>
	</div>
</section>
