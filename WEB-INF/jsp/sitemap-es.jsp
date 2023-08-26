<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %><!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Mapa del sitio</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/resources/images/favicon.png">
    <link rel="canonical" href="https://www.tripsfares.com/es/mapa-del-sitio">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="preload" as="font"
    crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preload" fetchpriority="high" as="image" href="/resources/images//blog-body.webp" type="image/webp">
    <link rel="stylesheet" href="/resources/css/default.css?v=2.7">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>
$(document).ready(function(){
    var urlPage = window.location.pathname; console.log(urlPage);
    urlPage = urlPage.split('/');
    //urlPage = urlPage[urlPage.length - 1];
    
    var langSecnt = $("#currencyname_").text();
    // if(urlPage == 'USD'){
    //     $(".languageEnglish").show()
    //     $(".languageSpanish").hide()
    // }
    if(urlPage[1] == 'es'){
        $(".languageEnglish").hide()
        $(".languageSpanish").show()
    }else{
        $(".languageEnglish").show()
        $(".languageSpanish").hide()
    }
    console.log(urlPage)
})
</script>
<jsp:include page="tag-manager-head.jsp" /></head>
<body>
    <jsp:include page="tag-manager-body.jsp" /><!--Header Area Starts Here-->
    <jsp:include page="header.jsp" />
    <div class="screen-overlay" id="screenoverlay" onclick="hidesidenav()"></div>
    <!--Header Ends Here-->
    <div class="blog-head">
        <h1>Mapa del sitio</h1>
    </div>
    <div style="background-color:#ffffff">
    <div class="aboutus">
        <p class="sitemap-heading">Ofertas de vuelos de aerolíneas</p>
            <div class="smlink-row">
		<div>
                <c:forEach var="airUrl" items="${airlineMap}" varStatus="indexed">
                <c:if test="${indexed.index % 3 == 0 }">
                </div>
                <div class="smlink-col">
                    <ul>
                </c:if>
                <li>
                 <i class="fa fa-map-marker"></i>&nbsp;&nbsp;<a href="/es/vuelos/${fn:replace(fn:toLowerCase(airUrl.url),' ','-')}-${fn:toLowerCase(airUrl.pageValue)}">${airUrl.pageName} Reservas</a></li>
                </c:forEach>
            </ul>
                </div>    
              </div>   
                
        <p class="sitemap-heading">Ofertas de vuelos baratos </p>
	      
	      <div class="smlink-row">
		<div>
                <c:forEach var="airUrl" items="${cityMap}" varStatus="indexed">
                <c:if test="${indexed.index % 3 == 0 }">
                </div>
                <div class="smlink-col">
                <ul>
                </c:if>
                <li>
                 <i class="fa fa-plane"></i>&nbsp;&nbsp;<a href="/es/ciudad/vuelos-baratos-a-${fn:replace(fn:toLowerCase(airUrl.url),' ','-')}-${fn:toLowerCase(airUrl.pageValue)}">Vuelos Baratos A ${airUrl.pageName}</a></li>
                </c:forEach>
                </ul>
                </div>
		</div>


		<p class="sitemap-heading">Rutas de Vuelo</p>
	      
	      <div class="smlink-row">
		<div>
                <c:forEach var="airUrl" items="${genericMap}" varStatus="indexed">
                <c:if test="${indexed.index % 3 == 0 }">
                </div>
                <div class="smlink-col">
                    <ul>
                </c:if>
                <li>
                 <i class="fa fa-plane"></i>&nbsp;&nbsp;<a href="/es/rutas/vuelos-baratos-desde-${fn:replace(fn:toLowerCase(airUrl.url),' ','-')}">${airUrl.pageName}</a></li>
                </c:forEach>
                </ul>
                </div>
		</div>


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