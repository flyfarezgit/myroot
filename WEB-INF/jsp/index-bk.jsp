
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Find Cheap AirlineTickets, Airfare & Discount Flight Deals | Volfly</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="DESCRIPTION" content="Find cheap airline tickets, book discount airfares and air tickets, last minute deals available on exclusive discount." />
    <link href="/resources/css/gfont.css" rel="stylesheet">
    <link rel="preload" as="style" href="/resources/font-awesome/css/font-awesome.min.css"/>
    <link rel="preload" as="image" href="/resources/images/enginebg.webp"/>
    <link rel="preload" as="image" href="/resources/images/logolb.webp"/>
    <link rel="preload" as="image" href="/resources/images/phone-call.png"/>
    <link rel="stylesheet" href="/resources/font-awesome/css/font-awesome.min.css">
    <link rel="icon" href="/resources/images/favicon.png">
    <link rel="stylesheet" href="/resources/css/jquery-ui.css">
    <link rel="stylesheet" href="/resources/css/default.css?v1.1">
    <style>
        .ee-navbar-items li:nth-child(1) a::after{transform:scaleX(1);}
    </style>    
<jsp:include page="tag-manager-head.jsp" /></head>
<body><jsp:include page="tag-manager-body.jsp" />
    <!--Header Area Starts Here-->
    <div class="header">
        <div class="logo-fh">
            <a href="/"><img src="/resources/images/logolb.webp"></a>
        </div>
        <div class="navbar-main">
            
	    <li style="position:relative;display:none;" id="searchPad">
        <a style="cursor:pointer;" id="mysea"><i class="fa fa-search"></i>&nbsp;&nbsp;My Searches&nbsp;<span id="searchCount"></span></a>
		<div class="searches"></div>
        </li>
 	<li><a href="/mybookings">My Bookings</a></li>
		<c:if test="${userLogin == null}">
	    <li><a href="/login"><i class="fa fa-user-circle"></i> &nbsp;Login/Register</a></li>
		</c:if>
		<c:if test="${userLogin != null}">
		<li><a href="#" style="text-transform:capitalize;"><i class="fa fa-user-circle"></i> &nbsp;Welcome ${userLogin.userName}</a></li>
	    <li><a href="/logout"><i class="fa fa-sign-out"></i> &nbsp;Logout</a></li>
		</c:if>
            <div class="expert-talk">
            <a href="tel:18006541356"><span>1(800) 654-1356</span><span>Talk to an Expert</span></a>
            </div>
        </div>
        <div class="side-navbar-button">
            <button type="button" onclick="showsidenav()"><i class="fa fa-bars"></i></button>
        </div>
    </div>
    <div class="side-navbar" id="sidenavbar">
        <li><button type="button" onclick="hidesidenav()"><i class="fa fa-close"></i></button></li>
        
        <li><a href="/contactus">Contact Us</a></li>
        <li><a href="/terms-and-conditions">Terms & Conditions</a></li>
        <li><a href="/privacy-policy">Privacy Policy</a></li>
        <p>&copy 2020 Volfly.com All Rights Reserved</p>
    </div>
    <div class="screen-overlay" id="screenoverlay" onclick="hidesidenav()"></div>
    <!--Header Ends Here-->
    <!--Engine Area Starts Here-->
    <div class="engine-bg">
        <div class="bg-overlay">
            <div class="engine-embedded-navbar">
                <div class="ee-navbar-items">
                    <li><a href="#"><span>Flights</span></a></li>
                    <!-- <li><a href="#"><span>More</span></a></li>  -->
                </div>
            </div>
            <h1>Compare and Book Cheap Flights on Over 600 Airlines</h1>
            <br>
            <jsp:include page="engine.jsp" />
            <!--Sign Up Area-->
            <div class="signup-section">
                <div class="signup-head"><b>SIGN UP</b> and <b>SAVE UP TO </b>  $20 off our fees with a promo code!</div>
                <div class="signup-inputs">
                    <input type="text" id="newsEmail" placeholder="Get Volfly.com Emails">
                    <button type="button" onclick="newsalertsubmit()">Sign Up</button>
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
    <div class="ad-banner">
       <a href="#"><img src="/resources/images/banner.webp"></a>
    </div>
    <!--Deals Section Starts-->
    <div class="best-deals">
        <h2>Think Ahead and Plan Your Next Trip</h2>
        <div class="deals-section">
            <h3>Deals From New Delhi</h3>
            <hr>
            <div class="deal-blocks">
                <div class="deal-item" onclick="dealclick('DEL','DXB','02/10/2021','02/18/2021');">
                    <img src="/resources/images/dubai.jpg">
                    <div class="deal-text">
                        <span class="cityname">Dubai, United Arab Emirates</span>
                        <span class="price">&#36;449.15</span>
                        <span class="cityfromto">DEL <i class="fa fa-arrows-h"></i> DXB</span>
                        <span class="datefromto">Feb 10 &#8208; Feb 18</span>
                        <button type="button">Search Now</button>
                    </div>
                </div>
                <div class="deal-item" onclick="dealclick('DEL','LAX','02/10/2021','02/18/2021')">
                    <img src="/resources/images/losangles.webp">
                    <div class="deal-text">
                        <span class="cityname">Los Angles, United States</span>
                        <span class="price">&#36;760.65</span>
                        <span class="cityfromto">DEL <i class="fa fa-arrows-h"></i> LAX</span>
                        <span class="datefromto">Feb 10 &#8208; Feb 18</span>
                        <button type="button">Search Now</button>
                    </div>
                </div>
                <div class="deal-item" onclick="dealclick('DEL','WAS','03/16/2021','03/28/2021')">
                    <img src="/resources/images/washingtondc.webp">
                    <div class="deal-text">
                        <span class="cityname">Washington DC, United States of America</span>
                        <span class="price">&#36;777.24</span>
                        <span class="cityfromto">DEL <i class="fa fa-arrows-h"></i> WAS</span>
                        <span class="datefromto">Mar 16 &#8208; Mar 28</span>
                        <button type="button">Search Now</button>
                    </div>
                </div>
                <div class="deal-item" onclick="dealclick('DEL','SFO','02/04/2021','02/12/2021')">
                    <img src="/resources/images/sanfransico.webp">
                    <div class="deal-text">
                        <span class="cityname">San Francisco, United States</span>
                        <span class="price">&#36;787.77</span>
                        <span class="cityfromto">DEL <i class="fa fa-arrows-h"></i> SFO</span>
                        <span class="datefromto">Feb 04 &#8208; Feb 12</span>
                        <button type="button">Search Now</button>
                    </div>
                </div>
                <div class="deal-item" onclick="dealclick('DEL','JFK','03/27/2021','03/31/2021')">
                    <img src="/resources/images/newyorkcity.jpg">
                    <div class="deal-text">
                        <span class="cityname">New York City, United States</span>
                        <span class="price">&#36;813.78</span>
                        <span class="cityfromto">DEL <i class="fa fa-arrows-h"></i> JFK</span>
                        <span class="datefromto">Mar 27 &#8208; Mar 31</span>
                        <button type="button">Search Now</button>
                    </div>
                </div>
                <div class="deal-item" onclick="dealclick('DEL','ORD','02/10/2021','02/18/2021')">
                    <img src="/resources/images/chicago.jpg">
                    <div class="deal-text">
                        <span class="cityname">Chicago, United States</span>
                        <span class="price">&#36;833.62</span>
                        <span class="cityfromto">DEL <i class="fa fa-arrows-h"></i> ORD</span>
                        <span class="datefromto">Feb 10 &#8208; Feb 18</span>
                        <button type="button">Search Now</button>
                    </div>
                </div>
                <div class="deal-item" onclick="dealclick('DEL','HND','03/15/2021','03/22/2021')">
                    <img src="/resources/images/tokyo.jpg">
                    <div class="deal-text">
                        <span class="cityname">Tokyo, Japan</span>
                        <span class="price">&#36;768.77</span>
                        <span class="cityfromto">DEL <i class="fa fa-arrows-h"></i> HND</span>
                        <span class="datefromto">Mar 15 &#8208; Mar 22</span>
                        <button type="button">Search Now</button>
                    </div>
                </div>
                <div class="deal-item" onclick="dealclick('DEL','YYZ','02/14/2021','02/22/2021')">
                    <img src="/resources/images/torronto.webp">
                    <div class="deal-text">
                        <span class="cityname">Toronto, Canada</span>
                        <span class="price">&#36;797.77</span>
                        <span class="cityfromto">DEL <i class="fa fa-arrows-h"></i> YYZ</span>
                        <span class="datefromto">Feb 14 &#8208; Feb 22</span>
                        <button type="button">Search Now</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="deals-section">
            <h3>Weekend Deals</h3>
            <hr>
            <div class="deal-blocks">
                <div class="deal-item" onclick="dealclick('BOS','ORD','02/10/2021','02/18/2021')">
                    <img src="/resources/images/dubai.jpg">
                    <div class="deal-text">
                        <span class="fromcity">Boston, United States</span>
                        <span>to</span>
                        <span class="tocity">Orlando, United States</span>
                        <span class="cityfromto">BOS <i class="fa fa-arrows-h"></i> ORD</span>
                        <span class="datefromto">Feb 10 &#8208; Feb 18</span>
                        <span class="price">&#36;449.15</span>
                        <button type="button">Search Now</button>
                    </div>
                </div>
                <div class="deal-item" onclick="dealclick('LAS','MIA','02/10/2021','02/18/2021')">
                    <img src="/resources/images/dubai.jpg">
                    <div class="deal-text">
                        <span class="fromcity">Las Vegas, United States</span>
                        <span>to</span>
                        <span class="tocity">Miami, United States</span>
                        <span class="cityfromto">LAS <i class="fa fa-arrows-h"></i> MIA</span>
                        <span class="datefromto">Feb 10 &#8208; Feb 18</span>
                        <span class="price">&#36;225.35</span>
                        <button type="button">Search Now</button>
                    </div>
                </div><div class="deal-item" onclick="dealclick('LAX','DEN','03/10/2021','03/18/2021')">
                    <img src="/resources/images/dubai.jpg">
                    <div class="deal-text">
                        <span class="fromcity">Los Angeles, United States</span>
                        <span>to</span>
                        <span class="tocity">Denver, United States</span>
                        <span class="cityfromto">LAX <i class="fa fa-arrows-h"></i> DEN</span>
                        <span class="datefromto">Mar 10 &#8208; Mar 18</span>
                        <span class="price">&#36;350.75</span>
                        <button type="button">Search Now</button>
                    </div>
                </div><div class="deal-item" onclick="dealclick('BOS','LAS','01/10/2021','01/25/2021')">
                    <img src="/resources/images/dubai.jpg">
                    <div class="deal-text">
                        <span class="fromcity">Boston, United States</span>
                        <span>to</span>
                        <span class="tocity">Las Vegas, United States</span>
                        <span class="cityfromto">BOS <i class="fa fa-arrows-h"></i> LAS</span>
                        <span class="datefromto">Jan 10 &#8208; Jan 25</span>
                        <span class="price">&#36;750.15</span>
                        <button type="button">Search Now</button>
                    </div>
                </div>
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
<script src="/resources/scripts/script.js?01112024"></script>
</html>