<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>${pageResponse.metaTitle}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="${pageResponse.metaDesc}">
    <meta name="keyword" content="${pageResponse.metaKeyword}">
    <link rel="icon" href="/resources/images/favicon.png">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="preload" as="font" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
    <link rel="stylesheet" href="/resources/css/default.css?v=2.7">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js" crossorigin="anonymous"></script>
    


    <style>
        .myaccordion {
            margin-top: 40px;
        }
        
        .myaccordion .acc-container {
            /* max-width: 700px;  width: 100%; margin: 0 auto;*/
            
        }
        
        .myaccordion .acc-container .faq-heading {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 25px;
        }
        
        .myaccordion .acc {
            margin-bottom: 10px;
        }
        
        .myaccordion .acc-head {
            background-color: #414141;
            padding: 12px 10px;
            font-size: 15px;
            position: relative;
            cursor: pointer;
        }
        
        .myaccordion .acc-head::before, .myaccordion .acc-head::after {
            content: '';
            position: absolute;
            top: 50%;
            background-color: #fff;
            transition: all .3s;
        }
        
        .myaccordion .acc-head::before {
            right: 29px;
            width: 3px;
            height: 16px;
            margin-top: -8px;
        }
        
        .myaccordion .acc-head::after {
            right: 22px;
            width: 17px;
            height: 3px;
            margin-top: -2px;
        }
        
        .myaccordion .acc-head p {
            color: #fff;
            font-weight: bold;
            margin: 0;
        }
        
        .myaccordion .acc-content {
            padding: 15px 10px;
            display: none;
            line-height: 22px;
            border: 1px solid #414141;
        }
        
        .myaccordion .acc-content p {
            margin-top: 0;
        }
        
        .myaccordion .acc-head.active::before {
            transform: rotate(90deg);
        }
        </style>

    <style>
      .engine-bg{   
     background-image: url('/resources/images/${fn:toLowerCase(pageResponse.pageType)}/${pageResponse.pageValue}.jpg'), url('/resources/images/enginebg.webp');
     background-repeat:no-repeat;}
    </style>    
<jsp:include page="tag-manager-head.jsp" /></head>
<body><jsp:include page="tag-manager-body.jsp" />
    <!--Header Area Starts Here-->
    <jsp:include page="header.jsp" />
    <div class="screen-overlay" id="screenoverlay" onclick="hidesidenav()"></div>
    <!--Header Ends Here-->
    <!--Engine Area Starts Here-->
	<input type="hidden" id="pageUrl" value="${pageResponse.url}" />
    <div class="engine-bg">
        <div class="bg-overlay">
            <h1><span style="text-transform:capitalize;">${pageResponse.pageName}</span> Reservations</h1>
            <jsp:include page="engine.jsp" />
        </div>
    </div>
    <!--Engine Area Ends Here-->
 
    
    <div class="about-airline-city">
		<c:if test="${pageResponse.airportHub != '' && pageResponse.headQuarters != '' && pageResponse.popularRoutes != '' && pageResponse.popularDest != ''}">
        <div class="about-topic">
            <div class="topic-head">
                Useful Insights about ${pageResponse.pageName}
            </div>
            <div class="topic-content">
                <div class="alternate-rows">
                    <div class="table-row">
                        <div class="table-cell">Hub Airports:</div>
                        <div class="table-cell">${pageResponse.airportHub}</div>
                    </div>
                    <div class="table-row">
                        <div class="table-cell">Head Quarter:</div>
                        <div class="table-cell">${pageResponse.headQuarters}</div>
                    </div>
                    <div class="table-row">
                        <div class="table-cell">Popular Route:</div>
                        <div class="table-cell"><a href="#">${pageResponse.popularRoutes}</a></div>
                    </div>
                    <div class="table-row">
                        <div class="table-cell">Popular Destinations:</div>
                        <div class="table-cell"><a href="#">${pageResponse.popularDest}</a></div>
                    </div>
                </div>
            </div>
        </div>
		</c:if>
		<c:if test="${pageResponse.travelTrends != ''}">
        <div class="about-topic">
            <div class="topic-head">
                ${pageResponse.pageName} Travel Trends
            </div>
            <div class="topic-content">
				${pageResponse.travelTrends}
                
            </div>
        </div>
		</c:if>
    </div>
	
    
    <c:if test="${pageResponse.onboardService != '' && pageResponse.premierClass != '' && pageResponse.clubPremier != ''}">
    <div class="about-tab-container">
        <div class="about-tab">
            <div class="tabs-container">
                
                <div class="tab-item  active-tab">
                    Onboard Service
                </div>
                <div class="tab-item">
                    Premier Class
                </div>
                <div class="tab-item">
                    Club Premier
                </div>
            </div>
            
            <div class="tab-content">
                ${pageResponse.onboardService}
            </div>
            <div class="tab-content" style="display:none;">
                ${pageResponse.premierClass}
            </div>
            <div class="tab-content" style="display:none;">
                ${pageResponse.clubPremier}
            </div>
        </div>
    </div>
	</c:if>
	
    <c:if test="${pageResponse.contentData != ''}">
    <div class="about-airline-city">
        <div class="about-topic static-content">
            <div class="topic-content">
                ${pageResponse.contentData}
            </div>
        </div>


        <c:if test="${faqResponse.size() > 0}">

				<div class="myaccordion">
					<!-- Accordion -->
					<div class="acc-container">

						<p class="faq-heading">Frequently Asked Questions ?</p>
						<c:forEach var="faqData" items="${faqResponse}">
							<div class="acc">
								<div class="acc-head">
									<p>${faqData.question}</p>
								</div>
								<div class="acc-content">
									<p>${faqData.answer}</p>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				</c:if>

    </div>
	</c:if>
    <!--About Airline Section End-->

    <!--Deals Section Starts-->
	<c:if test="${dealResponse.response.size() > 0}">
        <div class="best-deals cityapi-section">
            <div class="dealHeadScn">
                <p class="dealHeadScn-heading">Think Ahead and Plan Your Next Trip</p>
            </div>
            <div class="deals-section">
                
                <div class="deal-blocks">
                
                    <c:forEach var="deal" items="${dealResponse.response}" end="7">
                <fmt:parseDate value = "${deal.depDate}" var = "parsedDepDate" pattern = "yyyy-MM-dd" />
                <fmt:parseDate value = "${deal.retDate}" var = "parsedRetDate" pattern = "yyyy-MM-dd" />
                <fmt:formatDate pattern = "MM/dd/yyyy" value = "${parsedDepDate}" var="searchDepDate" />
                <fmt:formatDate pattern = "MM/dd/yyyy" value = "${parsedRetDate}" var="searchRetDate" />
                    <div class="deal-item" onclick="dealclick('${deal.froCity}','${deal.toCity}','${searchDepDate}','${searchRetDate}');">
                        <picture>
                            <source srcset="/resources/images/dubai.webp" type="image/webp">
                            <img src="/resources/images/dubai.jpg" alt="dubai" width="20" height="20" loading="lazy" decoding="async">
                          </picture>
                        <div class="deal-text">
                            <span class="cityname">${deal.toCityName}</span>
                            <span class="cityfromto">${deal.froCity} <i class="fa fa-arrows-h"></i> ${deal.toCity}</span>
                            
                            <span class="datefromto"><fmt:formatDate pattern = "MMM dd" value = "${parsedDepDate}" /> &#8208; <fmt:formatDate pattern = "MMM dd" value = "${parsedRetDate}" /></span>
                            <div>
                                <span class="price">&#36;${deal.totalPrice}</span>
                                <button type="button">Search Now</button>
                            </div>
                        </div>
                    </div>
                 </c:forEach>
                    
                    
                </div>
            </div>
            
        </div> 
        </c:if>
        
        <!--About Airline Section Starts-->


	<jsp:include page="customer-review.jsp" />
    
	<!--Footer Starts-->
    <jsp:include page="popup.jsp" />
    <jsp:include page="footer.jsp" />
    <style type="text/css">
        @media only screen and (max-width: 585px){
            .best-deals, .about-airline-city, .customer-review-container { display:block; }
        }
    </style>
</body>
<script src="/resources/scripts/script.js"></script>
<script>
 $(".tab-item").click(function(){
        $(".tab-item").removeClass("active-tab")
        $(this).addClass("active-tab");
        $(".tab-content").hide();
        document.getElementsByClassName("tab-content")[$(this).index()].style.display="block";
    })

    $(document).ready(function() {
		$('.acc-container .acc:nth-child(1) .acc-head').addClass('active');
		$('.acc-container .acc:nth-child(1) .acc-content').slideDown();
		$('.acc-head').on('click', function() {
			if ($(this).hasClass('active')) {
				$(this).siblings('.acc-content').slideUp();
				$(this).removeClass('active');
			} else {
				$('.acc-content').slideUp();
				$('.acc-head').removeClass('active');
				$(this).siblings('.acc-content').slideToggle();
				$(this).toggleClass('active');
			}
		});
	});
</script>
</html>