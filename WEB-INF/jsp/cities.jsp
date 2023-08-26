<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>${pageResponse.metaTitle}</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="${pageResponse.metaDesc}">
    <meta name="keyword" content="${pageResponse.metaKeyword}">
    <link rel="icon" href="/resources/images/favicon.png">
    <link rel="canonical" href="https://www.tripsfares.com/">
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
            <h1>Flights To <span style="text-transform:capitalize;">${fn:replace(page,'-',' ')}</span> </h1>
            <jsp:include page="engine.jsp" />
        </div>
    </div>
    <!--Engine Area Ends Here-->
    
    <div class="about-airlines static-content">
        ${pageResponse.contentData}


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

    <!--Deals Section Starts-->
	<c:if test="${dealResponse.response.size() > 0}">
    <div class="best-deals cityapi-section">
        <div class="dealHeadScn">
            <p class="dealHeadScn-heading">Think Ahead and Plan Your Next Trip</p>
        </div>
        
        <div class="deals-section">
            
            <!-- <hr> -->
            <div class="deal-blocks">
			
                <c:forEach var="deal" items="${dealResponse.response}" end="7">
			<fmt:parseDate value = "${deal.depDate}" var = "parsedDepDate" pattern = "yyyy-MM-dd" />
			<fmt:parseDate value = "${deal.retDate}" var = "parsedRetDate" pattern = "yyyy-MM-dd" />
			<fmt:formatDate pattern = "MM/dd/yyyy" value = "${parsedDepDate}" var="searchDepDate" />
			<fmt:formatDate pattern = "MM/dd/yyyy" value = "${parsedRetDate}" var="searchRetDate" />
                <div class="deal-item" onclick="dealclick('${deal.froCity}','${deal.toCity}','${searchDepDate}','${searchRetDate}');">
                    <picture>
                        <source srcset="/resources/images/chicago.webp" type="image/webp">
                        <img src="/resources/images/chicago.jpg" alt="chicago" width="20" height="20" loading="lazy" decoding="async">
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

			
	<jsp:include page="customer-review.jsp" />
			
	<!--Footer Starts-->
    <jsp:include page="footer.jsp" />
</body>
<script src="/resources/scripts/script.js"></script>

<script>

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