<%@ page pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">
    <head>
        <title>Términos y condiciones</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="/resources/images/favicon.png">
        <link rel="canonical" href="https://www.tripsfares.com/es/terminos-y-condiciones">
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="preload" as="font"
            crossorigin="anonymous">
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
        <jsp:include page="tag-manager-body.jsp" /> <!--Header Area Starts Here-->
        <jsp:include page="header.jsp" />
        <div class="screen-overlay" id="screenoverlay" onclick="hidesidenav()"></div>
        <!--Header Ends Here-->
        <div class="blog-head">
            <h1>Términos y condiciones</h1>
        </div>
        <div style="background-color:#ffffff;">
            <div class="aboutus static-content">
                <p><b>Introducción</b>: Bienvenido al sitio web tripsfares.com ("tripsfares.com", "nosotros",
                    "nuestro", "nos") (colectivamente, el "Sitio"). El uso del Sitio se rige por los siguientes términos
                    y condiciones. Al utilizar el Sitio, usted acepta estos términos y condiciones. Si no está de
                    acuerdo con alguna parte de estos términos y condiciones, no debe utilizar el Sitio. Nos reservamos
                    el derecho a modificar estas condiciones en cualquier momento. Todos los términos modificados
                    entrarán automáticamente en vigor cuando se actualicen estos términos y condiciones. Su uso
                    continuado del Sitio tras la publicación de cambios en los Términos y Condiciones significará que
                    acepta dichos cambios. Por favor, vuelva a esta página periódicamente para revisar cualquier cambio.
                </p>

                <p>GARANTÍA DE COMPRA 100% SEGURA Los servidores de Tripsfares.com utilizan Secure Sockets Layer (SSL),
                    una tecnología de encriptación que funciona con los navegadores Microsoft Internet Explorer,
                    Mozilla, Safari, Netscape y AOL, de modo que sólo Tripsfares.com puede leer la información personal
                    del comprador. Le garantizamos que todas las compras que realice en el sitio web Tripsfares.com
                    serán 100% seguras. Aunque nunca tenemos la intención de tener un incidente de fraude de tarjeta de
                    crédito, si se hacen cargos no autorizados a su tarjeta de crédito como resultado de hacer negocios
                    con Tripsfares.com, usted no pagará nada. Comprar en línea en Tripsfares.com es estadísticamente
                    más seguro que utilizar su tarjeta de crédito en un restaurante o en unos grandes almacenes. Los
                    expertos técnicos señalan que las compras en línea sin intervención humana son mucho más seguras que
                    las transacciones tradicionales con tarjeta de crédito porque la información se codifica
                    inmediatamente en un mensaje cifrado que sólo puede descifrar un ordenador autorizado. Usted se
                    unirá a millones de clientes que han comprado con seguridad por Internet. Estamos seguros de que
                    después de comprar en línea con éxito en Tripsfares.com; usted estará en camino de apreciar la
                    comodidad y la seguridad de comprar desde casa. La Ley de Facturación Justa del Crédito establece
                    que el proveedor de su tarjeta de crédito no puede hacerle pagar más de 50$ de cargos fraudulentos.
                    Si el proveedor de su tarjeta de crédito te hace pagar alguno de los 50$ que puede cargar,
                    Tripsfares.com cubrirá el gasto, hasta la totalidad de los 50$ si el uso no autorizado de su
                    tarjeta de crédito se produjo sin culpa por su parte por compras realizadas en el sitio web
                    Tripsfares.com mientras utilizabas el servidor seguro de Tripsfares.com.</p>
                <p>
                    Si se produce tal evento, usted debe notificar a su proveedor de tarjeta de crédito. Descargo de
                    responsabilidad general Tripsfares.com no será responsable por el fracaso de los proveedores de
                    servicios de viajes, incluyendo pero no limitado a las compañías aéreas, hoteles, líneas de
                    cruceros, ferrocarriles, agencias de alquiler de coches, operadores turísticos y consolidadores para
                    llevar a cabo los servicios ofrecidos por dichos proveedores. Tripsfares.com, en la prestación de
                    servicios de gestión de viajes, no garantiza ni asegura los servicios a ser prestados por cualquier
                    proveedor, la situación financiera de dichos proveedores o el reembolso a usted de cualquier pérdida
                    experimentada como resultado de la situación financiera de dicho proveedor. En el caso de que un
                    proveedor incumpla antes de prestarle el servicio para el que se ha realizado el pago, el único
                    recurso para el reembolso será con el proveedor incumplidor, del seguro que cubra dichos
                    incumplimientos si los hubiere o de otro tercero responsable a menos que haya sido causado por
                    Tripsfares.com. En aquellas situaciones en las que un proveedor incumple antes de la prestación de
                    servicios que usted puede perseguir cualquier recurso contra el proveedor para el reembolso, que
                    puede ser permitido por la ley o estatuto. Tripsfares.com garantiza que proporciona los más altos
                    estándares de servicio en el comercio y utilizará el cuidado apropiado en la selección de
                    proveedores con el fin de protegerle de tal incumplimiento. Salvo que se indique expresamente en
                    este documento, Tripsfares.com no asume ninguna responsabilidad por las acciones relacionadas con
                    los servicios de viaje fuera del control de Tripsfares.com o sus empleados.
                </p>
                <p>Tripsfares.com no se hace responsable de cualquier acto, error, omisión, lesión, pérdida, accidente,
                    daño, retraso, incumplimiento, irregularidad, o cualquier consecuencia de los mismos, que puede ser
                    ocasionada por negligencia, o incumplimiento o cualquier otro acto o inacción de cualquier proveedor
                    de productos de viaje. Tripsfares.com no se hace responsable de cualquier fluctuación en el precio
                    o cambio en el horario o el equipo o alojamiento para cualquier servicio de viaje, que se produce
                    después del pago de dicho servicio. Tripsfares.com actúa como una oficina de servicios que
                    proporciona un servicio de valor añadido a las agencias de viajes minoristas y a los consumidores.
                    Tripsfares.com no tiene ningún control y no asume ninguna responsabilidad por las acciones de los
                    proveedores de los que obtiene los productos de viaje. Una vez que los billetes han sido emitidos
                    puede haber una penalización en caso de reembolso. No tenemos control sobre los precios impresos en
                    los billetes, aunque algunos billetes pueden llevar impreso BT (tarifa a granel), otros pueden
                    llevar impreso un valor específico, que puede ser diferente (inferior o superior) a la tarifa
                    cobrada. Los descuentos ofrecidos pueden variar en función de una serie de factores, entre los que
                    se incluyen las aerolíneas utilizadas, la clase de servicio, el destino, la época del año (temporada
                    baja, media o alta), la antelación con la que se haya avisado, el cumplimiento de los requisitos de
                    estancia mínima y la carga del vuelo. Tripsfares.com no garantiza, avala, valida o promociona los
                    productos y servicios de otros anunciantes que se anuncian en este sitio web.</p>

                <p><strong>Política de Excepción por Compasión (PEC)</strong></p>

                <p>Los clientes que presten servicio militar en EE.UU., los ciudadanos de la tercera edad, los clientes
                    de entre 16 y 25 años o afectados por un duelo, los clientes con discapacidades o enfermedades
                    terminales pueden recibir un descuento en las tasas de cancelación, reembolso o cambio de billete en
                    virtud de esta política, tal y como se describe a continuación:

                </p>
              
                <div class="table-responsive ">
                    <table class="table">
                        <thead>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p><strong>Categoría</strong></p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p><strong>Condiciones de admisión</strong></p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p><strong>Descuentos en las comisiones de servicio previstas en la política
                                            PEC</strong></p>
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Militares estadounidenses (familia directa: hijos, hermanos y padres)</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Dirección de correo electrónico militar</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>100% de descuento en los gastos de cancelación, reembolso o cambio de billete de
                                        Tripsfares.com</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Clientes directamente afectados por catástrofes naturales.</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Las catástrofes naturales se consideran grandes acontecimientos adversos
                                        derivados de los procesos naturales de la Tierra (por ejemplo, terremotos,
                                        tsunamis, etc.).</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>100% de descuento en los gastos de cancelación, reembolso o cambio de billete de
                                        Tripsfares.com</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Duelo (familia directa: hijos, hermanos, padres y abuelos)</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Se requiere una carta de la funeraria</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>100% de descuento en los gastos de cancelación, reembolso o cambio de billete de
                                        Tripsfares.com</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Jubilados (mayores de 64 años)</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Permiso de conducir o documento de identidad con fotografía expedido por el
                                        Estado</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>100% de descuento en los gastos de cancelación y reembolso de Tripsfares.com 50%
                                        de descuento en los gastos de cambio de billete de Tripsfares.com.</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Jóvenes (de 16 a 25 años)</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Permiso de conducir o documento de identidad con fotografía expedido por el
                                        Estado</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>25% de descuento en los gastos de cambio de billete de Tripsfares.com.</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Clientes con discapacidad</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Nota del médico</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>100% de descuento en la cancelación de Tripsfares.com, 50% de descuento en los
                                        gastos de reembolso o cambio de billete de Tripsfares.com.</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Clientes con enfermedad terminal (Familia inmediata: hijos, hermanos y padres)
                                    </p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Nota del médico</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>100% de descuento en los gastos de cancelación, reembolso o cambio de billete de
                                        Tripsfares.com.</p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p>Es posible que los clientes que reúnan los requisitos sigan teniendo que asumir las penalizaciones
                    impuestas por la aerolínea y/u otro proveedor, así como cualquier diferencia de tarifa. Deberá
                    demostrar que cumple los requisitos aportando la documentación requerida, que determinaremos a
                    nuestra entera discreción. Seguimos sin poder garantizar los servicios si las políticas del
                    proveedor no permiten cancelaciones, cambios de billetes y/o reembolsos. Para poder acogerse a la
                    PEC deberá llamar al servicio de atención al cliente de Tripsfares.com y solicitar una exención de
                    la PEC.</p>

                    <p><strong>Limitaciones de responsabilidad/Disclaimer</strong></p>

                <p>La información contenida en el Sitio (incluyendo texto, gráficos, enlaces u otro material) se
                    proporciona "tal cual" y "donde esté disponible". Tripsfares.com no hace ninguna representación o
                    garantía, expresa o implícita, a usted u otra persona o entidad en cuanto a la exactitud,
                    resultados, puntualidad, integridad, comerciabilidad, idoneidad para cualquier propósito en
                    particular con respecto al Sitio o cualquier material relacionado, productos, servicios o
                    información. Bajo ninguna circunstancia, incluyendo, pero no limitado a, negligencia, nosotros, y/o
                    nuestros proveedores o distribuidores, seremos responsables de cualquier daño o virus que pueda
                    infectar su equipo informático u otra propiedad a causa de su acceso, uso o navegación en el Sitio,
                    o su descarga de cualquier material, datos, texto, imágenes, vídeo, audio u otra información del
                    Sitio. En ningún caso nosotros, y/o nuestros proveedores o distribuidores, seremos responsables de
                    cualquier lesión, pérdida, reclamación, daño o cualquier daño especial, punitivo, indirecto,
                    incidental o consecuente de cualquier tipo (incluyendo, pero no limitado a, pérdida de beneficios o
                    pérdida de ahorros), ya sea basado en contrato, agravio, responsabilidad estricta, o de otra manera,
                    que surja de o esté relacionado de alguna manera con el uso, o la imposibilidad de usar, el Sitio o
                    los servicios o materiales en el Sitio, incluso si se advirtió de la posibilidad de tales daños. En
                    ningún caso nuestra responsabilidad agregada, o la de nuestros proveedores o distribuidores,
                    excederá los cargos totales establecidos en el itinerario que dio lugar a dicha responsabilidad.
                </p>
                <p>Cualquier reclamación o causa de acción que surja de, o esté relacionada con, su acceso y uso de, o
                    la compra de productos y/o servicios del Sitio debe presentarse en el plazo de un (1) año a partir
                    de la fecha en que surgió o se devengó dicha reclamación o acción o se completó la compra. Es
                    posible que la legislación aplicable no permita la limitación o exclusión de responsabilidad por
                    daños incidentales o consecuentes, por lo que es posible que la limitación o exclusión anterior no
                    se aplique en su caso. El uso que usted haga del Sitio correrá por su cuenta y riesgo. Actuamos como
                    intermediarios o agentes de proveedores de productos y/o servicios relacionados con viajes al
                    promocionar, vender o aceptar reservas de dichos productos y/o servicios (como transporte aéreo y
                    terrestre, alojamiento en hoteles, comidas, excursiones, cruceros, seguros de viaje, etc.).</p>

                <p><strong>Indemnización</strong></p>

                <p>Todos los usuarios se comprometen a proteger e indemnizar a Tripsfares. com, sus afiliados, y / o
                    sus respectivos proveedores y cualquiera de sus funcionarios, directores, empleados y agentes de y
                    contra cualquier reclamación, causas de acción, demandas, recuperaciones, pérdidas, daños, multas,
                    sanciones u otros costos o gastos de cualquier tipo o naturaleza, incluyendo pero no limitado a
                    honorarios legales y contables razonables, interpuestos por: usted o en su nombre en exceso de la
                    responsabilidad descrita anteriormente; o por terceros como resultado de su incumplimiento de estos
                    Términos y Condiciones, avisos o documentos referenciados en el Sitio; su violación de cualquier ley
                    o los derechos de un tercero; o su uso del Sitio.</p>

                <p><strong>Liberar</strong></p>

                <p>Si usted tiene una disputa con los proveedores de servicios de viajes, incluyendo pero no limitado a
                    las líneas aéreas, hoteles, líneas de cruceros, ferrocarriles, agencias de alquiler de coches,
                    operadores turísticos y consolidadores para llevar a cabo los servicios ofrecidos por dichos
                    proveedores, usted nos exime (y nuestros funcionarios, directores, agentes, filiales, empresas
                    conjuntas y empleados) de reclamaciones, demandas y daños (reales y consecuentes) de todo tipo y
                    naturaleza, conocidos y desconocidos, que surjan de o en cualquier forma relacionada con tales
                    disputas.</p>

                <p><strong>Privacidad</strong></p>

                <p>La Administración de Seguridad en el Transporte del Departamento de Seguridad Nacional de EE.UU. nos
                    exige que recopilemos información sobre usted a efectos de control de la lista de vigilancia, en
                    virtud del artículo 114 del 49 U.S.C. y de la Ley de Reforma de los Servicios de Inteligencia y
                    Prevención del Terrorismo de 2004. Proporcionar esta información es voluntario; sin embargo, si no
                    la proporciona, puede ser sometido a un control adicional o se le puede denegar el transporte o la
                    autorización para entrar en una zona estéril. La TSA puede compartir la información que usted
                    proporcione con las fuerzas del orden o los organismos de inteligencia u otros, de conformidad con
                    su aviso publicado sobre el sistema de registros. Para más información sobre las políticas de
                    privacidad de la TSA, o para consultar el aviso sobre el sistema de registros y la evaluación del
                    impacto sobre la privacidad, visite el sitio web de la TSA en www.tsa.gov. Por favor, revise nuestra
                    Política de Privacidad, que también rige su visita a este Sitio para entender nuestras prácticas. La
                    Política de Privacidad de Tripsfares.com le proporcionará una descripción de cómo utilizamos y
                    protegemos su información personal. Si usted se opone a que su información sea transferida o
                    utilizada de esta manera, por favor no utilice nuestros servicios.Protección de su seguridadPara
                    garantizar que su tarjeta de crédito, débito o cargo no está siendo utilizada sin su consentimiento,
                    podemos validar su nombre, dirección y número de contacto proporcionado por usted durante el proceso
                    de reserva contra las bases de datos de terceros apropiados. Al aceptar estos términos y
                    condiciones, usted acepta y nos autoriza a llevar a cabo dichas comprobaciones de verificación tal y
                    como se indica en el presente documento. Al realizar estas comprobaciones, usted reconoce y acepta
                    que la información personal que nos facilite pueda ser revelada a una Agencia de Referencia de
                    Crédito registrada, que podrá mantener un registro de dicha información en su totalidad o en parte.
                    Puede estar seguro de que este proceso de verificación se realiza con el único propósito de
                    verificar y confirmar su identidad, y que este proceso no realiza una comprobación de crédito, y su
                    calificación crediticia no se verá afectada en modo alguno. Toda la información que nos facilite se
                    procesa de forma segura y en estricta conformidad con la Ley de Protección de Datos de 1998.</p>

                <p><strong>Uso del sitio web y compra de entradas</strong></p>

                <p>Usted garantiza que tiene al menos 18 años de edad y que posee la autoridad legal para suscribir este
                    acuerdo y utilizar el Sitio de conformidad con todos los términos y condiciones del presente
                    documento. Acepta ser responsable económicamente de todo el uso que haga del Sitio (así como del uso
                    que otros hagan de su cuenta). Usted es responsable de cualquier reserva realizada por personas bajo
                    su dirección o control. También garantiza que toda la información facilitada por usted o en su
                    nombre, o por los miembros de su familia al utilizar el Sitio, es verdadera y exacta. Asimismo,
                    confirma que el viajero no es un menor no acompañado. Sin limitación, queda prohibida cualquier
                    reserva exploratoria, falsa o fraudulenta o cualquier reserva anticipada a la demanda. Usted acepta
                    que las facilidades de reserva de servicios de viaje del Sitio se utilizarán únicamente para
                    realizar reservas o compras legítimas para usted o para otra persona en cuyo nombre esté legalmente
                    autorizado a actuar. Usted entiende que el uso excesivo o abusivo de los servicios de reserva de
                    viajes del Sitio puede dar lugar a que se le deniegue el acceso a dichos servicios. Todas las
                    ofertas, precios y condiciones de venta pueden estar sujetos a: cambios sin previo aviso. compra
                    anticipada, elegibilidad, asientos u otras limitaciones. </p>
                <p>Días de viaje, fechas, estancias mínimas o máximas, vacaciones, temporadas, fechas restringidas,
                    escalas y/o restricciones de listas de espera. Limitaciones de validación de reservas de hasta un
                    año (si se permite alguna ampliación, pueden aplicarse penalizaciones/restricciones); y/u otras
                    condiciones/restricciones. Disponibilidad. Puede haber precios más bajos disponibles. Si su
                    itinerario incluye un destino final o una parada en un país distinto del país de salida, las
                    disposiciones de un tratado conocido como el "Convenio de Varsovia" pueden ser aplicables a todo su
                    viaje, incluida cualquier parte que transcurra íntegramente dentro del país de origen o destino. El
                    Convenio de Varsovia regula y puede limitar la responsabilidad de determinados transportistas aéreos
                    por muerte o lesiones personales de los pasajeros y/o pérdida o daños del equipaje. Una reserva no
                    está completa hasta que se confirma/emite el billete. Para proteger a nuestros clientes, verificamos
                    con la compañía de la tarjeta de crédito/débito que la dirección de facturación y el número de
                    verificación de la tarjeta de crédito que nos ha facilitado son correctos y que su cargo/debito será
                    aceptado. Hasta que se verifique dicha información, la tarifa está sujeta a cambios. No nos hacemos
                    responsables de ninguna transacción rechazada por una tarjeta de crédito/débito rechazada por la
                    compañía emisora o un proveedor de viajes o si, por cualquier motivo, la dirección de facturación de
                    la tarjeta de débito/crédito y/o el número de verificación de la tarjeta de crédito no pueden
                    verificarse a tiempo, ni somos responsables de ningún cambio en la tarifa o cualquier otro cargo que
                    pueda producirse durante nuestro proceso de verificación. En ocasiones, cuando la tarifa
                    seleccionada no está disponible, puede que se haya tomado un código de aprobación en su tarjeta de
                    crédito; si la transacción no se completa, el código de aprobación puede bloquear su crédito
                    disponible durante un periodo de tiempo hasta que el banco elimine el bloqueo.</p>

                <p><strong>Actividades prohibidas</strong></p>

                <p>Usted acepta que las facilidades de reserva de servicios de viaje del Sitio se utilizarán únicamente
                    para realizar reservas o compras legítimas para usted o para otra persona para la que usted esté
                    legalmente autorizado a actuar. Usted entiende que el uso excesivo o abusivo de los servicios de
                    reserva de viajes del Sitio puede dar lugar a que se le deniegue el acceso a dichos servicios. No
                    podrá utilizar este Sitio con fines comerciales. Usted acepta que no accederá, controlará ni copiará
                    ningún contenido o información de este Sitio utilizando ningún robot, araña, raspador u otros medios
                    automatizados o cualquier proceso manual para cualquier fin sin nuestro permiso por escrito. Usted
                    se compromete a no infringir las restricciones de los encabezados de exclusión de robots de este
                    Sitio, ni a eludir o sortear otras medidas empleadas para impedir o limitar el acceso a este Sitio.
                    Usted acepta que no modificará, copiará, distribuirá, transmitirá, mostrará, ejecutará, reproducirá,
                    publicará, licenciará, creará trabajos derivados, transferirá, venderá o revenderá ninguna
                    información, contenido, gráficos, software, productos o servicios obtenidos de o a través de este
                    Sitio o centro de llamadas. Usted acepta que no utilizará un marco o entorno de borde alrededor del
                    Sitio, u otra técnica de enmarcado para encerrar cualquier parte o aspecto del Sitio, o reflejar o
                    replicar cualquier parte del Sitio, y que no venderá, ofrecerá para la venta, transferirá o
                    licenciará cualquier parte del Sitio en cualquier forma a terceros. Usted se compromete a no
                    utilizar ningún dispositivo, software o rutina que interfiera, o intente interferir, en el
                    funcionamiento normal de nuestro Sitio, ni a realizar ninguna acción que imponga una carga
                    irrazonable a nuestros equipos.</p>
                <p> No deberá ocultar el origen de la información que transmita a través del Sitio, ya sea para navegar
                    por el Sitio, realizar una reserva de viaje o publicar cualquier contenido. No deberá hacer un uso
                    indebido del Sitio introduciendo a sabiendas virus, troyanos, gusanos, bombas lógicas u otro
                    material malicioso, ofensivo, difamatorio o tecnológicamente perjudicial. No debe intentar obtener
                    acceso no autorizado al Sitio, al servidor en el que está almacenado el Sitio o a cualquier
                    servidor, ordenador o base de datos conectados al Sitio. No debe atacar el Sitio mediante un ataque
                    de denegación de servicio o un ataque distribuido de denegación de servicio. No seremos responsables
                    de ninguna pérdida o daño causado por un ataque distribuido de denegación de servicio, virus u otro
                    material tecnológicamente dañino que pueda infectar su equipo informático, programas informáticos,
                    datos u otro material de propiedad debido a su uso del Sitio o a la descarga de cualquier material
                    publicado en él, o en cualquier sitio web vinculado a él. Nos reservamos el derecho de cancelar su
                    cuenta Tripsfares.com y terminar su uso del Sitio si usted viola cualquiera de las prohibiciones
                    anteriores.</p>

                <p><strong>Proceso de reserva</strong></p>

                <p>Para su comodidad, el uso que hacemos de los siguientes términos en estas Condiciones Generales
                    tendrá el significado que se indica a continuación: "Elemento de Servicio" - un producto o servicio
                    singular listado en el Sitio que puede reservarse independientemente de cualquier otro servicio.
                    "Proveedor de Viajes": un vendedor de uno o más Elementos de Servicio. (por ejemplo: hoteles,
                    proveedores de coches, líneas aéreas). Tripsfares.com no actúa como principal, pero hace arreglos
                    con terceros proveedores de viajes para los elementos de servicio, todos como se define
                    anteriormente. "Reserva" - un proceso de negociación con el Proveedor de Viajes llevado a cabo por
                    usted mientras utiliza este Sitio con el fin de obtener uno o más Elementos de Servicio que pueden
                    dar lugar a un contrato con el Proveedor de Viajes en el momento en que recibamos el pago completo y
                    aceptemos su oferta. Para completar una Reserva se siguen los siguientes pasos para garantizar su
                    validez: Cuando colocamos Elementos de Servicio en nuestro Sitio, le estamos invitando a hacer una
                    oferta para su compra.</p>
                <p> Usted no hace esta oferta hasta que pulse "Reservar" en la página de pago (titulada "Revisar los
                    Detalles del Viaje y Reservar") del Sitio. Una vez que lo haya hecho, habrá hecho a Tripsfares.com
                    una oferta (que no podrá ser retirada si cambia de opinión) para comprar el/los Elemento(s) de
                    Servicio correspondiente(s) al/los Proveedor(es) de Viajes correspondiente(s) (su "Reserva"). Somos
                    libres de aceptar su oferta en nombre del Proveedor de Viajes correspondiente o rechazarla, a
                    nuestra entera discreción. La confirmación por correo electrónico de Tripsfares.com NO es la
                    aceptación contractual de la Reserva, sino simplemente un acuse de recibo de su oferta. Tendremos
                    que comprobar la disponibilidad de los Elementos de Servicio correspondientes</p>
                <p>Si el Elemento de Servicio correspondiente está disponible, se tramitará su Reserva. El contrato
                    relativo a la Reserva en cuestión se formalizará cuando se haya recibido el pago íntegro. El
                    contrato entre usted y el Proveedor de Viajes correspondiente se referirá únicamente a los Elementos
                    de Servicio confirmados por correo electrónico con números de billete en el caso del transporte
                    aéreo o números de reserva en el caso de hoteles, coches o actividades. Las condiciones de su
                    Reserva (como el precio, la disponibilidad y/o las fechas de viaje) no están garantizadas hasta que
                    se haya formalizado el contrato entre usted y el Proveedor de Viajes y se haya emitido un billete
                    y/o el Proveedor de Viajes haya efectuado y confirmado una reserva. Tenga en cuenta que una vez que
                    haya completado la fase de Reserva, sólo podrá cancelar o cambiar los detalles (como nombres o
                    destinos) de su Reserva a nuestra entera discreción y de conformidad con estos Términos y
                    Condiciones. </p>
                <p>Estos procesos de Reserva se aplicarán a cualquiera de los Términos y Condiciones de nuestros
                    Elementos de Servicio individuales establecidos a continuación. Los Términos y Condiciones de los
                    billetes de avión, los Términos y Condiciones de los hoteles, los Términos y Condiciones de los
                    alquileres de coches, los Términos y Condiciones de las atracciones y servicios complementan
                    cualquier área no cubierta por el proceso de Reserva. Nos reservamos el derecho a modificar el
                    proceso de Reserva en cualquier momento, con efectos automáticos a partir de la fecha en que dichas
                    modificaciones se publiquen en el Sitio. En todo momento durante su viaje, se requiere un documento
                    de identidad con fotografía emitido por el gobierno para los controles de seguridad en aeropuertos,
                    hoteles y lugares de alquiler de coches, y puede ser requerido para atracciones y otros productos
                    según lo consideren necesario los Proveedores de Viajes pertinentes. Además del documento de
                    identidad expedido por el gobierno mencionado anteriormente, se requiere una prueba de ciudadanía
                    (pasaporte) para los viajes internacionales (para la mayoría de los países fuera de Estados Unidos).
                    Tenga en cuenta que es de su exclusiva responsabilidad asegurarse de que cumple los requisitos de
                    pasaporte, visado y/o salud de los países que desea visitar y por los que transita (aunque sea para
                    un simple cambio de vuelo).</p>
                <p>Muchos países exigen que su pasaporte sea válido durante un periodo mínimo a partir de la fecha de
                    llegada a ese país. Para cualquier pregunta sobre cuál es el periodo mínimo aplicable y cualquier
                    otra condición o requisito de pasaporte/visado para viajar, debe ponerse en contacto con el
                    consulado local correspondiente de los países a los que viaja. Ni Tripsfares.com ni sus afiliados
                    aceptan responsabilidad alguna, y usted no tendrá derecho a reembolso alguno, si se le deniega el
                    embarque, se le retrasa o se le deporta debido al incumplimiento de lo anterior. Pueden aplicarse
                    tasas gubernamentales de entrada/salida, dependiendo de su destino. Estas tasas correrán a su cargo
                    y se añadirán a los gastos de la Reserva. Todos los viajeros de su Reserva (si hay más de un
                    pasajero) deben viajar en el mismo itinerario. Los pasajeros individuales no pueden ser añadidos y/o
                    eliminados de su Reserva. Tripsfares.com se reserva el derecho de corregir errores en cualquier
                    precio anunciado y, en su caso, le dará la opción de cancelar la reserva o permitir Tripsfares.com
                    para recoger una cantidad igual a cualquier aumento en el precio de su tarjeta de crédito o débito,
                    antes de su salida. Cada Elemento de Servicio enumerado en su Reserva es proporcionado por el
                    respectivo Proveedor de Viajes. Los puntos y/o millas de viajero frecuente pueden o no estar
                    disponibles para cualquier parte de su Reserva. Debe comprobarlo con el Proveedor de Viajes
                    correspondiente.</p>
                <p>
                    Una vez efectuada la Reserva, no podrá transferir ni modificar los nombres o destinos que figuran en
                    ella. Su Reserva se cumplirá en la fecha de entrega indicada en el correo electrónico de información
                    sobre el billete o, si no se especifica ninguna fecha de entrega, en la fecha de emisión del
                    billete, salvo que concurran circunstancias excepcionales. Los términos de este acuerdo incorporan
                    por referencia los términos del contrato de transporte de cada compañía aérea. El pasajero puede
                    consultar el texto íntegro del contrato de transporte en las oficinas de venta de billetes de cada
                    compañía aérea en el aeropuerto o en la ciudad. Los pasajeros tienen derecho, previa solicitud a las
                    compañías aéreas, a recibir gratuitamente por correo u otro servicio de entrega el texto completo
                    del contrato de transporte. Las cláusulas incorporadas al contrato de transporte pueden incluir: (1)
                    Límites a la responsabilidad de la aerolínea por lesiones personales o muerte de los pasajeros, y
                    por pérdida, daño o retraso de mercancías y equipaje, incluidas las mercancías frágiles o
                    perecederas; (2) Restricciones a las reclamaciones, incluidos los plazos en los que los pasajeros
                    deben presentar una reclamación o interponer una acción contra la aerolínea por sus actos u
                    omisiones o los de sus agentes; (3) Derechos de la compañía aérea a modificar las condiciones del
                    contrato; (4) Normas sobre reconfirmación de reservas, horarios de facturación y denegación de
                    transporte; (5) Derechos de la compañía aérea y limitaciones relativas a retrasos o incumplimiento
                    del servicio, incluidos cambios de horario, sustitución por otra compañía aérea o aeronave y cambios
                    de ruta.
                </p>
                <p>Nuestros precios totales incluyen todos los impuestos y tasas aplicables a la tarifa aérea, el
                    alojamiento en hotel, el alquiler de coches y las actividades incluidas en su Reserva, salvo que se
                    indique lo contrario en el correo electrónico de información sobre el billete o en las presentes
                    Condiciones Generales. Pueden aplicarse recargos adicionales por combustible, seguridad, equipaje,
                    reserva de asiento, imprevistos de hotel y otros cargos por servicio aplicables, que serán cobrados
                    por el Proveedor de Viajes correspondiente en el momento de la facturación. Usted es el único
                    responsable de cualquier cargo adicional que deba abonar al Proveedor de Viajes. Si tiene alguna
                    duda sobre dichos cargos, póngase en contacto directamente con el Proveedor de Viajes
                    correspondiente. Los precios indicados para los Elementos de Servicio no incluyen el seguro de
                    responsabilidad civil, la exención de responsabilidad por daños por colisión, el seguro de
                    accidentes personales, la protección de efectos personales, los gastos de devolución, la gasolina,
                    los asientos de seguridad para niños, los portaequipajes ni los gastos adicionales de habitación en
                    el hotel (teléfono, películas, recargos por energía y cualquier aumento aplicable en los impuestos).
                    Todos estos cargos deberán abonarse en el lugar de recogida del vehículo de alquiler y/o en el
                    mostrador de facturación del hotel. Los precios indicados tampoco incluyen ningún recargo adicional
                    por combustible de vuelo u otros recargos que puedan imponer ocasionalmente el Proveedor de Viajes o
                    las autoridades pertinentes, todos los cuales deberán ser abonados por usted. El pago debe
                    realizarse en su totalidad con una tarjeta de crédito o débito válida en el momento de la Reserva.
                    Tripsfares.com acepta todas las principales tarjetas de crédito o débito con una dirección de
                    facturación verificable. Usted autoriza a Tripsfares.com y a sus terceros autorizados a procesar el
                    cargo a la tarjeta de crédito o débito que usted nos proporcione por el importe total de su Reserva.
                    Es posible que el Proveedor de Viajes correspondiente le solicite que presente una tarjeta de
                    crédito o débito válida en el momento de registrarse en el hotel y/o en el lugar de recogida de la
                    empresa de alquiler de coches para proporcionar la confirmación del uso autorizado de la tarjeta y/o
                    para garantizar cualquier cargo adicional.</p>
                <p>El titular de la tarjeta debe ser un viajero que figure en su Reserva. Todas las ofertas, precios y
                    condiciones de venta pueden estar sujetos a: cambios sin previo aviso; limitaciones de compra
                    anticipada, elegibilidad, asientos u otras limitaciones; días de viaje, fechas, estancias mínimas o
                    máximas, vacaciones, temporadas, fechas prohibidas, escalas y/o restricciones de listas de espera;
                    limitaciones de validación de reservas de hasta un año (si se permite alguna extensión, pueden
                    aplicarse penalizaciones/restricciones); otras condiciones/restricciones; y Si su itinerario incluye
                    un destino final o una escala en un país distinto del país de salida, las disposiciones de un
                    tratado conocido como el "Convenio de Varsovia" pueden ser aplicables a todo su viaje, incluida
                    cualquier parte que transcurra íntegramente dentro del país de origen o destino. El Convenio de
                    Varsovia regula y puede limitar la responsabilidad de determinados transportistas aéreos por muerte
                    o lesiones personales de los pasajeros y/o pérdida o daños del equipaje. Una reserva no está
                    completa hasta que se confirma/emite el billete. Para proteger a nuestros clientes, verificamos con
                    la compañía de la tarjeta de crédito/débito que la dirección de facturación y el número de
                    verificación de la tarjeta de crédito que nos ha facilitado son correctos y que su cargo/debito será
                    aceptado. Hasta que se verifique dicha información, la tarifa está sujeta a cambios. No nos hacemos
                    responsables de ninguna transacción rechazada por una tarjeta de crédito/débito rechazada por la
                    compañía emisora o un proveedor de viajes o si, por cualquier motivo, la dirección de facturación de
                    la tarjeta de débito/crédito y/o el número de verificación de la tarjeta de crédito no pueden
                    verificarse a tiempo, ni somos responsables de ningún cambio en la tarifa o cualquier otro cargo que
                    pueda producirse durante nuestro proceso de verificación. En caso de que la tarifa seleccionada no
                    esté disponible, es posible que se haya emitido un código de aprobación en su tarjeta de crédito. Si
                    la transacción no se completa, el código de aprobación puede acreditar temporalmente el importe de
                    su cuenta bancaria.</p>

                <p><strong>Enlaces</strong></p>

                <p>El Sitio proporciona enlaces a otros sitios web para su comodidad, pero no avalamos ni somos
                    responsables de los contenidos de otros sitios web. Si decide acceder a otros sitios web, lo hará
                    por su cuenta y riesgo.</p>

                <p><strong>Nuestras tarifas y excepciones</strong></p>

                <p>Además de los costes y tasas de cada Proveedor de Viajes, Tripsfares.com puede cobrar una tasa de
                    servicio como se describe a continuación. Todas las tarifas de Tripsfares.com se cobran por persona
                    o por billete y no son reembolsables.</p>

                <p><strong>1.NUESTRAS TARIFAS DE RESERVA</strong></p>
                <div class="table-responsive ">
                    <table class="table">
                        <tbody>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p>
                                        <strong>Tarifas de servicio por transacciones aéreas en línea
                                            En la mayoría de las tarifas aéreas se cobra una tasa de servicio de hasta
                                            200? por persona para todos los tipos de pasajeros. **
                                            &nbsp;
                                    </p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>EE.UU. Nacional e Internacional</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Tarifas</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$0 to $200</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p>
                                        <strong>Tarifas del servicio de transacciones hoteleras en línea

                                        </strong><br>
                                        (por noche, por habitación)
                                    </p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Todos los hoteles</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Tarifas</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>
                                        hasta<br>
                                        $200
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p>
                                        <strong>Tarifas del servicio de transacciones de alquiler de coches en línea
                                            &nbsp;</strong><br>
                                        (por alquiler)
                                    </p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Todos los alquileres de coches</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Tarifas</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>
                                        hasta<br>
                                        $200
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p>Las tasas de servicio se convertirán a su moneda local en la página de pago. ** Tipos de pasajeros =
                    Adulto, niño, anciano, bebé, estudiante, militar. ‡ Todas las tasas por servicios de transacción no
                    son reembolsables y están sujetas a cambios sin previo aviso. Los impuestos y tasas gubernamentales
                    están sujetos a cambios. Sólo se le cobrará el importe total final como se muestra. ? Se aplican
                    algunas excepciones a las tarifas de servicio anteriores: - Tarifas de servicio de reserva de
                    paquetes vacacionales en línea de hasta 50 $ por persona. - Billetes de avión en clase Business y
                    Primera Clase: las tarifas de servicio son de hasta 100 $ por pasajero en todos los tipos de
                    billetes. - Viajes a varias ciudades: las tarifas de servicio son de hasta 100 $ por pasajero en
                    todos los tipos de billetes. - Viajes con varias líneas aéreas / Ciudades con altos índices de
                    fraude - Las tasas de servicio son de hasta 30 $ por pasajero en todos los tipos de billetes. -
                    Nuestras tarifas de servicio en determinadas aerolíneas pueden ser de hasta 35 $ por pasajero -
                    Tarifas de servicio de reservas de Contact Center: Las tarifas de servicio de las reservas del
                    centro de contacto (incluidos los itinerarios complejos con varias escalas y de vuelta al mundo)
                    pueden ser superiores a las que se cobran por las reservas realizadas en línea. Estas tarifas de
                    servicio pueden oscilar entre 10 y 500 dólares por pasajero. Las reservas realizadas a través del
                    Contact Center incluyen ventajas de paquetes premium. Nota importante: Todas las tarifas de servicio
                    están sujetas a cambios sin previo aviso. SE LE COBRARÁ EL PRECIO TOTAL FINAL INDICADO,
                    INDEPENDIENTEMENTE DE CUALQUIER CAMBIO O VARIACIÓN EN LAS TARIFAS DE SERVICIO. Revise detenidamente
                    el precio final total.

                </p>

                <p><strong>2.NUESTROS GASTOS POSTERIORES AL BILLETE</strong></p>
                <div class="table-responsive ">
                    <table class="table">
                        <tbody>
                            <tr>
                                <td colspan="5" style="text-align:left; vertical-align:top">
                                    <p><strong>Tarifas por servicios posteriores a la emisión de billetes ‡</strong></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p><strong>Aplica a</strong></p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p><strong>Para</strong></p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p><strong>Importe por billete</strong></p>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="3" style="text-align:left; vertical-align:top">
                                    <p>Anulación asistida por agente1</p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>Cancelación dentro de las 4 horas anteriores a la reserva y antes de medianoche
                                        de la fecha de reserva</p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>Gratuito</p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>Cancelación después de 4 horas de la reserva pero antes de medianoche</p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>100 $ por reserva</p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>Cancelación después de medianoche y en las 24 horas siguientes a la reserva (sólo
                                        sitios web de EE.UU.)</p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>100 $ por reserva</p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="text-align:left; vertical-align:top">
                                    <p><strong>Cancelación y reembolso (más de 24 horas)</strong></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">&nbsp;</td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p><strong>Avión - Economía</strong></p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p><strong>Avión - Business/First</strong></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">&nbsp;</td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Doméstico</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Internacional</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Doméstico</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>Internacional</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p><strong>Cancelación asistida por agente1 con crédito
                                            futuro</strong><strong>1</strong><strong>&nbsp;</strong><strong>w/Future
                                            Credit</strong></p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$100</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$200</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$300</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$300</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p><strong>Cancelación asistida por agente
                                        </strong><strong>2</strong><strong>&nbsp;</strong><strong>con reembolso</strong>
                                    </p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$200</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$300</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$500</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$500</p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="text-align:left; vertical-align:top">
                                    <p><strong>Cambios en los billetes existentes (intercambio)</strong></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p><strong>Dentro de 4 horas</strong></p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$25</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$50</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$50</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$50</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p><strong>En los 10 días siguientes a la nueva fecha de viaje1</strong>1</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$200</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$250</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$500</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$500</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:left; vertical-align:top">
                                    <p><strong>Más de 10 días a partir de la nueva fecha de viaje2</strong>2</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$200</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$250</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$500</p>
                                </td>
                                <td style="text-align:left; vertical-align:top">
                                    <p>$500</p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="text-align:left; vertical-align:top">
                                    <p><strong>Servicios especiales</strong></p>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="6" style="text-align:left; vertical-align:top">
                                    <p>Reembolso asistido por agente o asistencia para obtener un crédito futuro de la
                                        aerolínea por cualquiera de los motivos indicados en el punto 3 (nuestras
                                        tarifas de servicio son aplicables en caso de éxito, pero no incluyen las
                                        tarifas de la aerolínea).</p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>Nombre del pasajero mal escrito</p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>$50</p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>Servicios de visado/pasaporte</p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>$50</p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>Servicio relacionado con el equipaje</p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>$25</p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>Servicios no presenciales</p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>$25</p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>Servicios de embarque denegados</p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>$25</p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>Servicios de reserva de duplicados</p>
                                </td>
                                <td colspan="2" style="text-align:left; vertical-align:top">
                                    <p>$25</p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="text-align:left; vertical-align:top">
                                    <p>Ofrecemos Descuentos Especiales bajo nuestra . Nuestra póliza PEC cubre a
                                        militares, ancianos (mayores de 64 años), desastres naturales, duelo, jóvenes
                                        (entre 16 y 25 años), enfermos terminales y personas con discapacidad.&nbsp;</p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p>Todos los reembolsos/créditos futuros de la aerolínea están sujetos a las normas, políticas y
                    procedimientos tarifarios de cada aerolínea Las tasas de servicio se convertirán a su moneda local
                    en la página de pago. Tipos de pasajero = Adulto, niño, senior, bebé, estudiante, militar. ‡ Todas
                    las tasas de servicio posteriores a la emisión del billete no son reembolsables y están sujetas a
                    cambios sin previo aviso.</p>
                <p>Las tasas de Tripsfares.com, las tarifas adicionales cobradas y otros cargos se suman a cualquier
                    tasa y cargo de la aerolínea, el hotel o el alquiler de coches. Sólo se le cobrará el importe total
                    final. Los impuestos y tasas gubernamentales están sujetos a cambios. Sólo se le cobrará el importe
                    total final indicado. 1 La mayoría de nuestros billetes de avión no son reembolsables. Sólo está
                    disponible si las normas tarifarias de nuestros proveedores de viajes permiten la cancelación y el
                    reembolso, si hemos aceptado su solicitud de reembolso, si usted no se ha "presentado" (la mayoría
                    de las reservas "no presentadas" no pueden acogerse a ninguna exención de los proveedores para la
                    tramitación del reembolso) y si podemos obtener exenciones de los proveedores para tramitar la
                    cancelación y el reembolso solicitados. 2 La mayoría de nuestros billetes de avión no son
                    reembolsables. Los reembolsos/créditos futuros de las compañías aéreas están sujetos a las normas,
                    políticas y procedimientos de las mismas. 3 Servicios especiales - Todos los servicios indicados son
                    SÓLO bajo petición y están sujetos al proceso de revisión y aprobación de cada compañía aérea, así
                    como a sus normas, políticas y procedimientos tarifarios. Nombre mal escrito - El nombre del
                    pasajero que figura en su billete de avión no coincide con el de su pasaporte u otro documento de
                    identidad oficial universalmente aceptado Visado/Pasaporte - Normalmente se requiere una carta de
                    denegación de visado/pasaporte para tramitar la solicitud Equipaje - Conserve todos los recibos y
                    etiquetas de equipaje No presentación - Se le solicitará documentación que justifique por qué no ha
                    podido realizar la salida programada Denegación de embarque - Se le solicitará documentación que
                    justifique por qué se le ha denegado el embarque en la salida programada Duplicados de billetes -
                    Copias de todos los billetes, que reflejen exactamente los mismos itinerarios reservados con
                    nosotros.
                </p>


                <p><strong>Cambios en los vuelos ya comprados</strong></p>

                <p>Todos y cada uno de los cambios realizados en el itinerario están restringidos así como sujetos a las
                    normas de tarifas de las aerolíneas, lo que sea más restrictivo; la mayoría de nuestros
                    billetes/hoteles/coches/paquetes/cruceros no permiten ningún cambio de fecha o nombre una vez
                    completada la reserva. Tripsfares.com no garantiza, y no será responsable de, cualquier reserva o
                    reserva hecha o confirmada a usted en el caso de que el itinerario original haya sido cambiado por
                    el proveedor de conformidad con la solicitud del cliente. De acuerdo con nuestra "Política de
                    Excepción por Compasión", los clientes de la tercera edad, militares o discapacitados físicos,
                    afectados por desastres naturales o enfermos terminales pueden obtener una exención de la totalidad
                    o parte de las tarifas de Tripsfares.com. Por favor, revise nuestra Política de Excepción por
                    Compasión en detalle.</p>

                <p><strong>Cancelación y cambiar</strong></p>

                <p>La mayoría de nuestros billetes de avión son 100% no reembolsables. En algunos casos en los que la
                    aerolínea permite cancelaciones, un crédito puede ser válido para la compra de un billete futuro por
                    el mismo viajero en la misma aerolínea. Normalmente, el crédito emitido por el proveedor de la
                    aerolínea tiene una fecha de caducidad específica, después de la cual no puede utilizarse. Le
                    recomendamos que consulte con un agente del servicio de atención al cliente las restricciones
                    adicionales asociadas a su crédito. Todas las reservas de este tipo en las que se permita la
                    cancelación deberán cancelarse antes de la hora de salida programada del primer segmento de vuelo
                    llamando a nuestro centro de atención al cliente. No garantizamos ninguna cancelación. Cuando esté
                    listo para hacer su nueva reserva y desee utilizar su crédito de la aerolínea, se le pedirá que
                    pague la diferencia de tarifa (si la hubiera), las penalizaciones aplicables de la aerolínea y
                    cualquier tasa aplicable de Tripsfares.com posterior a la emisión del billete. Todos estos cambios
                    se rigen por las normas de tarifas, políticas y procedimientos de cada aerolínea, que no están bajo
                    nuestro control. No se hace ninguna representación adicional para nuestras tarifas de cambio,
                    excepto que un agente le ayudará a localizar sus nuevos vuelos deseados e intentará volver a
                    reservar los nuevos vuelos en función de la disponibilidad y otros factores. De acuerdo con nuestra
                    "Política de Excepción por Compasión", los clientes que sean ciudadanos de la tercera edad,
                    militares o discapacitados físicos, que se hayan visto afectados por desastres naturales o que
                    padezcan una enfermedad terminal pueden obtener una exención de la totalidad o de una parte de las
                    tasas de Tripsfares.com. Por favor, revise nuestra Política de Excepción por Compasión en detalle.
                </p>

                <p><strong>Itinerarios con múltiples aerolinas</strong></p>

                <p>Si su itinerario incluye vuelos operados por más de una compañía aérea, lea atentamente los términos
                    y condiciones de cada una de ellas, que podrá encontrar en el sitio web de cada una de ellas. Cada
                    una de ellas tendrá sus propias restricciones, normas y tarifas. Si uno de estos vuelos se ve
                    afectado por un cambio en la aerolínea (por ejemplo, cancelación o reprogramación) que obligue al
                    Cliente a realizar cambios en el otro vuelo, el Cliente podrá ser responsable de las tasas o del
                    coste del billete en que incurra por realizar cambios en el vuelo no afectado. Dichas aerolíneas
                    pueden cobrar sus propias tasas por cambios, reembolsos o si se solicitan cambios. Usted es
                    responsable de cumplir los términos y condiciones de cada compañía aérea, que pueden diferir (por
                    ejemplo, horarios de facturación y límites de tamaño/peso del equipaje). Es aconsejable que imprima
                    las partes de ida y vuelta de la confirmación de su billete electrónico para todos los vuelos antes
                    de viajar. Es posible que le pidan un justificante del billete de vuelta al facturar.

                </p>

                <p><strong>Cancelación y reembolso</strong></p>

                <p>La mayoría de nuestros billetes de avión, hoteles, coches de alquiler prepagados, paquetes
                    vacacionales y tasas de servicio no son reembolsables pasadas 12 horas de la reserva. El seguro de
                    protección de viaje es reembolsable en los 10 días siguientes a la compra si el viaje no ha
                    comenzado y ha llamado a nuestro centro de atención al cliente para cancelarlo. Todas las
                    cancelaciones deben hacerse únicamente por teléfono. Sólo podemos aceptar solicitudes de reembolso
                    si se cumplen las siguientes condiciones: usted ha solicitado una cancelación y reembolso con
                    nosotros y si las normas de la tarifa prevén cancelaciones y reembolsos; usted no es un "no show"
                    (la mayoría de las reservas "no show" no pueden acogerse a ninguna exención de los proveedores para
                    la tramitación del reembolso); y nosotros podemos obtener exenciones de los proveedores para
                    tramitar esta cancelación y reembolso solicitados. No podemos ofrecer un plazo concreto para la
                    tramitación de este reembolso. Todas las solicitudes de reembolso se procesan de forma secuencial.
                </p>
                <p>Una vez que haya facilitado su solicitud de cancelación a nuestro agente del servicio de atención al
                    cliente, le enviaremos una notificación por correo electrónico para informarle de que hemos recibido
                    su solicitud. Esta notificación no le da derecho automáticamente a un reembolso. Sólo le proporciona
                    un acuse de recibo de su solicitud y le facilita un número de seguimiento. Una vez recibida su
                    solicitud, trabajaremos con los proveedores, como aerolíneas, hoteles y empresas de alquiler de
                    coches, para generar una exención basada en las normas de las aerolíneas y otros proveedores, y le
                    notificaremos la decisión del proveedor. Nuestros honorarios por servicios asociados a la reserva
                    original no son reembolsables. Tenga en cuenta que dependemos de los proveedores para recibir los
                    reembolsos solicitados. Una vez aprobado el reembolso por el proveedor, puede transcurrir un tiempo
                    adicional hasta que aparezca en el extracto de su tarjeta de crédito. Por lo general, todos los
                    proveedores cobrarán una penalización por el reembolso. Todo este proceso puede tardar entre 60 y 90
                    días desde la recepción de su solicitud hasta la recepción del abono en su extracto. Aparte de las
                    penalizaciones por reembolso de las aerolíneas y otros proveedores, Tripsfares.com cobrará una tasa
                    por servicios posteriores a la emisión del billete, según corresponda. Todas las tasas de reembolso
                    se cobran por billete y por persona. Estas tasas sólo se cobrarán si el proveedor ha autorizado el
                    reembolso o se ha recibido una renuncia y cuando las normas de la aerolínea/proveedor permitan
                    dichos reembolsos. Si el proveedor no tramita el reembolso, le reembolsaremos los gastos de servicio
                    posteriores a la emisión del billete aplicables a su solicitud de reembolso asistida por un agente,
                    pero no los gastos de reserva correspondientes a la reserva original. De acuerdo con nuestra
                    "Política de Excepción por Compasión", los clientes que sean ciudadanos de la tercera edad,
                    militares o discapacitados físicos, que se hayan visto afectados por desastres naturales o que
                    padezcan una enfermedad terminal pueden obtener una exención de la totalidad o de una parte de las
                    tarifas de Tripsfares.com. Por favor, revise nuestra Política de Excepción por Compasión en
                    detalle.Descuento de Tarifas Aéreas</p>

                <p><strong>Descuento de billetes de avión</strong></p>

                <p>De acuerdo con la Ley de Desregulación de las Líneas Aéreas de EE.UU., los Acuerdos de Cielo Abierto
                    y las codificaciones posteriores, los descuentos en los billetes de avión son ahora legales. Debido
                    a nuestro gran volumen y a las numerosas fuentes de compra, estamos autorizados a ofrecerle muchos
                    de los precios publicados de los billetes de avión por menos del precio publicado por las compañías
                    aéreas. El valor del descuento puede variar en función del tipo de tarifa, la disponibilidad, la
                    estacionalidad, la fuente de referencia y los destinos.</p>

                <p><strong>Cambios de tarifa y garantía de precio posterior al pago</strong></p>

                <p>Antes de que su forma de pago sea procesada y aceptada con éxito, si se produce un cambio en el
                    precio de la tarifa aérea o cualquier otro cambio, se le podrá notificar dicho cambio y sólo tras
                    dicha notificación tendrá derecho a aceptar o rechazar esta transacción. Si decide rechazar esta
                    transacción, no se le cobrará nada. Nuestra garantía de precio posterior al pago: Una vez aceptado y
                    procesado su pago (tarjeta de crédito/débito), le garantizamos que respetaremos el precio final
                    total de los billetes de avión, independientemente de cualquier cambio o fluctuación en el precio de
                    la tarifa aérea.</p>

                <p><strong>Política de aceptaciones de pagos</strong></p>

                <p>Aceptamos tarjetas de crédito y débito emitidas en EE.UU., Canadá y varios otros países que figuran
                    en la sección de facturación. También aceptamos direcciones de facturación AE/AP. Tenga en cuenta
                    que su tarjeta de crédito/débito puede ser facturada en varios cargos que sumen el precio total
                    final. Si su tarjeta de crédito/débito u otra forma de pago no es procesada o aceptada por cualquier
                    motivo, se lo notificaremos en un plazo de 24 horas (puede tardar más de 24 horas en el caso de
                    métodos de pago sin tarjeta de crédito/débito). Antes de que su forma de pago sea procesada y
                    aceptada con éxito, si se produce un cambio en el precio de la tarifa aérea o cualquier otro cambio,
                    se le podrá notificar este cambio y sólo tras dicha notificación tendrá derecho a aceptar o rechazar
                    esta transacción. Si decide rechazar esta transacción, no se le cobrará nada. Nuestra garantía de
                    precio posterior al pago: Una vez aceptado y procesado con éxito su pago (tarjeta de
                    crédito/débito), le garantizamos que respetaremos el precio final total de los billetes de avión,
                    independientemente de cualquier cambio o fluctuación en el precio de las tarifas aéreas. Ofrecemos
                    una garantía de transacción con tarjeta de crédito 100% segura. Consulte nuestra Garantía de compra
                    100% segura sobre el uso de tarjetas de crédito en nuestro sitio web. Tenga en cuenta que todas las
                    reservas de hoteles, alquiler de coches y excursiones/actividades sólo se confirman cuando se envían
                    todos los detalles de la confirmación al correo electrónico que proporcionó con su reserva. En
                    algunos casos, es posible que se requiera el pago por adelantado para recibir la confirmación. Para
                    ofrecerle más seguridad, cuando nuestros sistemas determinen que determinadas transacciones son de
                    alto riesgo, no las procesaremos a menos que nuestro equipo de verificación de tarjetas de crédito
                    haya determinado que es seguro procesarlas. Para determinar la validez de dichas transacciones, es
                    posible que nos pongamos en contacto con usted o con su banco.</p>

                <p><strong>Entrega de billetes</strong></p>

                <p>La mayoría de los billetes son electrónicos (e-tickets), pero en algunos itinerarios en los que no se
                    dispone de billete electrónico se puede adquirir un billete en papel. Compruebe los gastos de envío
                    antes de confirmar la reserva. Si un billete electrónico no puede ser emitido para una reserva en
                    particular o si una entrega se estaba haciendo de otro producto o servicio, Tripsfares.com enviará
                    el billete de papel, producto o servicio a través de un modo seguro de entrega (una empresa de
                    mensajería de renombre) y los gastos de envío aplicables cargados a la cuenta del titular de la
                    tarjeta de crédito según las tarifas publicadas en el Sitio. Estos gastos de envío se muestran antes
                    de realizar la reserva y usted puede optar por no comprar los billetes para evitar los gastos de
                    envío. Tripsfares.com no asume ninguna responsabilidad por el fallo de la empresa de mensajería.
                    Intentaremos realizar una nueva entrega, pero no garantizamos que se realice a tiempo. Si usted
                    proporciona una dirección incorrecta, entonces usted puede tener que pagar honorarios excesivos a la
                    compañía de entrega para la alteración de la dirección. La factura se cargará a la tarjeta de
                    crédito utilizada para el pago. Si se genera un billete electrónico, la información sobre el mismo
                    estará disponible en el Sitio.</p>

                <p><strong>Condiciones de pago con tarjeta de crédito/débito</strong></p>

                <p>Todas las tarjetas de crédito deben tener una dirección de facturación verificable en EE.UU., Canadá
                    u otros países. Consulte la lista de países en los que se aceptan tarjetas de crédito en el menú
                    desplegable de pagos de la página de pago. Todas las reservas y tarifas no están garantizadas hasta
                    que se emite el billete. En el caso de hoteles, alquileres de coches y paquetes vacacionales, las
                    reservas no están garantizadas a menos que reciba un número de confirmación por correo electrónico.
                </p>
                <p>
                    Cuando usted presenta su tarjeta de crédito o débito para una compra, solicitamos una autorización
                    por el importe de su transacción anticipada (colocando una "retención" temporal sobre los fondos).
                    Si por alguna razón no podemos confirmar su reserva, no se le cobrará y solicitaremos que el banco
                    de su tarjeta de crédito o débito libere dicha retención; hasta entonces, los fondos sujetos a la
                    retención no estarán a su disposición para otros fines. Si su tarjeta de crédito es rechazada por
                    cualquier motivo, se lo notificaremos en un plazo de 24 horas; el mero envío de la tarjeta de
                    crédito no garantiza automáticamente la emisión del billete. Tripsfares.com no se hace responsable
                    en caso de que su tarjeta de crédito o débito no sea aprobada o cargada. Puede haber muchas razones
                    por las que su tarjeta de crédito o débito no haya sido aprobada o cargada. Algunos ejemplos pueden
                    ser: La compañía aérea no pudo confirmar la reserva, la tarifa aumentó desde que se envió la
                    información de pago y antes de la emisión del billete o no hay fondos suficientes disponibles en la
                    tarjeta de crédito.
                </p>
                <p>En los casos en que la tarifa pueda haber aumentado, se le ofrecerán opciones alternativas y tendrá
                    derecho a cancelar la reserva sin coste alguno para usted. Cuando la reserva se emite al precio
                    originalmente presupuestado, el billete no es reembolsable ni cancelable. Tripsfares.com utiliza
                    estrictas medidas de seguridad para el procesamiento de pagos con tarjeta de crédito. Las
                    transacciones fraudulentas, en caso de producirse, se comunican a la seguridad del aeropuerto, a las
                    compañías aéreas y a otras fuerzas de seguridad federales y estatales. Usted acepta ser responsable
                    de cualquier y todos los pagos con tarjeta de crédito y se compromete a no disputar los cargos
                    después de que la compra se ha hecho y sus entradas y / u otros productos han sido entregados por
                    correo electrónico de confirmación o han sido enviados a usted. Usted se compromete a reembolsar a
                    Tripsfares.com en los casos de devolución de cargos o disputas de tarjetas de crédito en los que
                    realmente ha comprado un servicio en nuestro sitio web. La mayoría de las transacciones con tarjeta
                    de crédito realizadas por teléfono a nuestro Departamento de Atención al Cliente se graban y están
                    disponibles como prueba en caso de cualquier disputa. Las transacciones en línea con tarjeta de
                    crédito se autorizan en el momento en que el usuario o cualquier persona que actúe en su nombre
                    acepta estas condiciones y continúa con la compra. Para ofrecerle más seguridad, cuando nuestros
                    sistemas determinen que determinadas transacciones son de alto riesgo, no las procesaremos a menos
                    que nuestro equipo de verificación de tarjetas de crédito haya determinado que es seguro
                    procesarlas. Para determinar la validez de dichas transacciones, es posible que nos pongamos en
                    contacto con usted o con su banco.</p>

                <p><strong>Descensos de las tarjetas de crédito</strong></p>

                <p>En el momento de procesar su transacción, si su tarjeta de crédito es rechazada, haremos todo lo
                    posible por notificárselo mediante un mensaje de correo electrónico en un plazo de 3 días
                    laborables. La transacción no se procesará si su tarjeta de crédito ha sido rechazada. La TARIFA y
                    cualquier otro detalle de la reserva NO ESTÁN GARANTIZADOS. Si se produce un cambio de tarifa, tiene
                    derecho a cancelar la reserva sin coste alguno para usted. No se le cobrará ninguna comisión por
                    ello.</p>

                <p><strong>Terminación</strong></p>

                <p>Nos reservamos el derecho, a nuestra entera discreción y sin responsabilidad alguna, de cancelar su
                    acceso a la totalidad o parte del Sitio, con o sin previo aviso, por cualquier motivo o sin motivo
                    alguno.</p>

                <p><strong>Divisibilidad</strong></p>

                <p>Nos reservamos el derecho, a nuestra entera discreción y sin responsabilidad alguna, de cancelar su
                    acceso a la totalidad o parte del Sitio, con o sin previo aviso, por cualquier motivo o sin motivo
                    alguno.

                </p>
                <p>Estos términos y condiciones son divisibles. En caso de que se determine que alguna disposición es
                    inaplicable o inválida, dicha disposición se aplicará en la máxima medida permitida por la
                    legislación aplicable, y dicha determinación no afectará a la validez y aplicabilidad de las demás
                    disposiciones restantes.</p>

                <p><strong>No Renuncia</strong></p>

                <p>Ningún fallo por parte de Tripsfares.com para hacer cumplir cualquier parte de estos Términos y
                    Condiciones constituirá una renuncia a cualquiera de los derechos de Tripsfares.com bajo estos
                    Términos y Condiciones, ya sea para acciones pasadas o futuras por parte de cualquier persona. Ni la
                    recepción de fondos por Tripsfares.com ni la confianza de cualquier persona en las acciones de
                    Tripsfares.com se considerará que constituye una renuncia a cualquier parte de estos Términos y
                    Condiciones. Sólo una renuncia específica, escrita y firmada por un representante autorizado de
                    Tripsfares.com tendrá ningún efecto legal.</p>

                <p><strong>Extracción de datos</strong></p>

                <p>Si usted abusa de este Sitio con numerosos escaneos, data scraping, o screen scraping, nos reservamos
                    el derecho de terminar su acceso a este Sitio inmediatamente.</p>

                <p><strong>Asientos, comidas, vuelos frecuentes y otras solicitudes</strong></p>

                <p>Tenga en cuenta que sus solicitudes de asiento, comidas, viajero frecuente y otras solicitudes
                    especiales son sólo una petición. La compañía aérea se reserva el derecho de aplicar cualquier
                    revisión a la asignación de asientos solicitada sin previo aviso. Todas las solicitudes deben
                    verificarse con la compañía aérea. No garantizamos que se le asigne el asiento que ha solicitado.
                </p>

                <p><strong>Política de equipajes en vuelos de conexión</strong></p>

                <p>Cuando hay dos o más aerolíneas implicadas en vuelos de conexión, es posible que tenga que recoger su
                    equipaje en el aeropuerto de conexión y volver a facturar para continuar su viaje. En estos casos,
                    si tiene exceso de equipaje, tendrá que pagar la tasa por exceso de equipaje que aplique cada
                    compañía aérea. En la actualidad, la mayoría de las compañías aéreas cobran tasas de equipaje
                    incluso por la primera maleta facturada, por lo que recomendamos viajar ligero para reducir estos
                    costes. Para localizar las tasas de facturación de equipaje de cada compañía aérea, visite nuestra
                    página "Tasas de equipaje" o busque el enlace "Tasas de equipaje" en nuestro sitio web. Las tasas
                    por equipaje oscilan entre 15 USD y 100 USD o más, dependiendo del tamaño y peso de la maleta, y es
                    por maleta facturada. Estas tasas deben abonarse directamente a la compañía aérea al utilizar dicho
                    servicio. Nos esforzamos por mantener actualizada la tabla de tasas de equipaje, pero le
                    recomendamos que se ponga en contacto directamente con la compañía aérea para conocer las últimas
                    tasas de facturación de equipaje y la política en materia de equipaje.</p>

                <p><strong>Responsabilidad por equipajes</strong><p></p>

                <p>Para vuelos dentro de EE.UU., las normas federales exigen que cualquier límite de responsabilidad de
                    una aerolínea por el equipaje sea de al menos 3.300 dólares por pasajero. En los viajes
                    internacionales (incluidos los tramos nacionales de los viajes internacionales) se aplican distintos
                    límites de responsabilidad por pérdida, retraso o daño del equipaje. Si se aplica el Convenio de
                    Montreal, el límite es de 1.131 Derechos Especiales de Giro (aproximadamente 1.700 $) por pasajero,
                    a menos que se declare por adelantado un valor superior y se paguen cargos adicionales. Si se aplica
                    el Convenio de Varsovia, el límite es de aproximadamente 9,07 $ por libra (20 $ por kilogramo) para
                    el equipaje facturado y de 400 $ por pasajero para el equipaje no facturado, a menos que se declare
                    por adelantado un valor superior y se paguen cargos adicionales. Es posible que no se declare un
                    exceso de valor en determinados tipos de artículos de valor. Las compañías aéreas no asumen ninguna
                    responsabilidad por los artículos frágiles o perecederos. Puede solicitar más información a la
                    aerolineas.</p>

                <p><strong>Política de equipajes y tarifas</strong></p>

                <p>Si tiene exceso de equipaje, tendrá que pagar la tasa por exceso de equipaje que imponga cada
                    compañía aérea. La mayoría de las compañías aéreas cobran ahora tasas de equipaje incluso por la
                    primera maleta facturada, por lo que recomendamos viajar ligero para reducir estos costes. Para
                    localizar las tasas de facturación de equipaje de cada compañía aérea, visite nuestra página "Tasas
                    de equipaje" o busque el enlace "Tasas de equipaje" en nuestro sitio web. Las tasas por equipaje
                    oscilan entre 15 USD y 50 USD o más, dependiendo del tamaño y peso de la maleta, y son por maleta
                    facturada. Estas tasas deben abonarse directamente a la compañía aérea al utilizar dicho servicio.
                    Nos esforzamos por mantener actualizada la tabla de tasas de equipaje, pero le recomendamos que se
                    ponga en contacto directamente con la compañía aérea para conocer las últimas tasas de facturación
                    de equipaje y la política en materia de equipaje.</p>

                <p><strong>Sobreventa de vuelos</strong></p>

                <p>Los vuelos de las aerolíneas pueden estar sobrevendidos, y existe una pequeña posibilidad de que no
                    haya un asiento disponible en un vuelo para el que una persona tiene una reserva confirmada. Si el
                    vuelo está sobrerreservado, no se denegará el embarque a nadie hasta que el personal de la aerolínea
                    pida voluntarios dispuestos a renunciar a su reserva a cambio de una compensación a elección de la
                    aerolínea. Si no hay suficientes voluntarios, la compañía aérea puede denegar el embarque a otras
                    personas de acuerdo con su prioridad de embarque particular. Salvo contadas excepciones, como el
                    incumplimiento del plazo de facturación de la compañía aérea (que pueden solicitarse a la compañía
                    aérea), las personas a las que se deniega el embarque involuntariamente tienen derecho a una
                    indemnización de la compañía aérea. Las normas completas para el pago de compensaciones y las
                    prioridades de embarque de cada compañía aérea están disponibles en todos los mostradores de
                    billetes y lugares de embarque de los aeropuertos. Algunas compañías aéreas no aplican estas
                    protecciones del consumidor a los viajes procedentes de algunos países extranjeros, aunque pueden
                    existir otras protecciones del consumidor. Consulte con la compañía aérea o llámenos para obtener
                    más detalles..</p>

                <p><strong>Aerolíneas Cambios de horario/Cancelaciones de vuelos</strong></p>

                <p>Política de las compañías aéreas sobre los cambios de horario: Todas las compañías aéreas tienen
                    normas y políticas diferentes sobre los cambios de horario. ¿Qué es un cambio o cancelación de
                    horario? ¿Por qué se produce? Debido a las necesidades operativas de cada compañía aérea, a menudo
                    realizan cambios en los vuelos que operan en ese momento. A menudo, estos cambios son una predicción
                    de las necesidades de viaje para fechas futuras, pero también pueden reflejar cambios en el mismo
                    día. Los tipos de cambios pueden ser: cambios de número de vuelo, cambios de horario, rutas, cambios
                    de fecha o cancelaciones. ¿Qué son las cancelaciones? Cuando una compañía aérea ha interrumpido o
                    cancelado temporalmente el servicio a determinadas ciudades o ha interrumpido el servicio en
                    determinados días de la semana. Motivos de las cancelaciones o cambios de horario: - Temporada alta
                    o alta de viajes - Temporada baja de viajes - Cambios de Terminal o Puerta de Aeropuerto - Precios
                    de Combustible - Disturbios Civiles - Actos de Dios - volcán, terremotos, huracanes, etc. - Quiebra
                    Tripsfares.com no asume ninguna responsabilidad por los vuelos cancelados, los vuelos que se
                    pierden, o los vuelos no conectar debido a cualquier cambios de horario efectuados por las compañías
                    aéreas. Nuestra política sobre cambios de horario: Hacemos todo lo posible por notificar al cliente
                    cualquier cambio de horario. Siempre es mejor ponerse en contacto con la aerolínea para reconfirmar
                    sus vuelos en un plazo de 72 horas antes de la salida.&nbsp;</p>
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