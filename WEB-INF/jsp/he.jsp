
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
   <title> Book Cheap Airline Tickets| Flight Tickets Online | EBookTrip.com </title>
   <meta name="DESCRIPTION" content=" Book Cheap Flights Tickets, Flight Tickets Online of domestic & international Flights. Get Flight Reservations deals" /> 
<meta name="keywords" content="  Cheap Airline Tickets, Cheap Air Tickets, Cheap Flights, Flights Booking, Low Cost Airline Tickets, Flights Tickets, Lowest Air Fares, Cheap Flight Tickets, Cheap Air Fares, Discount Flights Tickets, Discounted Airfare Deals, Cheap Plane Tickets, Book a Flight.">
    <meta name="agd-partner-manual-verification" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/resources/css/gfont.css" rel="stylesheet">
    <link rel="preload" as="style" href="/resources/font-awesome/css/font-awesome.min.css"/>
    <link rel="preload" as="image" href="/resources/images/enginebg.webp"/>
    <link rel="preload" as="image" href="/resources/images/logolb.webp"/>
    <link rel="preload" as="image" href="/resources/images/phone-call.png"/>
    <link rel="stylesheet" href="/resources/font-awesome/css/font-awesome.min.css">
    <link rel="icon" href="/resources/images/favicon.png">
    <link rel="stylesheet" href="/resources/css/jquery-ui.css">
    <link rel="stylesheet" href="/resources/css/default.css?7Feb2022">
    <style>
        .ee-navbar-items li:nth-child(1) a::after{transform:scaleX(1);}
        .loader {
		  /*display:none;
		  border: 16px solid #f3f3f3;
		  border-radius: 50%;
		  border-top: 16px solid blue;
		  border-right: 16px solid green;
		  border-bottom: 16px solid red;
		  border-left: 16px solid pink;
		  width: 50px;
		  height: 50px;
		  -webkit-animation: spin 2s linear infinite;
		  animation: spin 2s linear infinite;*/
		}
		
		/*@-webkit-keyframes spin {
		  0% { -webkit-transform: rotate(0deg); }
		  100% { -webkit-transform: rotate(360deg); }
		}
		
		@keyframes spin {
		  0% { transform: rotate(0deg); }
		  100% { transform: rotate(360deg); }
		}*/
    </style>
	<jsp:include page="tag-manager-head.jsp" /></head>
	<body><jsp:include page="tag-manager-body.jsp" />
    <!--Header Area Starts Here-->
    <div class="header">
        <div class="upper-logo">
            <a href="/"><img src="/resources/images/logo.png"></a>
        
        </div>
        
        <div class="upper-menu" >
                            <ul class="up-nav_group">
                                <li class="active__nav"><a href="/flights" title="Flights"> <span data-hover="Flights">Flights</span> </a> </li>
                                <li> <a style="cursor:pointer;" id="mysea"><i class="fa fa-search"></i> <span data-hover="My Searches">My Searches</span><span class="tok" id="searchCount"></span></a>
                                <div class="searches"></div></li> 
                                <c:if test="${userLogin == null}">
                                    <!-- <li><a href="/login"><span data-hover="My Bookings">My Bookings</span></a></li> -->
                                   <!--<li><a href="/signup"><span data-hover="Sign Up">Sign Up</span></a></li>-->
                                    </c:if>
                                    <c:if test="${userLogin != null}">
                                    <!-- <li><a href="/mybookings"><span data-hover="My Bookings">My Bookings</span></a></li> -->
                                    <!-- <li><a href="#" style="text-transform:capitalize;"><i class="fa fa-user-circle"></i> Welcome ${userLogin.userName}</a></li>
                                    <li><a href="/logout"><i class="fa fa-sign-out"></i>  <span data-hover="Logout">Logout</span></a></li> -->
                                    </c:if>

                               <!-- <li><a href="/admin"><i class="fa fa-user-circle"></i>   <span data-hover="Sign In">Sign In </span></a></li>-->
                                
        
                               
                             
                                
                            </ul>
                        </div>
        
        
                        <div class="expertisetalk">
        <span class="callicon"><img src="/resources/images/phonek.gif"></span>
        <span>Call Us 24/7 for Lowest Airfares</span>
        <a href="tel:+1(800)404-0025" title="Call Us 24/7 for Lowest Airfares">1-800-404-0025</a>
        
                        </div>
        <div style="clear: both;"></div>


        <!-- <div class="logo-fh">
            <a href="/"><img src="/resources/images/logo.png"></a>
        </div>
        <div class="navbar-main">
            
	    <li style="position:relative;display:none;" id="searchPad">
        <a style="cursor:pointer;" id="mysea"><i class="fa fa-search"></i>&nbsp;&nbsp;My Searches&nbsp;<span id="searchCount"></span></a>
		<div class="searches"></div>
        </li>
		<c:if test="${userLogin == null}">
		<li><a href="/login">My Bookings</a></li>
        <li><a href="#">|</a></li>
	    <li><a href="/signup">Sign Up</a></li>
		</c:if>
		<c:if test="${userLogin != null}">
		<li><a href="/mybookings">My Bookings</a></li>
		<li><a href="#" style="text-transform:capitalize;"><i class="fa fa-user-circle"></i> &nbsp;Welcome ${userLogin.userName}</a></li>
	    <li><a href="/logout"><i class="fa fa-sign-out"></i> &nbsp;Logout</a></li>
		</c:if>
            <li><a href="/admin"><i class="fa fa-user-circle"></i> &nbsp;Sign In</a></li>
            <div class="expert-talk">
            <a href="tel:+1-800-404-0025"><span>1-800-404-0025</span><span>Talk to an Expert</span></a>
            </div>
        </div> -->
       
       
       
        <div class="side-navbar-button">
            <button type="button" onclick="showsidenav()"><i class="fa fa-bars"></i></button>
        </div>
    </div>
    <div class="side-navbar" id="sidenavbar">
        <li><span>MENU</span><button type="button" onclick="hidesidenav()"><i class="fa fa-close"></i></button></li>
        <li><a href="/flights">Flights</a></li>
        <li><a href="/contactus">Contact Us</a></li>
        <li><a href="/terms-and-conditions">Terms & Conditions</a></li>
        <li><a href="/privacy-policy">Privacy Policy</a></li>
        <li><a href="/login">My Bookings</a></li>
        <li><a href="/signup">Sign Up</a></li>
        <li><a href="/admin">Sign In</a></li>
        <p>Copyright &copy;  2021 - 2022, Ebooktrip. All rights reserved.</p>
    </div>
    <div class="screen-overlay" id="screenoverlay" onclick="hidesidenav()"></div>
    <!--Header Ends Here-->
    <!--Engine Area Starts Here-->
    <div class="engine-bg">
        <div class="bg-overlay">
            <!-- <div class="engine-embedded-navbar">
                <div class="ee-navbar-items">
                    <li><a href="#"><span>FLIGHTS</span></a></li>
                   
                </div>
            </div> -->
            <!-- <h1>Compare and Book Cheap Flights on Over 600 Airlines</h1>
            <br> -->
            <jsp:include page="engine.jsp" />
            <!--Sign Up Area-->
            <div class="signup-section">
                <div class="signup-head"><b>SIGN UP</b> and <b>SAVE UP TO </b>  $20 off our fees with a promo code!</div>
                <div class="signup-inputs">
                    <input type="text" id="newsEmail" placeholder="Get Ebooktrip.com Emails">
                    <button type="button" id="sign_id" onclick="newsalertsubmit()">
                        <label class="loader"><span>Loading...</span><i></i></label>
                        <span>Sign Up</span>
                    </button>
                </div>
				<span id="newsMsg"></span>
                <div class="signup-footer">
                   
                    <li><a href="/privacy-policy">Privacy Policy</a></li>
                </div>
            </div>
            <!--Sign Up End Here-->
        </div>
    </div>
    <!--Engine Area Ends Here-->
    <!-- <div class="ad-banner">
       <a href="#"><img src="/resources/images/banner.jpg"></a>
    </div> -->
    <!--Deals Section Starts-->
<style type="text/css">
@media only screen and (max-width:767px){
    .whyChooseUs { margin:60px 0 20px 0 }
    .whyChooseUs .Hbox { width:100%; margin-bottom:20px; }
}
</style>
    <div class="best-deals">
        <div class="whyChooseUs">
            <div class="Hbox">
                <img src="/resources/images/icons/top-destination.png" alt="Top Destinatins">
                <h3>Top Destinations</h3>
                <p>Special Offers on over 2000+ Destinations</p>
            </div>
            <div class="Hbox">
                <img src="/resources/images/icons/best-price.png" alt="Best Price">
                <h3>Incredible Deals</h3>
                <p>Check out with confidence. Ebooktrip customer always get our best price.</p>
            </div>
            <div class="Hbox">
                <img src="/resources/images/icons/customer-support.png" alt="Customer Support">
                <h3>Customer Support</h3>
                <p>We are available for our Customers round the clock 24/7</p>
            </div>
        </div>
        <!-- <h2>Think Ahead and Plan Your Next Trip</h2> -->
        <div class="deals-section pj">
            <h3>Popular <span>Deals</span></h3>
            <hr>
            <!-- <div class="deal-blocks">
			<c:forEach var="deal" items="${dealList.response}" end="7">
			<fmt:parseDate value = "${deal.depDate}" var = "parsedDepDate" pattern = "yyyy-MM-dd" />
			<fmt:parseDate value = "${deal.retDate}" var = "parsedRetDate" pattern = "yyyy-MM-dd" />
			<fmt:formatDate pattern = "MM/dd/yyyy" value = "${parsedDepDate}" var="searchDepDate" />
			<fmt:formatDate pattern = "MM/dd/yyyy" value = "${parsedRetDate}" var="searchRetDate" />
                <div class="deal-item" onclick="dealclick('${deal.froCity}','${deal.toCity}','${searchDepDate}','${searchRetDate}');">
                    <img src="/resources/images/dubai.jpg">
                    <div class="deal-text">
                        <span class="cityname">${deal.toCityName}</span>
                        <span class="price">&#36;${deal.totalPrice}</span>
                        <span class="cityfromto">${deal.froCity} <i class="fa fa-arrows-h"></i> ${deal.toCity}</span>
						
                        <span class="datefromto"><fmt:formatDate pattern = "MMM dd" value = "${parsedDepDate}" /> &#8208; <fmt:formatDate pattern = "MMM dd" value = "${parsedRetDate}" /></span>
                        <button type="button">Search Now</button>
                    </div>
                </div>
             </c:forEach>   
            </div> -->
        
            <div class="deal1main">
                <c:forEach var="deal" items="${dealList.response}" end="7">
                            <fmt:parseDate value = "${deal.depDate}" var = "parsedDepDate" pattern = "yyyy-MM-dd" />
                            <fmt:parseDate value = "${deal.retDate}" var = "parsedRetDate" pattern = "yyyy-MM-dd" />
                            <fmt:formatDate pattern = "MM/dd/yyyy" value = "${parsedDepDate}" var="searchDepDate" />
                            <fmt:formatDate pattern = "MM/dd/yyyy" value = "${parsedRetDate}" var="searchRetDate" />
                        <div class="deal-wrapperp" onclick="dealclick('${deal.froCity}','${deal.toCity}','${searchDepDate}','${searchRetDate}');">
                
                            <div class="deal-wraper">
                            <div class="deal-section">
                            <div class="dealimg"> <img src="/resources/images/airline-logo/${deal.airline}.png" class="myimg"></div>
                            <div class="dealone"> ${deal.froCity} <span> <fmt:formatDate pattern = "MMM dd" value = "${parsedDepDate}" /> , 2021 </span>
                            </div>
                            <div class="dealtwo"><img src="resources/images/switch.png" class="myimg"></div>
                            <div class="dealthree">  ${deal.toCity} <span>  <fmt:formatDate pattern = "MMM dd" value = "${parsedRetDate}" /> , 2021 </span></div>
                            <div class="dealfour"> <h1> &#36;${deal.totalPrice} </h1>
                                <button type="button"  class="btnif">Search Now</button>
                            </div>
                            
                            <div style="clear: both;"></div>
                            </div>
                            </div>
                            <div style="clear: left;"></div>
                            </div>
                
                
                
                            
                        
                    </c:forEach>  
                        </div>
        
        
        
        </div>
        <div class="deals-section pj">
            <h3>Weekend <span>Deals</span></h3>
            <hr>
            <!-- <div class="deal-blocks">
			
                <c:forEach var="deal" items="${dealList.response}" begin="8">
			<fmt:parseDate value = "${deal.depDate}" var = "parsedDepDate" pattern = "yyyy-MM-dd" />
			<fmt:parseDate value = "${deal.retDate}" var = "parsedRetDate" pattern = "yyyy-MM-dd" />
			<fmt:formatDate pattern = "MM/dd/yyyy" value = "${parsedDepDate}" var="searchDepDate" />
			<fmt:formatDate pattern = "MM/dd/yyyy" value = "${parsedRetDate}" var="searchRetDate" />
                <div class="deal-item" onclick="dealclick('${deal.froCity}','${deal.toCity}','${searchDepDate}','${searchRetDate}');">
                    <img src="/resources/images/dubai.jpg">
                    <div class="deal-text">
                        <span class="cityname">${deal.toCityName}</span>
                        <span class="price">&#36;${deal.totalPrice}</span>
                        <span class="cityfromto">${deal.froCity} <i class="fa fa-arrows-h"></i> ${deal.toCity}</span>
						
                        <span class="datefromto"><fmt:formatDate pattern = "MMM dd" value = "${parsedDepDate}" /> &#8208; <fmt:formatDate pattern = "MMM dd" value = "${parsedRetDate}" /></span>
                        <button type="button">Search Now</button>
                    </div>
                </div>
             </c:forEach> 
                
            </div> -->

            <div class="deal1main">
                <c:forEach var="deal" items="${dealList.response}" begin="8">
           <fmt:parseDate value = "${deal.depDate}" var = "parsedDepDate" pattern = "yyyy-MM-dd" />
           <fmt:parseDate value = "${deal.retDate}" var = "parsedRetDate" pattern = "yyyy-MM-dd" />
           <fmt:formatDate pattern = "MM/dd/yyyy" value = "${parsedDepDate}" var="searchDepDate" />
           <fmt:formatDate pattern = "MM/dd/yyyy" value = "${parsedRetDate}" var="searchRetDate" />
                       <div class="deal-wrapperp" onclick="dealclick('${deal.froCity}','${deal.toCity}','${searchDepDate}','${searchRetDate}');">
               
                           <div class="deal-wraper">
                           <div class="deal-section">
                           <div class="dealimg"> <img src="/resources/images/airline-logo/${deal.airline}.png" class="myimg"></div>
                           <div class="dealone"> ${deal.froCity} <span> <fmt:formatDate pattern = "MMM dd" value = "${parsedDepDate}" /> , 2021 </span>
                           </div>
                           <div class="dealtwo"><img src="resources/images/switch.png" class="myimg"></div>
                           <div class="dealthree">  ${deal.toCity} <span>  <fmt:formatDate pattern = "MMM dd" value = "${parsedRetDate}" /> , 2022 </span></div>
                           <div class="dealfour"> <h1> &#36;${deal.totalPrice} </h1>
                               <button type="button"  class="btnif">Search Now</button>
                           </div>
                           
                           <div style="clear: both;"></div>
                           </div>
                           </div>
                           <div style="clear: left;"></div>
                           </div>
               
               
               
                           
                       
                   </c:forEach>  
                       </div>


        </div>
    </div>
    <br>
    <!--Deal Section End-->
    <!--Footer Starts-->
    <jsp:include page="footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-2.0.0.min.js" integrity="sha256-1IKHGl6UjLSIT6CXLqmKgavKBXtr0/jJlaGMEkh+dhw=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.min.js" integrity="sha256-oTyWrNiP6Qftu4vs2g0RPCKr3g1a6QTlITNgoebxRc4=" crossorigin="anonymous"></script>
 <script src="/resources/scripts/jquery.validate.min.js"></script>
<script src="/resources/scripts/script.js?20032022"></script>
</html>