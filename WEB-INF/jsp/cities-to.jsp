<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <!DOCTYPE html>
            <html lang="en">
            <head>
                <title>${pageResponse.metaTitle}</title>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <meta name="description" content="${pageResponse.metaDesc}">
                <meta name="keyword" content="${pageResponse.metaKeyword}">
                <link rel="icon" href="/resources/images/favicon.png">
                <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="preload"
                    as="font" crossorigin="anonymous">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
                <link rel="stylesheet" href="/resources/css/default.css?v=2.7">
                
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"
                    crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js"
                    crossorigin="anonymous"></script>

                <style>
                    .engine-bg {
                        background-image: url('/resources/images/${fn:toLowerCase(pageResponse.pageType)}/${pageResponse.pageValue}.jpg'),
                        url('/resources/images/enginebg.webp');
                        background-repeat: no-repeat;
                    }
                </style>
                <jsp:include page="tag-manager-head.jsp" />
            </head>

            <body>
                <jsp:include page="tag-manager-body.jsp" />
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
                </div>

                <!--Deals Section Starts-->
                <c:if test="${dealResponse.response.size() > 0}">
                    <div class="best-deals cityapi-section">
                        <div class="dealHeadScn">
                            <p class="dealHeadScn-heading">Think Ahead and Plan Your Next Trip</p>
                        </div>
                        <div class="deals-section cityapi-section">

                            <div class="deal-blocks">

                                <c:forEach var="deal" items="${dealResponse.response}" end="7">
                                    <fmt:parseDate value="${deal.depDate}" var="parsedDepDate" pattern="yyyy-MM-dd" />
                                    <fmt:parseDate value="${deal.retDate}" var="parsedRetDate" pattern="yyyy-MM-dd" />
                                    <fmt:formatDate pattern="MM/dd/yyyy" value="${parsedDepDate}" var="searchDepDate" />
                                    <fmt:formatDate pattern="MM/dd/yyyy" value="${parsedRetDate}" var="searchRetDate" />
                                    <div class="deal-item"
                                        onclick="dealclick('${deal.froCity}','${deal.toCity}','${searchDepDate}','${searchRetDate}');">
                                        <picture>
                                            <source srcset="/resources/images/chicago.webp" type="image/webp">
                                            <img src="/resources/images/chicago.jpg" alt="chicago" width="20" height="20" loading="lazy" decoding="async">
                                          </picture>
                                        <div class="deal-text">
                                            <span class="cityname">${deal.toCityName}</span>
                                            <span class="cityfromto">${deal.froCity} <i class="fa fa-arrows-h"></i>
                                                ${deal.toCity}</span>

                                            <span class="datefromto">
                                                <fmt:formatDate pattern="MMM dd" value="${parsedDepDate}" /> &#8208;
                                                <fmt:formatDate pattern="MMM dd" value="${parsedRetDate}" />
                                            </span>
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

            </html>