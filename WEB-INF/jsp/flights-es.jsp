<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ page pageEncoding="UTF-8" %>
                <!DOCTYPE html>
                <html lang="es">

                <head>
                    <title>Vuelos : Tripsfares</title>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <link rel="icon" href="/resources/images/favicon.png">
                    <link rel="canonical" href="https://www.Tripsfares.com/vuelos">
                    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="preload" as="font" crossorigin="anonymous">
                    <link rel="preload" fetchpriority="high" as="image" href="/resources/images//blog-body.webp" type="image/webp">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                    <link rel="stylesheet" href="/resources/css/default.css?v=5.1">
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
                    <script>
                        $(document).ready(function () {
                            var urlPage = window.location.pathname; console.log(urlPage);
                            urlPage = urlPage.split('/');
                            //urlPage = urlPage[urlPage.length - 1];

                            var langSecnt = $("#currencyname_").text();
                            // if(urlPage == 'USD'){
                            //     $(".languageEnglish").show()
                            //     $(".languageSpanish").hide()
                            // }
                            if (urlPage[1] == 'es') {
                                $(".languageEnglish").hide()
                                $(".languageSpanish").show()
                            } else {
                                $(".languageEnglish").show()
                                $(".languageSpanish").hide()
                            }
                            console.log(urlPage)
                        })
                    </script>

                    <jsp:include page="tag-manager-head.jsp" />
                </head>

                <body>
                    <jsp:include page="tag-manager-body.jsp" />
                    <!--Header Area Starts Here-->
                    <jsp:include page="header.jsp" />
                    <div class="screen-overlay" id="screenoverlay" onclick="hidesidenav()"></div>
                    <!--Header Ends Here-->
                    <div class="blog-head">
                        <h1>Tripsfares : Vuelos</h1>
                    </div>
               
                    
                    <div class="aboutus static-content">
                        <p class="subheadings mymt-0">Página de vuelos de Tripsfares.</p>
                        <p>Viajar a nuevos lugares es el sueño de muchos pasajeros. Así que si estás soñando lo mismo entonces reserva su vuelo con Tripsfares. Con nosotros, usted necesita estar relajado porque se hará cargo de su presupuesto. Y reservar su vuelo a su lugar deseado sin romper el banco. Además, nuestro experimentado equipo de atención al cliente ayuda a los pasajeros con la reserva de grupos, reserva de vuelos, vuelos de última hora, el mejor momento para reservar un vuelo, y muchos más. Así no habrá ninguna posibilidad de decepcionarse.</p>

                        <p>Ahora en la era de la digitalización, Tripsfares llega con una nueva ola al campo de los viajes por todo el mundo con servicios de primera categoría. Y lo principal es que ofrece servicios de primera clase a un precio muy bajo.</p>

                        <p>El objetivo principal del equipo Tripsfares es satisfacer a todos los pasajeros con nuestros servicios de alta calidad. Con eso, el proceso que servimos es muy fácil de usar. Usted puede simplemente indicar los detalles requeridos sentado en su sofá y nuestros expertos completarán la reserva muy pronto. Será más beneficioso si usted comparte su preferencia por adelantado para que usted será capaz de ahorrar una gran cantidad.
                        </p>
                    </div>
                  
                        
                    
                    
                    <!-- <h3>Ofertas de vuelos de aerolíneas</h3>
                    <div class="smlink-row">
                        <div>
                            <c:forEach var="airUrl" items="${airlineMap}" varStatus="indexed">
                                <c:if test="${indexed.index % 3 == 0 }">
                        </div>
                        <div class="smlink-col">
                            </c:if>
                            <li>
                                <i class="fa fa-map-marker"></i>&nbsp;&nbsp;<a
                                    href="/es/vuelos/${fn:replace(fn:toLowerCase(airUrl.url),' ','-')}-${fn:toLowerCase(airUrl.pageValue)}">${airUrl.pageName}
                                    Reservations</a>
                            </li>
                            </c:forEach>
                        </div>
                    </div> -->


                    <!--Footer Starts-->
                    <div class="languageEnglish">
                        <jsp:include page="footer.jsp" />
                    </div>
                    <div class="languageSpanish">
                        <jsp:include page="spanishfooter.jsp" />
                    </div>
                    <script src="/resources/scripts/script.js?8-dec-2021"></script>
                    <script type="text/javascript" src="https://cdn.ywxi.net/js/1.js" async></script>
                </body>

                </html>