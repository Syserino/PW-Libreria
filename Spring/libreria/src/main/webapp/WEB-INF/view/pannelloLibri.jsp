<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table table-hover alert-warning">
  <thead>
  <tr>
    <th scope="col">ID</th>
    <th scope="col">Nome libro</th>
    <th scope="col">Autore</th>
    <th scope="col">Anno di pubblicazione</th>
    <th scope="col">Prezzo</th>
   <th scope="col">Azioni</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${users}" var="user">
    <tr>
      <th scope="row">${user.id}</th>
      <td>${book.title}</td>
      <td>${book.author}</td>
      <td>${book.publishyear}</td>
      <td>${book.price}</td>
      <td>
        <button class="btn-sm btn-group btn-danger" type="submit">Modifica</button>&nbsp;&nbsp;&nbsp;
        <button class="btn-sm btn-group btn-danger" type="submit">Elimina</button>
      </td>
    </tr>
  </c:forEach>
  </tbody>