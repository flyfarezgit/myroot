<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Contacta con nosotros</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="/resources/images/favicon.png">
	<link rel="canonical" href="https://www.tripsfares.com/es/contactenos">
	<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="preload" as="font" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="preload" fetchpriority="high" as="image" href="/resources/images//blog-body.webp" type="image/webp">
	<link rel="stylesheet" href="/resources/css/default.css?v=2.7">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js" crossorigin="anonymous"></script>
    <script>
$(document).ready(function(){
    var urlPage = window.location.pathname; console.log(urlPage);
    urlPage = urlPage.split('/');
    //urlPage = urlPage[urlPage.length - 1];
    
    var langSecnt = $("#currencyname_").text();
    // if(urlPage == 'USD'){
    //     $(".languageEnglish").show()
    //     $(".languageSpanish").hide()
    // }
    if(urlPage[1] == 'es'){
        $(".languageEnglish").hide()
        $(".languageSpanish").show()
    }else{
        $(".languageEnglish").show()
        $(".languageSpanish").hide()
    }
    console.log(urlPage)
})
</script>
    
<jsp:include page="tag-manager-head.jsp" /></head>
<body>
   <jsp:include page="tag-manager-body.jsp" /> <!--Header Area Starts Here-->
   <jsp:include page="header.jsp" />
    <div class="screen-overlay" id="screenoverlay" onclick="hidesidenav()"></div>
    <!--Header Ends Here-->
    <div class="blog-head">
        <h1>Contacta con nosotros </h1>
    </div>
    <div style="background-color:#ffffff;">
    <div class="contactus">
        <div class="contact-details">
			<p class="contact-sec-heading">Detalles de contacto</p>
			<div class="contact-details-inner">
				<div class="info-contact-details">
					<div class="contact-icon"><i class="fa fa-envelope" aria-hidden="true"></i> &nbsp;</div>
					<div class="contact-icon-text">
						<strong>Correo electr&#243;nico:</strong>
						<a href="mailto:relations@Tripsfares.com">relations@Tripsfares.com</a>
					</div>
				</div>

				<div class="info-contact-details">
					<div class="contact-icon"><i class="fa fa-phone" aria-hidden="true"></i> &nbsp;</div>
					<div class="contact-icon-text">
						<strong>Servicio al consumidor:</strong>
						<a href="tel:+1-800-404-0025">+1-800-404-0025</a>
					</div>
				</div>

				<!-- <div class="info-contact-details">
					<div class="contact-icon"><i class="fa fa-map-marker" aria-hidden="true"></i> &nbsp;</div>
					<div class="contact-icon-text">
						<strong>Consumer Service:</strong>
						<address>2622 NW 75th Ave Miami, Florida, 33122 </address>
					</div>
				</div> -->
			</div>
        </div>
       
		<div class="contact-form">
			<p class="contact-sec-heading">Formulario de contacto</p>
            <form:form modelAttribute="contactForm" action="/es/contactenos/entregar" methodVenta="post">
                <div class="flname">
                    <div>
						<label>Nombre de pila<span class="star-requ">*</span></label>
						<form:input path="firstName" type="text" placeholder="Ingrese el nombre" class="textOnly inputfieldset" />
					</div>
                    <div>
						<label>Apellido<span class="star-requ">*</span></label>
						<form:input path="lastName" type="text" placeholder="Ingrese el Apellido" class="textOnly inputfieldset" />
					</div>
                </div>

                <div class="phonemail">
                    <div>
						<label>Telefono no.<span class="star-requ">*</span></label>
						<form:input path="phone" type="text" placeholder="Ingrese el número de teléfono" class="numbersOnly inputfieldset" />
					</div>
                    <div>
						<label>Correo electrónico<span class="star-requ">*</span></label>
						<form:input path="email" type="text" placeholder="Ingrese el ID de correo electrónico" class="inputfieldset"/>
					</div>
                </div>

                <div class="comment">
                    <label>Tu comentario<span class="star-requ">*</span></label>
                    <form:textarea path="message" class="inputfieldset" aria-label="comentario"></form:textarea>
                </div>
                
                <div class="row">
                     <div class="capcha-code-sec">
                     	<span class="capcha capcha-code">ABCD12345</span> 
                     	<span class="refresh-btn capcha-refresh-btn"><img src="/resources/images/refresh-icon.png" height="35" width="35" alt="icono de actualización"/></span>
                     

						<div class="capcha-input-field">
							<form:input path="capchaCode" text="text" placeholder="Ingrese el código" id="capchaCode" class="inputfieldset"/>
						</div>
					</div>
                </div>
                
                <div class="submit-form">
                    <button id="subID" type="submit">
                    	<div class="loader"><span>Loading...</span><i></i></div>
                    	<span>Entregar</span>
                    </button>
                </div>
                
            </form:form>
			<div id="reviewSuccess"></div>
        </div>
    </div>
    </div>
    <!--Footer Starts-->
    <div class="languageEnglish">
   <jsp:include page="footer.jsp" />
   </div>
   <div class="languageSpanish">
   <jsp:include page="spanishfooter.jsp" />
   </div>
   <script src="/resources/scripts/script.js?8-dec-2021"></script>
</body>

<script>

$(document).ready(function(){
	
	refreshCapcha();
	
	$(".refresh-btn").click(function(){
		refreshCapcha();
	});
});

$(document).ready(function(){
	
	$.validator.addMethod("email", function(value, element) {  
    	return this.optional(element) || /^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}$/i.test(value);  
    }, "Please provide a valid email address");
    
    $.validator.addMethod("capchaChk", function(value, element) {  
    	 if($(".capcha").html()!=value){
    	 	return false;
    	 }
    	 else{
    	 	return true;
    	 }
    }, "Please enter correct capcha");
    
    
});

$('.numbersOnly').keyup(function () {
	if (this.value != this.value.replace(/[^0-9\.]/g, '')) {
	   this.value = this.value.replace(/[^0-9\.]/g, '');
	}
});

$('.textOnly').keyup(function () {
	if (this.value != this.value.replace(/[^a-zA-Z ]+/g, '')) {
    	this.value = this.value.replace(/[^a-zA-Z ]+/g, '');
    }
});		
    		
$("#contactForm").validate({
		 rules:{
			 firstName : {
				 required : true
			 },
			 lastName :{
				 required : true
			 },
			 email :{
				 required : true,
				 email : true
			 },
			 phone :{
				 required : true,
				 minlength:10,
                 maxlength: 15,
                 number: true
			 },
			 message :{
				 required : true
			 },
			 capchaCode:{
			 	required : true,
			 	capchaChk: true
			 }
		 },
		 
		 errorPlacement: function(error, element) {  
		 	if($(element).attr("name") == "firstName" || $(element).attr("name") == "lastName" || $(element).attr("name") == "phone" || $(element).attr("name") == "email" || $(element).attr("name") == "message" 
		 	|| $(element).attr("name") == "capchaCode"){
		 		error.insertAfter(element);
		 	}
		 },
		 messages: {
		 	'firstName': { required: 'Ingrese el nombre'},
            'lastName': { required: 'Ingrese el apellido'},
            'email': { required: 'Ingrese su ID de correo electrónico'},
            'phone': { required: 'Ingrese el número de teléfono'},
            'message': { required: 'Por favor ingrese el mensaje'},
            'capchaCode':{ 
            				required: 'Por favor ingrese Captcha', 
            				capchaChk:'Por favor ingrese el Captcha correcto'
            			}
		 },
		 highlight: function (element) {
         	$(element).closest('.inputfieldset').removeClass('valid').addClass('error');
			//$(element).removeClass('valid').addClass('error');
		},
		unhighlight: function (element) {
            $(element).closest('.inputfieldset').removeClass('error').addClass('valid');
            //$(element).removeClass('error').addClass('valid');
        },
		submitHandler: function(form) {
		 
					var data = {
								firstName: $("#firstName").val(), 
								lastName: $("#lastName").val(),
								email : $("#email").val(), 
								phone : $("#phone").val(), 
								message : $("#message").val(),
								capchaCode: $("#capchaCode").val()
							}
							
							$.ajax({
								url: '/es/contactenos/entregar',
								type: 'post',
								contentType: 'application/json; charset=utf-8',
								data: JSON.stringify(data),
								dataType: "text",
								beforeSend: function() {
        							$(".loader").show().addClass('activeLoader');
        							$("#subID").hide();
    							},
								success: function(response) {
									form.reset();
									$(".loader").hide().removeClass('activeLoader');
									$("#subID").show();
									refreshCapcha();
									if(response == 'true'){
										$("#reviewSuccess").text("Consulta de contacto enviada con éxito!").css("color", "green");
										
										setTimeout(hideDiv, 5000);
									}
									else{
										$("#reviewSuccess").text("Algún problema técnico Intente más tarde!").css("color", "red");	
									}
								}
							});
							
				
		  }
	 })
	 
	 function hideDiv(){
	 	$("#reviewSuccess").hide();
	 }
	 
	 function refreshCapcha(){
	 	
	 	setTimeout(function (){
	 		$(".capcha").html(randomString(6));
	 	}, 300);
	 }
	 
	 function randomString(length){
	 	var chars='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZacdefghijklmnopqrstuvwxyz'.split('');
	 	
	 	if(!length){
	 		length=Math.floor(Math.random() * chars.length);
	 	}
	 	
	 	var str='';
	 	for(var i=0; i<length; i++){
	 		str+=chars[Math.floor(Math.random() * chars.length)];
	 	}
	 	return str;
	 }
</script> 
</html>