<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<script
	src='<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"/>'></script>
<script src='<c:url value="/static/js/register.js"/>'></script>

<div class="row justify-content-center">
	<div class="col-12">
		<form:form method="POST" modelAttribute="user"
			acceptCharset="ISO-8859-1">

			<section style="background-color: #eee;">
				<div class="container">
					<div
						class="row d-flex justify-content-center align-items-center h-100">
						<div class="col-lg-12 col-xl-11">
							<div class="card text-black" style="border-radius: 25px;">
								<div class="card-body p-md-5">
									<div class="row justify-content-center">
										<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

											<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Registrati</p>

											<form id="frmRegister" class="mx-1 mx-md-4">
												<c:if test="${errUsername}">
													<div>
														<div id="errorAlert"
															class="alert alert-danger alert-dismissible mt-4"
															role="alert">
															Username già utilizzato.
														</div>
													</div>
												</c:if>

												<div class="d-flex flex-row align-items-center mb-4">
													<i class="fas fa-user fa-lg me-3 fa-fw"></i>
													<div class="form-outline flex-fill mb-0">
														<label class="form-label" for="form3Example1c">Username</label>
														<form:input path="username" type="text"
															id="form3Example1c" class="form-control" />
														<form:errors path="username" id="usernameError"
															cssClass="text-danger" />

													</div>
												</div>

												<div class="d-flex flex-row align-items-center mb-4">
													<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
													<div class="form-outline flex-fill mb-0">
														<label class="form-label" for="form3Example3c">Email</label>
														<form:input path="anagraphic.mail" type="email"
															id="form3Example3c" class="form-control" />
														<form:errors path="anagraphic.mail" id="mailError"
															cssClass="text-danger" />

													</div>
												</div>

												<div class="d-flex flex-row align-items-center mb-4">
													<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
													<div class="form-outline flex-fill mb-0">
														<label class="form-label" for="form3Example4c">Password</label>
														<form:input path="password" type="password" id="password"
															class="form-control" />
														<form:errors path="password" id="passwordError"
															cssClass="text-danger" />

													</div>
												</div>

												<div class="d-flex flex-row align-items-center mb-4">
													<i class="fas fa-key fa-lg me-3 fa-fw"></i>
													<div class="form-outline flex-fill mb-0">
														<label class="form-label" for="form3Example4cd">Ripeti
															la password</label> <input name="confirm_password"
															type="password" id="confirm_password"
															class="form-control" onkeyup='check();' /> <span
															id="message"></span>
													</div>
												</div>


												<div class="form-check d-flex justify-content-center mb-2">
													<input class="form-check-input me-2" type="checkbox"
														value="" id="check1" onchange='check();' /> <label
														class="form-check-label" for="check1"> Accetto i <a
														href='<c:url value="/static/fileLink/Condizioni_di_vendita.pdf"/>'
														target="_blank">Termini di servizio</a>
													</label>
												</div>
												<div class="form-check d-flex justify-content-center mb-2">
													<input class="form-check-input me-2" type="checkbox"
														value="" id="check2" onchange='check();' /> <label
														class="form-check-label" for="check2"> Accetto le
														<a href='<c:url value="/static/fileLink/privacy.pdf"/>'
														target="_blank">Normative Privacy</a>
													</label>

												</div>
												<span id="message2"></span> <br> <span id="message3"></span>


												<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
													<button id="confirm" type="submit" disabled
														class="btn btn-primary btn-lg">Registrati</button>
												</div>

											</form>

										</div>
										<div
											class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

											<img
												src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
												class="img-fluid" alt="Sample image">

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</form:form>
	</div>
</div>


