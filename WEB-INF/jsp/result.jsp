<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html ng-app="FlightApp">
<head>
    <title>Flights Results</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet'>
    <link rel="icon" href="/resources/images/favicon.png">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		
    <style>
        .ee-navbar-items li:nth-child(1) a::after{transform:scaleX(1);}

        .origra6 {width:17%!important;}        .origra5 {width:33%!important;}
    </style>
    <link rel="stylesheet" type="text/css" href="/resources/css/ani.css?v=1.0">
	<script src="/resources/scripts/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){    
    var fV = $("#origin").val();
    var fC = fV.split(',');
    var fC_ = fC[0];
    var fC_2 = fC_.split('-');
    //console.log(fC_2);    

    var tV = $("#destination").val();
    var tC = tV.split(',');
    var tC_ = tC[0];
    var tC_2 = tC_.split('-');
    //console.log(fC_2); 
    // var posB2 = tC.indexOf("(");
    // var resB2 = toV.substr(posB2);
    // var CtoV = toC[0]+' '+resB2;
    $("#loader_From").text(fC_2[1]);
    $("#loader_To").text(tC_2[1]);
});
</script>    
		<script src="/resources/scripts/jquery-ui.js"></script>
		<script src="/resources/scripts/jquery.validate.min.js"></script>
		<script src="/resources/scripts/angular.min.js"></script>
		<script src="/resources/scripts/ng-infinite-scroll.min.js"></script>
     <link rel="stylesheet" href="/resources/css/result.css?3June2023">
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<jsp:include page="tag-manager-head.jsp" /></head>
<body ng-controller="FlightCntrl">
<jsp:include page="tag-manager-body.jsp" />
    <!--Header Area Starts Here-->
    <div class="header">
        <div class="logo-fh">
            <a href="/"><img src="/resources/images/logo.png"></a>
        </div>
        <div class="navbar-main">
           <!--  <li><a href="#"><i class="fa fa-user-circle"></i> &nbsp;Sign In&nbsp;<i class="fa fa-angle-down"></i></a></li> -->
     	    <div class="expert-talk">
            <a href="tel:+1(800)404-0025">
                <span>Get Customer Support: </span><span> +1-800-404-0025</span>
                <img src="/resources/images/phonek.png" alt="phone">
            </a>
            </div>
        </div>
        <div class="side-navbar-button">
            <button type="button" onclick="showsidenav()"><i class="fa fa-bars"></i></button>
        </div>
    </div>
    <div class="side-navbar" id="sidenavbar">
        <li><button type="button" onclick="hidesidenav()"><i class="fa fa-close"></i></button></li>
       <!-- <li><a href="#">Sign In</a></li>
        <li><a href="#">Register</a></li>
        <li><a href="#">My Bookings</a></li>
        <li><a href="#">Customer Support</a></li>
        <li><a href="#">Track Credit/Refund</a></li> -->
        <li><a href="/contactus">Contact Us</a></li>
        <li><a href="/terms-and-conditions">Terms & Conditions</a></li>
        <li><a href="/privacy-policy">Privacy Policy</a></li>
        <p>Copyright &copy;  2021 - 2022, Tripsfares. All rights reserved</p>
    </div>
    <div class="screen-overlay" id="screenoverlay" onclick="hidesidenav();"></div>
    <div id="screenoverlay2" onclick="enginehide();"></div>
    <!--Header Ends Here-->
    <!--Engine Area Starts Here-->
	<input type="hidden" value="${flightRequest.searchID}" id="searchID">
	<input type="hidden" value='${searchString}' id="searchString">
	<form:form modelAttribute="flightSearch" action="flight" method="POST">
        <div class="fehead">
            <div class="trip-details">
			<fmt:parseDate value="${flightSearch.departDate}" var="dateObject" pattern="MM/dd/yyyy" />
			<fmt:formatDate value="${dateObject }" var="froDate" pattern="MMM dd" />
			<fmt:parseDate value="${flightSearch.returnDate}" var="dateObject" pattern="MM/dd/yyyy" />
			<fmt:formatDate value="${dateObject }" var="toDate" pattern="MMM dd" />
                ${fn:split(flightSearch.origin,'-')[0]} <i class="fa fa-long-arrow-right"></i> ${fn:split(flightSearch.destination,'-')[0]} | ${froDate}-${toDate} | ${flightSearch.adult+flightSearch.child+flightSearch.infant+flightSearch.infantWs} Traveler
            </div>
            <button type="button" onclick="engineshow()">Edit</button>
        </div>
    <div class="modify-flight-container" onmousedown="tripairshow();">
        <div class="flight-engine">
		<form:hidden path="tripType" />
		<form:hidden path="pageAirline" />
            <div class="trip-selector">
                <label> Round Trip<input type="radio" name="trip" id="rkaps" checked="checked" onclick="tripselector();multicity1();";><span class="custom-radio"></span></label>
                <label> One Way<input type="radio" name="trip" id="oneway" onclick="tripselector();multicity1();";><span class="custom-radio"></span></label>
                <label> Multi City<input type="radio" name="trip" id="multicity" onclick="tripselector();multicity1();"><span class="custom-radio"></span></label>
                <span id="ebtn1" onclick="tripairhide()"><i class="fa fa-close"></i></span>
                <span id="ebtn2" onclick="enginehide()"><i class="fa fa-close"></i></span>
            </div>
            <div class="flight-search">
                <div class="search-date">
                    <div class="defaultcity">
                        <div class="flightno" style="display:none;">Flight 1</div>
                        <form:input  path="origin" class="search fwhere" placeholder="From where?"  />
                        <input type="button" id="swap">
                        <form:input path="destination" class="search twhere" placeholder="To where?" />
                        <form:input path="departDate" readonly="true" class="date" placeholder="Depart" />
                        <form:input path="returnDate" readonly="true" class="date" placeholder="Return" />
                    </div>
                    <div class="multicity" style="display:none;">
                        <div class="flightno">Flight 2</div>
                        <form:input path="origin2" class="msearch" placeholder="Flight 2 From where?" />
                        <input type="button" class="swap" onclick="swapFun('origin2','destination2')">
                        <form:input path="destination2" name="from" class="msearch mtw" placeholder="To where?" />
                        <form:input path="departDate2" name="depart" class="mdate" readonly="true" placeholder="Depart" />
                    </div>
                    <div class="multicity" style="display:none;">
                        <div class="flightno"><span>Flight 3</span><button type="button" onclick="closeself()"><i class="fa fa-close"></i> Remove This</button></div>
                        <form:input path="origin3" class="msearch" placeholder="Flight 3 From where?" />
                        <input type="button" class="swap" onclick="swapFun('origin3','destination3')">
						<form:input path="destination3" class="msearch mtw" placeholder="To where?" />
						<form:input path="departDate3" class="mdate" readonly="true" placeholder="Depart" />
                        <button type="button" class="cbtn" onclick="closeself()"><i class="fa fa-close"></i></button>
                    </div>
                    <div class="multicity" style="display:none;">
                        <div class="flightno"><span>Flight 4</span><button type="button" onclick="closeself()"><i class="fa fa-close"></i> Remove This</button></div>
                        <form:input path="origin4" class="msearch" placeholder="Flight 4 From where?" />
                        <input type="button" class="swap" onclick="swapFun('origin4','destination4')">
                        <form:input path="destination4" class="msearch mtw" placeholder="To where?" />
                        <form:input path="departDate4" class="mdate" readonly="true" placeholder="Depart" />
                        <button type="button" class="cbtn" onclick="closeself()"><i class="fa fa-close"></i></button>
                    </div>
                    <div class="multicity" style="display:none;">
                        <div class="flightno"><span>Flight 5</span><button type="button" onclick="closeself()"><i class="fa fa-close"></i> Remove This</button></div>
                        <form:input path="origin5" class="msearch" placeholder="Flight 5 From where?" />
                        <input type="button" class="swap" onclick="swapFun('origin5','destination5')">
						<form:input path="destination5" class="msearch mtw" placeholder="To where?" />
						<form:input path="departDate5" class="mdate" readonly="true" placeholder="Depart" />
                        <button type="button" class="cbtn" onclick="closeself()"><i class="fa fa-close"></i></button>
                    </div>
                    <div class="multicity" style="display:none;">
                        <div class="flightno"><span>Flight 6</span><button type="button" onclick="closeself()"><i class="fa fa-close"></i> Remove This</button></div>
                        <form:input path="origin6" class="msearch" placeholder="Flight 6 From where?" />
                        <input type="button" class="swap" onclick="swapFun('origin6','destination6')">
						<form:input path="destination6" class="msearch mtw" placeholder="To where?" />
						<form:input path="departDate6" class="mdate" readonly="true" placeholder="Depart" />
                        <button type="button" class="cbtn" onclick="closeself()"><i class="fa fa-close"></i></button>
                    </div>
                </div>
                <div class="coach-button">
                    <input type="text" name="coach" class="coach" onclick="wtravelercoach();" readonly>
                    <button type="submit" id="sbtn">Search Again</button>
                    <div class="traveler-coach-dropdown" id="tcd" style="visibility:hidden;">
                        <div class="travelers-container">
                            <div class="traveler-type">
                                <div><b>Adult</b></div>
                                <div class="plus-minus-number">
                                            <button type="button" class="paxMinus" data-pax="adult"><i class="fa fa-minus"></i></button>
                                            <form:input path="adult" readonly="true" class="pnumber" />
                                            <button type="button" class="paxPlus" data-pax="adult"><i class="fa fa-plus"></i></button>
                                        </div>
                            </div>
                           <!-- <div class="traveler-type">
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
                                <div><b>Child</b> (2-15)</div>
                                <div class="plus-minus-number">
                                            <button type="button" class="paxMinus" data-pax="child" ><i class="fa fa-minus"></i></button>
                                            <form:input path="child"  readonly="true" class="pnumber"   />
                                            <button type="button" class="paxPlus" data-pax="child" ><i class="fa fa-plus"></i></button>
                                        </div>
                            </div>
                            <div class="traveler-type">
                                <div><b>Seat Infant</b> (Under 2)</div>
                                <div class="plus-minus-number">
                                            <button type="button" class="paxMinus" data-pax="infantws" ><i class="fa fa-minus"></i></button>
                                            <form:input path="infantWs"   readonly="true" class="pnumber"   />
                                            <button type="button" class="paxPlus" data-pax="infantws" ><i class="fa fa-plus"></i></button>
                                        </div>
                            </div>
                            <div class="traveler-type">
                                <div><b>Lap Infant</b> (Under 2)</div>
                                <div class="plus-minus-number">
                                            <button type="button" class="paxMinus" data-pax="infant" ><i class="fa fa-minus"></i></button>
                                            <form:input path="infant" readonly="true" class="pnumber" />
                                            <button type="button" class="paxPlus" data-pax="infant" ><i class="fa fa-plus"></i></button>
                                        </div>
                            </div>
                        </div>
                        <div class="class-done">
                            <div class="coach-type">
                                <div><b>Class</b></div>
                                <form:select path="cabin" onchange="travelercount()" >
                                            <option>Economy</option>
                                            <option>PremiumEconomy</option>
                                            <option>Business</option>
                                            <option>First</option>
                                </form:select>
                            </div>
                            <button type="button" onclick="wtchide();">Done</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="airline-search" style="display:none!important;">
                <!-- <input list="airlineslist" name="airline" class="airline" placeholder="Select Preffered Airline">
                <datalist id="airlineslist">
                   <c:forEach items="${airlineList}" var="airline">
                            <option value="${airline.value} (${airline.key})"></option>
                         </c:forEach>
                </datalist> -->
<style type="text/css">
.select2-container { width:240px !important; }
.select2-container .select2-selection--single { height:40px !important }
.select2-container--default .select2-selection--single .select2-selection__rendered { line-height:40px !important; }
.select2-container--default .select2-selection--single .select2-selection__arrow { height:40px !important }
@media only screen and (max-width:400px){
    .select2-container { width:100% !important; }
}
</style>
<select class="js-example-basic-single" name="airline">
    <c:forEach items="${airlineList}" var="airline">
        <option value="${airline.key}">${airline.value}</option>
    </c:forEach>
</select>
                <label> Direct Flights<form:checkbox path="directFlight" class="direct-flights" /><span class="custom-switch"></span></label>
                <div class="multibuttons">
                    <button type="button" id="addflight" onclick="addflight()"><i class="fa fa-plus"></i> Add Flight</button>
                    <button type="button" id="clearall">Clear All</button>
                </div>
				<div class="sameSearch" style="color: #ffffff; display:none!important;">Please Modify Search</div>
            </div>
        </div>
    </div>
	</form:form>
    <!--Engine Area Ends Result Area starts-->
    
    <div class="result-bg">
        
        <div class="result-filter-container">
            <div class="LazyLoaderBox" ng-if="resultLoader == true">
                <span>
                    <span><img class="L_img" src="/resources/images/icons/result_loader.gif" alt="Loader Image"></span>
                </span>
                <p class="place_code">
                    <span id="loader_From"></span>
                    <span class="">&nbsp;&nbsp; to &nbsp;&nbsp;</span>
                    <span id="loader_To"></span>
                </p>
                <p class="wait_text">Please wait, while we are searching the best fares for you...</p>
            </div>
            <!--Filters Start Here-->
            <div class="filter-btn" ng-if="resultLoader == true || flightsResponse.flightResult.length > 0">
                <a onclick="filtershow()"><i class="fa fa-filter"></i> Filters</a>
            </div>
            <div class="filter" ng-if="resultLoader == true || flightsResponse.flightResult.length > 0">
                <div class="get-fare-alert placeholder-item">
                    <button type="button"><span><i class="fa fa-bell bell"></i><span>1</span></span>&nbsp;Get Fare Alerts</button>
                </div>
                <div class="fare-alert-signup">
                    <div class="alert-close" id="alert-close"><i class="fa fa-close"></i></div>
                    <div class="alert-topic">Get Fare Alerts</div>
                    <div class="alert-line">Be the first to know when fares drop for the route</div>
                    <div class="alert-from-to"><b>${fn:split(flightSearch.origin,'-')[0]}</b> to <b>${fn:split(flightSearch.destination,'-')[0]}</b></div>
                    <div class="alert-email"><input type="text" id="fareAlertEmail" placeholder="Enter Email Address"></div>
                    <div class="alert-button"><button type="button" onclick="farealertsubmit()">Sign Up Now!</button>
					<span id="emailMsg"></span>
					</div>
                    <div class="alert-terms-link"><a href="/terms-and-conditions" target="blank">Terms & Conditions</a></div>
                </div>
                <div class="filterresetclose"><a ng-click="resetFilters();"><i class="fa fa-refresh"></i> Reset</a><a onclick="filterhide()"><i class="fa fa-close"></i> Close</a></div>
                <div class="filtertyperow">
                    <li class="ftype filtertypeactive" onclick="ftype(stopf,0)"><a><i class="fa fa-map-pin"></i>Stop</a></li>
                    <li class="ftype"><a onclick="ftype(price,1)"><i class="fa fa-dollar"></i>Price</a></li>
                    <li class="ftype"><a onclick="ftype(time,2)"><i class="fa fa-clock-o"></i>Time</a></li>
                    <li class="ftype"><a onclick="ftype(airline,3)"><i class="fa fa-plane"></i>Airline</a></li>
                </div>
                <div class="filter-item placeholder-item">
                    <div class="fi-head">
                        Filter Your Results  <span ng-click="resetFilters();" style="font-size: 11px;margin-left: 34px;text-decoration: underline;cursor: pointer;">Reset Filters</span>
                    </div>
                    <div class="fi-content">
					{{filteredFlights.length}} Results Found
                    </div>
                </div>
                <div class="filter-item placeholder-item" id="price">
                    <div class="fi-head">
                        Price
                    </div>
                    <div class="fi-content">
                        <div class="slider">
                            <div class="slider-head" id="price-range">
                                Price: $50 - $150
                            </div>
                            <div class="dual-slider" id="price-slider">
                                <input min="50" value="50" step="1" type="range" class="price" id="min-slider">
                                <input max="100" value="100" step="1" type="range" class="price" id="max-slider">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter-item placeholder-item" id="stopf">
                    <div class="fi-head">
                        Stops
                    </div>
                    <div class="fi-content">
                        <label ng-repeat="stop in stopsList" ng-if="stop.count > 0">
                            <input type="checkbox" name="nonstop" ng-model="selectedStops[stop.value]">
                            <div class="cb"><span class="checkmark"></span>&nbsp{{stop.name}}</div>
                            <div class="stoprates">{{stop.fare | currency:'$':2}}</div>
                        </label>
                        
                    </div>
                </div>
                <div class="filter-item placeholder-item" id="time">
                    <div class="fi-head">
                        Flight Times
                    </div>
                    <div class="fi-content">
                        <span style="font-weight:600;color:#4f4f4f">Going to ${fn:split(flightSearch.destination,',')[0]}</span>
                        <br>
                        <br>
                        <div class="slider">
                            <div class="slider-head" id="depart-time">
                                Depart: 06:00 am - 09:30 pm
                            </div>
                            <div class="dual-slider" id="depart-slider">
                                <input min="50" value="50" step="1" type="range" class="price" id="min-slider-dpt">
                                <input max="100" value="100" step="1" type="range" class="price" id="max-slider-dpt">
                            </div>
                        </div>
		    <span style="font-weight:600;color:#4f4f4f">Returning to ${fn:split(flightSearch.origin,',')[0]}</span>
                        <br>
                        <br>
                        <div class="slider">
                            <div class="slider-head" id="return-time">
                                Depart: 12:00 am - 11:45 pm
                            </div>
                            <div class="dual-slider" id="return-slider">
                                <input min="50" value="50" step="1" type="range" class="price" id="min-slider">
                                <input max="100" value="100" step="1" type="range" class="price" id="max-slider">
                            </div>
                        </div> 
                    </div>
                </div>
                <div class="filter-item placeholder-item" id="airline">
                    <div class="fi-head">
                        Airlines
                    </div>
                    <div class="fi-content">
                        <label ng-repeat="airline in airlineFilterList">
                            <input type="checkbox" name="nonstop" ng-click="onclickAirline(airline.code)">
                            <div class="cb" title="{{getAirlineName(airline.code)}}"><span class="checkmark"></span><span>&nbsp{{getAirlineName(airline.code)}}</span></div>
                            <div class="stoprates">{{airline.fare | currency:'$':2}}</div>
                        </label>
                        
                    </div>
                </div>
				<div class="filter-item placeholder-item" id="departAirport">
                    <div class="fi-head">
                        Depart Airports
                    </div>
                    <div class="fi-content">
                        <label ng-repeat="depart in departAirports">
                            <input type="checkbox" name="nonstop" ng-model="selectedDepartAirports[depart.airport]">
                            <div class="cb" title="{{getAirportName(depart.airport)}}"><span class="checkmark"></span>&nbsp{{getAirportName(depart.airport)}}</div>
                            <div class="stoprates">{{depart.fare | currency:'$':2}}</div>
                        </label>
                        
                    </div>
                </div>
				<div class="filter-item placeholder-item" id="returnAirport" ng-if="tripType == '2'">
                    <div class="fi-head">
                        Return Airports
                    </div>
                    <div class="fi-content">
                        <label ng-repeat="return in returnAirports">
                            <input type="checkbox" name="nonstop" ng-model="selectedReturnAirports[return.airport]">
                            <div class="cb" title="{{getAirportName(return.airport)}}"><span class="checkmark"></span>&nbsp{{getAirportName(return.airport)}}</div>
                            <div class="stoprates">{{return.fare | currency:'$':2}}</div>
                        </label>
                        
                    </div>
                </div>
				<div class="filter-item" id="departLayoverAirport" ng-if="depLayAirports.length > 0">
                    <div class="fi-head">
                        Depart Layover Airports
                    </div>
                    <div class="fi-content">
                        <label ng-repeat="layover in depLayAirports">
                            <input type="checkbox" name="nonstop" ng-click="onClickDepLayover(layover)">
                            <div class="cb" title="{{getAirportName(layover)}}"><span class="checkmark"></span>&nbsp{{getAirportName(layover)}}</div>
                           
                        </label>
                        
                    </div>
                </div>
				<div>
				<div class="filter-item placeholder-item" id="returnLayoverAirport" ng-if="tripType == '2'">
                    <div class="fi-head">
                        Return Layover Airports
                    </div>
                    <div class="fi-content">
                        <label ng-repeat="layover in retLayAirports">
                            <input type="checkbox" name="nonstop" ng-click="onClickRetLayover(layover)">
                            <div class="cb"><span class="checkmark"></span>&nbsp{{getAirportName(layover)}}</div>
                           
                        </label>
                        
                    </div>
                </div>
				</div>
                <button class="fapply" onclick="filterhide()" type="button">Apply Filters</button>
		<div class="side-banner">
                	<!-- <div><img src="/resources/images/sidebanner.jpg"></div> -->
            	</div>
            </div>
            <!--Filters End Here-->
		    <div class="results">
                <div class="matrix" ng-if="flightsResponse.flightResult.length > 0">
				<div class="matrix-head-row">
                        <div class="matrix-head">
                            Our Best Options
                        </div>
                        <div class="matrix-slide-button-container">
                            <button type="button" class="matrix-slide-button" id="slideLeft" ng-click="matrixLeftClick();"><i class="fa fa-angle-left"></i> prev</button>
                            <button type="button" class="matrix-slide-button" id="slideRight" ng-click="matrixRightClick();">next <i class="fa fa-angle-right"></i></button>
                        </div>
                    </div>
					
                    <div class="matrixtable">
                        <div class="fixed-table-column">
                            <div class="ft-item">
                                <div class="fare-col">Airline Matrix</div>
                                <div class="rate-col">Non Stop</div>
                                <div class="rate-col">1+ Stop</div>
								<div class="rate-col">2+ Stop</div>
                            </div>
                        </div>
                        <div class="matrix-table-columns">
                            <div class="mt-item" ng-repeat="matrix in matrix" id="matrixdiv{{$index}}">
                                <div class="fare-col" ng-click="onclickAirline(matrix.airline)"><img src="/resources/images/airline-logo/{{matrix.airline}}.png"><span>{{getAirlineName(matrix.airline)}}</span></div>
                                
								<div class="rate-col" ng-repeat="stoprice in matrix.stoprice">
								<span ng-if="stoprice.fare > 0" class="hover-col" ng-click="filterMatrixClick(matrix.airline,stoprice.fare,stoprice.stop);">{{stoprice.fare | currency:'$':2}}</span>
								<span ng-if="stoprice.fare == 0">-</span>
								</div>
                                
                            </div>
                            
                        </div>
                    </div>
                </div> 
                <p ng-if="flightsResponse.flightResult.length > 0" class=""><span>Note: *All Fares displayed are quoted in USD and inclusive of base fare, taxes and all fees. Additional baggage fees may apply as per the airline policies.</span></p>
                
                <div ng-if="flightsResponse.flightResult.length > 0">
                	<c:if test="${IsSoldOut=='true'}">
                		<p style="color:blue;text-align:center;font-size:15px;font-weight: 500;"> We're sorry. The fare for the flights you selected just sold out. Please select another itinerary.</p><br/>
                	</c:if>
                </div>
                                
                <div ng-show="resultLoader">
				<div class="result-block placeholder-item" ng-repeat="x in staticLoader | limitTo:5">
                    <div class="pricerow">
                        <div class="pricetag">
                            <span class="tp">$220.13</span><span class="dp"></span>
                            <div class="ppa1">Price per adult(taxes & fees included)</div>
                            <div class="ppa2">Price/Adult</div>
                        </div>
                        <button type="button" onclick="window.location.href='payment.html'">Select</button>
                        <div class="fdetails1"><img src="images/vistara.png">&nbsp&nbsp<div><span class="fliname">Vistara</span></div></div>
                    </div>
                    <hr>
                    <div class="departure">
                        <div class="deprow">
                            <span>Departure</span>
                            <a href="#"><i class="fa fa-briefcase"></i>&nbspBaggage Fees</a>
                        </div>
                        <div class="flirow">
                            <div class="fdetails2"><img src="images/vistara.png">&nbsp&nbsp<div><span class="fliname">Vistara</span><span class="flinum">Flight 706</span></div></div>
                            <div class="tadetails">
                                <div class="a1d">
                                    <div><span class="sname">DEL</span><span class="fname"> Delhi,IGI Airport</span></div>
                                    <div><span class="date">Sun,Mar 01 </span>&nbsp<span class="time"> 05:10 pm</span></div>
                                </div>
                                <i class="fa fa-long-arrow-right" style="font-size:30px;margin-top:5px;color:#17252A"></i>
                                <div class="a2d">
                                    <div><span class="sname">IXC</span><span class="fname"> Chandigarh,Chandigarh</span></div>
                                    <div><span class="date">Sun,Mar 01 </span>&nbsp<span class="time" >06:15 pm</span></div>
                                </div> 
                            </div>
                            <div class="cwdetails"><span class="wayd">Non Stop</span><span class="classd">Economy</span></div>
                        </div>
                    </div>
                    <div class="durarow">
                        <span><i class="fa fa-clock-o"></i> Flight Duration: 1h 5m</span>
                        <span><i class="fa fa-clock-o"></i> Total Trip Time: 1h 5m</span>
                    </div>
                    <div class="bookbtnrow">
                        <button type="button" >Book</button>
                    </div>
                </div>
				</div>
				<input type="hidden" value="" id="minFarePrice" />
<style type="text/css">
@media(max-width: 768px){
    .horizon-filter { display:flex; }
    .horizon-filter-item {  display: inline-flex; flex: auto; }
}
@media(max-width:500px){
    .horizon-filter-item {  display: inline-flex; flex: auto; }
}
@media(max-width:400px){
    .horizon-filter { flex-wrap:wrap; }
    .horizon-filter-item { flex:unset; width:50%; }
}
</style>
				<div class="horizon-filter" ng-if="flightsResponse.flightResult.length > 0">
				<input type="hidden" value="{{minFare}}" id="minFarePrice" />
                    <label class="horizon-filter-item" ng-click="switchSort('fare.grandTotal');">
                        <input type="radio" name="hfilter" checked="checked">
                        <div class="hficon"><i class="fa fa-star"></i></div>
                        <div class="horizon-filter-by">Recommended<div class="horizon-filter-price">{{minFare | currency:'$':2}}</div></div>
                        <div class="hfborder"></div>
                    </label>
                    <label class="horizon-filter-item" ng-click="switchSort('fare.grandTotal');">	
                        <input type="radio" name="hfilter">
                        <div class="hficon"><i class="fa fa-money"></i></div>
                        <div class="horizon-filter-by">Cheapest<div class="horizon-filter-price">{{minFare | currency:'$':2}}</div></div>
                        <div class="hfborder"></div>
                    </label>
                    <label class="horizon-filter-item" ng-click="switchSort('totalEFT');">
                        <input type="radio" name="hfilter">
                        <div class="hficon"><i class="fa fa-clock-o"></i></div>
                        <div class="horizon-filter-by">Shortest<div class="horizon-filter-price">{{shortestFlightFare | currency:'$':2}}</div></div>
                        <div class="hfborder"></div>
                    </label>
		    <label class="horizon-filter-item" ng-click="switchSort('alternate');" ng-if="alternateFlightFare>0">
                        <input type="radio" name="hfilter">
                        <div class="hficon"><i class="fa fa-calendar-o"></i></div>
                        <div class="horizon-filter-by">Alternate Dates<div class="horizon-filter-price">{{alternateFlightFare | currency:'$':2}}</div></div>
                        <div class="hfborder"></div>
                    </label>
                    
                </div>
             
		<div infinite-scroll="LoadMore()">
			<div class="result-container" ng-repeat="flight in filteredFlights = (flightsResponse.flightResult |filter:priceRange |filter:dptTimeRange |filter:retTimeRange |filter:stopsFilter |filter:airlinesFilter |filter:departAirportFilter |filter:returnAirportFilter |filter:depLayFilter|filter:retLayFilter|filter:matrixFilter|orderBy:sortKey:reverse) | limitTo:numberOfResult">
                    <div class="super-saver-deal">
                       <!-- <b>Super Saver Fare!</b> Special Low Prices,full flight details available after you book.
                        <div class="deal-off">Deal! $65 off!</div> -->
                    </div>
                    <div class="result-blocks">
                        <div class="flight-info">
						
                            <div class="flight-info-row">
                                <div class="flight-info-airline">
                                    <img src="/resources/images/airline-logo/{{flight.outBound[0].airline}}.png"> <span>&nbsp;{{getAirlineName(flight.outBound[0].airline)}}</span>
                                </div>
                                <div class="flight-info-daydate">
                                    <span>{{flight.outBound[0].depDate | date:'EEE, MMM dd'}}</span>
									<span class="alternate-dates" ng-if="compareDepartDates(flight.outBound[0].depDate | date:'MM/dd/yyyy')">Alternate Date</span>
                                </div>
                                <div class="flight-info-fromtodura" ng-init="outLength=flight.outBound.length">
                                    <div class="flight-info-from">
                                        <div class="from-time">{{flight.outBound[0].depDate | date:'hh:mm a'}}</div>
                                        <div class="from-city" title="{{getCityName(flight.outBound[0].fromAirport)}}">{{flight.outBound[0].fromAirport}}</div>
                                    </div>
                                    <div class="flight-info-durastop">
                                        <div class="flight-duration">{{flight.outEFT | minToHour}}</div>
                                        <div class="flight-stop-graph">
                                            <div class="stop-dot" ng-if="outLength > 1">
                                                <div class="stop-tool">
                                                    <div class="stoplay-head">
                                                        <span>Stop {{outLength-1}}</span>
                                                        <span>Layover Time</span>
                                                    </div>
                                                    <div class="stoplay-val">
                                                        <span title="{{getCityName(flight.outBound[0].toAirport)}}">{{flight.outBound[0].toAirport}}</span>
                                                        <span>{{flight.outBound[0].layOverTime | minToHour}}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="flight-stop" ng-if="outLength == 1">Non Stop</div>
										<div class="flight-stop" ng-if="outLength > 1">{{outLength-1}} Stop</div>
                                    </div>
                                    <div class="flight-info-to">
                                      <!--  <div class="plus-day">next day</div> -->
                                        <div class="to-time">{{flight.outBound[outLength-1].reachDate | date:'hh:mm a'}}</div>
                                        <div class="to-city" title="{{getCityName(flight.outBound[outLength-1].toAirport)}}">{{flight.outBound[outLength-1].toAirport}}</div>
                                    </div>
                                </div>
                            </div>
							<div class="flight-info-row" ng-if="flight.inBound.length > 0">
                                <div class="flight-info-airline">
                                    <img src="/resources/images/airline-logo/{{flight.inBound[0].airline}}.png"> <span>&nbsp;{{getAirlineName(flight.inBound[0].airline)}}</span>
                                </div>
                                <div class="flight-info-daydate">
                                    <span>{{flight.inBound[0].depDate | date:'EEE, MMM dd'}}</span>
									<span class="alternate-dates" ng-if="compareReturnDates(flight.inBound[0].depDate | date:'MM/dd/yyyy')">Alternate Date</span>
                                </div>
                                <div class="flight-info-fromtodura" ng-init="inLength=flight.inBound.length">
                                    <div class="flight-info-from">
                                        <div class="from-time">{{flight.inBound[0].depDate | date:'hh:mm a'}}</div>
                                        <div class="from-city" title="{{getCityName(flight.inBound[0].fromAirport)}}">{{flight.inBound[0].fromAirport}}</div>
                                    </div>
                                    <div class="flight-info-durastop">
                                        <div class="flight-duration">{{flight.inEFT | minToHour}}</div>
                                        <div class="flight-stop-graph">
                                            <div class="stop-dot" ng-if="inLength > 1">
                                                <div class="stop-tool">
                                                    <div class="stoplay-head">
                                                        <span>Stop {{inLength-1}}</span>
                                                        <span>Layover Time</span>
                                                    </div>
                                                    <div class="stoplay-val">
                                                        <span title="{{getCityName(flight.inBound[0].toAirport)}}">{{flight.inBound[0].toAirport}}</span>
                                                        <span>{{flight.inBound[0].layOverTime | minToHour}}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="flight-stop" ng-if="inLength == 1">Non Stop</div>
										<div class="flight-stop" ng-if="inLength > 1">{{inLength-1}} Stop</div>
                                    </div>
                                    <div class="flight-info-to">
                                        <!--  <div class="plus-day">next day</div> -->
                                        <div class="to-time">{{flight.inBound[inLength-1].reachDate | date:'hh:mm a'}}</div>
                                        <div class="to-city" title="{{getCityName(flight.inBound[inLength-1].toAirport)}}">{{flight.inBound[inLength-1].toAirport}}</div>
                                    </div>
                                </div>
                            </div>
							<div ng-repeat="otherbound in flight.otherBound">
							<div class="flight-info-row">
                                <div class="flight-info-airline">
                                    <img src="/resources/images/airline-logo/{{otherbound[0].airline}}.png"> <span>&nbsp;{{getAirlineName(otherbound[0].airline)}}</span>
                                </div>
                                <div class="flight-info-daydate">
                                    {{otherbound[0].depDate | date:'EEE, MMM dd'}}
                                </div>
                                <div class="flight-info-fromtodura" ng-init="otherlen=otherbound.length">
                                    <div class="flight-info-from">
                                        <div class="from-time">{{otherbound[0].depDate | date:'hh:mm a'}}</div>
                                        <div class="from-city" title="{{getCityName(otherbound[0].fromAirport)}}">{{otherbound[0].fromAirport}}</div>
                                    </div>
                                    <div class="flight-info-durastop" ng-init="totalEft=0">
										<div ng-repeat="otherEft in otherbound"><div ng-init="totalEft=totalEft+otherEft.eft">
                                        <div class="flight-duration" ng-if="$last">{{totalEft | minToHour}}</div>
										</div></div>
                                        <div class="flight-stop-graph">
                                            <div class="stop-dot" ng-if="otherlen > 1">
                                                <div class="stop-tool">
                                                    <div class="stoplay-head">
                                                        <span>Stop {{otherlen-1}}</span>
                                                        <span>Layover Time</span>
                                                    </div>
                                                    <div class="stoplay-val">
                                                        <span title="{{getCityName(otherbound[0].toAirport)}}">{{otherbound[0].toAirport}}</span>
                                                        <span>{{otherbound[0].layOverTime | minToHour}}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="flight-stop" ng-if="otherlen == 1">Non Stop</div>
										<div class="flight-stop" ng-if="otherlen > 1">{{otherlen-1}} Stop</div>
                                    </div>
                                    <div class="flight-info-to">
                                        <!--  <div class="plus-day">next day</div> -->
                                        <div class="to-time">{{otherbound[otherlen-1].reachDate | date:'hh:mm a'}}</div>
                                        <div class="to-city" title="{{getCityName(otherbound[otherlen-1].toAirport)}}">{{otherbound[otherlen-1].toAirport}}</div>
                                    </div>
                                </div>
                            </div>
							</div>
							
                        </div>
                        <div class="vertical-line"></div>
                        <div class="flight-price-select">
                            <div>
                            <div class="flight-price">{{(flight.fare.adultFare+flight.fare.adultTax+flight.fare.adultMarkup) | currency:'$':2}}</div>
                            <div class="flight-ppp">Price per Person</div>
			    <div class="flight-ppp" style="font-size:12px;">(incl. taxes & fees)</div><span style="color: white;">{{flight.fare.markupID}},{{flight.fare.adultMarkup}}</span>
                            </div>
                            <button type="button" ng-click="paymentPage(flight.resultID);">Select <i class="fa fa-angle-right"></i></button>
                        </div>
                    </div>
                    <div class="flight-detail-button" ng-click="showFlightDetails($index);">
                        <div class="flight-detail-show">Flight Details <i class="fa fa-angle-down rotate-reset"></i></div>
                    </div>
                    <div class="flight-detail-container" id="flightdetailexpandcollaps_{{$index}}">
                        <div class="flight-detail" ng-repeat="outbound in flight.outBound">
                            <div class="flight-detail-head" ng-if="$index == 0">Depart</div>
                            <div class="flight-detail-row">
                                <div class="flight-detail-airline">
                                    <img src="/resources/images/airline-logo/{{outbound.airline}}.png">
                                    <div class="airline-name-fno">
                                        <div>{{getAirlineName(outbound.airline)}}</div>
                                        <div>Flight {{outbound.flightNo}} | Aircraft {{inbound.equipmentType}}</div>
                                    </div>
                                </div>
                                <div class="flight-detail-from-to">
                                    <div class="flight-detail-from">
                                        <div class="fdfrom-city">{{getCityName(outbound.fromAirport)}},({{outbound.fromAirport}})</div>
                                        <div class="fdfrom-time">{{outbound.depDate | date:'hh:mm a'}}</div>
                                        <div class="fdfrom-daydate">{{outbound.depDate | date:'EEE, MMM dd'}}</div>
                                    </div>
                                    <div class="flight-detail-arrow">
                                        <div class="fdhr"></div>
                                        <div class="fdfi"><i class="fa fa-plane"></i></div>
                                    </div>
                                    <div class="flight-detail-to">
                                        <div class="fdfrom-city">{{getCityName(outbound.toAirport)}},({{outbound.toAirport}})</div>
                                        <div class="fdfrom-time">{{outbound.reachDate | date:'hh:mm a'}}</div>
                                        <div class="fdfrom-daydate">{{outbound.reachDate | date:'EEE, MMM dd'}}</div>
                                    </div>
                                </div>
                                <div class="flight-detail-cabin">
                                    <b>Cabin:</b> {{getCabinName(outbound.cabinClass)}}
                                </div>
                            </div>
                            <div class="flight-detail-duration">
                                <div>Flight Duration: {{outbound.eft | minToHour}}</div>
                            </div>
							<div class="stop-divider" ng-if="($index+1) != flight.outBound.length">
                            <div><span><i class="fa fa-clock-o"></i></span> <span>&nbsp;{{outbound.layOverTime | minToHour}} min layover in {{getCityName(outbound.toAirport)}} ({{outbound.toAirport}})</span></div>
							</div>
                        </div>
						<div class="stop-divider" ng-if="flight.inBound.length > 0">
                            <div></div>
                        </div>
                        <div class="flight-detail" ng-repeat="inbound in flight.inBound">
                            <div class="flight-detail-head" ng-if="$index == 0 && tripType == '2'">Return</div>
							<div class="flight-detail-head" ng-if="$index == 0 && tripType == '3'">Depart</div>
							<div class="flight-detail-row">
                                <div class="flight-detail-airline">
                                    <img src="/resources/images/airline-logo/{{inbound.airline}}.png">
                                    <div class="airline-name-fno">
                                        <div>{{getAirlineName(inbound.airline)}}</div>
                                        <div>Flight {{inbound.flightNo}} | Aircraft {{inbound.equipmentType}}</div>
                                    </div>
                                </div>
                                <div class="flight-detail-from-to">
                                    <div class="flight-detail-from">
                                        <div class="fdfrom-city">{{getCityName(inbound.fromAirport)}},({{inbound.fromAirport}})</div>
                                        <div class="fdfrom-time">{{inbound.depDate | date:'hh:mm a'}}</div>
                                        <div class="fdfrom-daydate">{{inbound.depDate | date:'EEE, MMM dd'}}</div>
                                    </div>
                                    <div class="flight-detail-arrow">
                                        <div class="fdhr"></div>
                                        <div class="fdfi"><i class="fa fa-plane"></i></div>
                                    </div>
                                    <div class="flight-detail-to">
                                        <div class="fdfrom-city">{{getCityName(inbound.toAirport)}},({{inbound.toAirport}})</div>
                                        <div class="fdfrom-time">{{inbound.reachDate | date:'hh:mm a'}}</div>
                                        <div class="fdfrom-daydate">{{inbound.reachDate | date:'EEE, MMM dd'}}</div>
                                    </div>
                                </div>
                                <div class="flight-detail-cabin">
                                    <b>Cabin:</b> {{getCabinName(inbound.cabinClass)}}
                                </div>
                            </div>
                            <div class="flight-detail-duration">
                                <div>Flight Duration: {{inbound.eft | minToHour}}</div>
                            </div>
							<div class="stop-divider" ng-if="($index+1) != flight.inBound.length">
                            <div><span><i class="fa fa-clock-o"></i></span> <span> &nbsp; {{inbound.layOverTime | minToHour}} min layover in {{getCityName(inbound.toAirport)}} ({{inbound.toAirport}})</span></div>
							</div>
                        </div>
						
						<div ng-repeat="otherbound in flight.otherBound">
						<div class="stop-divider">
                            <div></div>
                        </div>
						<div class="flight-detail">
                            <div class="flight-detail-head">Depart</div>
							<div ng-repeat="inbound in otherbound">
                            <div class="flight-detail-row">
                                <div class="flight-detail-airline">
                                    <img src="/resources/images/airline-logo/{{inbound.airline}}.png">
                                    <div class="airline-name-fno">
                                        <div>{{getAirlineName(inbound.airline)}}</div>
                                        <div>Flight {{inbound.flightNo}} | Aircraft {{inbound.equipmentType}}</div>
                                    </div>
                                </div>
                                <div class="flight-detail-from-to">
                                    <div class="flight-detail-from">
                                        <div class="fdfrom-city">{{getCityName(inbound.fromAirport)}},({{inbound.fromAirport}})</div>
                                        <div class="fdfrom-time">{{inbound.depDate | date:'hh:mm a'}}</div>
                                        <div class="fdfrom-daydate">{{inbound.depDate | date:'EEE, MMM dd'}}</div>
                                    </div>
                                    <div class="flight-detail-arrow">
                                        <div class="fdhr"></div>
                                        <div class="fdfi"><i class="fa fa-plane"></i></div>
                                    </div>
                                    <div class="flight-detail-to">
                                        <div class="fdfrom-city">{{getCityName(inbound.toAirport)}},({{inbound.toAirport}})</div>
                                        <div class="fdfrom-time">{{inbound.reachDate | date:'hh:mm a'}}</div>
                                        <div class="fdfrom-daydate">{{inbound.reachDate | date:'EEE, MMM dd'}}</div>
                                    </div>
                                </div>
                                <div class="flight-detail-cabin">
                                    <b>Cabin:</b> {{getCabinName(inbound.cabinClass)}}
                                </div>
                            </div>
                            <div class="flight-detail-duration">
                                <div>Flight Duration: {{inbound.eft | minToHour}}</div>
                            </div>
							<div class="stop-divider" ng-if="($index+1) != flight.inBound.length">
                            <div><span><i class="fa fa-clock-o"></i></span> <span> &nbsp; {{inbound.layOverTime | minToHour}} min layover in {{getCityName(inbound.toAirport)}} ({{inbound.toAirport}})</span></div>
							</div>
							</div>
                        </div>
						</div>
                        
                    </div>
					
				<!--	<div class="promo-ad" ng-if="$index==0">
                    <span><b><i class="fa fa-tag fa-lg"></i> &nbsp;Save Instantly on your trip!</b> <span>Get up to $20 OFF our fees.</span></span>
                    <button type="button">Get Promo Code</button>
					</div> -->
				
                </div>
				</div>
				
				
				<button type="button" id="loadmore" ng-if="filteredFlights.length > 0 && filteredFlights.length > numberOfResult" ng-click="LoadMore();"><i class="fa fa-spinner"></i>Load More</button>
            </div>
        </div>
		
    </div>
    <div class="noRsltFound" ng-if="filteredFlights.length == 0">
                No Result Please Change Search Criteria or &nbsp;<a href="javascript:void(0);" ng-click="resetFilters();"> Reset Filters</a>.
                </div>
<style type="text/css">
.noRsltFound { font-size:20px;text-align:center;height:90vh;display:flex;justify-content:center;align-items:center;font-family:-apple-system,BlinkMacSystemFont,Arial,Helvetica Neue,Segoe UI,Roboto,sans-serif; }
@media(max-width:768px){
    .noRsltFound {     height: calc(90vh - 100px); margin-top: 100px; }
}
</style>
    <!-- <div class="footer2" ng-if="flightsResponse.flightResult.length > 0">
        <p style="text-align:center;margin:5px 0;">Copyright &copy;  2021 - 2022, Tripsfares. All rights reserved</p>
    </div>
    <div class="footer-icons" ng-if="flightsResponse.flightResult.length > 0"></div> -->
    <jsp:include page="footer2.jsp" />
    <jsp:include page="timeoutPopup.jsp" />
    <!-- <div class="alert-screen-overlay">
        <div class="auto-fare-alert">
            <div class="auto-alert-close"><i class="fa fa-close"></i></div>
            <div class="speak-expert-section">
                <img src="/resources/images/call.png">
                <div>
                    <div class="auto-alert-topic">Speak to a travel expert now</div>
                    <div class="auto-alert-line">Call us now to get up to $20 OFF our fees.</div>
                    <div class="auto-alert-promo">Use <span>promo code <b>ebook25</b></span></div>
                    <div class="auto-alert-call-us"><i class="fa fa-phone"></i> 1(800) 888-888</div>
                </div>
            </div>
            <div class="alert-section-topic">Get Fare Alerts!</div>
            <div class="alert-section-line">Be the first to know when fares drop for the route <b>${fn:split(flightSearch.origin,'-')[0]}</b> to <b>${fn:split(flightSearch.destination,'-')[0]}</b></div>
            <div class="alert-section-form"><input type="text" id="popupEmail" placeholder="Enter Email Address"><button type="button" onclick="popalertsubmit()">Get Fare Alerts</button>
			</div>
			<span id="emailPopMsg"></span>
            <div class="auto-alert-terms"><a href="/terms-and-conditions" target="blank">Terms & Conditions</a></div>
        </div>
    </div> -->
</body>
<script src="/resources/scripts/script.js?15Oct2021"></script>
<script src="/resources/scripts/flight-result.js?210420fffffddd22_1"></script>

<script>
    $( "div" ).delegate( ".rate-col .hover-col", "click", function() {
        $(".rate-col").removeClass("active-col");
        $(this).parent().addClass("active-col");
    });
    $("div").delegate("#alert-close i","click",function(){
	$(".fare-alert-signup").hide();
    });

    


    $(document).ready(function(){
      $('#oneway').on('click',function(){
       if($(this).is(':checked'))        {$('.defaultcity input').addClass('origra5')}
       
       else{$('.defaultcity input').removeClass('origra6')}
});
    })

    $(document).ready(function(){
      $('#rkaps').on('click',function(){
       if($(this).is(':checked'))        {$('.defaultcity input').removeClass('origra5')}
       
       else{$('.defaultcity input').addClass('.origra6')}
});
    })
function swapFun(id1, id2){
    var val1 = $("#"+id1).val();
    var val2 = $("#"+id2).val();
    $("#"+id1).val(val2);
    $("#"+id2).val(val1);
}
// In your Javascript (external .js resource or <script> tag)
$(document).ready(function() {
    $('.js-example-basic-single').select2();
});
</script>

</html>