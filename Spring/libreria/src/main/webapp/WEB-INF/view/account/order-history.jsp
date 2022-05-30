<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<section style="background-color: #eee;">
	
		<div class="row justify-content-center mb-3">
			<div class="col-md-12 col-xl-10">
				<c:forEach items="${orders}" var="order">
					<div class="card shadow-0 border rounded-3">
						<div class="card-body">
							<div class="row">
								<div class="col-md-12 col-lg-3 col-xl-3 mb-4 mb-lg-0">
									<div class="bg-image hover-zoom ripple rounded ripple-surface">
										<img
											src='<c:url value="/static/images/fotoDiscord.png"/>'
											class="w-100" /> <a href="#!">
											<div class="hover-overlay">
												<div class="mask"
													style="background-color: rgba(253, 253, 253, 0.15);"></div>
											</div>
										</a>
									</div>
								</div>
								<div class="col-md-6 col-lg-6 col-xl-6">
									<h5>#${order.id}</h5>
									<div class="d-flex flex-row">
										<div class="text-danger mb-1 me-2">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i>
										</div>
									</div>
								</div>
								<div
									class="col-md-6 col-lg-3 col-xl-3 border-sm-start-none border-start">
									<h6 class="text-success">Stato ordine: ${order.status}</h6>
									<div class="d-flex flex-column mt-4">
										<button class="btn btn-primary btn-sm" type="button">Visualizza ordine</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	
</section>