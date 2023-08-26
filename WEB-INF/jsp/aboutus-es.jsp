<%@ page pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">
    <head>
        <title>Sobre Nosotros</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Sobre nosotras descripción">
        <link rel="icon" href="/resources/images/favicon.png">
        <link rel="canonical" href="https://www.tripsfares.com/es/sobre-nosotros">
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
            <h1>Sobre Nosotros</h1>
        </div>
        <div style="background-color:#ffffff;">
            <div class="aboutus static-content">
                <p class="subheadings mymt-0">Tripsfares : Sobre Nosotros </p>
                <p>
                    Viajeros de todo el mundo pueden reservar vuelos, hoteles y otros servicios en tripsfares.com. Se trata de un sitio web de agencias de viajes de renombre. Tripsfares.com se esfuerza por hacer que sus viajes sean sencillos, placenteros y sin complicaciones utilizando una amplia red de socios fiables y una plataforma intuitiva. TripsFares.com cubre todas sus necesidades de viaje, ya esté organizando una tranquila escapada a la playa, un estimulante viaje a la montaña o un cautivador recorrido cultural.</p>
                <p>
                    Dado que cada viajero es diferente, tripsfares.com se esfuerza por ofrecer servicios individualizados adaptados a sus necesidades particulares y a su capacidad de gasto. Le garantizamos que encontrará el lugar ideal para sus vacaciones en nuestro sitio web, que ofrece una amplia variedad de lugares, alojamientos y opciones de viaje. Nuestro variado surtido de alojamientos, que va desde opulentos resorts a hostales económicos, se adapta a todos los estilos de viajero.                </p>
                <p>
                    TripsFares.com simplifica la reserva de sus planes de viaje. Con la ayuda de nuestra interfaz fácil de usar. Puede buscar y reservar rápidamente vuelos, alojamiento y coches de alquiler. Puede sentirse tranquilo sabiendo que su reserva está en buenas manos con actualizaciones en tiempo real y métodos de pago seguros. Para asegurarnos de que su experiencia sea fácil de principio a fin, nuestro entregado equipo de atención al cliente está a su disposición las 24 horas del día. Para mejorar su experiencia de reserva, actualizamos periódicamente nuestro sitio web con los últimos avances tecnológicos y tendencias de viajes.
                </p>
                <p>
                    Por ello, tripsfares.com está aquí para abrirle el universo de oportunidades que le esperan, tanto si es un viajero experimentado como un aventurero primerizo. Emprenda su viaje ahora mismo y deje que tripsfares.com sea su compañero de viaje de confianza.
                </p>
            </div>
        </div>
        <!--Footer Starts-->
        <div class="languageEnglish">
            <jsp:include page="footer.jsp" />
        </div>
        <div class="languageSpanish">
            <jsp:include page="spanishfooter.jsp" />
        </div>
        <script src="/resources/scripts/script.js?8-dec-2021"></script>
    </body>

    </html>