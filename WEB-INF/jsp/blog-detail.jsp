<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>${blogResponse.title}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="${blogResponse.description}">
    <meta name="keyword" content="${blogResponse.keywords}">
    <link rel="icon" href="/resources/images/favicon.png">
    <link rel="canonical" href="https://www.tripsfares.com/blogs/${blogResponse.titleUrl}">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="preload" as="font" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preload" fetchpriority="high" as="image" href="/resources/images//blog-body.webp" type="image/webp">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
    <link rel="stylesheet" href="/resources/css/default.css?v=4.2">
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
    <jsp:include page="tag-manager-head.jsp" /></head>
<body>
    <jsp:include page="tag-manager-body.jsp" />
    <!--Header Area Starts Here-->
    <jsp:include page="header.jsp" />
    <div class="screen-overlay" id="screenoverlay" onclick="hidesidenav()"></div>
    <div class="blog-head">
        <span>Tripsfares Blog</span>
    </div>
	<input type="hidden" id="pageUrl" value="${blogResponse.titleUrl}" />
    <div style="width:100%;background-color:#ffffff;">
    <div class="blog-detail-container">
        <div class="blog-detail static-content">
            <!-- <div class="bdmtxt">
                ${blogResponse.title}
            </div> -->
            <!-- <div class="bdimg">
                <img src="${blogResponse.imgUrl}">
            </div> -->
           
            <div class="bdtxt">
                ${blogResponse.content}
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
            
            <!-- <div class="bdtxt bdtxt-flex">
                <div class="bdtxt-left">
                    ${blogResponse.content}
                </div>

                    <div class="bdtxt-right">
                    <div class="recent-blogs">
                        <p class="subheadings">Popular Posts</p>
                        <ul>
                            <li><a href="#">GuÃ&shy;a de viaje de Colombia</a></li>
                            <li><a href="#">GuÃ&shy;a de viaje de Colombia</a></li>
                            <li><a href="#">GuÃ&shy;a de viaje de Colombia</a></li>
                            <li><a href="#">GuÃ&shy;a de viaje de Colombia</a></li>
                            <li><a href="#">GuÃ&shy;a de viaje de Colombia</a></li>
                        </ul>
                    </div>
                </div>
            </div> -->
            
        </div>
    </div>
    </div>
    <jsp:include page="customer-review.jsp" />

    <div class="blog-page-footer">
     <jsp:include page="footer.jsp" />
    </div>
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
</body>

</html>