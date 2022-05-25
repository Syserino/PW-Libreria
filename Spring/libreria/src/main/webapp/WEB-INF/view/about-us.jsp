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
						<li data-target="#myCarousel" data-slide-to="0"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
						<li data-target="#myCarousel" data-slide-to="4"></li>
					</ol>
					<!-- Wrapper for carousel items -->
					<div class="carousel-inner">
					
					<!--  BOX CHI SIAMO -->
					
						<div class="carousel-item active">
							<div class="img-box">
								<img
									src='<c:url value="/static/images/carosello/chi-siamo.jpg"/>'
									alt="chi siamo">
							</div>
							<p class="overview">
								<b>CHI SIAMO</b>
							</p>
							<p class="testimonial">La societa' opera su tutta la filiera del libro, dall’editoria, al retail, 
							con il sito di e-commerce localhost:8080/libreria, alla promozione e distribuzione
							intermedia tramite L&G, una joint venture costituita con Campo Messaggerie Italiane.
							L’offerta editoriale integrata del Gruppo si estende infine alla televisione con l'Aemme, un canale multipiattaforma
							dall’offerta unica, inedita, di qualità, e si completa con l’attività di ricerca e divulgazione nell’ambito delle scienze
							sociali e politiche della societa'. La Penna d'Oro è da oltre due giorni una delle principali imprese editoriali 
							indipendenti, attiva in Italia e conosciuta in tutto il mondo.
							La storia della societa' ha origine il 19 maggio 2022, durante il corso di sviluppatore Java di Generation Italy.</p>
						</div>
						
						<!-- BOX DOVE SIAMO -->
						
						<div class="carousel-item">
							<div class="img-box">
								<img
									src='<c:url value="/static/images/carosello/dove-siamo.png"/>'
									alt="dove siamo">
							</div>
							<p class="overview">
								<b>DOVE SIAMO</b>
							</p>
							<p class="testimonial">La Penna d'Oro e' presente su tutto il territorio 
							nazionale e all'estero, abbiamo piu' di 1000 sedi in tutto il mondo, ma 
							indovina un po' un solo sito internet! Ma se volete venire a visitare la nostra prima sede
							ci trovate proprio di fronte al Colosseo, Roma.
							La nostra libraria(Cristina) e i nostri librai(Andrea, Gabriele, Giuseppe e Nicola) vi aspettano per consigliarvi il libro più bello;
							 Quello che non avete ancora letto.</p>
 							<div class="col-12">
 							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d190028.2570927905!2d12.395912026526345!3d41.91024148820807!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f6196f9928ebb%3A0xb90f770693656e38!2sRoma%20RM!5e0!3m2!1sit!2sit!4v1653471455348!5m2!1sit!2sit"style="border:0;" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
						</div>
						
						<!-- BOX LA NOSTRA MISSION -->
						
						<div class="carousel-item">

							<div class="img-box">
								<img src='<c:url value="/static/images/carosello/mission.jpg"/>'
									alt="libri">
							</div>
							<p class="overview">
								<b>LA NOSTRA MISSION</b>
							</p>
							<p class="testimonial">La nostra missione è favorire la diffusione della cultura e delle 
							idee attraverso prodotti, attività e servizi che
							soddisfino i bisogni e i gusti del più ampio pubblico possibile. Nella nostra visione facciamo convivere l’amore per
							la cultura e per la qualità editoriale con le leggi del mercato, la propensione a intuire e anticipare i cambiamenti con
							il rispetto e la tutela dei valori che sono alla base del ruolo dell’editore nella società civile.
							I valori cui ci ispiriamo sono alla base del nostro Codice etico, i cui principi e disposizioni concretizzano gli obblighi
							generali di diligenza, correttezza e lealtà.La societa' collabora con VarrialeTree finanzia progetti presso comunità 
							rurali in vari paesi del mondo e
							realizza anche in Italia progetti a forte valenza sociale. Il primo passo è la formazione e il finanziamento delle 
							comunità coinvolte nei progetti, ottenendo straordinari risultati in termini di empowerment delle stesse.</p>
						</div>
						
						<!-- LE NOSTRE INIZIATIVE -->

						<div class="carousel-item">
							<div class="img-box">
								<img
									src='<c:url value="/static/images/carosello/treedom.png"/>'
									alt="logo treedom">
							</div>
							<p class="overview">
								<b>LE NOSTRE INIZIATIVE</b>
							</p>
							<p class="testimonial">Crediamo molto nel valore della conoscienza e nel rispetto del nostro pianeta.
							Da questo è nata la nostra collaborazione per Treedom che ci permette di piantare un nuovo albero 
							per ogni eBook acquistato. Un piccolo gesto per l'uomo, un enorme gesto per l'umanità. Scopri di più visitando
							 il sito www.treedom.it</p>

						</div>

						<div class="carousel-item">
							<div class="img-box">
								<img 
								src='<c:url value="/static/images/carosello/lavora-con-noi.jpg"/>' alt="libri">
							</div>
							<p class="overview">
								<b>LAVORA CON NOI</b>
							</p>
							<p class="testimonial">Lavorare per la societa' significa entrare a far parte di una realtà di circa 5 persone, 
							aperta, interessante
							e in continua evoluzione, impegnata da sempre nella ricerca e nella creazione di prodotti ed eventi culturali, con un’offerta
							innovativa e coinvolgente.
							La societa', che opera lungo tutta la filiera editoriale, dalla produzione di contenuti, alla
							promozione e alla distribuzione retail, oggi conta più di 100.000.000 di visualizzazioni sul sito e-commerce. Più di recente si è 
							aperto al settore della ristorazione, grazie alla collaborazione con AlfieroSake, l’obiettivo e' quello di proporre format di vendita innovativi, che favoriscano un’esperienza ricca di stimoli ed emozioni.
							La Penna d'Oro cerca collaboratori anche tra le candidature che arrivano tramite questo sito. Oltre alle competenze specifiche 
							del ruolo, punta su persone dotate di passione, spirito di squadra, orientamento al risultato e al cliente, con forti capacità relazionali e organizzative.
							Mandare il curriculum a: g.landolfo@lapennadoro.it</p>
					</div>

					</div>
					
					<!-- CONTROLLO DEL CAROSELLO -->

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
<script> $('#myCarousel').carousel(${sel-1}); </script>

</html>