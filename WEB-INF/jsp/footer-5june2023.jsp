<%@ page import="com.travel.utility.SiteMap"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style type="text/css">
	.errorMsg { display:none; color:red; position: absolute; font-size: 12px; bottom: -20px; left: 0; }
	.emailMsg { display:none; color:red; position: absolute; font-size: 12px; bottom: -20px; left: 0; }
	/*.loader {
		  display:none;
		  border: 16px solid #f3f3f3;
		  border-radius: 50%;
		  border-top: 16px solid blue;
		  border-right: 16px solid green;
		  border-bottom: 16px solid red;
		  border-left: 16px solid pink;
		  width: 50px;
		  height: 50px;
		  -webkit-animation: spin 2s linear infinite;
		  animation: spin 2s linear infinite;
		}
		
		@-webkit-keyframes spin {
		  0% { -webkit-transform: rotate(0deg); }
		  100% { -webkit-transform: rotate(360deg); }
		}
		
		@keyframes spin {
		  0% { transform: rotate(0deg); }
		  100% { transform: rotate(360deg); }
		}*/
        .loader {
          /*position: absolute;
          top: 0;
          left: 0;
          right: 0;
          bottom: 0;*/
          margin: auto; display:none;
        }
        .loader i { display:inline-block; height:20px; width:20px; border-radius:50%; border:3px solid #838383; border-top-color:#fff; margin:0 0 0 5px; 
            animation: button-loading-spinner 1s ease infinite; }
        .loader.activeLoader { display:block; }
        .loader.activeLoader + span { display:none; }
        @keyframes button-loading-spinner {
          from {
            transform: rotate(0turn);
          }

          to {
            transform: rotate(1turn);
          }
        }
        .three-half .sign-up-box .submit > span { line-height:2.3; font-size:12px; font-weight:normal; letter-spacing:normal; height:100%; }
        .three-half .sign-up-box .submit .loader.activeLoader { display:flex !important; }
        .three-half .sign-up-box .submit .loader.activeLoader span { font-size:12px; line-height:2.3; font-weight:normal; text-transform:capitalize; }
.footer-container .col-sm-4 { width:33.33333333%; float:left; padding-right:15px; padding-left:15px; }
.footer-container .col-sm-8 { width:66.66666667%; float:left; padding-right:15px; padding-left:15px; }
.footer-container .col-sm-4 .newsletter {padding-right: 30px;}
.footer-container .col-sm-4 .newsletter p, .footer-container .col-sm-4 .newsletter h2 {color: #fff;margin: 0;padding: 0;font-size: 24px; font-weight: 500; }
.footer-container .col-sm-4 .newsletter form {position: relative;}
.footer-container .col-sm-4 .newsletter input {padding: 9px 45px 10px 20px;height: auto;}
.footer-container .col-sm-4  .newsletter form input {width: 100%;font-size: 14px;padding: 0 125px 0 8px;height: 44px;display: inline-block;position: relative;border-radius: 25px;border: 0;letter-spacing: -.4px;}
.footer-container .col-sm-4 .newsletter form button {border: 0;position: absolute;right: 0;top: 0;box-shadow: 2px 3px 16px #666;font-weight: 500;font-size: 15px;padding-right: 40px;height: 44px;width: 120px;padding-left: 13px; background:linear-gradient(to right,#e8361a 0%,#f3870b 100%); padding:9px 45px 10px 10px; border-radius:25px; color:#fff;    cursor: pointer; font-family: 'Poppins',sans-serif; }
.footer-container .col-sm-4 .newsletter form button:after { content:"\f061"; left: 92px;width: 16px;height: 16px;background-size: 100%;top: 12px; position:absolute; font-family:FontAwesome;    font-family: FontAwesome;font-size: 10px;border: 2px solid;border-radius: 50px;display: flex;align-items: center;justify-content:center; }
.footer-container .col-sm-4 .newsletter form button:hover { background:linear-gradient(to right,#b91111 0%,#c94747 100%) }
.footer1 { font-family:'Poppins',sans-serif }
.footer-container .col-sm-4 .newsletter p { color: #fff;font-size: 13px;font-weight: 300; margin:5px 0 21px 0; }
.footer-container .col-sm-4 .newsletter ::placeholder{color:#bfbfbf}
.footer-container .col-sm-3 { width:25%; float:left; padding-left:15px; padding-right:15px; float:left; }
.footer-container .col-sm-2 { width:16.66666667%; float:left; padding-left:15px; padding-right:15px; float:left; }
.footer-container .col-sm-8 h3 {margin: 0;font-size: 13px;text-transform: uppercase;color: #fff;letter-spacing: 2px;margin-bottom: 20px;}
.footer-container .col-sm-8 h3 span { border-bottom:1px solid #fff }
.footer-container .col-sm-8 .col-sm-3 ul, .footer-container .col-sm-8 .col-sm-4 ul {margin: 0;padding: 0;list-style: none;}
.footer-container .col-sm-8 p a, .footer-container .col-sm-8 p, .footer-container .col-sm-8 ul li a {color: #fff;font-size: 13px;font-weight: 300; text-decoration:none; }
.footer-container .col-sm-8 ul li a:hover {color: #b91111;}
.footer-container .col-sm-8 .social-media {margin-top: 15px;}
.footer-container .col-sm-8 .social-media a {    display: inline-block;background: #fff;width: 30px;height: 30px;font-size: 21px;line-height: 32px;text-align: center;border-radius: 50px;color: #36cccc;}
.footer-container .col-sm-8 .social-media a.instagram:hover .fa-instagram {background: #d6249f;-moz-background: radial-gradient(circle at 30% 107%,#fdf497 0,#fdf497 5%,#fd5949 45%,#d6249f 60%,#285aeb 90%);-webkit-background: radial-gradient(circle at 30% 107%,#fdf497 0,#fdf497 5%,#fd5949 45%,#d6249f 60%,#285aeb 90%);background: radial-gradient(circle at 30% 107%,#fdf497 0,#fdf497 5%,#fd5949 45%,#d6249f 60%,#285aeb 90%);-webkit-background-clip: text;-webkit-text-fill-color: transparent;}
.footer-container .col-sm-8 .social-media a.twitter:hover .fa.fa-twitter {color: #00acee;}
.footer-container .col-sm-8 .social-media a.facebook:hover .fa.fa-facebook {color: #3b5998;}
.footer-container { padding-bottom:15px }
@media(max-width: 991px){
    .footer-container .col-sm-8 .row > .col-sm-3, .footer-container .col-sm-8 .row > .col-sm-2 { width:33.33333333%; }
}
@media(max-width:800px){
    .footer-container .footer1 > .col-sm-4 { width:100%; padding:0; }
    .footer-container .footer1 > .col-sm-8 { padding:0; width:100%; margin:30px 0 0; }
    .footer-container .footer1 > .col-sm-8 .row { margin-left:-15px; margin-right:-15px; }
    .footer-container .col-sm-8 .row > .col-sm-2 { width:100%; text-align:center; }
}
@media(max-width:500px){
    .footer-container .col-sm-8 .row > .col-sm-2, .footer-container .col-sm-8 .row > .col-sm-3, .footer-container .col-sm-8 .row > .col-sm-4 { width:100%; }
}

</style>

<div style="background-color:#ffffff;width:100%;">
<%
   com.travel.utility.SiteMap tc = new com.travel.utility.SiteMap();
   tc.getSitemap(request);
  %>
<div class="footer-container">
        <div class="footer1" style="padding-top:20px;">
            <div class="col-sm-4">
                <div class="newsletter">
                    <h2>Subscribe to Newsletter</h2>
                    <p>Get exclusive discounts on flights &amp; hotels. </p>
                    <form id="frmNewsletter" action="/FooterLinks/ContactUs" method="post">
                        <input type="hidden" id="hdnSubscribe" name="FormType" value="Subscribe">
                        <span id="spanNewsletterThanks" style="display:none">Thanks for subscribing to  Lowfaremart!</span>
                        <input class="form-control" id="txtNewsletterMail" type="text" maxlength="55" placeholder="Your email ID" name="Email">
                        <button type="submit" class="g-orange" onclick="return subscribeEmail()" id="btnNewsletterSubmit">Subscribe</button>
                        <span id="spnAlreadyExist" class="spnAlreadyExist"></span>
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="row">
                    <div class="col-sm-3">
                        <h3><span>important links</span></h3>
                        <ul>
                            <li><a href="/aboutus"> ABOUT US</a></li>
                            <li><a href="/cheap-flights">CHEAP FLIGHTS</a></li>
                            <!-- <li><a href="/faqs"> FAQs</a></li>
                            <li><a href="/disclaimer"> DISCLAIMER</a></li> -->
                            <li><a href="/contactus"> CONTACT US</a></li>
                            <!-- <li><a href="/baggage-policy"> BAGGAGE POLICY</a></li>
                            <li><a href="/traveladvisory"> TRAVEL ADVISORY</a></li> -->
                            
                            <li><a href="/blogs">BLOG</a></li>
                    <li><a href="/testimonials">CLIENT TESTIMONIAL</a></li>
                    <li><a href="/newsletter">NEWSLETTER</a></li>
<li><a href="/sitemap"> SITE MAP</a></li>
                            
                    
                    
                    
                    
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <h3><span>legal</span></h3>
                        <ul>
                            <li><a href="/terms-and-conditions"> TERMS &amp; CONDITIONS</a></li>
                            <li><a href="/privacy-policy"> PRIVACY POLICY</a></li>
                            <li><a href="/price-match-policy"> PRICE MATCH PROMISE</a></li>
                            <li><a href="javascript:void(window.open('/taxes-fees', '_blank', 'width=600,height=750,scrollbars=yes'));"> TAXES &amp; FEES</a></li>
                            <li><a href="/post-ticketing-fees"> POST TICKETING FEE</a></li>
                            <li><a href="javascript:void(window.open('/baggage-fees', 'Taxes and Fees', 'width=600,height=750,scrollbars=yes'));">AIRLINE BAGGAGE FEES</a></li>
                            <li><a href="javascript:void(window.open('/our-service-fees', 'Taxes and Fees', 'width=600,height=750,scrollbars=yes'));">OUR SERVICE FEES</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-4">
                        <h3><span>Contact us</span></h3>
                        <p><a href="https://www.lowfaremart.com/"> Lowfaremart LLC</a></p>
                        <p>371 HOES LANE SUITE 200, PISCATAWAY, NEW JERSEY 08854</p>
                        <p><a href="mailto:sales@lowfaremart.com">sales@lowfaremart.com</a></p>                        
                    </div>
                    <div class="col-sm-2">
                    <div class="social-media">
                            <a href="https://www.instagram.com/lowfaremart/" target="_blank" class="instagram"><i class="fa fa-instagram"></i></a>
                            <a href="https://twitter.com/lowfaremart" target="_blank" class="twitter"><i class="fa fa-twitter"></i></a>
                            <a href="https://www.facebook.com/lowfaremart/" target="_blank" class="facebook"><i class="fa fa-facebook"></i></a>
                        </div>
                    </div>
                </div>
            </div>






            <div class="fhead" style="display:none;">Quick Links</div>
            <div class="quick-links" style="display:none;">
                <!-- <div class="links-row access-links">
                    <li id="qli"><a class="qlhead">Quick Links &nbsp<i class="fa fa-caret-right"></i></a></li> -->
                    <!-- <li id="pai"><a>Popular Airlines &nbsp<i class="fa fa-caret-right"></i></a></li>
                    <li id="pfi"><a>Popular Flight Routes &nbsp<i class="fa fa-caret-right"></i></a></li> -->
                   <!-- <li id="tudi"><a>Top U.S. Destinations &nbsp<i class="fa fa-caret-right"></i></a></li>
                    <li id="tidi"><a>Top International Destinations &nbsp<i class="fa fa-caret-right"></i></a></li> -->
                    <!--li id="sdi"><a>Site Directories &nbsp<i class="fa fa-caret-right"></i></a></li-->
                   
                   
                <!-- </div> -->
                <div class="links-row qlrows">
                    <div class="lrhead">BOOK</div>
                    <li><a href="/cheap-flights">Cheap Flights</a></li>
                 
                </div>
                <div class="links-row qlrows">
                    <div class="lrhead">TRAVELER TOOLS</div>
		<c:if test="${userLogin == null}">
		<li><a href="/login">Check My Booking</a></li>
		</c:if>
		<c:if test="${userLogin != null}">
		<li><a href="/mybookings">Check My Booking</a></li>
		</c:if>

                    
                    <li><a href="javascript:void(window.open('/baggage-fees', 'Taxes and Fees', 'width=600,height=750,scrollbars=yes'));">Airline Baggage Fees</a></li>
                    <li><a href="/blogs">Travel Blog</a></li>
                    <li><a href="/testimonials">Client Testimonial</a></li>
                    <li><a href="/newsletter">Newsletter</a></li>
                    <li><a href="javascript:void(window.open('/taxes-fees', '_blank', 'width=600,height=750,scrollbars=yes'));">Taxes & Fees</a></li>
                    <li><a href="javascript:void(window.open('/our-service-fees', 'Taxes and Fees', 'width=600,height=750,scrollbars=yes'));">Our Service Fees</a></li>
                    <li><a href="/post-ticketing-fees">Post Ticketing Fees</a></li>
                </div>
                <div class="links-row qlrows">
                    <div class="lrhead">ABOUT</div>
                    <li><a href="/aboutus">About Us</a></li>
                    <li><a href="/testimonials">Client Testimonial</a></li>
                    <li><a href="/newsletter">Newsletter</a></li>
                     <li>
                 <a href="/sitemap">Sitemap</a></li>
                </div>
                <div class="links-row qlrows">
                    <div class="lrhead">LEGAL</div>
                    <li><a href="/contactus">Contact Us</a></li>
					<li><a href="/terms-and-conditions">Terms & Conditions</a></li>
					<li><a href="/privacy-policy">Privacy Policy</a></li>
                    <li><a href="javascript:void(window.open('/taxes-fees', '_blank', 'width=600,height=750,scrollbars=yes'));">Taxes & Fees</a></li>
                    <li><a href="javascript:void(window.open('/our-service-fees', 'Taxes and Fees', 'width=600,height=750,scrollbars=yes'));">Our Service Fees</a></li>
                    <li><a href="/post-ticketing-fees">Post Ticketing Fees</a></li>
                </div>
                <div class="links-row parows">
                <c:forEach var="airUrl" items="${airlineMap}" varStatus="indexed" begin="0" end="15">
                <c:if test="${indexed.index % 4 == 0 }">
                </div>
                <div class="links-row parows">
                </c:if>
                <li>
                 <a href="/airlines/${fn:replace(fn:toLowerCase(airUrl.url),' ','-')}-${fn:toLowerCase(airUrl.pageValue)}">${airUrl.pageName}</a></li>
                 <c:if test="${indexed.index == 15 }">
                 <li>
                 <a href="/sitemap">More Airlines</a></li>
                 </c:if>
                </c:forEach>
                    
              
                </div>
	      
	      <div class="links-row pfrows">
                <c:forEach var="airUrl" items="${cityMap}" varStatus="indexed" begin="0" end="15">
                <c:if test="${indexed.index % 4 == 0 }">
                </div>
                <div class="links-row pfrows">
                </c:if>
                <li>
                 <a href="/city/flights-to-${fn:replace(fn:toLowerCase(airUrl.url),' ','-')}">Flights to ${airUrl.pageName}</a></li>
                 <c:if test="${indexed.index == 15 }">
                 <li>
                 <a href="/sitemap">More Flights</a></li>
                 </c:if>
                </c:forEach>
                </div>
                
                <div class="links-row tudrows">
                    <li><a href="#">Atlanta</a></li>
                    <li><a href="#">Baltimore</a></li>
                    <li><a href="#">Boston</a></li>
                    <li><a href="#">Chicago</a></li>
                    <li><a href="#">Dallas</a></li>
                </div>
  	      <div class="links-row tudrows">
                    <li><a href="#">Denver</a></li>
                    <li><a href="#">Ft Lauderdale</a></li>
                    <li><a href="#">Honolulu</a></li>
                    <li><a href="#">Houston</a></li>
                    <li><a href="#">Las Vegas</a></li>
                </div>
	      <div class="links-row tudrows">
                    <li><a href="#">Los Angeles</a></li>
                    <li><a href="#">Miami</a></li>
                    <li><a href="#">New York</a></li>
                    <li><a href="#">Orlando</a></li>
                    <li><a href="#">Philadelphia</a></li>
                </div>
	      <div class="links-row tudrows">
                    <li><a href="#">Phoenix</a></li>
                    <li><a href="#">San Diego</a></li>
                    <li><a href="#">San Francisco</a></li>
                    <li><a href="#">Seattle</a></li>
                    <li><a href="#">Tampa</a></li>
                </div>
                <div class="links-row tidrows">
                    <li><a href="#">Amsterdam</a></li>
                    <li><a href="#">Bangkok</a></li>
                    <li><a href="#">Barcelona</a></li>
                    <li><a href="#">Cancun</a></li>
                    <li><a href="#">Dublin</a></li>
                </div>
	      <div class="links-row tidrows">
                    <li><a href="#">Frankfurt</a></li>
                    <li><a href="#">Guadalajara</a></li>
                    <li><a href="#">Lima</a></li>
                    <li><a href="#">London</a></li>
                    <li><a href="#">Manila</a></li>
                </div>
	      <div class="links-row tidrows">
                    <li><a href="#">Madrid</a></li>
                    <li><a href="#">Mexico City</a></li>
                    <li><a href="#">Nassau</a></li>
                    <li><a href="#">Sydney</a></li>
                    <li><a href="#">Paris</a></li>
                </div>
	      <div class="links-row tidrows">
                <!--    <li><a href="#">Puerto Vallarta</a></li>
                    <li><a href="#">Rome</a></li>
                    <li><a href="#">San Jose</a></li>
                    <li><a href="#">Toronto</a></li>
                    <li><a href="#">Vancouver</a></li>  -->
                </div>
	      <div class="links-row sdrows">
                    <div class="lrhead">DIRECTORIES</div>
                    <li><a href="#">Flights</a></li>
                    <li><a href="#">Airports</a></li>
                    <li><a href="#">Airlines</a></li>
                    <li><a href="#">Sitemap</a></li>
                </div>
	      <div class="links-row sdrows"></div>
	      <div class="links-row sdrows"></div>
	      <div class="links-row sdrows"></div>
	      <div class="links-row sdrows"></div>
            </div>
            <br>
        </div>
    </div>
    <div style="clear: left;"></div>



        <div class="mymain" style="display:none;">
            <div class="mymaininner">
            <div class="mymaininner1">
            <h2>Top Flight Destinations
            </h2>
            <div class="fLink_sctn">
                <div class="block1">
                    <ul>
                        <li><a href="#">Flights To Aurora</a></li>
                        <li><a href="#">Flights To Wichita</a></li>
                        <li><a href="#">Flights To Boston</a></li>
                        <li><a href="#">Flights To Charlotte</a></li>
                        <li><a href="#">Flights To Bakersfield</a></li>
                        <li><a href="#">Flights To Jacksonville</a></li>
                    </ul>
                </div>
            <div class="block1">
                <ul>
                    <li><a href="#">Flights To New York City</a></li>
                    <li><a href="#">Flights To Cleveland</a></li>
                    <li><a href="#">Flights To Kansas City</a></li>
                    <li><a href="#">Flights To Las Vegas</a></li>
                    <li><a href="#">Flights To San Diego</a></li>
                    <li><a href="#">Flights To San Antonio</a></li>
                </ul>
            </div>
            <div class="block1">
                <ul>
                    <li><a href="#">Flights To San Jose</a></li>
                    <li><a href="#">Flights To Denver</a></li>
                    <li><a href="#">Flights To Houston</a></li>
                    <li><a href="#">Flights To Indianapolis</a></li>
                    <li><a href="#">Flights To Fresno</a></li>
                    <li><a href="#">Flights To Tampa</a></li>
                </ul>
            </div>
            <div class="block1">
                <ul>
                    <li><a href="#">Flights To Chicago</a></li>
                    <li><a href="#">Flights To Columbus</a></li>
                    <li><a href="#">Flights To Louisville</a></li>
                    <li><a href="#">Flights To San Francisco</a></li>
                    <li><a href="#">Flights To Minneapolis</a></li>
                    <li><a href="#">Flights To Detroit</a></li>
                </ul>
            </div>
            </div>
            <p class="redmore"><a href="#">Read More</a></p>
        </div>
            
            </div>
            </div>


            <div class="mymain" style="display:none;">
                <div class="mymaininner">
                <div class="mymaininner1">
                <h2>Top Flight Routes</h2>
                <div class="fLink_sctn">
                <div class="block1">
                    <ul>
                        <li><a href="/routes/cheap-flights-from-dallas-dal-to-losangeles-lax">Dallas To Los Angeles</a></li>
                        <li><a href="#">Portland To Palm Springs</a></li>
                        <li><a href="#">Honolulu To Las Vegas</a></li>
                    </ul>
                </div>
                <div class="block1">
                    <ul>
                        <li><a href="#">Fort Lauderdale To Aguadilla</a></li>
                        <li><a href="#">San Jose To Las Vegas</a></li>
                        <li><a href="#">Atlanta To Miami</a></li>
                    </ul>
                </div>
                <div class="block1">
                    <ul>
                        <li><a href="#">New York City To London</a></li>
                        <li><a href="#">Las Vegas To Dallas</a></li>
                        <li><a href="#">Oakland To Los Angeles</a></li>
                    </ul>
                </div>
                <div class="block1">
                    <ul>
                        <li><a href="#">Portland To Las Vegas</a></li>
                        <li><a href="#">El Paso To Ontario</a></li>
                        <li><a href="#">Newark To Las Vegas</a></li>
                    </ul>
                </div>
                <!-- <div class="block2">
                    <ul>
                        
                    </ul>
                </div> -->
                </div>
                <p class="redmore"><a href="#">Read More</a></p>              
            </div>
                
                </div>
                </div>







   
    <div style="clear:left;"></div>
    <div class="mainconnect" style="display:none;">
        <div class="connect">
                    
                        <div class="two-half">
                            <span>Scan the QR code and follow us!
                            </span>
                            <img src="resources/images/scan.png">
                        </div>

                        <div class="one-half">
                            <span>Connect With Us:</span>
                            <ul class="mfs_connect-icons">
                                <li><a href="https://www.pinterest.com/LowfaremartLLC/" class="pinterest" target="_blank"  title="pinterest"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="https://twitter.com/Lowfaremart" class="twitter" target="_blank"  title="twitter"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="https://www.facebook.com/LowfaremartLLC/" class="facebook_ mfsIcon-fb" target="_blank"  title="facebook"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="https://www.youtube.com/channel/UCu1jAkrbnKPCEFZ_mAiLVjg" class="youtube" target="_blank"  title="youtube"><i class="fa fa-youtube"></i></a></li>
                                <li><a href="https://www.instagram.com/Lowfaremartllc/" class="youtube" target="_blank"  title="youtube"><i class="fa fa-instagram"></i></a></li>
        
                            </ul>
                        </div>

    <div class="three-half">
        <span>Sign up for Exclusive Email-Only deals!</span>
      		<div class="sign-up-box">
                <input type="text" name="subscribe_email" class="form-control inputfieldset" id="subscribe_email" placeholder="Enter your email address" /> 
              	<button class="submit EmailSignup" onclick="return subscribeEmail();">
                    <label class="loader"><span>Loading...</span><i></i></label>
                    <span>subscribe <i class="fa fa-envelope"></i></span>
                </button>
                <label class="errorMsg">Email is required</label>
                <label class="emailMsg">Please Enter Correct ID</label>
                
       		</div>
<style type="text/css">
#subcribe-msg-success { width:80%; text-align:left }
</style>
       		<label class="subcribe-msg" id="subcribe-msg-success"></label>
    </div>	
                        <div style="clear:both;"></div>
                </div>
                <div style="clear:left;"></div>
                </div>
            <!-- </br> -->

    <div class="footer2">
        <!-- <b>Discounts and Savings Claims</b>
        <p>We offer a number of discount and savings opportunities to our customers. When searching for airfares, discount and savings claims are based on multiple factors, including searching over 600 airlines to find the lowest available fare. Coupon codes are valid for savings for qualified bookings off our standard service fees . Seniors and youth may find specific discounted fares offered by certain airlines subject to airline qualifications. Military, 
            bereavement and visually impaired travelers are eligible for discounts off our post-booking service fees as outlined in our compassion exception policy.</p>
        <p>
            Claims of savings on average of $124 per traveler or 24% savings as compared to published fares are based on review of private non-published airfares booked as compared to available published fares. Last date of comparison - September 10, 2020. Where otherwise indicated, discounts and savings claims are based off of comparing the average 
            fares for the same month or adjacent months last year or such other time frame indicated with fares presently offered by the airlines for the same routes.
        </p>
        <p>
            * Savings shown are against average airfares found on Lowfaremart.com for fares found in the same travel period last year. * Fares are roundtrip, Fares incl. all fuel surcharges, taxes & fees and our service fees. Tickets are nonrefundable, nontransferable, non-assignable. Name changes are not permitted. Displayed fares are based on historical data, are subject to change and cannot be guaranteed at the time of booking. There is a higher probability of seats being available at this fare on Tuesday, Wednesday and Thursday, and may require a Saturday night stay at your destination. Lowest fares may require an advance purchase of up to 21 days. Certain blackout dates may apply. Holidays and weekend travel may have a surcharge.
            Other restrictions may apply. Additional terms and conditions of purchase. Save money by comparing multiple airlines within our website and choosing the lowest fare.
        </p>
        <p>
            Applies to online airline ticket bookings from one (1) traveler up to four (4) travelers. Offer expires Oct 31, 2020. Enter Promo Code at time of check out. The advertised Promo Code provides discounts against our service fees on stated routes. A maximum of $5 per person can be saved by using this promo code; a total of up to four (4) passengers is needed to redeem the full value of Promo Code. Promo Code and Instant Savings offers can be combined up to the amount of our service fees. This Promo Code may not be used or combined with any other coupons, promotions or special offers. Promo Code expires on October 31, 2020, 
            11:59 pm EST and may be withdrawn at any time without notice. Our standard service fees are up to $35 per passenger, per ticket basis for economy class tickets.
        </p>
        <hr> -->
        <p style="text-align:center;margin:20px 0 15px 0;font-size:9px;letter-spacing:1px;"> Lowfaremart LLC its registered office located at 371 HOES LANE SUITE 200, in the city of PISCATAWAY With Zip Code 08854 in the state of NEW JERSEY, USA is authorized to use the ARC No. 33 54290-2 of Travel Unravel Holidays Ltd. We have met and we continue to maintain the operational standards as described in ARC's Verified Travel Consultant Agreement. We are available to provide customer support on all days from Monday to Sunday. Customer Service Number: 1-631-309-0576 | Email: support@Lowfaremart.com ©Copyright 2013-2023  Lowfaremart.com 
        </p>
        <p style="text-align:center;margin:5px 0 15px 0;">
            <img src="/resources/images/certified.png" style="vertical-align: middle;max-width:100%">
        </p>
    </div>
    
</div>
<div class="fixed-call-bottom">
            <c:choose>
            <c:when test="${pageResponse != null && pageResponse.tfnNo != null && pageResponse.tfnNo != ''}">
             <a href="tel:${pageResponse.tfnNo}"><img src="/resources/images/phone-call.png"></a>
            <div>
            <div>Call & Get Unpublished Flight Deals!</div>
            <div>${pageResponse.tfnNo}</div>
            </div>
           </c:when>
            <c:otherwise>
             <a href="tel:+1-800-404-0025"><img src="/resources/images/phone-call.png"></a>
               <div>
            <div>Call & Get Unpublished Flight Deals!</div>
            <div>1-800-404-0025</div>
               </div>
            </c:otherwise>
            </c:choose>

    
       
        <i class="fa fa-close"></i>
    </div>
<script>

function emailCheck(email){
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(email.match(mailformat)){
		return true;
	}else{
		return false;
	}
}

function subscribeEmail(){
	
	var emailID = $("#subscribe_email").val();
	var flag= false;
	
	if(emailID==""){
		flag= true;
		$(".errorMsg").show();
	}
	else{
		$(".errorMsg").hide();
		
		if(!emailCheck(emailID)){
			flag= true;
			$(".emailMsg").show();
		}
		else{
			$(".emailMsg").hide();
		} 
	}
	
	if(flag){
		return ;
	}
	else{
		$.ajax({
			url: '/subscribesubmit/'+$("#subscribe_email").val(),
			type: 'post',
			contentType: 'application/json; charset=utf-8',
			//data: JSON.stringify(data),
			dataType: "text",
			beforeSend: function() {
     			$(".loader").show().addClass('activeLoader');
 			},
			success: function(response) {
				$(".loader").hide().removeClass('activeLoader');
				if(response == 'true'){
					$("#subcribe-msg-success").text("You have successfully subscribed!").css("color", "green");
				}
				else{
					$("#subcribe-msg-success").text("Some Technical Issue Please try later!").css("color", "red");	
				}
			}
		});
	}
}
$(document).ready(function(){
    $(".AB_currencycountry_pack").click(function () {
        $("#AB_currencycountry_popup").toggleClass("bounceInUp d-flex"); 
        //$(".AB_curpop_darkbg").show();
    });
    $("#AB_saveButton").click(function () {
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
                $("#AB_currencycountry_popup").removeClass("toggletransformY d-flex"),
                    $("#AB_currencycountry_popup").addClass("bounceOutDown"),
                    $(".AB_curpop_darkbg").hide(),
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
                    $("#AB_saveButton").prop("disabled", !1);
                });
    });
});
function countryvaluchng() {
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
}
</script>