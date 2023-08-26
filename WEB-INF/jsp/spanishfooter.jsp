<%@ page import="com.travel.utility.SiteMap" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
                    <%@ page pageEncoding="UTF-8" %>

                    <script>
                        jQuery(document).ready(function () {
                           jQuery(".sticky-tnf .sticky li").click(function () {
                               //alert("test")
                               jQuery(this).toggleClass("tnf-show");
                           });
                       });
                      

                       function emailCheck(email) {
                           var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                           if (email.match(mailformat)) {
                               return true;
                           } else {
                               return false;
                           }
                       }

                       function subscribeEmail() {

                           var emailID = $("#subscribe_email").val();
                           var flag = false;

                           if (emailID == "") {
                               flag = true;
                               $(".errorMsg").show();
                           }
                           else {
                               $(".errorMsg").hide();

                               if (!emailCheck(emailID)) {
                                   flag = true;
                                   $(".emailMsg").show();
                               }
                               else {
                                   $(".emailMsg").hide();
                               }
                           }

                           if (flag) {
                               return;
                           }
                           else {
                               $.ajax({
                                   url: '/subscribesubmit/' + $("#subscribe_email").val(),
                                   type: 'post',
                                   contentType: 'application/json; charset=utf-8',
                                   //data: JSON.stringify(data),
                                   dataType: "text",
                                   beforeSend: function () {
                                       $(".loader").show().addClass('activeLoader');
                                   },
                                   success: function (response) {
                                       $(".loader").hide().removeClass('activeLoader');
                                       if (response == 'true') {
                                           $("#subcribe-msg-success").text("You have successfully subscribed!").css("color", "green");
                                       }
                                       else {
                                           $("#subcribe-msg-success").text("Some Technical Issue Please try later!").css("color", "red");
                                       }
                                   }
                               });
                           }
                       }
/*$(document).ready(function(){
                                                       $(".RVM_currencycountry_pack").click(function () {
                                                           $("#RVM_currencycountry_popup").toggleClass("bounceInUp d-flex"); 
                                                           //$(".RVM_curpop_darkbg").show();
                                                       });
                                                       $("#RVM_saveButton").click(function () {
                                                           var e = $("#_countryselect").val(),
                                                               c = $("#_currencyselect").val(),
                                                               t = $("#_languageselect").val();
                                                               //console.log(e);
                                                               //return false;
                                                           console.log(e),
                                                               console.log(c),
                                                               console.log(t),
                                                               $.post("/currency/save", { countryName: e, currency: c, language: t }, function (g) {
                                                                   // console.log(e);
                                                                   // return false;
                                                                   $("#RVM_currencycountry_popup").removeClass("toggletransformY d-flex"),
                                                                       $("#RVM_currencycountry_popup").addClass("bounceOutDown"),
                                                                       $(".RVM_curpop_darkbg").hide(),
                                                                       setTimeout(function () {
                                                                           console.log("data:" + e);
                                                                           var c = "http://13.57.48.177/" + e.toLowerCase(),
                                                                               t = "http://13.57.48.177/";
                                                                           //console.log(c); return false;
                                                                           "es" == e  ? ((window.location.href = c), console.log("location spain")) : (window.location.href = t) ||
                                                                           "fr" == e  ? ((window.location.href = c), console.log("location French")) : (window.location.href = t) ||   
                                                                           "prt" == e ? ((window.location.href = c), console.log("location Portuguese")) : (window.location.href = t);
                                                                       }, 1e3);
                                                               })
                                                                   .done(function () {})
                                                                   .fail(function (result) {console.log(result);})
                                                                   .complete(function () {
                                                                       $("#RVM_saveButton").prop("disabled", !1);
                                                                   });
                                                       });
                                                   });*/
                       /*function countryvaluchng() {
                           var e = $("#_countryselect").val(),
                               c = "<option value='EN' id='eng'>English</option>";
                               c += "<option value='ES' id='sph'>espanola</option>",
                               //c += "<option value='FR' id='frh'>française</option>",
                               //c += "<option value='PRT' id='prth'>português</option>",
                               (document.getElementById("_languageselect").innerHTML = c),
                               "USA" == e && (console.log("OK"), $("#_currencyselect").val("USD").attr("selected", "selected"), $("#eng").show(), $("#sph").show(), $("#_languageselect").val("EN").attr("selected", "selected")),
                               "AE" == e && ($("#_currencyselect").val("AED").attr("selected", "selected"), $("#eng").show(), $("#sph").hide(), $("#_languageselect").val("EN").attr("selected", "selected")),
                               "UK" == e && ($("#_currencyselect").val("GBP").attr("selected", "selected"), $("#eng").show(), $("#sph").hide(), $("#_languageselect").val("EN").attr("selected", "selected")),
                               "ES" == e && ($("#_currencyselect").val("EUR").attr("selected", "selected"), $("#eng").hide(), $("#sph").show(), $("#_languageselect").val("ES").attr("selected", "selected"))
                               "FR" == e && ($("#_currencyselect").val("EUR").attr("selected", "selected"), $("#eng").hide(), $("#frh").show(), $("#_languageselect").val("FR").attr("selected", "selected"))
                               "PRT" == e && ($("#_currencyselect").val("EUR").attr("selected", "selected"), $("#eng").hide(), $("#prth").show(), $("#_languageselect").val("PRT").attr("selected", "selected")) ;
                       }*/
       </script>

                        <div style="background-color:#004a81;width:100%;">
                            <% com.travel.utility.SiteMap tc=new com.travel.utility.SiteMap(); tc.getSitemap(request);
                                %>
                                <div class="footer-container">
                                    <div class="footer1" style="padding-top:20px;">
                                        <div class="col-sm-8">
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <p class="foot-heading"><strong>ENLACES IMPORTANTES</strong></p>
                                                    <ul>
                                                        <li><a href="/es/sobre-nosotros">Sobre Nosotros</a></li>
                                                        <!-- <li><a href="/cheap-flights">Vuelos Baratos</a></li> -->
                                                        <li><a href="/es/contactenos">Cont&#225;ctanos</a></li>
                                                        <li><a href="/es/articulos">Artículo</a></li>
                                                        <li><a href="/es/mapa-del-sitio">Mapa Del Sitio</a></li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-4">
                                                    <p class="foot-heading"><strong>JURÍDICO</strong></p>
                                                    <ul>
                                                        <li><a href="/es/terminos-y-condiciones">T&#233;rminos Y
                                                                Condiciones</a></li>
                                                        <li><a href="/es/politica-de-privacidad">Pol&#237;tica De
                                                                Privacidad</a></li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-4">
                                                    <p class="foot-heading"><strong>CONTÁCTANOS</strong></p>
                                                    <ul class="foot-reachus">
                                                        <li><a href="mailto:sales@tripsfares.com"><i
                                                                    class="fa fa-envelope" aria-hidden="true"></i>
                                                                sales@tripsfares.com</a></li>
                                                        <li><a href="tel:+1-855-435-7217"><i class="fa fa-phone"
                                                                    aria-hidden="true"></i> +1-855-435-7217</a></li>
                                                        <!-- <li><i class="fa fa-map-marker" aria-hidden="true"></i> 371 Hoes
                                                            Lane Suite 200, Piscataway, New Jersey 08854</li> -->
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div style="clear:left;"></div>

                                <div class="footer2">
                                    <p class="foot-disclaimer">
                                        <strong>Descargo de responsabilidad</strong>:- Tripsfares.com es un sitio web de
                                        reservas en línea con sede en Estados Unidos. Su principal objetivo es poner en
                                        contacto a la aerolínea y a los pasajeros o se puede decir que actúa como
                                        intermediario entre los clientes y los proveedores de servicios de viajes,
                                        tripsfares.com no garantiza la disponibilidad, los precios ni la calidad de los
                                        servicios ofrecidos por los proveedores. Si tiene alguna pregunta o duda,
                                        póngase en contacto con nosotros a través de la información de contacto <a href="https://www.tripsfares.com/es/contactenos">(https://www.tripsfares.com/es/contactenos)</a>
                                        proporcionada en el sitio web.
                                    </p>


                                    <div class="foot-certified">
                                        <img src="/resources/images/certified-new.png" alt="certified-new" width="50"
                                            height="4" loading="lazy" decoding="async">
                                        <p class="copy-text">Copyright &copy; 2023, Tripsfares.com Todos los derechos
                                            reservados.</p>
                                    </div>
                                </div>
                        </div>

                        <!-- <div class="fixed-call-bottom">
                            <c:choose>
                                <c:when
                                    test="${pageResponse != null && pageResponse.tfnNo != null && pageResponse.tfnNo != ''}">
                                    <a href="tel:${pageResponse.tfnNo}"><img src="/resources/images/phone-call.png"></a>
                                    <div>
                                        <div>Llame y obtenga ofertas de vuelos no publicadas!</div>
                                        <div>${pageResponse.tfnNo}</div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <a href="tel:+1-800-404-0025"><img src="/resources/images/phone-call.png"></a>
                                    <div>
                                        <div>Llame y obtenga ofertas de vuelos no publicadas!</div>
                                        <div>1-800-404-0025</div>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                            <i class="fa fa-close"></i>
                        </div> -->
                      
                         <div class="tnfsticky-container">
                            <div class="sticky-tnf">
                                <ul class="sticky">
                                    <li>
                                        <span class="tnf-call-icon"><i class="fa fa-phone"></i></span>
    
                                        <c:choose>
                                            
                                        <c:when test="${blogResponse.tfnNo != ''}">
                                            <p><a href="tel:${blogResponse.tfnNo}" title="Call Us 24/7 para Tripsfares">${blogResponse.tfnNo}
                                            <span>Relativo a Tripsfares</span>
                                        </a>
                                        </p>
                                    </c:when>
                                    <c:otherwise>
                                        >>
                                        <p><a href="tel:+1-800-404-0025" title="Call Us 24/7 para Tripsfares">+1-800-404-0025
                                            <span>Relativo a Tripsfares</span>
                                        </a>
                                        </p>
                                    </c:otherwise>
                                    </c:choose>
                                        <span class="sticky-close"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                          </div>
                        </div> 
                    
                         <!-- <div class="tnfsticky-container">
                            <div class="sticky-tnf">
                                <ul class="sticky">
                                    <li>
                                        <span class="tnf-call-icon"><i class="fa fa-phone"></i></span>
                                        <p>
                                            <a href="tel:+1-800-404-0025"
                                                title="Call Us 24/7 para Tripsfares">+1-800-404-0025
                                                <span>Relativo a Tripsfares</span>
                                            </a>

                                        </p>
                                        <span class="sticky-close"><i class="fa fa-close"></i></span>
                                    </li>
                                </ul>
                            </div>
                        </div>  -->
                        

                       