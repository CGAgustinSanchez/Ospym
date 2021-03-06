<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
<title>Web Osdepym</title>
<script src="/OSDEPYM/resources/core/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="/OSDEPYM/resources/core/js/bootstrap.min.js"></script>
<script src="/OSDEPYM/resources/core/js/bootstrap-swipe-carousel.min.js"></script>
<script src="/OSDEPYM/resources/core/js/main.js"></script> 
<script src="/OSDEPYM/resources/core/js/contacto.js"></script>

<link href="/OSDEPYM/resources/core/css/_contacto.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/OSDEPYM/resources/core/css/fonts.css">
    <link rel="stylesheet" href="/OSDEPYM/resources/core/css/bootstrap.css">
    <link rel="stylesheet" href="/OSDEPYM/resources/core/css/main.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">

    <title>OSDEPYM</title>

</head>

<header id="header">
        <div class="top bg-gradient">
            <nav class="navbar-top">
                <div class="container">
                    <ul class="list-inline list-unstyled mb-0 d-inline-block">
                        <li class="list-inline-item dropdown">
                            <a href="" class="text-white">Afiliados</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="autoridades.html">Tramites On-line</a>
                                <a class="dropdown-item" href="facturacion.html">Facturaci�n</a>
                                <a class="dropdown-item" href="cuenta-corriente.html">Cuenta Corriente</a>
                            </div>
                        </li>
                        <li class="list-inline-item dropdown">
                            <a href="" class="text-white">Prestadores</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="autoridades.html">Validaci�n On-line</a>
                                <a class="dropdown-item" href="facturacion.html">Discapacidad</a>
                            </div>
                        </li>
                        <li class="list-inline-item dropdown">
                            <a href="" class="text-white">Derivaci�n</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="autoridades.html">Empresas</a>
                                <a class="dropdown-item" href="facturacion.html">Centros m�dicos</a>
                            </div>
                        </li>
                        <li class="list-inline-item dropdown">
                        <a class="text-white" href="">
                            Tramites online
                        </a>
                        <div class="dropdown-menu">
<%-- 							<spring:url value="/contacto/${param.idAfiliado}/${param.nombreAfiliado}" var="canalDeContactoUrl" /> --%>
<%--                             <a class="dropdown-item" href="${canalDeContactoUrl}">Canal de contacto</a> --%>
                            <a class="dropdown-item" href="/OSDEPYM/contacto/1234567890/Nombre Afiliado Test">Canal de contacto</a>
                            <a class="dropdown-item" href="">Mi plan web</a>
                            <a class="dropdown-item" href="">Autorizaciones Web</a>	
                        </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="mainnav">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container">
                    <a class="navbar-brand" href="index-1.html"><img src="/OSDEPYM/resources/core/img/logo.svg" alt="OSDEPYM"></a>

                    <ul class="navbar-nav list-inline list-unstyled social-nav ml-0 mt-2 mt-lg-0 text-right">
                        <li class="nav-item nav-item-social facebook">
                            <a class="nav-link" href="#"> <span class="square"><i class="fab fa-facebook-f"></i> <span class="sr-only">Facebook</span></span> </a>
                        </li>
                        <li class="nav-item nav-item-social twitter">
                            <a class="nav-link" href="#"> <span class="square"><i class="fab fa-twitter"></i> <span class="sr-only">Twitter</span></span> </a>
                        </li>
                        <li class="nav-item nav-item-social instagram">
                            <a class="nav-link" href="#"> <span class="square"><i class="fab fa-instagram"></i> <span class="sr-only">Instagram</span></span> </a>
                        </li>
                    </ul>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-bars"></i>
                    </button>

                   
                
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav ml-auto mt-2 mt-lg-0 text-right">
                        <li class="nav-item active dropdown">
                        <a class="nav-link" href="nosotros.html">
                            Nosotros
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="autoridades.html">Autoridades</a>
                            <a class="dropdown-item" href="recursos-humanos.html">Recursos Humanos</a>
                            <a class="dropdown-item" href="responsabilidad-social.html">Responsabilidad Social</a>
                            <a class="dropdown-item" href="telefonos-utiles.html">Tel�fonos �tiles</a>
                        </div>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="planes.jsp">Planes</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="sucursales.html">Sucursales</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="cartilla-medica.html">Cartilla</a>
                        </li>
                    </ul>
                    
                    </div>
                </div>
              </nav>
        </div>
    </header>