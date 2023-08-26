<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page pageEncoding="UTF-8" %>

        <form:form modelAttribute="flightSearch" action="flight" method="POST">

            <script>
                $(document).ready(function () {
                    var urlPage = window.location.pathname; console.log(urlPage);
                    // urlPage = urlPage.split('/');
                    // urlPage = urlPage[urlPage.length - 1];
                    var urlPage_2 = urlPage.split('/');
                    var langSecnt = $("#currencyname_").text();
                    var coach = $("input[name='coach'").val();
                    coach = coach.split(' '); console.log(coach);
                    // if(urlPage == 'USD'){
                    //     $(".languageEnglish").show()
                    //     $(".languageSpanish").hide()
                    // }
                    
                    if (urlPage == '/es') {
                        $(".languageEnglish").hide()
                        $(".languageSpanish").show()

                        $("#RTripSel").text('Ida y vuelta')
                        $("#OTripSel").text('Una Ida')
                        $("#MTripSel").text('Multi Ciudad')
                        $("#FTab_headr").text('Vuelos') 
                        $("#OriginLabel").text('Origen')
                        $("#destiLable").text('Destino')
                        $("#departLAbel").text('Salida')
                        $("#returnLAbel").text('Regreso')
                        $(".dateLabel").text('Fecha')
                        $("#engingHeadingCntent").html('Los mejores billetes de avión baratos Compara y reserva fácilmente todas <span class="mainarea-text-hightlight">las aerolíneas</span>')
                        
                                

                        $("input[placeholder='Enter Airport']").attr("placeholder", 'Entrar Aeropuerto')
                        $("input[placeholder='Select']").attr("placeholder", 'Seleccionar')
                        $("input[name='coach'").val(coach[0] + ' Viajero')
                    }else if(urlPage_2[1] == 'es'){
                        $(".languageEnglish").hide()
                        $(".languageSpanish").show()

                        $("#RTripSel").text('Ida y vuelta')
                        $("#OTripSel").text('Una Ida')
                        $("#MTripSel").text('Multi Ciudad')
                        $("#FTab_headr").text('Vuelos') 
                        $("#OriginLabel").text('Origen')
                        $("#destiLable").text('Destino')
                        $("#departLAbel").text('Salida')
                        $("#returnLAbel").text('Regreso')
                        $(".dateLabel").text('Fecha')
                        $("#engingHeadingCntent").html('Los mejores billetes de avión baratos Compara y reserva fácilmente todas <span class="mainarea-text-hightlight">las aerolíneas</span>')
                        
                                

                        $("input[placeholder='Enter Airport']").attr("placeholder", 'Entrar Aeropuerto')
                        $("input[placeholder='Select']").attr("placeholder", 'Seleccionar')
                        $("input[name='coach'").val(coach[0] + ' Viajero')
                    } else {
                        $("#RTripSel").text('ROUND TRIP')
                        $("#OTripSel").text('ONE WAY')
                        $("#MTripSel").text('Multi City')
                        $("#FTab_headr").text('FLIGHTS')
                        $("#OriginLabel").text('Origin') 
                        $("#destiLable").text('Destination')
                        $("#departLAbel").text('Depart')
                        $("#returnLAbel").text('Return')
                        $(".dateLabel").text('Date')
                        $("#engingHeadingCntent").html('Best Cheap Flight Tickets Easily Compare and  Book <span class="mainarea-text-hightlight">All Airlines</span>')

                        $(".languageEnglish").show()
                        $(".languageSpanish").hide()
                        $("input[placeholder='Entrar Aeropuerto']").attr("placeholder", 'Enter Airport')
                        $("input[placeholder='Seleccionar']").attr("placeholder", 'Select')
                        $("input[name='coach'").val(coach[0] + ' ' + coach[1])
                    }
                    console.log(langSecnt)
                })
            </script>

            <div class="engine">

                <div class="flight-engine">
                    <div class="engine-selector">
                        <ul>
                        <li><a href="#"><i class="fa fa-plane"></i> &nbsp;&nbsp;
                            <span id="FTab_headr" class="">FLIGHTS</span>
                            <!-- <span class="languageSpanish"></span> -->
                        </a></li>
                                </ul>        
                    </div>
                    <form:hidden path="tripType" value="2" />
                    <form:hidden path="pageAirline" />
                    <div class="trip-selector">
                        <label> <pre id="RTripSel">ROUND TRIP</pre><input type="radio" name="trip" checked="checked"
                                onclick="tripselector();multicity1();" ;><span class="custom-radio"></span></label>
                        <label> <pre id="OTripSel">ONE WAY</pre><input type="radio" name="trip" id="oneway"
                                onclick="tripselector();multicity1();" ;><span class="custom-radio"></span></label>
                        <label> <pre id="MTripSel">Multi City</pre><input type="radio" name="trip" id="multicity"
                                onclick="tripselector();multicity1();"><span class="custom-radio"></span></label>
                    </div>
                    <!-- <div class="trip-selector languageSpanish">
                        <label> Ida y vuelta<input type="radio" name="trip" checked="checked"
                                onclick="tripselector();multicity1();" ;><span class="custom-radio"></span></label>
                        <label> Una Ida<input type="radio" name="trip" id="oneway"
                                onclick="tripselector();multicity1();" ;><span class="custom-radio"></span></label>
                        <label> Multi Ciudad<input type="radio" name="trip" id="multicity"
                                onclick="tripselector();multicity1();"><span class="custom-radio"></span></label>
                    </div> -->
                    <div class="flight-search">
                        <div class="search-date">
                            <div class="defaultcity">
                                <div class="flightno" style="display:none;">Flight 1</div>
                                <div class="origra">
                                    <i class="fa fa-times-circle" id="OremEmpIcon"
                                        onclick="delEmpVal('origin','FcityName','OremEmpIcon','txtFltOrigin')"
                                        style="display:none;"></i>
                                    <span>
                                        <span id="OriginLabel">Origin</span>
                                        <!-- <span class="languageSpanish">Origen</span> -->
                                    </span>
                                    <strong id="txtFltOrigin" style="display:none;"></strong>
                                    <form:input path="origin" class="search" placeholder="Enter Airport" />
                                    <label class="bottom" for="origin" id="FcityName">&nbsp;</label>
                                </div>
                                <input type="button" id="swap" style="padding-left:0;">

                                <div class="origra rvksh">
                                    <i class="fa fa-times-circle" id="DremEmpIcon"
                                        onclick="delEmpVal('destination','RcityName','DremEmpIcon','txtFltDestin')"
                                        style="display:none;"></i>
                                    <span>
                                        <span id="destiLable">Destination</span>
                                        <!-- <span class="languageSpanish">Destino</span> -->
                                    </span>
                                    <strong id="txtFltDestin" style="display:none;"></strong>
                                    <form:input path="destination" class="search" placeholder="Enter Airport" />
                                    <label class="bottom" for="destination" id="RcityName">&nbsp;</label>
                                </div>

                                <div class="origra ">
                                    <p class="ashm"><img src="/resources/images/mips2.png"
                                            style="width: 24px; height: 24px;"></p>
                                    <span>
                                        <span id="departLAbel">Depart</span>
                                        <!-- <span class="languageSpanish">Salida</span></span> -->

                                    <form:input path="departDate" readonly="true" class="date" placeholder="Select" />
                                    <span class="bottom pl23px">
                                        <span class="dateLabel">Date</span>
                                        <!-- <span class="languageSpanish">Fecha</span> -->
                                    </span>
                                </div>
                                <input type="button" class="mips" style="padding-left:0;">
                                <div class="origra  date rvksh rvksh2">
                                    <p class="ashm"><img src="/resources/images/mips2.png"
                                            style="width: 24px; height: 24px;"></p>

                                    <span><span id="returnLAbel">Return</span>
                                        <!-- <span class="languageSpanish">Regreso</span> -->
                                        </span>

                                    <form:input path="returnDate" readonly="true" class="date" placeholder="Select" />
                                    <span class="bottom pl23px">
                                        <span class="dateLabel">Date</span>
                                        <!-- <span class="languageSpanish">Fecha</span> -->
                                        </span>
                                </div>

                            </div>
                            <div class="multicity" style="display:none;">
                                <div class="flightno">Flight 2</div>
                                <label class="originM"><span class="languageEnglish">Origin</span><span
                                        class="languageSpanish">Origen</span></label>
                                <form:input path="origin2" class="msearch" placeholder="Enter Airport" />
                                <label class="destinationM"><span class="languageEnglish">Destination</span><span
                                        class="languageSpanish">Destino</span></label>
                                <form:input path="destination2" name="from" class="msearch"
                                    placeholder="Enter Airport" />
                                <img src="/resources/images/mips.png" alt="calendar" class="Mcalendr">
                                <form:input path="departDate2" name="depart" class="mdate" readonly="true"
                                    placeholder="Depart" />
                            </div>
                            <div class="multicity" style="display:none;">
                                <div class="flightno"><span>Flight 3</span><button type="button"
                                        onclick="closeself()"><i class="fa fa-close"></i> Remove This</button></div>
                                <label class="originM"><span class="languageEnglish">Origin</span><span
                                        class="languageSpanish">Origen</span></label>
                                <form:input path="origin3" class="msearch" placeholder="Enter Airport" />
                                <label class="destinationM"><span class="languageEnglish">Destination</span><span
                                        class="languageSpanish">Destino</span></label>
                                <form:input path="destination3" class="msearch" placeholder="Enter Airport" />
                                <form:input path="departDate3" class="mdate" readonly="true" placeholder="Depart" />
                                <img src="/resources/images/mips.png" alt="calendar" class="Mcalendr">
                                <button type="button" class="cbtn" onclick="closeself()"><i
                                        class="fa fa-close"></i></button>
                            </div>
                            <div class="multicity" style="display:none;">
                                <div class="flightno"><span>Flight 4</span><button type="button"
                                        onclick="closeself()"><i class="fa fa-close"></i> Remove This</button></div>
                                <label class="originM"><span class="languageEnglish">Origin</span><span
                                        class="languageSpanish">Origen</span></label>
                                <form:input path="origin4" class="msearch" placeholder="Enter Airport" />
                                <label class="destinationM"><span class="languageEnglish">Destination</span><span
                                        class="languageSpanish">Destino</span></label>
                                <form:input path="destination4" class="msearch" placeholder="Enter Airport" />
                                <form:input path="departDate4" class="mdate" readonly="true" placeholder="Depart" />
                                <img src="/resources/images/mips.png" alt="calendar" class="Mcalendr">
                                <button type="button" class="cbtn" onclick="closeself()"><i
                                        class="fa fa-close"></i></button>
                            </div>
                            <div class="multicity" style="display:none;">
                                <div class="flightno"><span>Flight 5</span><button type="button"
                                        onclick="closeself()"><i class="fa fa-close"></i> Remove This</button></div>
                                <label class="originM"><span class="languageEnglish">Origin</span><span
                                        class="languageSpanish">Origen</span></label>
                                <form:input path="origin5" class="msearch" placeholder="Enter Airport" />
                                <label class="destinationM"><span class="languageEnglish">Destination</span><span
                                        class="languageSpanish">Destino</span></label>
                                <form:input path="destination5" class="msearch" placeholder="Enter Airport" />
                                <form:input path="departDate5" class="mdate" readonly="true" placeholder="Depart" />
                                <img src="/resources/images/mips.png" alt="calendar" class="Mcalendr">
                                <button type="button" class="cbtn" onclick="closeself()"><i
                                        class="fa fa-close"></i></button>
                            </div>
                            <div class="multicity" style="display:none;">
                                <div class="flightno"><span>Flight 6</span><button type="button"
                                        onclick="closeself()"><i class="fa fa-close"></i> Remove This</button></div>
                                <label class="originM"><span class="languageEnglish">Origin</span><span
                                        class="languageSpanish">Origen</span></label>
                                <form:input path="origin6" class="msearch" placeholder="Enter Airport" />
                                <label class="destinationM"><span class="languageEnglish">Destination</span><span
                                        class="languageSpanish">Destino</span></label>
                                <form:input path="destination6" class="msearch" placeholder="Enter Airport" />
                                <form:input path="departDate6" class="mdate" readonly="true" placeholder="Depart" />
                                <img src="/resources/images/mips.png" alt="calendar" class="Mcalendr">
                                <button type="button" class="cbtn" onclick="closeself()"><i
                                        class="fa fa-close"></i></button>
                            </div>
                        </div>
                        <div class="coach-button">
                            <input type="text" name="coach" class="coach coachi1"  aria-label="coach" value="1 Traveller"
                                onclick="travelercoach();" readonly>



                            <div class="coach-type rvksh">
                                <!-- <form:select class="languageSpanish" path="cabin" onchange="travelercount()">
                                    <option>Economía</option>
                                    <option>Economía premium</option>
                                    <option>Negocio</option>
                                    <option>Primero</option>
                                </form:select> -->
                                <form:select class="" path="cabin" onchange="travelercount()">
                                    <option>Economy</option>
                                    <option>PremiumEconomy</option>
                                    <option>Business</option>
                                    <option>First</option>
                                </form:select>
                                
                            </div>





                            <button type="submit" id="sbtn"><span class="languageEnglish">Search Flights</span><span
                                    class="languageSpanish">Buscar vuelos</span></button>
                            <div class="traveler-coach-dropdown" id="tcd" style="visibility:hidden;">
                                <div class="travelers-container">
                                    <div class="traveler-type">
                                        <div><b><span class="languageEnglish">Adult</span><span
                                                    class="languageSpanish">Adulto</span></b></div>
                                        <div class="plus-minus-number">
                                            <button type="button" class="paxMinus" data-pax="adult"><i
                                                    class="fa fa-minus"></i></button>
                                            <form:input path="adult" readonly="true" class="pnumber" value="1" />
                                            <button type="button" class="paxPlus" data-pax="adult"><i
                                                    class="fa fa-plus"></i></button>
                                        </div>
                                    </div>
                                    <!--    <div class="traveler-type">
                                        <div><b>Senior</b> (65+)</div>
                                        <div class="plus-minus-number">
                                            <button type="button" onclick="this.parentNode.querySelector('input').stepDown();travelercount();"><i class="fa fa-minus"></i></button>
                                            <input type="number" name="adult" class="pnumber"  min="0" max="9" value="0" readonly>
                                            <button type="button" onclick="this.parentNode.querySelector('input').stepUp();travelercount();"><i class="fa fa-plus"></i></button>
                                        </div>
                                    </div>
                                    <div class="traveler-type">
                                        <div><b>Youth</b> (16-25)</div>
                                        <div class="plus-minus-number">
                                            <button type="button" onclick="this.parentNode.querySelector('input').stepDown();travelercount();"><i class="fa fa-minus"></i></button>
                                            <input type="number" name="adult" class="pnumber" min="0" max="9" value="0" readonly>
                                            <button type="button" onclick="this.parentNode.querySelector('input').stepUp();travelercount();"><i class="fa fa-plus"></i></button>
                                        </div>
                                    </div> -->
                                    <div class="traveler-type">
                                        <div><b><span class="languageEnglish">Child</span><span
                                                    class="languageSpanish">Niño</span></b> (2-15)</div>
                                        <div class="plus-minus-number">
                                            <button type="button" class="paxMinus" data-pax="child"><i
                                                    class="fa fa-minus"></i></button>
                                            <form:input path="child" readonly="true" class="pnumber" value="0" />
                                            <button type="button" class="paxPlus" data-pax="child"><i
                                                    class="fa fa-plus"></i></button>
                                        </div>
                                    </div>
                                    <div class="traveler-type">
                                        <div><b><span class="languageEnglish">Seat Infant</span><span
                                                    class="languageSpanish">Asiento bebé</span></b> (<span
                                                class="languageEnglish">Under 2</span><span
                                                class="languageSpanish">Menor de 2 años</span>)</div>
                                        <div class="plus-minus-number">
                                            <button type="button" class="paxMinus" data-pax="infantws"><i
                                                    class="fa fa-minus"></i></button>
                                            <form:input path="infantWs" readonly="true" class="pnumber" value="0" />
                                            <button type="button" class="paxPlus" data-pax="infantws"><i
                                                    class="fa fa-plus"></i></button>
                                        </div>
                                    </div>
                                    <div class="traveler-type">
                                        <div><b><span class="languageEnglish">Lap Infant</span><span
                                                    class="languageSpanish">Bebé de regazo</span></b> (<span
                                                class="languageEnglish">Under 2</span><span
                                                class="languageSpanish">Menor de 2 años</span>)</div>
                                        <div class="plus-minus-number">
                                            <button type="button" class="paxMinus" data-pax="infant"><i
                                                    class="fa fa-minus"></i></button>
                                            <form:input path="infant" readonly="true" class="pnumber" value="0" />
                                            <button type="button" class="paxPlus" data-pax="infant"><i
                                                    class="fa fa-plus"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="class-done">

                                    <button type="button" onclick="tchide();"><span
                                            class="languageEnglish">Done</span><span
                                            class="languageSpanish">Hecho</span></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="airline-search" style="display: none;">
                        <input list="airlineslist" name="airline" class="airline"
                            placeholder="Select Preffered Airline">
                        <datalist id="airlineslist">
                            <c:forEach items="${airlineList}" var="airline">
                                <option value="${airline.value} (${airline.key})"></option>
                            </c:forEach>
                        </datalist>
                        <label> Direct Flights
                            <form:checkbox path="directFlight" class="direct-flights" /><span
                                class="custom-switch"></span>
                        </label>


                    </div>
                    <div class="multibuttons">
                        <button type="button" id="addflight" onclick="addflight1()"><i class="fa fa-plus"></i> Add
                            Flight</button>
                        <button type="button" id="clearall">Clear All</button>
                    </div>
                </div>

                <div class="bannerheding">
                    <div class="main">
                        <div class="mainarea">
                            <h1 id="engingHeadingCntent">Best Cheap Flight Tickets Easily Compare and  Book <span class="mainarea-text-hightlight">All Airlines</span></h1>
                            <!-- <h1 class="languageSpanish">Los mejores billetes de avión baratos Compara y reserva fácilmente todas <span class="mainarea-text-hightlight">las aerolíneas</span></h1> -->
                        </div>
                    </div>
                </div>

            </div>
        </form:form>