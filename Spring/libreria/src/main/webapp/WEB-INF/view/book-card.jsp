<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<body>
	<div class="container">
		<div id="demo" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="card">
						<div class="path">
							HOME / LIBRI <a>/ ${book.category.name}</a>
						</div>
						<div class="row">
							<div class="col-md-6 text-center align-self-center">
								<img class="img-fluid"
									src="src/main/java/it/webapp/static/images/article/harrypotter.jpg">
							</div>
							<div class="col-md-6 info">
								<div class="row title">
									<div class="col">
										<h2>${book.title}</h2>
									</div>
									<div class="col text-right">
										<a href="#"> <i class="fa fa-heart-o"></i>
										</a>
									</div>
								</div>
								<p>${book.author}</p>
								<p>${book.description}</p>
								<span class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star-half-full"></span> <a>160 recensioni</a>
								<div class="row price">
									<label class="radio"> <input type="radio" name="size1"
										value="small" checked> <span>
											<div class="row">
												<big><b>Copertina flessibile</b></big>
											</div>
											<div class="row">*price* 25,00€</div>
											</a>
									</span>
									</label> <label class="radio"> <input type="radio" name="size1"
										value="large"> <span>
											<div class="row">
												<big><b>Copertina rigida</b></big>
											</div>
											<div class="row">*price* 39,99€</div> </a>
									</span>
									</label>
								</div>
							</div>
						</div>
						<div class="row lower">
							<div class="col text-right align-self-center">
								<button class="btn">Aggiungi al carrello</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

</body>
</html>