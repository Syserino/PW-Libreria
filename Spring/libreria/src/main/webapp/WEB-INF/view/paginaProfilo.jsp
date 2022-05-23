<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5"
                                                                                         width="150px"
                                                                                         src="fotoDiscord.png"><span
                    class="font-weight-bold">${user.username}</span><span
                    class="text-black-50">${anagraphic.mail}</span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Il Mio Profilo</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Nome:</label><input type="text" class="form-control"
                                                                                    placeholder="Nome. . .">
                    </div>
                    <div class="col-md-6"><label class="labels">Cognome:</label><input type="text" class="form-control"
                                                                                       placeholder="Cognome. . .">
                    </div>
                    <br>
                    <div class="form-group col-md-12">
                        <br>
                        <label>Sesso: </label>
                        <label class="radio-inline"> <input type="radio" name="sesso"> Maschio | </label>
                        <label class="radio-inline"><input type="radio" name="sesso"> Femmina | </label>
                        <label class="radio-inline"><input type="radio" name="sesso" checked> Altro</label>
                    </div>
                </div>
                <br>
                <div class="col-md-12"><label class="labels">Email:</label><input type="text" class="form-control"
                                                                                  placeholder="Email. . ."></div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Numero di cellulare:</label><input type="text"
                                                                                                    class="form-control"
                                                                                                    placeholder="Numero di cellulare...">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-10"><label class="labels">Indirizzo:</label><input type="text"
                                                                                          class="form-control"
                                                                                          placeholder="Via/Piazza. . .">
                    </div>
                    <div class="col-md-2"><label class="labels">Numero:</label><input type="text"
                                                                                      class="form-control"
                                                                                      placeholder=" - - ">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">CAP:</label><input type="text" class="form-control"
                                                                                    placeholder="CAP. . ."></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Citta':</label><input type="text" class="form-control"
                                                                                       placeholder="Citta'. . ."></div>
                </div>
                <div class="mt-5 text-center">
                    <button class="btn btn-primary profile-button" type="button">Salva il Profilo</button>
                </div>

            </div>
        </div>
    </div>
</div>