<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>${blogResponse.metaTitle}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="${blogResponse.metaDescp}">
    <meta name="keyword" content="${blogResponse.metaKeyword}">
    <link rel="icon" href="/resources/images/favicon.png">
    <link rel="canonical" href="https://www.tripsfares.com/es/articulo/${blogResponse.artUrl}"> 
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="preload" as="font" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preload" fetchpriority="high" as="image" href="/resources/images//blog-body.webp" type="image/webp">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
    <link rel="stylesheet" href="/resources/css/default.css?v=4.2">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js" crossorigin="anonymous"></script>
      
<jsp:include page="tag-manager-head.jsp" /></head>
<body>
    <jsp:include page="tag-manager-body.jsp" />
    <!--Header Area Starts Here-->
    <jsp:include page="header.jsp" />
    <div class="screen-overlay" id="screenoverlay" onclick="hidesidenav()"></div>
    <div class="blog-head">
        <span>Tripsfares Artículos</span>
    </div>
	<input type="hidden" id="pageUrl" value="${blogResponse.artUrl}" />
    <div style="width:100%;background-color:#ffffff;">
    <div class="blog-detail-container">
        <div class="blog-detail static-content">
            <!-- <div class="bdmtxt">
                ${blogResponse.artHeading}
            </div> -->
    
            <div class="bdtxt">
                ${blogResponse.content}
            </div>

            <!-- <div class="bdtxt bdtxt-flex">
                <div class="bdtxt-left">
                    ${blogResponse.content}
                </div>

                    <div class="bdtxt-right">
                    <div class="recent-blogs">
                        <p class="subheadings">Popular Posts</p>
                        <ul>
                            <li><a href="#">GuÃ&shy;a de viaje de Colombia</a></li>
                            <li><a href="#">GuÃ&shy;a de viaje de Colombia</a></li>
                            <li><a href="#">GuÃ&shy;a de viaje de Colombia</a></li>
                            <li><a href="#">GuÃ&shy;a de viaje de Colombia</a></li>
                            <li><a href="#">GuÃ&shy;a de viaje de Colombia</a></li>
                        </ul>
                    </div>
                </div>
            </div> -->
            
        </div>
    </div>
    </div>
 
    <jsp:include page="customer-review.jsp" />
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
    console.log(urlPage,'blog detail page')
})
</script>


   <div class="languageSpanish">
        <div class="blog-page-footer">
            <jsp:include page="spanishfooter.jsp" />
        </div>
   </div>
   <script src="/resources/scripts/script.js"></script>
</body>

</html>