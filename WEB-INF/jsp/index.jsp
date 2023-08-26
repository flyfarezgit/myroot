<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page pageEncoding="UTF-8" %>

      <!DOCTYPE html>
      <html lang="en">
      <head>
        <title>Book Cheap Airline Tickets| Flight Tickets Online | tripsfares.com </title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="DESCRIPTION"
          content=" Book Cheap Flights Tickets, Flight Tickets Online of domestic & international Flights. Get Flight Reservations deals" />
        <meta name="keywords"
          content="  Cheap Airline Tickets, Cheap Air Tickets, Cheap Flights, Flights Booking, Low Cost Airline Tickets, Flights Tickets, Lowest Air Fares, Cheap Flight Tickets, Cheap Air Fares, Discount Flights Tickets, Discounted Airfare Deals, Cheap Plane Tickets, Book a Flight.">
        <meta name="agd-partner-manual-verification" />
        <meta name="google-site-verification" content="3oRvP0JG9mbBpspMvEoGAlGtXnbj0DzmVWny3Y0cwKY" />
        <link rel="icon" href="/resources/images/favicon.png">
        <link rel="canonical" href="https://www.tripsfares.com" />
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="preload" as="font"
        crossorigin="anonymous">
        <link rel="preload" as="image" href="/resources/images/enginebg.webp" />
        <link rel="preload" as="image" href="/resources/images/logo.png" />
        <link rel="preload" href="/resources/font-awesome/css/font-awesome.min.css" as="style" />
        <link rel="preload" href="/resources/css/slick-theme.css?7Feb2022" as="style"/>
        <link rel="preload" href="/resources/css/slick.css?7Feb2022" as="style"/>
        <link rel="preload" href="/resources/css/default.css?15june-2023" as="style"/>
        <link rel="preload" href="/resources/scripts/slick.min.js?06082022" as="script"/>
        <link rel="preload" href="/resources/scripts/script.js?06082022" as="script"/>
        
        <link rel="stylesheet" href="/resources/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
        <link rel="stylesheet" href="/resources/css/slick-theme.css?7Feb2022">
        <link rel="stylesheet" href="/resources/css/slick.css?7Feb2022">
        <link rel="stylesheet" href="/resources/css/default.css?15june-2023">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Google tag (gtag.js) --> <script async src="https://www.googletagmanager.com/gtag/js?id=G-NDQ0MJV9NG"></script> <script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'G-NDQ0MJV9NG'); </script>
        <script>
          var langGlobal = 'english';
          $(document).ready(function () {
            var urlPage = window.location.pathname; console.log(urlPage);
            // urlPage = urlPage.split('/');
            // urlPage = urlPage[urlPage.length - 1];

            var langSecnt = $("#currencyname_").text();
            // if(urlPage == 'USD'){
            //     $(".languageEnglish").show()
            //     $(".languageSpanish").hide()
            // }
            if (urlPage == '/es') {
              langGlobal = 'spanish';
              $(".languageEnglish").hide()
              $(".languageSpanish").show()
              $("#flightUrl a").prop("href", "/es/vuelos")
              $("#flightUrl a span").text("vuelos")
              $("#flightUrl a span").attr("data-hover","vuelos")
            
              $("#homeUrl a").prop("href", "/es")
              $("#homeUrl a span").text("hogar")
              
              $("#aboutUrl a").prop("href", "/es/sobre-nosotros")
              $("#aboutUrl a span").text("Sobre Nosotros")

              $("#blogUrl a").prop("href", "/es/articulos")
              $("#blogUrl a span").text("Artículo")

              $("#contactUrl a").prop("href", "/es/contactenos")
              $("#contactUrl a span").text("Contáctanos")

            } else {
              langGlobal = 'english';
              $(".languageEnglish").show()
              $(".languageSpanish").hide()
              $("#flightUrl").hide()
            }
            console.log(langSecnt)
          })
        </script>
        <jsp:include page="tag-manager-head.jsp" />
      </head>

      <body>

        <jsp:include page="tag-manager-body.jsp" />
        <!--Header Area Starts Here-->
<!-- currency popup start -->
<div class="RVM_curpop_darkbg" onclick="removeclas('RVM_currencycountry_popup','bounceInUp',' d-flex','RVM_curpop_darkbg','body');"></div>
<div class="RVM_currencycountry_popup animated" id="RVM_currencycountry_popup">
    <div>

      <div class="RVM_curcoun_body">
        <div class="col-xs-12 RVM_curcoun_headr">
          <h3 class="languageEnglish">Your Region</h3><h3 class="languageSpanish">Tu Región</h3>
          <button onclick="removeclas('RVM_currencycountry_popup','bounceInUp',' d-flex','RVM_curpop_darkbg','body');" class="" type="button"><img src="/resources/images/icons/cancel.svg" alt="cancel"></button>
        </div>
        <div class="col-xs-12 RVM_region_country">
          <label><img alt="Country" src="/resources/images/icons/c_flag.png" alt="c_flag" width="24" height="24" loading="lazy" decoding="async"> <span
              class="languageEnglish">Country</span><span class="languageSpanish">País</span></label>
          <div class="col-xs-12" style="padding:0;">
            <select class="form-control countryselect" id="_countryselect" onchange="countryvaluchng();">

              <option <c:if test="${currency eq 'USD'}">selected="selected"</c:if> value="USA" >United
                States</option>
              <option <c:if test="${currency eq 'EUR'}">selected="selected"</c:if> value="ES">Spain
              </option>

            </select>
          </div>
        </div>
        <div class="col-xs-12 RVM_region_currency">
          <label><img alt="Country" src="/resources/images/icons/language.png" width="24" height="24" alt="language" loading="lazy" decoding="async"><span class="languageEnglish">Currency</span><span
              class="languageSpanish">Moneda</span></label>
          <div class="col-xs-12" style="padding:0;">
            <select class="form-control countryselect" id="_currencyselect"
              onchange="currencyvaluchng();">

              <c:if test="${currency == 'USD'}">
                <option value="USD" selected>&dollar; - USD</option>
                <option value="EUR">&pound; - EUR</option>
              </c:if>
              <c:if test="${currency == 'EUR'}">
                <option value="USD">&dollar; - USD</option>
                <option value="EUR" selected>&pound; - EUR</option>
              </c:if>
            </select>
          </div>
        </div>
        <div class="col-xs-12 region_country">
          <label><i class="fa fa-language" style="font-size:24px" aria-hidden="true"></i>&nbsp;&nbsp;<span
              class="languageEnglish">Language</span><span class="languageSpanish">Idioma</span></label>
          <div class="col-xs-12" style="padding:0;">
            <select class="form-control countryselect" id="_languageselect">
              <c:if test="${currency == 'USD'}">
                <option value="EN" id="eng" selected>English</option>
                <option value="ES" id="sph">Spanish</option>
              </c:if>


              <c:if test="${currency == 'EUR'}">
                <option value="EN" id="eng">English</option>
                <option value="ES" id="sph" selected>Spanish</option>
              </c:if>

            </select>
          </div>
        </div>
        <div class="col-xs-12 RVM_region_saveornot">
          <a href="javascript:;" id="RVM_saveButton" class="RVM_siteBTN as_r_btn"><span
              class="languageEnglish">SAVE</span><span class="languageSpanish">Guardar</span></a>

          <a href="javascript:;" class="RVM_siteBTN RVM_siteBTN_G as_r_btn"
            onclick="removeclas('RVM_currencycountry_popup','bounceInUp',' d-flex','RVM_curpop_darkbg','body');"><span
              class="languageEnglish">CANCEL</span><span class="languageSpanish">Cancelar</span></a>

        </div>
      </div>
    </div>
  </div>
<!-- currency popup end -->
        <div class="header">
          <div class="upper-logo">
            <a class="languageEnglish" href="/"><img src="/resources/images/logo.png" alt="logo" width="20" height="5" loading="lazy" decoding="async"></a>
            <a class="languageSpanish" href="/es"><img src="/resources/images/logo.png" alt="logo" width="20" height="5" loading="lazy" decoding="async"></a>
          </div>

          <div class="upper-menu">
            <ul class="up-nav_group">
              <li id="homeUrl"><a href="/"> <span>Home</span></a></li>
              <li id="aboutUrl"><a href="/aboutus"> <span>About Us</span></a></li>
              <li id="blogUrl"><a href="/blogs" > <span>Blog</span></a></li>
              <li id="contactUrl"><a href="/contactus"><span>Contact Us</span></a></li>

              <li id="flightUrl" class="active__nav"><a href="/flights" title="Flights"> <span data-hover="Flights">Flights
                <!-- <span class="languageEnglish"></span>
                <span class="languageSpanish">Vuelos</span> -->
              </span> </a>
              </li>

              <c:if test="${userLogin == null}">
                <!-- <li><a href="/login"><span data-hover="My Bookings">My Bookings</span></a></li> -->
                <!--<li><a href="/signup"><span data-hover="Sign Up">Sign Up</span></a></li>-->
              </c:if>
              <c:if test="${userLogin != null}">
                <!-- <li><a href="/mybookings"><span data-hover="My Bookings">My Bookings</span></a></li> -->
                <!-- <li><a href="#" style="text-transform:capitalize;"><i class="fa fa-user-circle"></i> Welcome ${userLogin.userName}</a></li>
                     <li><a href="/logout"><i class="fa fa-sign-out"></i>  <span data-hover="Logout">Logout</span></a></li> -->
              </c:if>

              <li class="RVM_curncy_drp_li" style="position:relative;">
                <a href="javascript:;" class="RVM_currencycountry_pack">
                  <input type="hidden" id="currencyInputHidden" value="${currency}" />
                  <c:if test="${currency == 'USD'}">
                    <span id="countrysymbol_"><img alt="United state Flag" src="/resources/images/icons/us_flag.png" alt="us_flag" class="us_flag" width="5" height="5" loading="lazy" decoding="async"></span>
                    <i class="fa fa-usd" id="currencysymbol_"></i> <span id="currencyname_">USD</span>
                    <i class="fa fa-angle-down"></i><label>US</label>
                  </c:if>
                  <c:if test="${currency == 'EUR'}">
                    <span id="countrysymbol_"><img alt="Spain Flag" src="/resources/images/icons/es_flag.png" alt="es_flag" class="us_flag" width="5" height="5" loading="lazy" decoding="async"></span>
                    <i class="fa fa-eur" id="currencysymbol_"></i> <span id="currencyname_">EUR</span>
                    <i class="fa fa-angle-down"></i><label>ES</label>
                  </c:if>
                </a>
              </li>
            </ul>
          </div>


          <!-- <div class="expertisetalk">
            <span class="callicon"><img src="/resources/images/phonek.png" alt="phonek" width="5" height="5" loading="lazy" decoding="async"></span>
            <span class="languageEnglish">Call Us 24/7 for Lowest Airfares</span><span class="languageSpanish">Llámenos
              24/7 para obtener las tarifas aéreas más bajas</span>
            <a href="tel:+1(800)404-0025" title="Call Us 24/7 for Lowest Airfares">+1-800-404-0025</a>
          </div> -->
          <div style="clear: both;"></div>

          <div class="side-navbar-button">
            <button type="button" onclick="showsidenav()" aria-label="showsidenav"><i class="fa fa-bars"></i></button>
          </div>
        </div>
        <div class="side-navbar" id="sidenavbar">
          <ul class="languageEnglish">
              <li><span>MENU</span><button type="button" onclick="hidesidenav()" aria-label="hidesidenav"><i class="fa fa-close"></i></button></li>
              <!-- <li><a href="/flights">Flights</a></li> -->
              <li><a href="/contactus">Contact Us</a></li>
              <li><a href="/terms-and-conditions">Terms & Conditions</a></li>
              <li><a href="/privacy-policy">Privacy Policy</a></li>
           </ul>
           <ul class="languageSpanish">
              <li><span>MENÚ</span><button type="button" onclick="hidesidenav()" aria-label="hidesidenav"><i class="fa fa-close"></i></button></li>
              <!-- <li><a href="/flights">Flights</a></li> -->
              <li><a href="/es/vuelos">Vuelos</a></li>
              <li><a href="/es/articulos">Art&#237;culos</a></li>
              <li><a href="/es/contactenos">Cont&#225;ctanos</a></li>
              <li><a href="/es/terminos-y-condiciones">T&#233;rminos Y Condiciones</a></li>
              <li><a href="/es/politica-de-privacidad">Pol&#237;tica De Privacidad</a></li>
              
           </ul>
         
        </div>
        <div class="screen-overlay" id="screenoverlay" onclick="hidesidenav()"></div>
        <!--Header Ends Here-->
        <!--Engine Area Starts Here-->
        <div class="engine-bg">
          <div class="bg-overlay">
            <jsp:include page="engine.jsp" />
          </div>
        </div>
        <!--Engine Area Ends Here-->
       
        <!--Deals Section Starts-->
        <section class="whyUsHome">
          <div class="best-deals">
            <div class="innerWrap">
              <div class="spcwjsb">
                  <div class="city_bxn">
                    <div class="whybk_img">
                      <picture>
                        <source srcset="/resources/images/icons/ssl-certificate.webp" type="image/webp">
                        <img src="/resources/images/icons/ssl-certificate.png" alt="Secure Payment" width="10" height="10" loading="lazy" decoding="async">
                      </picture>
                    </div>
                    <div class="h_txt languageEnglish">Secure Payment</div><div class="h_txt languageSpanish">Pago seguro</div>
                    <div class="p_txt languageEnglish">The website has an SSL certificate to create a secure connection for secure financial transactions </div>
                    <div class="p_txt languageSpanish">El sitio web dispone de un certificado SSL para crear una conexión segura para transacciones financieras seguras </div>
                  </div>
                  <div class="city_bxn">
                      <div class="whybk_img">
                          <picture>
                            <source srcset="/resources/images/icons/lowest-price.webp" type="image/webp">
                            <img src="/resources/images/icons/lowest-price.png" alt="lowest Price" width="10" height="10" loading="lazy" decoding="async">
                          </picture>
                      </div>
                      <div class="h_txt languageEnglish">Lowest Fare</div><div class="h_txt languageSpanish">Tarifa más barata</div>
                      <div class="p_txt languageEnglish">An artificial intelligence-based booking site searches airline inventories for the best offer based on search criteria</div>
                      <div class="p_txt languageSpanish">Un sitio de reservas basado en inteligencia artificial busca en los inventarios de las aerolineas la mejor oferta en función de los criterios de búsqueda</div>
                  </div>
                  <div class="city_bxn">
                      <div class="whybk_img">
                          <picture>
                            <source srcset="/resources/images/icons/24-support.webp" type="image/webp">
                            <img src="/resources/images/icons/24-support.png" alt="24*7 customer support" width="10" height="10" loading="lazy" decoding="async">
                          </picture>
                      </div>
                      <div class="h_txt languageEnglish">Anytime Service</div><div class="h_txt languageSpanish">Servicio a todas horas</div>
                      <div class="p_txt languageEnglish">Customer service for reservations and after-sales inquiries is always available, and we will respond to your questions promptly </div>
                      <div class="p_txt languageSpanish">La atención al cliente para reservas y consultas posventa está siempre disponible, y responderemos a sus preguntas rápidamente </div>
                  </div>
                  <div class="city_bxn">
                      <div class="whybk_img">
                          <picture>
                            <source srcset="/resources/images/icons/satisfaction.webp" type="image/webp">
                            <img src="/resources/images/icons/satisfaction.png" alt="satisfaction" width="10" height="10" loading="lazy" decoding="async">
                          </picture>
                      </div>
                      <div class="h_txt languageEnglish">Customer Satisfaction</div><div class="h_txt languageSpanish">Satisfacción de los clientes</div>
                      <div class="p_txt languageEnglish">Our principles, business ethics, values and activities are focused on consistently delivering the WOW Experience</div>
                      <div class="p_txt languageSpanish">Nuestros principios, ética empresarial, valores y actividades se concentran en ofrecer sistemáticamente la Experiencia WOW</div>
                  </div>
              </div>

          </div>
          </div>
        </section>
     
       <section class="_home_aboutus">
          <div class="best-deals">
            <div class="_hm_head">
              <p class="main-heading languageEnglish">About Us</p><p class="main-heading languageSpanish">Sobre nosotros</p>
            </div>
            <div class="_home_abCntn">
            
              <picture>
                <source srcset="/resources/images/icons/aboutus-home.webp" type="image/webp">
                <img src="/resources/images/icons/aboutus-home.jpg" alt="about home"  width="20" height="15" loading="lazy" decoding="async">
              </picture>
              <div>
                <p class="languageEnglish">Travellers from all around the world can book flights, hotels, and other services on TripsFares.com. It is a renowned travel agency website. TripsFares.com strives to make your travels simple, pleasurable, and hassle-free by utilising a sizable network of reliable partners and an intuitive platform. TripsFares.com has all of your travel needs covered, whether you're organising a tranquil beach getaway, an exhilarating mountain trip or a captivating cultural tour.</p>
                <p class="languageEnglish">Since each traveller is different, TripsFares.com strives to offer individualised services catered to their particular needs and spending capacity. We guarantee that you will find the ideal location for your ideal holiday on our website which offers a wide variety of locations, lodgings, and travel choices.</p>
                <p  class="languageEnglish viewMore"><a href="/aboutus">Read More</a></p> 
                <p class="languageSpanish">Viajeros de todo el mundo pueden reservar vuelos, hoteles y otros servicios en TripsFares.com. Se trata de un sitio web de agencias de viajes de renombre. TripsFares.com se esfuerza por hacer que sus viajes sean sencillos, placenteros y sin complicaciones utilizando una amplia red de socios fiables y una plataforma intuitiva. TripsFares.com cubre todas sus necesidades de viaje, ya esté organizando una tranquila escapada a la playa, un estimulante viaje a la montaña o un cautivador recorrido cultural</p>
                <p class="languageSpanish">Dado que cada viajero es diferente, TripsFares.com se esfuerza por ofrecer servicios individualizados adaptados a sus necesidades particulares y a su capacidad de gasto. Le garantizamos que encontrará el lugar ideal para sus vacaciones en nuestro sitio web, que ofrece una amplia variedad de lugares, alojamientos y opciones de viaje.</p>
                <p  class="languageSpanish viewMore"><a href="/es/sobre-nosotros">Read More</a></p> 
              </div>
            </div>
          </div>
        </section>

        <section class="_home_trvlDestinatio">
          <div class="best-deals">
            <div class="_hm_head languageEnglish">
              <p class="main-heading">Travel By Destination</p>
              <p>The costs shown are one way only. Fare includes all applicable taxes, service charges and fuel surcharges. If airline policies or itinerary change, the fares shown on the website may change immediately and without notice. Please read the booking conditions carefully</p>
            </div>
            <div class="_hm_head languageSpanish">
              <p class="main-heading">Viajes por destino</p>
              <p>Los costes indicados son sólo de ida. La tarifa incluye todos los impuestos aplicables, costes de servicio y recargos por combustible. Si se modifican las políticas de la aerolínea o el itinerario, las tarifas indicadas en el sitio web  Podrían cambiar inmediatamente y sin previo aviso. Lea atentamente las condiciones de reserva</p>
            </div>
            <div class="dest_box slick-slider" id="trvlDestin_slider">
              <div class="itemBox box_1">
                <a href="javascript:;">
                  <div>
                    <picture>
                      <source srcset="/resources/images/destination/new/fli-amsterdam.webp" type="image/webp">
                      <img src="/resources/images/destination/new/fli-amsterdam.jpg" alt="amsterdam" width="20" height="14" loading="lazy" decoding="async">
                    </picture>
                    <div class="content">
                      <p class="cityname-date">Hartford <span>Jul 05 - Jul 10</span></p>
                      <p class="person-price"><span class="languageEnglish">from</span><span class="languageSpanish">Desde</span>$92<sup
                          class="small">.96</sup><sup>*</sup> <span class="languageEnglish">per person</span><span
                          class="languageSpanish">Por persona</span></p>
                    </div>
                  </div>
                </a>
              </div>
              <div class="itemBox box_3">
                <a href="javascript:;">
                  <div>
                    <picture>
                      <source srcset="/resources/images/destination/new/fli-barcelona.webp" type="image/webp">
                      <img src="/resources/images/destination/new/fli-barcelona.jpg" alt="barcelona" width="20" height="14" loading="lazy" decoding="async">
                    </picture>
                    <div class="content">
                      <p class="cityname-date">San Diego <span>Jul 07 - Jul 13</span></p>
                      <p class="person-price"><span class="languageEnglish">from</span><span class="languageSpanish">Desde</span>$98<sup
                          class="small">.95</sup><sup>*</sup> <span class="languageEnglish">per person</span><span
                          class="languageSpanish">Por persona</span></p>
                    </div>
                  </div>
                </a>
              </div>

              <div class="itemBox box_2">
                <a href="javascript:;">
                  <div>
                    <picture>
                      <source srcset="/resources/images/destination/new/fli-miami.webp" type="image/webp">
                      <img src="/resources/images/destination/new/fli-miami.jpg" alt="miami" width="20" height="10" loading="lazy" decoding="async">
                    </picture>
                    <div class="content">
                      <p class="cityname-date">Miami <span>Jul 06 - Jul 12</span></p>
                      <p class="person-price"><span class="languageEnglish">from</span><span class="languageSpanish">Desde</span>$99<sup
                          class="small">.95</sup><sup>*</sup> <span class="languageEnglish">per person</span><span
                          class="languageSpanish">Por persona</span></p>
                    </div>
                  </div>
                </a>
              </div>
              <div class="itemBox box_1">
                <a href="javascript:;">
                  <div>
                    <picture>
                      <source srcset="/resources/images/destination/new/SFO_home.webp" type="image/webp">
                      <img src="/resources/images/destination/new/SFO_home.jpg" alt="SFO_home" width="20" height="10" loading="lazy" decoding="async">
                    </picture>
                    <div class="content">
                      <p class="cityname-date">San Francisco <span>Jul 03 - Jul 08</span></p>
                      <p class="person-price"><span class="languageEnglish">from</span><span class="languageSpanish">Desde</span>$99<sup
                          class="small">.95</sup><sup>*</sup> <span class="languageEnglish">per person</span><span
                          class="languageSpanish">Por persona</span></p>
                    </div>
                  </div>
                </a>
              </div>

              <div class="itemBox box_1">
                <a href="javascript:;">
                  <div>
                    <picture>
                      <source srcset="/resources/images/destination/new/fli-sydney.webp" type="image/webp">
                      <img src="/resources/images/destination/new/fli-sydney.jpg" alt="sydney" width="20" height="10" loading="lazy" decoding="async">
                    </picture>
                    <div class="content">
                      <p class="cityname-date">Gulfport <span>Jul 06 - Jul 14</span></p>
                      <p class="person-price"><span class="languageEnglish">from</span><span class="languageSpanish">Desde</span>$114<sup
                          class="small">.81</sup><sup>*</sup> <span class="languageEnglish">per person</span><span
                          class="languageSpanish">Por persona</span></p>
                    </div>
                  </div>
                </a>
              </div>
              <div class="itemBox box_3">
                <a href="javascript:;">
                  <div>
                    <picture>
                      <source srcset="/resources/images/destination/new/fli-honululu.webp" type="image/webp">
                      <img src="/resources/images/destination/new/fli-honululu.jpg" alt="honululu" width="20" height="10" loading="lazy" decoding="async">
                    </picture>
                    <div class="content">
                      <p class="cityname-date">Houston <span>Jul 05 - Jul 11</span></p>
                      <p class="person-price"><span class="languageEnglish">from</span><span class="languageSpanish">Desde</span>$126<sup
                          class="small">.89</sup><sup>*</sup> <span class="languageEnglish">per person</span><span
                          class="languageSpanish">Por persona</span></p>
                    </div>
                  </div>
                </a>
              </div>
            </div>
           
          </div>
        </section>
     
        <!-- Travel By Destination -->
        
        
    
        <!--Footer Starts-->
        <div class="languageEnglish">
            <div class="home-footer"><jsp:include page="footer.jsp" /></div>
        </div>
        <div class="languageSpanish">
          <div class="home-footer"><jsp:include page="spanishfooter.jsp" /></div>
        </div>
        <script type="text/javascript">
          $(".RVM_currencycountry_pack").click(function () {
            //$("#RVM_currencycountry_popup").toggle();
            $("#RVM_currencycountry_popup").toggleClass('bounceInUp d-flex');
            $(".RVM_curpop_darkbg").show();
            $('body').addClass('hideBodyScroll')
          });
          $(".RVM_curpop_darkbg").click(function () {
            $("#RVM_currencycountry_popup").removeClass('bounceInUp d-flex');
            $(this).hide();

          });
          function countryvaluchng() {
            var contry = $("#_countryselect").val(); console.log(contry)
            if (contry == "USA") {
              console.log('USA');
              $("#_currencyselect").val("USD").attr('selected', 'selected');
              $("#_languageselect").val("EN").attr('selected', 'selected');
            }
            if (contry == "ES") {
              console.log('EUR')
              $("#_currencyselect").val("EUR").attr('selected', 'selected');
              $("#_languageselect").val("ES").attr('selected', 'selected');
            }

          }
          function currencyvaluchng() {
            var currency = $("#_currencyselect").val();
            if (currency == "USD") {
              $("#_countryselect").val("USA").attr('selected', 'selected');

            }
            if (currency == "EUR") {
              $("#_countryselect").val("ES").attr('selected', 'selected');

            }

          }
          function removeclas(id, cl, cl1, cl2, cl3, body = null) {
            $("#" + id).removeClass(cl + ' ' + cl1);
            //bounceOutDown $(.addClass(cl3);
            $("." + cl2).hide();
            if(body != null){
              $('body').removeClass('hideBodyScroll')
            }
          }

          $("#RVM_saveButton").click(function () {

            var countryName = $('#_countryselect').val();
            var currencyN = $('#_currencyselect').val();
            console.log(countryName);
            console.log(currencyN);

            $.post("/currency/save", {
              countryName: countryName,
              currency: currencyN

            }, function (data) {
              $("#RVM_currencycountry_popup").removeClass('toggletransformY d-flex');
              $("#RVM_currencycountry_popup").addClass('bounceInUp');
              $(".RVM_curpop_darkbg").hide();
              console.log(data);
              var url = "http://www.tripsfares.com/" + countryName.toLowerCase();
              var url1 = "http://www.tripsfares.com/";
              if (countryName == "ES") {
                window.location.href = url;
              } else {
                window.location.href = url1;
              }
              //location.reload(true);
              //var json = JSON.parse(data);

            }).done(function () {
            }).fail(function (xhr, textStatus, errorThrown) {
            }).complete(function () {
              $("#RVM_saveButton").prop("disabled", false);

            });
          });

        </script>
        <script>
          $(window).ready(function () {
            var viewportWidth = $(window).width();
            if (viewportWidth < 992) {
              $("#trvlDestin_slider").addClass("trpC_hotl_sldr2_");
              $("#trvlByThem_slider").addClass("trpC_hotl_sldr3_");
              // $("#addCl_sldr_3").addClass("trpC_hotl_sldr4_");
            }

          });
          $(window).on('resize', function () {
            var win = $(this);
            if (win.width() < 992) {
              $("#trvlDestin_slider").addClass("trpC_hotl_sldr2_");
            } else {
              $("#trvlDestin_slider").removeClass("trpC_hotl_sldr2_");
            }
          });
          $(document).ready(function () {
            $('.trpC_hotl_sldr2_').slick({
              dots: true,
              infinite: false,
              slidesToShow: 3,
              slidesToScroll: 1,
              autoplay: true,
              // nextArrow: '<i class="fa fa-arrow-right"></i>',
              // prevArrow: '<i class="fa fa-arrow-left"></i>',
              nextArrow: false,
              prevArrow: false,
              speed: 1500,
              responsive: [
                {
                  breakpoint: 768,
                  settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                  }
                },
                {
                  breakpoint: 601,
                  settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                  }
                },
              ]
            });
            $('.trpC_hotl_sldr3_').slick({
              dots: true,
              infinite: false,
              slidesToShow: 2,
              slidesToScroll: 1,
              autoplay: true,
              // nextArrow: '<i class="fa fa-arrow-right"></i>',
              // prevArrow: '<i class="fa fa-arrow-left"></i>',
              nextArrow: false,
              prevArrow: false,
              speed: 1500,
              responsive: [
                {
                  breakpoint: 768,
                  settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                  }
                },
                {
                  breakpoint: 601,
                  settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                  }
                },
              ]
            });
            // console.log('Language url base:---- ',langGlobal)
            // if(langGlobal == 'english'){
            //   $("#currencyInputHidden").val('USD');
            //   $("#countrysymbol_ img").prop("src", "/resources/images/icons/us_flag.png");
            //   $("#currencysymbol_").toggleClass('fa-usd fa-eur');
            //   $("#currencyname_").text('USD');
            //   $(".RVM_currencycountry_pack > label").text('US')
            //   $("#_countryselect option[value=USA]").prop('selected','selected')
            //   $("#_currencyselect option[value=USD]").prop('selected','selected')
            //   $("#_languageselect option[value=EN]").prop('selected','selected')
            // }
            // if(langGlobal == 'spanish'){
            //   $("#currencyInputHidden").val('EUR');
            //   $("#countrysymbol_ img").prop("src", "/resources/images/icons/es_flag.png");
            //   $("#currencysymbol_").toggleClass('fa-eur fa-usd');
            //   $("#currencyname_").text('EUR');
            //   $(".RVM_currencycountry_pack > label").text('ES')
            //   $("#_countryselect option[value=ES]").prop('selected','selected')
            //   $("#_currencyselect option[value=EUR]").prop('selected','selected')
            //   $("#_languageselect option[value=ES]").prop('selected','selected')
            // }
          });
          $(window).on("load", function () {
              if(langGlobal == 'english'){
                $("#currencyInputHidden").val('USD');
                $("#countrysymbol_ img").prop("src", "/resources/images/icons/us_flag.png");
                $("#currencysymbol_").removeClass('fa-eur').addClass('fa-usd');
                $("#currencyname_").text('USD');
                $(".RVM_currencycountry_pack > label").text('US')
                $("#_countryselect option[value=USA]").prop('selected','selected')
                $("#_currencyselect option[value=USD]").prop('selected','selected')
                $("#_languageselect option[value=EN]").prop('selected','selected')
              }
              if(langGlobal == 'spanish'){
                $("#currencyInputHidden").val('EUR');
                $("#countrysymbol_ img").prop("src", "/resources/images/icons/es_flag.png");
                $("#currencysymbol_").removeClass('fa-usd').addClass('fa-eur');
                $("#currencyname_").text('EUR');
                $(".RVM_currencycountry_pack > label").text('ES')
                $("#_countryselect option[value=ES]").prop('selected','selected')
                $("#_currencyselect option[value=EUR]").prop('selected','selected')
                $("#_languageselect option[value=ES]").prop('selected','selected')
              }
    //alert('page is loaded');

    setTimeout(function () {
        //alert('page is loaded and 6 seconds has passed');   
    }, 6000);

});
        </script>
      </body>

      <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js" crossorigin="anonymous"></script>
      <script src="/resources/scripts/slick.min.js?06082022"></script>
      <script src="/resources/scripts/script.js?06082022"></script>

      </html>