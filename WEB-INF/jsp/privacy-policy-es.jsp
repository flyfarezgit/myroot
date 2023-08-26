<%@ page pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <title>política de privacidad</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="/resources/images/favicon.png">
        <link rel="canonical" href="https://www.tripsfares.com/es/politica-de-privacidad">
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="preload" as="font"  crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <link rel="preload" fetchpriority="high" as="image" href="/resources/images//blog-body.webp" type="image/webp">
        <link rel="stylesheet" href="/resources/css/default.css?v=2.7">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                var urlPage = window.location.pathname; console.log(urlPage);
                urlPage = urlPage.split('/');
                //urlPage = urlPage[urlPage.length - 1];

                var langSecnt = $("#currencyname_").text();
                // if(urlPage == 'USD'){
                //     $(".languageEnglish").show()
                //     $(".languageSpanish").hide()
                // }
                if (urlPage[1] == 'es') {
                    $(".languageEnglish").hide()
                    $(".languageSpanish").show()
                } else {
                    $(".languageEnglish").show()
                    $(".languageSpanish").hide()
                }
                console.log(urlPage)
            })
        </script>
        <jsp:include page="tag-manager-head.jsp" />
    </head>

    <body>
        <jsp:include page="tag-manager-body.jsp" /><!--Header Area Starts Here-->
        <jsp:include page="header.jsp" />
        <div class="screen-overlay" id="screenoverlay" onclick="hidesidenav()"></div>
        <!--Header Ends Here-->
        <div class="blog-head">
            <h1>política de privacidad</h1>
        </div>
        <div style="background-color:#ffffff">
            <div class="aboutus static-content">
                <p><strong>DECLARACIÓN DE POLÍTICA DE PRIVACIDAD</strong></p>

                <p><b>Introducción</b>: Tripsfares.com está firmemente comprometido a proteger su privacidad En
                    Tripsfares.com ("Nosotros", "Nos", o "Nuestro") valoramos su confianza. Es por eso que nos gustaría
                    que usted sepa qué información sobre usted puede ser recogida cuando usted utiliza nuestros sitios.
                    También queremos asegurarnos de que comprende cómo se protege su información y cómo puede
                    utilizarse. Lea esta política de privacidad ("Política de privacidad") para conocer nuestras
                    prácticas de recopilación y difusión de información en relación con los sitios. También describe las
                    opciones de que dispone en relación con el uso que hacemos de sus datos de identificación personal y
                    cómo puede acceder a ellos y actualizarlos. Al revisar nuestra Política de Privacidad, aceptar
                    nuestros Términos y Condiciones y/o visitar cualquier parte del Sitio, usted acepta las prácticas
                    aquí descritas. Si no está de acuerdo con esta Política de Privacidad, no debe utilizar los Sitios.
                    Si tiene preguntas o dudas sobre nuestra Política de Privacidad, póngase en contacto con nuestro
                    servicio de atención al cliente en relations@tripsfares.com</p>

                <p><strong>Cookies y tecnologías de seguimiento</strong></p>

                <p>Las cookies son archivos de datos que pueden almacenarse en el disco duro de su ordenador, si su
                    navegador web lo permite. Nuestros Sitios y aplicaciones móviles utilizan tecnologías de seguimiento
                    como cookies, balizas web, etiquetas y scripts para los siguientes fines: Para ayudarnos a
                    reconocerle como visitante anterior en los Sitios. Por ejemplo, si usted tiene una cuenta con com,
                    utilizamos cookies para almacenar su información de inicio de sesión, por lo que no tendrá que
                    introducir sus credenciales cada vez que su navegador nos visita para iniciar sesión en su cuenta.
                    Para permitirnos personalizar su experiencia de usuario con nosotros, así como para ayudar a
                    personalizar el contenido publicitario que se le ofrece en otros sitios de Internet. Por ejemplo,
                    cuando accede a una página de nuestros Sitios, nosotros, nuestros socios de marketing o nuestros
                    proveedores de servicios instalamos automáticamente una cookie para reconocer su navegador cuando
                    visita otros sitios web y presentarle información y contenidos publicitarios basados en sus
                    intereses aparentes.</p>

                <p><strong>Seguridad</strong></p>

                <p>La seguridad de sus datos personales es importante para nosotros. Cuando introduce información
                    confidencial (como el número de tarjeta de crédito, la fecha de nacimiento y/o datos de
                    geolocalización) en nuestros formularios de registro o pedido, codificamos esa información
                    utilizando tecnología de capa de conexión segura (SSL). Para saber más sobre SSL, siga este enlace
                    Todos nuestros servidores seguros utilizan una clave de cifrado de alto nivel (AES con clave secreta
                    de 128 y 256 bits). Aunque el modo seguro proporciona encriptación SSL, las páginas tardarán más en
                    descargarse. La mayoría de los usuarios optan por registrarse o iniciar sesión utilizando el modo
                    estándar para conseguir un tiempo de respuesta más rápido. Si recibe advertencias del navegador al
                    pasar de páginas en modo seguro a páginas sin SSL, lo más probable es que se trate de un aviso de
                    cambio de servidor.</p>

                <p><strong>Visitar nuestro sitio web desde fuera de Estados Unidos</strong></p>

                <p>Si visita nuestros Sitios desde fuera de Estados Unidos, tenga en cuenta que sus datos de
                    identificación personal y otra información sobre usted puede ser transferida, almacenada y procesada
                    en Estados Unidos, donde se encuentran nuestros servidores y funciona nuestra base de datos central.
                    Es posible que las leyes de protección de datos y otras leyes de Estados Unidos y otros países no
                    sean tan exhaustivas como las de su país, pero tenga la seguridad de que tomamos medidas para
                    garantizar la protección de su privacidad. Al utilizar nuestros Sitios, usted entiende que su
                    información puede ser transferida a nuestras instalaciones y a aquellos terceros con los que la
                    compartimos tal y como se describe en esta Política.</p>

                <p><strong>Acceso a su PID</strong></p>

                <p>Si sus datos de identificación personal cambian, o si ya no desea utilizar nuestros servicios, puede
                    corregirlos, actualizarlos, eliminarlos o desactivarlos enviando un correo electrónico a nuestro
                    Servicio de Atención al Cliente a la dirección relations@tripsfares.com o poniéndose en contacto
                    con nosotros por teléfono o correo postal a través de la información de contacto que figura a
                    continuación. Conservaremos su información (incluidos los datos de geolocalización) mientras su
                    cuenta esté activa o mientras sea necesario para prestarle servicios. Si desea cancelar su cuenta o
                    solicitar que dejemos de utilizar sus datos de identificación personal para prestarle servicios,
                    póngase en contacto con nosotros en relations@tripsfares.com. Conservaremos y utilizaremos sus
                    datos de identificación personal según sea necesario para cumplir con nuestras obligaciones legales,
                    resolver disputas y hacer cumplir nuestros acuerdos.</p>

                <p><strong>Foros públicos</strong></p>

                <p>Nuestros Sitios ofrecen blogs o foros comunitarios de acceso público. Debe tener en cuenta que
                    cualquier información que proporcione en estas áreas puede ser leída, recopilada y utilizada por
                    otras personas que accedan a ellas. Para solicitar la eliminación de sus datos de identificación
                    personal de nuestro blog o foro comunitario, póngase en contacto con nosotros en. En algunos casos,
                    es posible que no podamos eliminar sus datos de identificación personal, en cuyo caso le
                    informaremos si no podemos hacerlo y por qué.</p>

                <p><strong>Protección de la intimidad de los menores</strong></p>

                <p>Tripsfares.com entiende la importancia de proteger la privacidad de los niños en el mundo
                    interactivo en línea. Los Sitios no están diseñados para, o dirigidos intencionalmente a, los
                    menores de 13 años. No es nuestra política para recopilar o mantener intencionalmente información de
                    cualquier persona menor de 13 años.</p>

                <p><strong>Exclusión voluntaria</strong></p>

                <p>Cuando le pedimos esta información, le ofrecemos la posibilidad de "excluir" el uso de sus datos
                    personales para determinados fines. Por ejemplo, si compra un producto de viaje, pero no desea
                    recibir más material publicitario nuestro, puede indicarlo en nuestro formulario de pedido. No
                    obstante, seguiremos utilizando sus datos de identificación personal para proporcionarle los
                    servicios y productos que haya adquirido a través de nuestro Sitio, incluido, entre otros, el envío
                    de comunicaciones o vales de reserva y confirmación. Si no desea seguir recibiendo nuestros
                    boletines y comunicaciones promocionales, puede optar por no recibirlos siguiendo las instrucciones
                    incluidas en cada boletín o comunicación, o poniéndose en contacto con nosotros en la dirección
                    indicada más abajo.</p>

                <p><strong>Encuesta</strong></p>

                <p>Podemos utilizar un proveedor de servicios externo para realizar encuestas, sorteos y concursos.
                    Dicha empresa tendrá prohibido utilizar sus datos de identificación personal para cualquier otro fin
                    que no sea la realización de dicha encuesta, sorteo o concurso. Salvo en los casos permitidos por la
                    presente Política de Privacidad, no compartiremos con terceros los datos de identificación personal
                    que nos proporcione a través de una encuesta, a menos que se lo notifiquemos previamente y usted
                    elija.</p>

                <p><strong>Widgets de redes sociales</strong></p>

                <p>Nuestros sitios incluyen funciones de redes sociales, como el botón "Me gusta" de Facebook y widgets,
                    como el botón "Compartir" o miniprogramas interactivos que se ejecutan en nuestro sitio. Estas
                    funciones pueden recopilar su dirección IP, la página que está visitando en nuestro sitio y pueden
                    establecer una cookie para permitir que la función funcione correctamente. Las funciones y los
                    widgets de las redes sociales son alojados por terceros o directamente en nuestro sitio. Sus
                    interacciones con estas funciones se rigen por la política de privacidad de la empresa que las
                    proporciona</p>

                <p><strong>Cancelar suscripción</strong></p>

                <p>
                    Nosotros en Tripsfares.com le ofrecemos la opción de "darse de baja", mediante el cual usted puede
                    optar por no recibir ninguna promoción, materiales de marketing adicionales, boletín de noticias o
                    cualquier tipo de comunicación adicional de Tripsfares.com. Para darse de baja por favor haga clic
                    en "darse de baja" en el pie de página de este sitio web, y usted no recibiría ningún tipo de
                    comunicación de Tripsfares.com Visítenos en www.tripsfares.com para más información, estamos
                    disponibles 24x7/365 días o puede llamarnos a nuestro número abajo mencionado para más información.
                </p>
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

    </html>