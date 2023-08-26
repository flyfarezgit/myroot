<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.ParseException" %> 
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>Tripsfares: Artículos</title>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Descripción del blog">
    <meta name="keyword" content="Blog">
    <link rel="canonical" href="https://www.tripsfares.com/es/articulos">
    <link rel="icon" href="/resources/images/favicon.png">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="preload" as="font" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preload" fetchpriority="high" as="image" href="/resources/images//blog-body.webp" type="image/webp">
    <link rel="stylesheet" href="/resources/css/default.css?v=2.9">  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="/resources/scripts/script.js"></script>
    
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
    <div class="blog-head">
        <span>Tripsfares Artículos</span>
    </div>
    <div class="blog-items-container">
        <div class="blog-items">
            <c:forEach var="blll" items="${blogResponse}" >
            <div class="bitem">
               <!--  <div class="bimg">
                    <img src="/resources/images/blogimg.jpg">
                </div> -->
                <div class="bmtxt">
                     <a href="/es/articulo/${blll.artUrl}">${blll.artHeading}</a>
                </div>
                <div class="btxt">
                    ${fn:escapeXml(fn:substring(blll.content.replaceAll('<.*?>' , ""), 0, 115))}
                </div>
                <div class="bdate">
                    <span><a href="/es/articulo/${blll.artUrl}">Leer Más</a></span>
                </div>
            </div>
           </c:forEach>
      
        </div>
    </div>
            <div class="languageEnglish">
                <jsp:include page="footer.jsp" />
            </div>
        <div class="languageSpanish">
            <jsp:include page="spanishfooter.jsp" />
        </div>
    </body>
</html>