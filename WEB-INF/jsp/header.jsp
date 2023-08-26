<%@ page import="com.travel.controller.HelloGeoIP2" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                    <% if(request.getSession().getAttribute("userCurrency")==null){
                        if(request.getSession().getAttribute("currency")==null) { HelloGeoIP2 hgi=new HelloGeoIP2();
                        String countryName=hgi.getCountry(request).getName();
                         if(
                         countryName.equalsIgnoreCase("United States") || countryName.equalsIgnoreCase("USA") || countryName.equalsIgnoreCase("US")) {
                        System.out.println("US Search ");
                            request.getSession().setAttribute(" currency", "USD" );
                        request.getSession().setAttribute("tfnNum", "+1(888)-888-8888" ); } else {
                        System.out.println("US AND OTHER"); request.getSession().setAttribute("currency", "EUR" );
                        request.getSession().setAttribute("tfnNum", "+1(888)-999-9999" ); } } } %>
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
                                    $(".upper-logo a").prop("href", "/es")
                                    $("#flightUrl a").prop("href", "/es/vuelos")
                                    $("#flightUrl a span").text("vuelos")
                                    $("#flightUrl a span").attr("data-hover", "vuelos")

                                    $("#homeUrl a").prop("href", "/es")
                                    $("#homeUrl a span").text("hogar")
                                    
                                    $("#aboutUrl a").prop("href", "/es/sobre-nosotros")
                                    $("#aboutUrl a span").text("Sobre Nosotros")

                                    $("#blogUrl a").prop("href", "/es/articulos")
                                    $("#blogUrl a span").text("Articulo")

                                    $("#contactUrl a").prop("href", "/es/contactenos")
                                    $("#contactUrl a span").text("Contactanos")

                                    $(".spainCntnt").text('Llámenos 24/7 para obtener las tarifas aéreas más bajas')
                                } else {
                                    $(".languageEnglish").show()
                                    $(".languageSpanish").hide()
                                    $("#flightUrl").hide()
                                }
                                console.log(urlPage)
                            })
                        </script>
                        <!-- <link rel="stylesheet" href="/resources/css/animate.min.css"> -->
                        <div class="header-container topheader" style="background-color:#ffffff;width:100%">
                            <div class="header">
                                <div class="upper-logo">
                                    <a href="/"><img src="/resources/images/logo.png" alt="logo" width="20" height="10"
                                            loading="lazy" decoding="async"></a>
                                </div>

                                <div class="upper-menu">
                                    <ul class="up-nav_group">
                                        <li id="homeUrl"><a href="/"> <span>Home</span></a></li>
                                        <li id="aboutUrl"><a href="/aboutus"> <span>About Us</span></a></li>
                                        <li id="blogUrl"><a href="/blogs" > <span>Blog</span></a></li>
                                        <li id="contactUrl"><a href="/contactus"><span>Contact Us</span></a></li>
                                        <li id="flightUrl" class="active__nav"><a href="/flights" title="Flights"> <span
                                                    data-hover="Flights">Flights</span> </a> </li>

                                        <li class="RVM_curncy_drp_li" style="position:relative;display:none;">
                                            <!-- <a href="javascript:;" class="RVM_currencycountry_pack" style="display:none !important">
                                                    <span id="countrysymbol_"><img alt="Country Flag" src="/resources/images/icons/us_flag.png" class="us_flag" width="24" height="24"></span>
                                                        <i class="fa fa-usd" id="currencysymbol_"></i> 
                                                        <span id="currencyname_">USD</span>
                                                        <i class="fa fa-angle-down"></i><label>US</label>
                                                    </a> -->
                                            <a href="javascript:;" class="RVM_currencycountry_pack">
                                                <input type="hidden" id="" value="${currency}" />
                                                <!--   <i class="fa fa-usd" id="currencysymbol_"></i>&nbsp;&nbsp; <span id="currencyname_">USD</span> -->

                                                <c:if test="${currency == 'USD'}">
                                                    <span id="countrysymbol_"><img alt="United state Flag"
                                                            src="/resources/images/icons/us_flag.png" width="5" height="5" loading="lazy" decoding="async" class="us_flag"></span>
                                                    <i class="fa fa-usd" id="currencysymbol_"></i> <span
                                                        id="currencyname_">USD</span>
                                                    <i class="fa fa-angle-down"></i><label>US</label>
                                                </c:if>
                                                <c:if test="${currency == 'EUR'}">
                                                    <span id="countrysymbol_"><img alt="Spain Flag"
                                                            src="/resources/images/icons/es_flag.png" width="5" height="5" loading="lazy" decoding="async" class="us_flag"></span>
                                                    <i class="fa fa-eur" id="currencysymbol_"></i> <span
                                                        id="currencyname_">EUR</span>
                                                    <i class="fa fa-angle-down"></i><label>ES</label>
                                                </c:if>



                                                <!-- <i class="fa fa-angle-down"></i> -->
                                            </a>
                                            <div class="RVM_currencycountry_popup animated"
                                                id="RVM_currencycountry_popup">
                                                <div>
                                                    <!-- <div class="RVM_curcoun_headr">
                                                        <h4>Change Country &amp; Currency</h4>
                                                    </div> -->
                                                    <div class="RVM_curcoun_body">
                                                        <div class="col-xs-12 RVM_region_country">
                                                            <label><img alt="Country"
                                                                    src="/resources/images/icons/c_flag.png" width="24"
                                                                    height="24" loading="lazy" decoding="async">
                                                                Country</label>
                                                            <div class="col-xs-12" style="padding:0;">
                                                                <select class="form-control countryselect"
                                                                    id="_countryselect" onchange="countryvaluchng();">

                                                                    <option <c:if test="${currency eq 'USD'}">
                                                                        selected="selected"</c:if> value="USA" >United
                                                                        States</option>
                                                                    <option <c:if test="${currency eq 'EUR'}">
                                                                        selected="selected"</c:if> value="ES">Spain
                                                                    </option>

                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-12 RVM_region_currency">
                                                            <label><img alt="Country"
                                                                    src="/resources/images/icons/language.png"
                                                                    width="24" height="24" loading="lazy"
                                                                    decoding="async">Currency</label>
                                                            <div class="col-xs-12" style="padding:0;">
                                                                <select class="form-control countryselect"
                                                                    id="_currencyselect" onchange="currencyvaluchng();">

                                                                    <c:if test="${currency == 'USD'}">
                                                                        <option value="USD" selected>&dollar; - USD
                                                                        </option>
                                                                        <option value="EUR">&pound; - EUR</option>
                                                                    </c:if>
                                                                    <c:if test="${currency == 'EUR'}">
                                                                        <option value="USD">&dollar; - USD</option>
                                                                        <option value="EUR" selected>&pound; - EUR
                                                                        </option>
                                                                    </c:if>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-12 region_country">
                                                            <label><i class="fa fa-language" style="font-size:24px"
                                                                    aria-hidden="true"></i>&nbsp;&nbsp;Language</label>
                                                            <div class="col-xs-12" style="padding:0;">
                                                                <select class="form-control countryselect"
                                                                    id="_languageselect">
                                                                    <c:if test="${currency == 'USD'}">
                                                                        <option value="EN" id="eng" selected>English
                                                                        </option>
                                                                        <option value="ES" id="sph">Spanish</option>
                                                                    </c:if>


                                                                    <c:if test="${currency == 'EUR'}">
                                                                        <option value="EN" id="eng">English</option>
                                                                        <option value="ES" id="sph" selected>Spanish
                                                                        </option>
                                                                    </c:if>

                                                                </select><!-- <i class="fa fa-angle-down"></i> -->
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-12 RVM_region_saveornot">
                                                            <a href="javascript:;" id="RVM_saveButton"
                                                                class="RVM_siteBTN as_r_btn">SAVE</a>
                                                            <!-- <a href="javascript:;" id="RVM_saveButton" class="as_r_btn">
                                                                <span>SAVE</span>
                                                                <span></span> <span></span>
                                                            </a> -->
                                                            <a href="javascript:;"
                                                                class="RVM_siteBTN RVM_siteBTN_G as_r_btn"
                                                                onclick="removeclas('RVM_currencycountry_popup','bounceInUp',' d-flex','RVM_curpop_darkbg');">CANCEL</a>
                                                            <!-- <a href="javascript:;" class="as_r_btn RVM_siteBTN_G" onclick="removeclas('RVM_currencycountry_popup','bounceInUp',' d-flex','RVM_curpop_darkbg');">
                                                                <span>CANCEL</span>
                                                                <span></span> <span></span>
                                                            </a> -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- <div style="display:none !important" class="RVM_currencycountry_popup animated" id="RVM_currencycountry_popup">
                                                <div>
                                                    <div class="RVM_curcoun_body">
                                                        <div class="col-xs-12 RVM_region_country">
                                                            <label><img alt="Country" src="/resources/images/icons/c_flag.png" width="24" height="24" loading="lazy" decoding="async"> Country</label>
                                                            <div class="col-xs-12" style="padding:0;">
                                                                <select class="form-control countryselect" id="_countryselect" onchange="countryvaluchng();">
                                                                            
                                                                        <option selected="selected" value="USA">United States</option>
                                                                        
                                                                        <option value="ES">Spain</option>
                                                                        
                                                                    
                                                                </select>
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="col-xs-12 region_country">
                                                            <label><img alt="Country" src="/resources/images/icons/language.png" width="24" height="24" loading="lazy" decoding="async"> Language</label>
                                                            <div class="col-xs-12" style="padding: 0;">
                                                                <select class="form-control countryselect" id="_languageselect">
                                                                    <option selected="selected" value="EN" id="eng">English</option>
                                                                                
                                                                        <option value="ES" id="sph">espanola</option>
                                                                                
                                                                    </select>
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="col-xs-12 RVM_region_currency">
                                                            <label><img alt="Money" src="/resources/images/icons/currencies.png" width="24" height="24" loading="lazy" decoding="async">Currency</label>
                                                            <div class="col-xs-12" style="padding:0;">
                                                                <select class="form-control countryselect" id="_currencyselect" onchange="currencyvaluchng();">
                                                            <option value="USD" selected="">$ - USD</option>
                                                                    
                                                                    <option value="EUR">&euro; - EUR</option>

                                                            </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-12 RVM_region_saveornot">
                                                            <a href="javascript:;" id="RVM_saveButton" class="RVM_siteBTN">SAVE</a>
                                                            <a href="javascript:;" class="RVM_siteBTN RVM_siteBTN_G" onclick="removeclas('RVM_currencycountry_popup','bounceInUp',' d-flex','RVM_curpop_darkbg');">CANCEL</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> -->
                                        </li>
                                        <c:if test="${userLogin == null}">
                                            <!-- <li><a href="/login"><span data-hover="My Bookings">My Bookings</span></a></li>
                                   <li><a href="/signup"><span data-hover="Sign Up">Sign Up</span></a></li> -->
                                        </c:if>
                                        <c:if test="${userLogin != null}">
                                            <!-- <li><a href="/mybookings"><span data-hover="My Bookings">My Bookings</span></a></li>
                                    <li><a href="#" style="text-transform:capitalize;"><i class="fa fa-user-circle"></i> Welcome ${userLogin.userName}</a></li>
                                    <li><a href="/logout"><i class="fa fa-sign-out"></i>  <span data-hover="Logout">Logout</span></a></li> -->
                                        </c:if>
                                        <!-- <li><a href="/admin"><i class="fa fa-user-circle"></i>   <span data-hover="Sign In">Sign In </span></a></li> -->

                                    </ul>
                                </div>


                                <!-- <div class="expertisetalk">
                                    <span class="callicon"><img src="/resources/images/phonek.png" alt="phonek" width="5" height="5" loading="lazy"
                                            decoding="async"></span>
                                    <span class="spainCntnt">Call Us 24/7 for Lowest Airfares</span>
                                    <a href="tel:+1(800)404-0025"
                                        title="Call Us 24/7 for Lowest Airfares">1-800-404-0025</a>
                                </div> -->
                                <div style="clear: both;"></div>

                                <div class="side-navbar-button">
                                    <button type="button" onclick="showsidenav()" aria-label="opensidenav"><i
                                            class="fa fa-bars"></i></button>
                                </div>
                            </div>
                            <div class="side-navbar" id="sidenavbar">
                                <ul class="languageEnglish">
                                    <li><span>MENU</span><button type="button" onclick="hidesidenav()"
                                            aria-label="hidesidenav"><i class="fa fa-close"></i></button></li>
                                    <!-- <li><a href="/flights">Flights</a></li> -->
                                    <li><a href="/contactus">Contact Us</a></li>
                                    <li><a href="/terms-and-conditions">Terms & Conditions</a></li>
                                    <li><a href="/privacy-policy">Privacy Policy</a></li>
                                    <!-- <li><a href="/login">My Bookings</a></li>
                                    <li><a href="/signup">Sign Up</a></li>
                                    <li><a href="/admin">Sign In</a></li> -->
                                </ul>
                                <ul class="languageSpanish">
                                    <li><span>MEN&#218;</span><button type="button" onclick="hidesidenav()" aria-label="hidesidenav"><i
                                                class="fa fa-close"></i></button></li>
                                    <!-- <li><a href="/flights">Flights</a></li> -->
                                    <li><a href="/es/vuelos">Vuelos</a></li>
                                    <li><a href="/es/articulos">Art&#237;culos</a></li>
                                    <li><a href="/es/contactenos">Cont&#225;ctanos</a></li>
                                    <li><a href="/es/terminos-y-condiciones">T&#233;rminos Y Condiciones</a></li>
                                    <li><a href="/es/politica-de-privacidad">Pol&#237;tica De Privacidad</a></li>
                                    <!-- <li><a href="/login">My Bookings</a></li>
                                <li><a href="/signup">Sign Up</a></li>
                                <li><a href="/admin">Sign In</a></li> -->
                                </ul>
                                <!-- <p>Copyright &copy; 2022 - 2023, lowfaremart. All rights reserved.</p> -->
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(".RVM_currencycountry_pack").click(function () {
                                //$("#RVM_currencycountry_popup").toggle();
                                $("#RVM_currencycountry_popup").toggleClass('bounceInUp d-flex');
                                $(".RVM_curpop_darkbg").show();
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
                            function removeclas(id, cl, cl1, cl2, cl3) {
                                $("#" + id).removeClass(cl + ' ' + cl1);
                                //bounceOutDown $(.addClass(cl3);
                                $("." + cl2).hide();
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
                                    var url = "http://52.52.223.25/" + countryName.toLowerCase();
                                    var url1 = "http://52.52.223.25/";
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