<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>

 <jsp:include page="./header.jsp" />
 
 <body>
 	<section id="error">
 	<div class="container text-center" style="padding:70px">
 	<img src="/OSDEPYM/resources/core/img/error-green.png" style="
    height: 100px;
	">
 		<h2 style="height:100px;padding-top:40px">${error.customMessage}</h2>
 		</div>
 	</section>
 	<section id="beneficios">
        <h2 class="title-section">
            <span class="bg-primary text">BENEFICIOS</span>
            <span class="line-div"></span>
        </h2>
        <div class="container text-center">
            <ul class="list-unstyled list-inline row">
                <li class="list-inline-item col">
                    <img src="/OSDEPYM/resources/core/img/icons-01.svg" class="d-none d-md-block" alt="Precios accesibles">
                    <div class="d-md-none">
                        <div class="row">
                            <div class="col-3 text-center">
                            <img src="/OSDEPYM/resources/core/img/icons-mobile-01.svg" alt="Precios accesibles">    
                            </div>
                            <div class="col-9 text-left">
                                <span class="text">Precios accesibles</span>
                            </div>                               
                        </div>
                    </div>
                </li>
                <li class="list-inline-item col">
                    <img src="/OSDEPYM/resources/core/img/icons-02.svg" class="d-none d-md-block" alt="Cartilla online">
                    <div class="d-md-none">
                        <div class="row">
                            <div class="col-3 text-center">
                            <img src="/OSDEPYM/resources/core/img/icons-mobile-02.svg" alt="Cartilla online">    
                            </div>
                            <div class="col-9 text-left">
                                <span class="text">Cartilla online</span>
                            </div>                               
                        </div>
                    </div>
                </li>
                <li class="list-inline-item col">
                    <img src="/OSDEPYM/resources/core/img/icons-03.svg" class="d-none d-md-block" alt="M�s de 120 cl�nicas y centros de atenci�n">
                    <div class="d-md-none">
                        <div class="row">
                            <div class="col-3 text-center">
                            <img src="/OSDEPYM/resources/core/img/icons-mobile-03.svg" alt="M�s de 120 cl�nicas y centros de atenci�n">    
                            </div>
                            <div class="col-9 text-left">
                                <span class="text">M�s de 120 cl�nicas y centros de atenci�n</span>
                            </div>                               
                        </div>
                    </div>
                </li>
                <li class="list-inline-item col">
                    <img src="/OSDEPYM/resources/core/img/icons-04.svg" class="d-none d-md-block" alt="Presencia en todo el pa�s">
                    <div class="d-md-none">
                        <div class="row">
                            <div class="col-3 text-center">
                            <img src="/OSDEPYM/resources/core/img/icons-mobile-04.svg" alt="Presencia en todo el pa�s">    
                            </div>
                            <div class="col-9 text-left">
                                <span class="text">Presencia en todo el pa�s</span>
                            </div>                               
                        </div>
                    </div>
                </li>
                <li class="list-inline-item col">
                    <img src="/OSDEPYM/resources/core/img/icons-05.svg" class="d-none d-md-block" alt="Asistencia al viajero">
                    <div class="d-md-none">
                        <div class="row">
                            <div class="col-3 text-center">
                            <img src="/OSDEPYM/resources/core/img/icons-mobile-05.svg" alt="Asistencia al viajero">    
                            </div>
                            <div class="col-9 text-left">
                                <span class="text">Asistencia al viajero</span>
                            </div>                               
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        
    </section>
 </body>
 <jsp:include page="./footer.jsp" />
 
 </html>