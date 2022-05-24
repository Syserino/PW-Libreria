<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<!-- Chi siamo | Dove puoi trovarci | La nostra mission | Lavora con noi -->

<body>
	<div class="container-xl">
		<div class="row">
			<div class="col-lg-8 mx-auto">
				<h2>INFORMAZIONI</h2>
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Carousel indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
					</ol>
					<!-- Wrapper for carousel items -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="img-box">
								<img
									src='<c:url value="/static/images/carosello/chi-siamo.jpg"/>'
									alt="chi siamo">
							</div>
							<p class="overview">
								<b>CHI SIAMO</b>
							</p>
							<p class="testimonial">Siamo una libreria indipendente, la
								classica bottega di quartiere sempre disponibili a scambiare
								qualche chiacchera, specialmente con un libro in mano. La nostra
								passione per i libri ci ha portato ad aprire questo negozio e
								siamo grati a tutti i nostri clienti, grandi e piccini...</p>
						</div>
						<div class="carousel-item">
							<div class="img-box">
								<img
									src='<c:url value="/static/images/carosello/dove-siamo.png"/>'
									alt="dove siamo">
							</div>
							<p class="overview">
								<b>DOVE SIAMO</b>
							</p>
							<p class="testimonial">Vestibulum quis quam ut magna
								consequat faucibus. Pellentesque eget nisi a mi suscipit
								tincidunt. Utmtc tempus dictum risus. Pellentesque viverra
								sagittis quam at mattis. Suspendisse potenti. Aliquam sit amet
								gravida nibh, facilisis gravida odio.</p>

						</div>
						<div class="carousel-item">

							<div class="img-box">
								<img src='<c:url value="/static/images/carosello/mission.jpg"/>'
									alt="dove siamo">
							</div>
							<p class="overview">
								<b>LA NOSTRA MISSION</b>
							</p>
							<p class="testimonial">Phasellus vitae suscipit justo. Mauris
								pharetra feugiat ante id lacinia. Etiam faucibus mauris id
								tempor egestas. Duis luctus turpis at accumsan tincidunt.
								Phasellus risus risus, volutpat vel tellus ac, tincidunt
								fringilla massa. Etiam hendrerit dolor eget rutrum.</p>

						</div>
						<div class="carousel-item">
							<div class="img-box">
								<img
									src='<c:url value="/static/images/carosello/lavora-con-noi.jpg"/>'
									alt="dove siamo">
							</div>

							<p class="overview">
								<b>LAVORA CON NOI</b>
							</p>
							<p class="testimonial">Phasellus vitae suscipit justo. Mauris
								pharetra feugiat ante id lacinia. Etiam faucibus mauris id
								tempor egestas. Duis luctus turpis at accumsan tincidunt.
								Phasellus risus risus, volutpat vel tellus ac, tincidunt
								fringilla massa. Etiam hendrerit dolor eget rutrum.</p>

						</div>
					</div>
					<!-- Carousel controls -->
					<a class="carousel-control-prev" href="#myCarousel"
						data-slide="prev"> <i class="fa fa-angle-left"></i>
					</a> <a class="carousel-control-next" href="#myCarousel"
						data-slide="next"> <i class="fa fa-angle-right"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>