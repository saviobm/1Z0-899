<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1508186603022" ID="ID_440038459" MODIFIED="1514300351572" STYLE="fork" TEXT="Cerifica&#xe7;&#xe3;o 1Z0-899">
<node CREATED="1508186603022" ID="ID_490295773" MODIFIED="1509400670885" POSITION="right" STYLE="fork" TEXT="Protocolo HTTP">
<node CREATED="1508186641763" ID="ID_549836734" MODIFIED="1509400670885" TEXT="GET - Solicita&#xe7;&#xe3;o simples"/>
<node CREATED="1508186659228" ID="ID_1537363229" MODIFIED="1509400670885" TEXT="POST - Solicita&#xe7;&#xe3;o de um recurso com informa&#xe7;&#xf5;es do usu&#xe1;rio. Ex: Formul&#xe1;rio"/>
<node CREATED="1508186754752" ID="ID_1366919293" MODIFIED="1509400670885" TEXT="Outros m&#xe9;todos: HEAD, TRACE, PUT, DELETE, OPTIONS e CONNECT"/>
</node>
<node CREATED="1508796682144" ID="ID_1738090764" MODIFIED="1513176767918" POSITION="right" TEXT="Servlet">
<node CREATED="1508796841572" HGAP="59" ID="ID_715790932" MODIFIED="1509400670885" TEXT="Classe abstrata GenericServlet" VSHIFT="21">
<node CREATED="1508796953928" ID="ID_1412163915" MODIFIED="1509400670885" TEXT="Implementa a maioria dos m&#xe9;todos b&#xe1;sicos do servlet incluindo os m&#xe9;todos da interface servlet que a mesma implementa"/>
</node>
<node CREATED="1508186603022" HGAP="55" ID="ID_163528415" MODIFIED="1509400670888" STYLE="fork" TEXT="Classe abstrata HttpServlet" VSHIFT="29">
<node CREATED="1508186641763" ID="ID_1443275315" MODIFIED="1509400670888" TEXT="Implementa o m&#xe9;todo service para refletir as caracter&#xed;sticas HTTP"/>
</node>
</node>
<node CREATED="1508797595765" ID="ID_1799908126" MODIFIED="1509400670888" POSITION="left" TEXT="Ciclo de vida Servlet">
<node CREATED="1508797615662" ID="ID_194615133" MODIFIED="1509400670888" TEXT="O Container Web chama o m&#xe9;todo init() depois de instanciado, possibilita que inicialize o Servlet antes de tratar a solicita&#xe7;&#xe3;o do cliente. Roda apenas uma vez no ciclo de vida do servlet."/>
<node CREATED="1508797789691" ID="ID_971615184" MODIFIED="1513945272862" TEXT="Quando chega a primeira solicita&#xe7;&#xe3;o do cliente o container Web cria ou aloca uma nova thread do pool de threads fazendo com que o m&#xe9;todo service do servlet seja ativado, analisa a solicita&#xe7;&#xe3;o e verifica qual m&#xe9;todo ser&#xe1; chamado doGet e/ou doPost. O m&#xe9;todo service nunca pode ser sobrescrito."/>
<node CREATED="1508798011667" ID="ID_615238334" MODIFIED="1513593483027" TEXT="Agora &#xe9; o ciclo dos m&#xe9;todos doGet e/ou doPost onde tudo come&#xe7;a. Respons&#xe1;vel por tudo que esperamos da aplica&#xe7;&#xe3;o."/>
</node>
<node CREATED="1508962211455" ID="ID_1807574844" MODIFIED="1513177296470" POSITION="left" TEXT="M&#xe9;todos HTTP">
<node CREATED="1508962226279" ID="ID_979220854" MODIFIED="1513593564670" TEXT="GET (Indempotente -&gt; Capaz de rodar v&#xe1;rias vezes sem afetar os dados.), POST (N&#xe3;o idempotente - Tem que garantir os dados ao receber v&#xe1;rias solicita&#xe7;&#xf5;es do mesmo cliente.), HEAD, TRACE, OPTIONS, PUT, DELETE e CONNECT.">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1508966509835" ID="ID_1319556276" MODIFIED="1509400670897" POSITION="right" TEXT="Headers">
<node CREATED="1508966522383" ID="ID_901625906" MODIFIED="1509400670898" TEXT="setHeader(&quot;&quot;, &quot;&quot;) --&gt; Substitui o valor existente para o header."/>
<node CREATED="1508966549915" ID="ID_1062308988" MODIFIED="1512576230336" STYLE="fork" TEXT="addHeader(&quot;&quot;, &quot;&quot;) --&gt; Se o Header existir adiciona mais um valor ao header sen&#xe3;o cria um novo header."/>
</node>
<node CREATED="1508967171537" ID="ID_427853416" MODIFIED="1509400670898" POSITION="left" TEXT="Response">
<node CREATED="1508966642904" ID="ID_1885508790" MODIFIED="1509400670898" TEXT="Op&#xe7;&#xf5;es de sa&#xed;da no HttpServletResponse">
<node CREATED="1508966667420" ID="ID_1173077233" MODIFIED="1509400670898" TEXT="PrintWriter writer = response.getWriter(); writer.println(&quot;&quot;);"/>
<node CREATED="1508966711173" ID="ID_580515631" MODIFIED="1509400670898" TEXT="ServletOutputStream out = response.getOutputStream(); out.write(&quot;&quot;);"/>
</node>
</node>
<node CREATED="1508967835678" ID="ID_1507773308" MODIFIED="1509400670898" POSITION="left" TEXT="Redirecionamento">
<node CREATED="1508967183140" ID="ID_275407495" MODIFIED="1509400670898" TEXT="URLs relativas no response.sendRedirect(&quot;foo/stuff.html&quot;); --&gt; retira o nome do servlet da url e adiciona o que est&#xe1; sendo informado. response.sendRedirect(&quot;/foo/stuff.html&quot;); --&gt; raiz do servidor ex: http://localhost:8080/foo/stuff.html - O trabalho &#xe9; feito pelo cliente (browser) e a URL muda e o cliente sabe que foi redirecionado."/>
<node CREATED="1508967551061" ID="ID_1678644419" MODIFIED="1513769214906" TEXT="RequestDiaspatcher view = request.getRequestDispatcher(&quot;teste.jsp&quot;); view.forward(request, response); O trabalho &#xe9; feito pelo servidor. A URL n&#xe3;o muda e o cliente n&#xe3;o sabe que foi redirecionado."/>
</node>
<node CREATED="1509051017536" ID="ID_357585972" MODIFIED="1509400670903" POSITION="right" TEXT="Interface - ServletResponse">
<node CREATED="1509051036183" ID="ID_757927878" MODIFIED="1513766862441" TEXT="m&#xe9;todos getBufferSize(), setContentType(), getOutputStream(), getWriter(), setContentLenght()"/>
</node>
<node CREATED="1509051179734" HGAP="-72" ID="ID_1742763790" MODIFIED="1510153606023" POSITION="left" TEXT="Interface - HttpServletResponse" VSHIFT="93">
<node CREATED="1509051207670" ID="ID_1655201396" MODIFIED="1514300461352" TEXT="addCookie(), addHeader(), setHeader(), encodeURL(), encodeRedirectUrl(), sendError(), setStatus(), sendRedirect() "/>
</node>
<node CREATED="1509051285797" ID="ID_1513252555" MODIFIED="1509400670903" POSITION="right" TEXT="Interface - ServletRequest">
<node CREATED="1509051313010" ID="ID_87909527" MODIFIED="1513177159669" TEXT="getAttribute(String), getContentLenght(), getInputStream(), getLocalPort(), getRemotePort(), getServletPort(), getParameter(String), getParameterValues(String), getParameterNames()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1509051410045" HGAP="-92" ID="ID_261169795" MODIFIED="1509400670905" POSITION="left" TEXT="Interface - HttpServletRequest" VSHIFT="32">
<node CREATED="1509051440923" ID="ID_726788840" MODIFIED="1509400670905" TEXT="getContextPath(), getCookies(), getHeader(String), getIntHeader(String), getMethod(), getQueryString(), getSession()"/>
</node>
<node CREATED="1509054191224" ID="ID_1856006342" MODIFIED="1509400670907" POSITION="right" TEXT="Classe abstrata GenericServlet">
<node CREATED="1509054210865" ID="ID_377899945" MODIFIED="1513592356779" TEXT="service(ServletRequest, ServletResponse), init(ServletConfig), init(), destroy(), getServletConfig(), getServletInfo(), getInitParameter(String), getInitParameterNames(), getServletContext(), log(String), log(String, Throwable)"/>
</node>
<node CREATED="1509054333224" HGAP="-111" ID="ID_708576079" MODIFIED="1510232414801" POSITION="left" TEXT="Interface - ServletConfig" VSHIFT="42">
<node CREATED="1509054357489" ID="ID_866106118" MODIFIED="1514300984076" TEXT="getInitParameter(String), Enumeration - getInitParameterNames(), getServletContext(), getServletName()"/>
</node>
<node CREATED="1509400683852" ID="ID_1912751497" MODIFIED="1510001683506" POSITION="right" TEXT="Listeners">
<node CREATED="1509400695583" ID="ID_1364960084" MODIFIED="1509400797591" TEXT="&lt;&lt;interface&gt;&gt; javax.selvlet.ServletContextListener">
<node CREATED="1509400726416" ID="ID_1726272227" MODIFIED="1509400751319" TEXT="contextInitialized(ServletContextEvent)"/>
<node CREATED="1509400756024" ID="ID_151879806" MODIFIED="1509400773411" TEXT="contextDestroyed(ServletContextEvent)"/>
</node>
<node CREATED="1510001683507" ID="ID_1511530302" MODIFIED="1510002763333" TEXT="Cen&#xe1;rios">
<node CREATED="1510001689611" ID="ID_1620391137" MODIFIED="1510001871838" TEXT="Voc&#xea; quer saber se um atributo em um contexto da aplica&#xe7;&#xe3;o foi adicionado, removido ou substitu&#xed;do.">
<node CREATED="1510001742633" ID="ID_294724851" MODIFIED="1510001832115" TEXT="&lt;&lt;interface&gt;&gt; javax.servlet.ServletContextAttributeListener">
<node CREATED="1510001806002" ID="ID_697360504" MODIFIED="1513592704053" TEXT="ServletContextAttributeEvent"/>
<node CREATED="1510001835343" ID="ID_1787053413" MODIFIED="1510001844513" TEXT="attributeAdded"/>
<node CREATED="1510001847629" ID="ID_1142634085" MODIFIED="1510001855905" TEXT="attributeRemoved"/>
<node CREATED="1510001858709" ID="ID_793088861" MODIFIED="1510001866880" TEXT="attributeReplaced"/>
</node>
</node>
<node CREATED="1510001877869" ID="ID_1067061544" MODIFIED="1510001924959" TEXT="Voc&#xea; quer saber quantos usu&#xe1;rios concorrentes existem. Em outras palavras voc&#xea; quer rastrear as sess&#xf5;es ativas.">
<node CREATED="1510001928677" ID="ID_843957472" MODIFIED="1510001979599" TEXT="&lt;&lt;interface&gt;&gt; javax.servlet.http.HttpSessionListener">
<node CREATED="1510001957805" ID="ID_1650107727" MODIFIED="1510001966903" TEXT="sessionCreated"/>
<node CREATED="1510001969440" ID="ID_1818293131" MODIFIED="1510001974693" TEXT="sessionDestroyed"/>
<node CREATED="1510001987793" ID="ID_1191065930" MODIFIED="1510001996601" TEXT="HttpSessionEvent"/>
</node>
</node>
<node CREATED="1510002094178" ID="ID_340130736" MODIFIED="1510002130198" TEXT="Voc&#xea; quer saber todas as vezes que uma solicita&#xe7;&#xe3;o chegar, para ent&#xe3;o poder log&#xe1;-las.">
<node CREATED="1510002132566" ID="ID_816148208" MODIFIED="1510002184934" TEXT="&lt;&lt; interface &gt;&gt; javax.servlet.ServletRequestListener">
<node CREATED="1510002166102" ID="ID_736782808" MODIFIED="1510002176199" TEXT="ServletRequestEvent"/>
<node CREATED="1510002188122" ID="ID_1056201449" MODIFIED="1510002206508" TEXT="requestInitialized"/>
<node CREATED="1510002210710" ID="ID_697274632" MODIFIED="1510002215829" TEXT="requestDestoyed"/>
</node>
</node>
<node CREATED="1510002224181" ID="ID_927265794" MODIFIED="1510002363088" TEXT="Voc&#xea; quer saber se um atributo da solicita&#xe7;&#xe3;o foi adicionado, removido ou substitu&#xed;do.">
<node CREATED="1510002259211" ID="ID_101748763" MODIFIED="1510002297573" TEXT="&lt;&lt; interface &gt;&gt; javax.servlet.ServletRequestAttributeListener">
<node CREATED="1510002301981" ID="ID_1331166275" MODIFIED="1510002312656" TEXT="ServletRequestAttributeEvent"/>
<node CREATED="1510002315405" ID="ID_1716547467" MODIFIED="1510002331383" TEXT="attributeAdded"/>
<node CREATED="1510002335832" ID="ID_321241215" MODIFIED="1510002345926" TEXT="attributeRemoved">
<node CREATED="1510239113775" ID="ID_1464512087" MODIFIED="1510239144157" TEXT="O objeto ServletRequestAttributeEvent no momento do removed cont&#xe9;m o valor atualizado do atributo. Ex.: event.getValue();"/>
</node>
<node CREATED="1510002350133" ID="ID_1824248630" MODIFIED="1510002356093" TEXT="attributeReplaced">
<node CREATED="1510239038215" ID="ID_652053316" MODIFIED="1510239100643" TEXT="O objeto ServletRequestAttributeEvent no momento do replaced ainda cont&#xe9;m o valor antigo. Ex.: event.getValue();"/>
</node>
</node>
</node>
<node CREATED="1510002394220" ID="ID_1150164019" MODIFIED="1510003123711" TEXT="Voc&#xea; tem uma classe de atributo (uma classe para um objeto que ser&#xe1; colocado em um atributo) e voc&#xea; quer que os objetos desse tipo sejam notificados quando eles forem associados ou removidos de uma sess&#xe3;o.">
<node CREATED="1510002470013" ID="ID_223011409" MODIFIED="1510002532897" TEXT="&lt;&lt; interface &gt;&gt; javax.servlet.http.HttpSessionBindingListener">
<node CREATED="1510002514407" ID="ID_288799797" MODIFIED="1510002524450" TEXT="HttpSessionBindingEvent"/>
<node CREATED="1510002534442" ID="ID_275163042" MODIFIED="1510002597840" TEXT="valueBound"/>
<node CREATED="1510002563053" ID="ID_1380288617" MODIFIED="1510002604834" TEXT="valueUnbound"/>
<node CREATED="1510585780067" ID="ID_406938208" MODIFIED="1510585795454" TEXT="N&#xe3;o precisa ser declarado no DD."/>
</node>
</node>
<node CREATED="1510003131542" ID="ID_895616453" MODIFIED="1510003173880" TEXT="Voc&#xea; quer saber quando um atributo de sess&#xe3;o foi acrescentado, removido ou substitu&#xed;do.">
<node CREATED="1510003178850" ID="ID_107590693" MODIFIED="1510003247402" TEXT="&lt;&lt; interface &gt;&gt; javax.servlet.http.HttpSessionAttributeListener">
<node CREATED="1510003210276" ID="ID_197695662" MODIFIED="1510003221399" TEXT="HttpSessionBindingEvent"/>
<node CREATED="1510003227333" ID="ID_1819022699" MODIFIED="1510003236635" TEXT="attributeAdded"/>
<node CREATED="1510003240571" ID="ID_1911618547" MODIFIED="1510003245652" TEXT="attributeRemoved"/>
<node CREATED="1510003250059" ID="ID_858453752" MODIFIED="1510003255996" TEXT="attributeReplaced"/>
</node>
</node>
<node CREATED="1510002616611" ID="ID_1031674225" MODIFIED="1510002646203" TEXT="Voc&#xea; quer saber se um contexto foi criado ou destru&#xed;do.">
<node CREATED="1510002652210" ID="ID_819778346" MODIFIED="1510002714175" TEXT="&lt;&lt; interface &gt;&gt; javax.servlet.ServletContextListener">
<node CREATED="1510002701616" ID="ID_40073866" MODIFIED="1510002711509" TEXT="ServletContextEvent"/>
<node CREATED="1510002715428" ID="ID_1228608734" MODIFIED="1510002724601" TEXT="contextInitialized"/>
<node CREATED="1510002728768" ID="ID_285304055" MODIFIED="1510002734315" TEXT="contextDestroyed"/>
</node>
</node>
<node CREATED="1510002765280" ID="ID_1901623978" MODIFIED="1510002824672" TEXT="Voc&#xea; tem uma classe de atributo e voc&#xea; quer que objetos deste tipo sejam notificados quando a sess&#xe3;o na qual eles est&#xe3;o associados estiver migrando entre JVM&#xb4;s.">
<node CREATED="1510002835932" ID="ID_802509590" MODIFIED="1510003069403" TEXT="&lt;&lt; interface &gt;&gt; javax.servlet.http.HttpSessionActivationListener">
<node CREATED="1510002949351" ID="ID_953127155" MODIFIED="1510003031145" TEXT="HttpSessionEvent"/>
<node CREATED="1510002964454" ID="ID_604695795" MODIFIED="1510003067024" TEXT="sessionDidActivate"/>
<node CREATED="1510003072661" ID="ID_630865135" MODIFIED="1510003087517" TEXT="sessionWillPassivate"/>
</node>
</node>
</node>
<node CREATED="1510585729830" ID="ID_1120390428" MODIFIED="1510585768728" TEXT="O listener HttpSessionBindingListener &#xe9; o &#xfa;nico listener que n&#xe3;o precisa ser declarado no DD."/>
</node>
<node CREATED="1510153609632" ID="ID_1195321547" MODIFIED="1510153636498" POSITION="left" TEXT="&lt;&lt; interface &gt;&gt; javax.servlet.RequestDispatcher">
<node CREATED="1510153638380" ID="ID_597379388" MODIFIED="1510153654144" TEXT="forward(HttpServletRequest, HttpServletResponse)"/>
<node CREATED="1510153655851" ID="ID_1898085351" MODIFIED="1510153673886" TEXT="include(HttpServletRequest, HttpServletResponse)"/>
<node CREATED="1510153676242" ID="ID_934419623" MODIFIED="1513178086310" TEXT="Como obt&#xea;-lo">
<node CREATED="1510153687257" ID="ID_85284212" MODIFIED="1510153714428" TEXT="request.getRequestDispatcher(&quot;teste.jsp&quot;); - caminho relativo"/>
<node CREATED="1510153716071" ID="ID_601688953" MODIFIED="1510153749865" TEXT="getServletContext().getRequestDispatcher(&quot;/teste.jsp&quot;); - raiz da aplica&#xe7;&#xe3;o"/>
</node>
</node>
<node CREATED="1510241283088" ID="ID_894154611" MODIFIED="1512590459760" POSITION="right" TEXT="Sess&#xf5;es">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1510241297695" ID="ID_936405436" MODIFIED="1510241332609" TEXT="Existe duas maneiras de objter a sess&#xe3;o.">
<node CREATED="1510241333724" ID="ID_577421403" MODIFIED="1510241347296" TEXT="request.getSession(); - Requisi&#xe7;&#xe3;o"/>
<node CREATED="1510241350083" ID="ID_467945123" MODIFIED="1510241461529" TEXT="HttpSessionEvent e sua subClasse HttpSessionBindingEvent - Listeners de sess&#xe3;o.">
<node CREATED="1510241392273" ID="ID_457417423" MODIFIED="1513179392857" TEXT="Os dois eventos possuem um m&#xe9;todo getSession();">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1510241493722" ID="ID_1566791088" MODIFIED="1510241504750" TEXT="Recuperando uma sess&#xe3;o pr&#xe9;-existente">
<node CREATED="1510241506617" ID="ID_1300389524" MODIFIED="1513179426162" TEXT="getSession(boolean)  - request.getSession(false); devolve a sess&#xe3;o pr&#xe9;-existente, se n&#xe3;o existir retorna null."/>
</node>
<node CREATED="1510241596539" ID="ID_589697227" MODIFIED="1510241645861" TEXT="O m&#xe9;todo isNew() - Booleano que informa se a sess&#xe3;o acabou de ser criada no m&#xe9;todo: getSession()."/>
<node CREATED="1510323935963" ID="ID_606496143" MODIFIED="1510323944066" TEXT="Reescrita de URL">
<node CREATED="1510323945704" ID="ID_771127927" MODIFIED="1510324055030" TEXT="S&#xf3; &#xe9; feita na inst&#xe2;ncia da classe HttpServletResponse">
<node CREATED="1510323965543" ID="ID_372109994" MODIFIED="1510324022104" TEXT="encodeURL(&quot;&quot;);">
<node CREATED="1513179783944" ID="ID_1109671185" MODIFIED="1513179847639" TEXT="&#xc9; usado para links normais dentro de suas p&#xe1;ginas HTML"/>
</node>
<node CREATED="1510323977454" ID="ID_343570070" MODIFIED="1510324027528" TEXT="encodeRedirectURL(&quot;&quot;);">
<node CREATED="1513179815517" ID="ID_585920804" MODIFIED="1513179835648" TEXT="&#xc9; para um link que voc&#xea; est&#xe1; passando para response.sendRedirect(&quot;&quot;)"/>
</node>
</node>
</node>
<node CREATED="1510325636600" ID="ID_707245372" MODIFIED="1510325642926" TEXT="Principais m&#xe9;todos">
<node CREATED="1510325644489" ID="ID_213369862" MODIFIED="1510325660688" TEXT="getCreationTime()"/>
<node CREATED="1510325662276" ID="ID_1291457873" MODIFIED="1510325691548" TEXT="getLastAccessedTime() - milisegundos"/>
<node CREATED="1510325693976" ID="ID_647204272" MODIFIED="1513179899609" TEXT="setMaxInactiveInterval() - segundos">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510325753632" ID="ID_362642874" MODIFIED="1510325763965" TEXT="getMaxInactiveInterval() - segundos"/>
<node CREATED="1510325773065" ID="ID_1429801812" MODIFIED="1513179916863" TEXT="invaliade()">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1510325811234" ID="ID_731422391" MODIFIED="1510325979772" TEXT="Timeouts">
<node CREATED="1510325843219" ID="ID_51132536" MODIFIED="1513180005909" TEXT="No DD &lt;session-config&gt;&lt;session-timeout&gt;15&lt;/session-timeout&gt;&lt;/session-config&gt;">
<node CREATED="1510325884660" ID="ID_840527033" MODIFIED="1510326120489" TEXT="&#xc9; configurado em minutos e &#xe9; utilizado por todas as sess&#xf5;es."/>
</node>
<node CREATED="1510325994761" ID="ID_760286540" MODIFIED="1510326081977" TEXT="Na aplica&#xe7;&#xe3;o - session.setMaxInactiveInterval()">
<node CREATED="1510326023514" ID="ID_1516489586" MODIFIED="1510326104449" TEXT="&#xc9; configurado em segundos e fica espec&#xed;fico da sess&#xe3;o configurada."/>
</node>
</node>
<node CREATED="1510326481917" ID="ID_174082729" MODIFIED="1513180100455" TEXT="Depois de chamado o session.invalidade() ou se a sess&#xe3;o foi configurada com o session.setMaxInactiveInterval(0), Ocorrer&#xe1; uma exce&#xe7;&#xe3;o IllegalStateException."/>
<node CREATED="1510326851566" ID="ID_111144567" MODIFIED="1510326933629" TEXT="O servidor envia um header na resposta sob o nome: Set-Cookie e depois o cliente devolve com um header na solicita&#xe7;&#xe3;o sob o nome Cookie com os mesmos dados que vieram no Set-Cookie."/>
<node CREATED="1510327083895" ID="ID_1384452350" MODIFIED="1510327089011" TEXT="Cookies">
<node CREATED="1510327089838" ID="ID_1524540961" MODIFIED="1513180182413" TEXT="setMaxAge() - &#xc9; definido em segundos. Se configurar com &quot;-1&quot; ele s&#xf3; ser&#xe1; removido quando o browser fechar. Mesmo exemplo do cookie: JSESSIONID">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510327729421" ID="ID_727019585" MODIFIED="1510327790110" TEXT="N&#xe3;o existe um getCookie(&quot;&quot;), a &#xfa;nica forma &#xe9; um array de cookies: request.getCookies();"/>
</node>
<node CREATED="1510584224198" ID="ID_1214562147" MODIFIED="1510584270623" TEXT="As sess&#xf5;es s&#xe3;o os &#xfa;nicos objetos que n&#xe3;o s&#xe3;o duplicados em JVM&#xb4;s diferentes."/>
</node>
<node CREATED="1510843978085" ID="ID_188006675" MODIFIED="1512590449654" POSITION="left" TEXT="JSP">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1510842030047" ID="ID_1246914587" MODIFIED="1510844184112" TEXT="Diretivas JSP: Sempre come&#xe7;am com @, e existem tr&#xea;s diretivas.">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1510842043826" ID="ID_1990682660" MODIFIED="1513180515299" TEXT="&lt;%@page">
<node CREATED="1510931059595" ID="ID_140014766" MODIFIED="1510931099037" TEXT="atributos mais usados na diretira page">
<node CREATED="1510931102729" ID="ID_1289087689" MODIFIED="1510931104709" TEXT="import"/>
<node CREATED="1510931106384" ID="ID_1340023218" MODIFIED="1510931113524" TEXT="isThreadSafe"/>
<node CREATED="1510931114904" ID="ID_574415255" MODIFIED="1510931120252" TEXT="contentType"/>
<node CREATED="1510931121783" ID="ID_1531056486" MODIFIED="1513180576133" TEXT="isELIgnored - S&#xf3; funciona se no DD estiver configurado um padr&#xe3;o de Url que atenda a p&#xe1;gina informada."/>
<node CREATED="1510931135742" ID="ID_645438871" MODIFIED="1510931138771" TEXT="isErrorPage"/>
<node CREATED="1510931139830" ID="ID_694947990" MODIFIED="1510931145810" TEXT="errorPage"/>
</node>
<node CREATED="1513180463437" ID="ID_1772248570" MODIFIED="1513180485882" TEXT="&lt;%@page import=&quot;x.*&quot; import=&quot;y.*&quot; %&gt;"/>
<node CREATED="1513180517710" ID="ID_310684779" MODIFIED="1513180660800" TEXT="&lt;%@page import=&quot;com.test.*,java.util.*&quot; %&gt;"/>
</node>
<node CREATED="1510842367813" ID="ID_1932018203" MODIFIED="1513180671056" TEXT="&lt;%@taglib %&gt;"/>
<node CREATED="1510842701960" ID="ID_1682860638" MODIFIED="1513180674393" TEXT="&lt;%@include %&gt;"/>
</node>
<node CREATED="1510842321080" ID="ID_1505208230" MODIFIED="1510842356666" TEXT="Express&#xe3;o: &lt;%= Counter.getCounter() %&gt;">
<node CREATED="1510842494277" ID="ID_1685340257" MODIFIED="1510842527775" TEXT="Equivalente a: out.print(&quot;&quot;) - Por isso depois da express&#xe3;o n&#xe3;o &#xe9; colocado um &quot;;&quot;"/>
</node>
<node CREATED="1510843994668" ID="ID_1120122037" MODIFIED="1510844172904" TEXT="Declara&#xe7;&#xe3;o: &lt;%!  int count = 0; %&gt;">
<node CREATED="1510844033134" ID="ID_1311901559" MODIFIED="1510844161247" TEXT="Aqui precisa de um &quot;;&quot;, todas as vari&#xe1;veis e m&#xe9;todos declarados com &lt;%!%&gt; ser&#xe1; colocado fora do m&#xe9;todo _jspService(HttpServletRequest, HttpServletResponse) sendo vari&#xe1;veis e m&#xe9;todos da classe."/>
</node>
<node CREATED="1510844683458" ID="ID_782014591" MODIFIED="1510844687982" TEXT="Ciclo de Vida">
<node CREATED="1510844688954" ID="ID_195229597" MODIFIED="1510844701254" TEXT="M&#xe9;todos">
<node CREATED="1510844702281" ID="ID_522559736" MODIFIED="1510844703525" TEXT=" _jspInit()"/>
<node CREATED="1510844705041" ID="ID_1728152280" MODIFIED="1510844737723" TEXT="_jspDestroy()"/>
<node CREATED="1510844739591" ID="ID_1495139343" MODIFIED="1510844776409" TEXT="_jspService(HttpServletRequest, HttpServletResponse)"/>
</node>
</node>
<node CREATED="1510845066330" ID="ID_1402170215" MODIFIED="1510845071726" TEXT="Objetos Impl&#xed;citos">
<node CREATED="1510845072649" ID="ID_1773025466" MODIFIED="1510845086829" TEXT="out --&gt; JspWriter"/>
<node CREATED="1510845088352" ID="ID_1345773855" MODIFIED="1510845098380" TEXT="request --&gt; HttpServletRequest"/>
<node CREATED="1510845099783" ID="ID_1378896638" MODIFIED="1510845184591" TEXT="response --&gt; HttpServletResponse"/>
<node CREATED="1510845110215" ID="ID_1420122222" MODIFIED="1510845180143" TEXT="session --&gt; HttpSession"/>
<node CREATED="1510845118694" ID="ID_377538357" MODIFIED="1510845130226" TEXT="application --&gt; ServletContext"/>
<node CREATED="1510845131397" ID="ID_1820502218" MODIFIED="1510845142041" TEXT="config --&gt; ServletConfig"/>
<node CREATED="1510845143845" ID="ID_184816486" MODIFIED="1510845158232" TEXT="exception --&gt; JspException"/>
<node CREATED="1510845159492" ID="ID_796834118" MODIFIED="1510845174319" TEXT="pageContext --&gt; PageContext"/>
<node CREATED="1510845189338" ID="ID_1173711214" MODIFIED="1510845198326" TEXT="page --&gt; Object"/>
</node>
<node CREATED="1510928182593" ID="ID_846744052" MODIFIED="1510928186160" TEXT="Escopos">
<node CREATED="1510928186946" ID="ID_333871304" MODIFIED="1510928193254" TEXT="application"/>
<node CREATED="1510928194777" ID="ID_63080586" MODIFIED="1510928197334" TEXT="request"/>
<node CREATED="1510928198745" ID="ID_1042147760" MODIFIED="1510928204502" TEXT="session"/>
<node CREATED="1510928205889" ID="ID_1040402083" MODIFIED="1510928213661" TEXT="pageContext"/>
</node>
<node CREATED="1510928320817" ID="ID_696358875" MODIFIED="1514301578678" TEXT="PageContext">
<node CREATED="1510928356151" ID="ID_210100099" MODIFIED="1513946669354" TEXT="JspContext">
<node CREATED="1510928393309" ID="ID_393353501" MODIFIED="1510928402233" TEXT="getAttribute(String)"/>
<node CREATED="1510928403628" ID="ID_1184603116" MODIFIED="1510928436839" TEXT="getAttribute(String, int) - Aqui voc&#xea; pode passar o escopo."/>
<node CREATED="1510928438338" ID="ID_1669554866" MODIFIED="1510928452477" TEXT="getAttributeNamesInScope(int)"/>
<node CREATED="1510928464080" ID="ID_1116413090" MODIFIED="1510928471300" TEXT="findAttribute(String)">
<node CREATED="1510928725815" ID="ID_1140332492" MODIFIED="1510928742259" TEXT="Ordem da pesquisa quando n&#xe3;o sabe o escopo.">
<node CREATED="1510928743014" ID="ID_163366601" MODIFIED="1510928811367" TEXT="PAGE_SCOPE"/>
<node CREATED="1510928814234" ID="ID_1728683051" MODIFIED="1510928819366" TEXT="REQUEST_SCOPE"/>
<node CREATED="1510928820905" ID="ID_1156055827" MODIFIED="1510928824309" TEXT="SESSION_SCOPE"/>
<node CREATED="1510928825625" ID="ID_848485090" MODIFIED="1510928830341" TEXT="APPLICATION_SCOPE"/>
</node>
</node>
</node>
<node CREATED="1510928378718" ID="ID_634967577" MODIFIED="1510928391873" TEXT="PageContext extends JspContext">
<node CREATED="1510928494070" ID="ID_827661501" MODIFIED="1510928501090" TEXT="APPLICATION_SCOPE"/>
<node CREATED="1510928502374" ID="ID_1034014801" MODIFIED="1510928506706" TEXT="PAGE_SCOPE"/>
<node CREATED="1510928508765" ID="ID_468394354" MODIFIED="1510928513233" TEXT="REQUEST_SCOPE"/>
<node CREATED="1510928514533" ID="ID_936439453" MODIFIED="1510928517561" TEXT="SESSION_SCOPE"/>
<node CREATED="1510928539323" ID="ID_463152190" MODIFIED="1510928544351" TEXT="getRequest()"/>
<node CREATED="1510928545547" ID="ID_1376252125" MODIFIED="1510928550903" TEXT="getServletConfig()"/>
<node CREATED="1510928552618" ID="ID_775741899" MODIFIED="1510928559415" TEXT="getServletContext()"/>
<node CREATED="1510928562154" ID="ID_295908622" MODIFIED="1510928565286" TEXT="getSession()"/>
</node>
</node>
<node CREATED="1510930126290" ID="ID_485692764" MODIFIED="1510930155456" TEXT="&lt;jsp-file&gt; dentro do &lt;servlet&gt;"/>
<node CREATED="1510930897838" ID="ID_452640598" MODIFIED="1510930911946" TEXT="Invalidando elementos JSP">
<node CREATED="1510930606459" ID="ID_556557184" MODIFIED="1510930615760" TEXT="Invalidando Scripts">
<node CREATED="1510930618518" ID="ID_1322909070" MODIFIED="1510930749062" TEXT="&lt;jsp-config&gt;&lt;jsp-property-group&gt;&lt;url-pattern&gt;*.jsp&lt;/url-pattern&gt;&lt;scripting-invalid&gt;true&gt;&lt;/scripting-invalid&gt;&lt;/jsp-property-group&gt;&lt;/jsp-config&gt;"/>
</node>
<node CREATED="1510930913023" ID="ID_1878751078" MODIFIED="1510930919068" TEXT="Invalidando EL">
<node CREATED="1510930920143" ID="ID_186483596" MODIFIED="1510930966837" TEXT="&lt;jsp-config&gt;&lt;jsp-property-group&gt;&lt;url-pattern&gt;*.jsp&lt;/url-pattern&gt;&lt;el-ignored&gt;true&lt;/el-ignored&gt;&lt;/jsp-property-group&gt;&lt;/jsp-config&gt;"/>
</node>
</node>
<node CREATED="1510931286741" ID="ID_769460424" MODIFIED="1510931315008" TEXT="A&#xe7;&#xf5;es">
<node CREATED="1510931315627" ID="ID_1473142435" MODIFIED="1511275862686" TEXT="A&#xe7;&#xf5;es padr&#xe3;o">
<node CREATED="1511273790052" ID="ID_682382608" MODIFIED="1511273798412" TEXT="A&#xe7;&#xf5;es padr&#xe3;o Bean">
<node CREATED="1511273799190" ID="ID_277480177" MODIFIED="1511274961968" TEXT="&lt;jsp:useBean id=&quot;&quot; class=&quot;sub-classe concreta ou implementa&#xe7;&#xe3;o da classe referenciada no type&quot; scope=&quot;&quot; type=&quot;classe abstrata ou interface&quot; /&gt;">
<node CREATED="1511274018832" ID="ID_857522395" MODIFIED="1511274039371" TEXT="Se n&#xe3;o existir o bean no escopo informado ele cria um novo."/>
<node CREATED="1511275044846" ID="ID_1937961177" MODIFIED="1511275086992" TEXT="Se o type for usado sem um class o bean j&#xe1; dever&#xe1; existir sen&#xe3;o java.lang.InstantiationException"/>
<node CREATED="1514989957551" ID="ID_1439074357" MODIFIED="1514989970820" TEXT="beanName &#xe9; usado com o type"/>
</node>
<node CREATED="1511273832596" ID="ID_1946073304" MODIFIED="1511273850031" TEXT="&lt;jsp:getProperty name=&quot;&quot; property=&quot;&quot; /&gt;">
<node CREATED="1511277843002" ID="ID_1231209758" MODIFIED="1511277918074" TEXT="S&#xf3; acessa as propriedades do bean mencionado em name=&quot;&quot;. N&#xe3;o acessa objetos aninhados. Ex: person.dog.name com isso tem que usar EL: ${person.dog.name}"/>
</node>
<node CREATED="1511273862410" ID="ID_1737725692" MODIFIED="1511276662364" TEXT="&lt;jsp:setProperty name=&quot;nome do bean&quot; property=&quot;propriedade do bean&quot; value=&quot;valor&quot; param=&quot;nome do par&#xe2;metro do formul&#xe1;rio (recupera o valor)&quot; /&gt;">
<node CREATED="1511273969803" ID="ID_1473880188" MODIFIED="1511274016221" TEXT="Se for usada dentro de um &lt;jsp:UseBean /&gt; significa que s&#xf3; ser&#xe1; usado o setProperty se o bean for criado. "/>
<node CREATED="1511276901769" ID="ID_738314146" MODIFIED="1511276930526" TEXT="property=&quot;*&quot; coincide todas as propriedades do formul&#xe1;rio com o bean."/>
</node>
</node>
<node CREATED="1511275864169" ID="ID_179633022" MODIFIED="1513191243426" TEXT="&lt;jsp:include page=&quot;&quot; /&gt;"/>
<node CREATED="1511431311659" ID="ID_1530270957" MODIFIED="1513191270418" TEXT="&lt;jsp:forward page=&quot;&quot;&gt;&lt;jsp:param name=&quot;&quot; value=&quot;&quot; /&gt;&lt;/jsp:forward&gt;"/>
</node>
<node CREATED="1510931317795" ID="ID_548191267" MODIFIED="1510931352237" TEXT="A&#xe7;&#xf5;es customizadas &lt;c:set /&gt;"/>
</node>
<node CREATED="1511278148286" ID="ID_1585161127" MODIFIED="1511278156146" TEXT="EL - Expression Language">
<node CREATED="1511278229937" ID="ID_1882234354" MODIFIED="1511279209079" TEXT="Objetos impl&#xed;citos - S&#xf3; map&#xb4;s e bean">
<node CREATED="1511278344082" ID="ID_1367612085" MODIFIED="1511278349054" TEXT="pageContext">
<node CREATED="1511278506903" ID="ID_753872231" MODIFIED="1511278538834" TEXT="&#xc9; o &#xfa;nico objeto impl&#xed;cito que n&#xe3;o &#xe9; um HashMap ou HashTable e sim um JavaBean"/>
</node>
<node CREATED="1511345648213" ID="ID_1146067190" MODIFIED="1511345911283" TEXT="Map para atributos de Escopo">
<node CREATED="1511278237281" ID="ID_13814437" MODIFIED="1511278241037" TEXT="pageScope"/>
<node CREATED="1511278242160" ID="ID_1997698672" MODIFIED="1511278246501" TEXT="requestScope"/>
<node CREATED="1511278247904" ID="ID_1516110483" MODIFIED="1511278252668" TEXT="sessionScope"/>
<node CREATED="1511278254224" ID="ID_1151108310" MODIFIED="1511278263891" TEXT="applicationScope"/>
</node>
<node CREATED="1511345718595" ID="ID_1773448577" MODIFIED="1511345907435" TEXT="Map para par&#xe2;metros da solicita&#xe7;&#xe3;o">
<node CREATED="1511278270023" ID="ID_11980326" MODIFIED="1511278311544" TEXT="param"/>
<node CREATED="1511278312940" ID="ID_592847559" MODIFIED="1511278315640" TEXT="paramValues"/>
</node>
<node CREATED="1511345937261" ID="ID_828917735" MODIFIED="1511345944385" TEXT="Map para headers de solicita&#xe7;&#xe3;o">
<node CREATED="1511278317132" ID="ID_886251189" MODIFIED="1511278322072" TEXT="header"/>
<node CREATED="1511278323675" ID="ID_395112953" MODIFIED="1511278327040" TEXT="headerValues"/>
</node>
<node CREATED="1511345964931" ID="ID_587234939" MODIFIED="1511345968647" TEXT="Map para cookies">
<node CREATED="1511278329091" ID="ID_1830322558" MODIFIED="1511278332703" TEXT="cookie"/>
</node>
<node CREATED="1511345981954" ID="ID_1057505352" MODIFIED="1511345992582" TEXT="Map para par&#xe2;metros init do contexto">
<node CREATED="1511278334770" ID="ID_993763844" MODIFIED="1511278342247" TEXT="initParam"/>
</node>
</node>
<node CREATED="1511278370000" ID="ID_578359679" MODIFIED="1511278374749" TEXT="Atributos">
<node CREATED="1511278375824" ID="ID_1423273623" MODIFIED="1511278379492" TEXT="in page scope"/>
<node CREATED="1511278380632" ID="ID_1024864716" MODIFIED="1511278385828" TEXT="in request scope"/>
<node CREATED="1511278387343" ID="ID_802910005" MODIFIED="1511278393251" TEXT="in session scope"/>
<node CREATED="1511278394271" ID="ID_1563711233" MODIFIED="1511278400651" TEXT="in application scope"/>
</node>
<node CREATED="1511278901094" ID="ID_816381048" MODIFIED="1511279348510" TEXT="Vari&#xe1;vel sequida do operador [ ] pode ser precedido por um java.util.List ou um Array e tamb&#xe9;m serve para solucionar o problema de ter uma chave no map contendo pontos. Ex.: ${map[&quot;com.example&quot;]} o que n&#xe3;o poderia ser feito dessa forma:  ${map.com.example}"/>
<node CREATED="1511280307843" ID="ID_225823711" MODIFIED="1511280423363" TEXT="Com beans e maps pode ser usado o operaror &quot;.&quot; ou o operador &quot;[ ]&quot; s&#xf3; se  o que vier depois do ponto seja um identificador java. Ex: ${musicList.1} n&#xe3;o funciona."/>
<node CREATED="1511348213321" ID="ID_448019298" MODIFIED="1511348721650" TEXT="Outros operadores EL">
<node CREATED="1511348223498" ID="ID_1304497912" MODIFIED="1511348229959" TEXT="Aritm&#xe9;ticos">
<node CREATED="1511348231867" ID="ID_278949843" MODIFIED="1511348237625" TEXT="+"/>
<node CREATED="1511348239044" ID="ID_135022689" MODIFIED="1511348240576" TEXT="-"/>
<node CREATED="1511348242013" ID="ID_1563067930" MODIFIED="1511348243169" TEXT="*"/>
<node CREATED="1511348244613" ID="ID_1554542281" MODIFIED="1511348277422" TEXT="/ e div (pode dividir por zero que d&#xe1; infinito e n&#xe3;o um erro)"/>
<node CREATED="1511348290219" ID="ID_1751565171" MODIFIED="1511348297089" TEXT="% e mod">
<node CREATED="1511348881600" ID="ID_391669379" MODIFIED="1511438480928" TEXT="N&#xe3;o pode usar resto com &quot;0&quot; isso gera uma exce&#xe7;&#xe3;o"/>
</node>
</node>
<node CREATED="1511348722714" ID="ID_1330210302" MODIFIED="1511348725438" TEXT="L&#xf3;gicos">
<node CREATED="1511348726410" ID="ID_1423770869" MODIFIED="1511348734431" TEXT="&amp;&amp; e and"/>
<node CREATED="1511348735738" ID="ID_1112887146" MODIFIED="1511348751647" TEXT="|| e or"/>
<node CREATED="1511348756571" ID="ID_596511005" MODIFIED="1511348759744" TEXT="! e not"/>
</node>
<node CREATED="1511348775507" ID="ID_41480097" MODIFIED="1511348781641" TEXT="Relacionais">
<node CREATED="1511348782348" ID="ID_1082169716" MODIFIED="1511348788273" TEXT="== e eq"/>
<node CREATED="1511348794612" ID="ID_1930622895" MODIFIED="1511348798858" TEXT="!= e ne"/>
<node CREATED="1511348813461" ID="ID_1269085251" MODIFIED="1511348818690" TEXT="&lt; e lt"/>
<node CREATED="1511348819774" ID="ID_281642641" MODIFIED="1511348822962" TEXT="&gt; e gt"/>
<node CREATED="1511348836646" ID="ID_945262483" MODIFIED="1511348847571" TEXT="&lt;= e le"/>
<node CREATED="1511348848783" ID="ID_1481198978" MODIFIED="1511348855019" TEXT="&gt;= e ge"/>
</node>
<node CREATED="1511349015799" ID="ID_1918312533" MODIFIED="1511349031947" TEXT="true, false, null, instanceof e empty"/>
<node CREATED="1511350023942" ID="ID_611763044" MODIFIED="1511350143251" TEXT="Nas express&#xf5;es aritm&#xe9;ticas, a EL trata uma vari&#xe1;vel desconhecida como 0. Ex.: ${7 / foo} quando o foo n&#xe3;o existe o resultado &#xe9; infinito. E nas express&#xf5;es l&#xf3;gicas a EL trata a vari&#xe1;vel desconhecida como false."/>
</node>
</node>
<node CREATED="1511351501359" ID="ID_724996395" MODIFIED="1511351515908" TEXT="Diretiva e a&#xe7;&#xe3;o padr&#xe3;o include">
<node CREATED="1511351516894" ID="ID_1581840466" MODIFIED="1511352452368" TEXT="Diretiva include: &lt;%@ include file=&quot;&quot; /&gt;">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1511351546836" ID="ID_264074799" MODIFIED="1511351833609" TEXT="Coloca o c&#xf3;digo da p&#xe1;gina mencionada no file=&quot;&quot; e coloca junto com a JSP antes da tradu&#xe7;&#xe3;o."/>
</node>
<node CREATED="1511351606929" ID="ID_1005462561" MODIFIED="1511431006087" TEXT="A&#xe7;&#xe3;o padr&#xe3;o: &lt;jsp:include page=&quot;&quot; /&gt;">
<node CREATED="1511351644174" ID="ID_1937867639" MODIFIED="1511351839025" TEXT="Insere a resposta da p&#xe1;gina mencionada em page=&quot;&quot; no momento da tradu&#xe7;&#xe3;o. Runtime"/>
<node CREATED="1511431011070" ID="ID_1677827138" MODIFIED="1511431067517" TEXT="&lt;jsp:include&gt;&lt;jsp:param name=&quot;&quot; value=&quot;&quot; /&gt;&lt;/jsp:include&gt; - Pode ser passado par&#xe2;metros para a p&#xe1;gina a ser inclu&#xed;da."/>
</node>
<node CREATED="1511432771660" ID="ID_64334603" MODIFIED="1513246762769" TEXT="O conte&#xfa;do inclu&#xed;do n&#xe3;o pode alterar o c&#xf3;digo de status da resposta e nem configurar headers."/>
</node>
<node CREATED="1512139269949" ID="ID_1288668131" MODIFIED="1512590444734" TEXT="JSTL">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1512139275598" ID="ID_559959710" MODIFIED="1512140341547" TEXT="&lt;c:set var=&quot;&quot; value=&quot;&quot; scope=&quot;&quot; /&gt;">
<node CREATED="1512139566659" ID="ID_714294266" MODIFIED="1512139576807" TEXT="serve para setar vari&#xe1;veis de atributos">
<node CREATED="1512139708186" ID="ID_1727441429" MODIFIED="1512139724200" TEXT="pode conter corpo, se o corpo for nulo a vari&#xe1;vel &#xe9; removida"/>
</node>
</node>
<node CREATED="1512139514862" ID="ID_484304580" MODIFIED="1512139859835" TEXT="&lt;c:set target=&quot;&quot; property=&quot;&quot;  value=&quot;&quot; scope=&quot;&quot; /&gt;">
<node CREATED="1512139528206" ID="ID_253106945" MODIFIED="1513599202219" TEXT="target serve para setar propriedades dos beans">
<node CREATED="1512139728909" ID="ID_1246614807" MODIFIED="1512139730257" TEXT="pode conter corpo, se o corpo for nulo a vari&#xe1;vel &#xe9; removida"/>
</node>
</node>
<node CREATED="1512139896996" ID="ID_253382365" MODIFIED="1512140439374" TEXT="escopo padr&#xe3;o &#xe9; o pageScope, requestScope, sessionScope e por fim applicationScope"/>
<node CREATED="1512140044820" ID="ID_1025421636" MODIFIED="1512140102443" TEXT="o target serve para o objeto em si, target=&quot;${}&quot; n&#xe3;o serve para o id do objeto igual &#xe9; no caso do var=&quot;idBean&quot;"/>
<node CREATED="1512140305318" ID="ID_285417978" MODIFIED="1512140313459" TEXT="Causas de exce&#xe7;&#xe3;o">
<node CREATED="1512139963420" ID="ID_936904553" MODIFIED="1512139979155" TEXT="se a express&#xe3;o target for nula o container gera uma exce&#xe7;&#xe3;o"/>
<node CREATED="1512140129615" ID="ID_1772244413" MODIFIED="1512140155037" TEXT="se a express&#xe3;o target n&#xe3;o for um map nem um bean o container gera uma exce&#xe7;&#xe3;o"/>
<node CREATED="1512140267836" ID="ID_1981259759" MODIFIED="1512140293106" TEXT="se o property=&quot;&quot; n&#xe3;o coincidir com uma propriedade do bean o container gera uma exce&#xe7;&#xe3;o"/>
</node>
<node CREATED="1512140960009" ID="ID_108281701" MODIFIED="1513250522671" TEXT="&lt;c:import  url=&quot;&quot; /&gt; direfente da diretiva &quot;@include&quot; e tamb&#xe9;m da a&#xe7;&#xe3;o padr&#xe3;o &quot;jsp:include&quot; o conte&#xfa;do pode estar fora do container web. Pode ser combinada com a &lt;c:param name=&quot;&quot; value=&quot;&quot; /&gt; que &#xe9; equivalente a &lt;jsp:param name=&quot;&quot; value=&quot;&quot; /&gt;"/>
<node CREATED="1512141771245" ID="ID_1758161248" MODIFIED="1513250772631" TEXT="&lt;c:url value=&quot;/teste.jsp?first=${first}&quot; var=&quot;inputUrl&quot; /&gt;">
<node CREATED="1512141870487" ID="ID_165043603" MODIFIED="1512141890770" TEXT="pode conter corpo com o &lt;c:param name=&quot;&quot; value=&quot;&quot; /&gt;"/>
<node CREATED="1512141924763" ID="ID_324391694" MODIFIED="1512141952798" TEXT="Nas urls n&#xe3;o podem conter espa&#xe7;os, S&#xe3;o substitu&#xed;dos por &quot;+&quot;"/>
</node>
<node CREATED="1512400343073" ID="ID_1197640765" MODIFIED="1513255009909" TEXT="Taglib customizadas">
<node CREATED="1512400390165" ID="ID_929486769" MODIFIED="1514371205400" TEXT="&lt;taglib&gt;&lt;tag&gt;&lt;name&gt;&lt;/name&gt;&lt;tag-class&gt;&lt;/tag-class&gt;&lt;body-content&gt;&lt;/body-content&gt;&lt;attribute&gt;&lt;name&gt;user&lt;/name&lt;required&gt;true&lt;/required&gt;&lt;rtexprvalue&gt;true&lt;/rtexprvalue&gt;&lt;/attribute&gt;&lt;/tag&gt;&lt;/taglib&gt;">
<node CREATED="1512400467617" ID="ID_451643882" MODIFIED="1512400482204" TEXT="Se n&#xe3;o informar o rtexprvalue o valor padr&#xe3;o &#xe9; sempre false"/>
</node>
<node CREATED="1512400727696" ID="ID_716574812" MODIFIED="1513600001655" TEXT="Se a tag contiver o &lt;tag&gt;&lt;body-content&gt;empty&lt;/body-content&gt;&lt;/tag&gt;, ainda assim poder&#xe1; existir a a&#xe7;&#xe3;o padr&#xe3;o &lt;jsp:attribute name=&quot;user&quot;&gt;${userName}&lt;/jsp:attribute&gt; no corpo da tag."/>
<node CREATED="1512495930947" ID="ID_60125619" MODIFIED="1513600057467" TEXT="Corpo da tag">
<node CREATED="1512495944306" ID="ID_841294401" MODIFIED="1513251242466" TEXT="&lt;body-content&gt;">
<node CREATED="1512495957817" ID="ID_810221802" MODIFIED="1512495962293" TEXT="empty">
<node CREATED="1512495967432" ID="ID_545112592" MODIFIED="1512495971629" TEXT="n&#xe3;o pode ter corpo"/>
<node CREATED="1512496259906" ID="ID_102678688" MODIFIED="1512496338784" TEXT="A &#xfa;nica coisa que pode ser inserida com o body-content empty &#xe9; &lt;jsp:attribute name=&quot;&quot;&gt;valor&lt;/jsp:attribute&gt;"/>
</node>
<node CREATED="1512495973048" ID="ID_1543863339" MODIFIED="1512495980076" TEXT="scriptless">
<node CREATED="1512495987367" ID="ID_84211830" MODIFIED="1513600134646" TEXT="A tag n&#xe3;o pode ter elementos de scripts (scripts, experess&#xf5;es de scripts ou declara&#xe7;&#xf5;es), mas pode ter texto e templates EL, a&#xe7;&#xf5;es padr&#xe3;o e customizadas."/>
<node CREATED="1512499933580" ID="ID_241219753" MODIFIED="1512499962859" TEXT="&#xc9; o body-content padr&#xe3;o para todas as tags">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1512496074034" ID="ID_222904138" MODIFIED="1512496081238" TEXT="tagdependent">
<node CREATED="1512496087577" ID="ID_493236099" MODIFIED="1513600685507" TEXT="O corpo da tag &#xe9; tratado como texto puro. Ignora EL, a&#xe7;&#xf5;es padr&#xe3;o/customizadas."/>
</node>
<node CREATED="1512496143919" ID="ID_1265781621" MODIFIED="1512496145500" TEXT="JSP">
<node CREATED="1512496152632" ID="ID_1014681811" MODIFIED="1513255365376" TEXT="Pode conter qualquer coisa que contenha em um JSP."/>
</node>
</node>
</node>
<node CREATED="1512499328346" ID="ID_1621901865" MODIFIED="1512499550046" TEXT="Atributos da tag">
<node CREATED="1512499346505" ID="ID_110028977" MODIFIED="1514371712761" TEXT="&lt;%@attribute name=&quot;&quot; required=&quot;true&quot; rtexprvalue=&quot;true&quot; %&gt;"/>
<node CREATED="1512499423204" ID="ID_1002470761" MODIFIED="1512558026446" TEXT="&lt;attribute&gt;&lt;name&gt;&lt;/name&gt;&lt;required&gt;&lt;/required&gt;&lt;rtexprvalue&gt;&lt;rtexprvalue&gt;&lt;type&gt;java.util.List&lt;/type&gt;&lt;/attribute&gt;"/>
<node CREATED="1512499551252" ID="ID_1449087262" MODIFIED="1512499580423" TEXT="Se n&#xe3;o informar os atributos que est&#xe3;o como required. JasperException"/>
<node CREATED="1512500368696" ID="ID_1166707947" MODIFIED="1512500401890" TEXT="&lt;jsp:attribute name=&quot;&quot;&gt;valor&lt;/jsp:attribute&gt;"/>
</node>
<node CREATED="1512499677468" ID="ID_715291519" MODIFIED="1513255416141" TEXT="&lt;jsp:doBody /&gt;">
<node CREATED="1512499685292" ID="ID_775145341" MODIFIED="1512499701135" TEXT="Recupera o corpo da tag."/>
</node>
<node CREATED="1512502029677" ID="ID_416861707" MODIFIED="1514371807017" TEXT="Dentro do m&#xe9;todo doTag() da classe que extends SimpleTagSupport">
<node CREATED="1512502158325" ID="ID_40020938" MODIFIED="1512505179590" TEXT="getJspBody()">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1512502177299" ID="ID_1779759643" MODIFIED="1513771576634" TEXT="getJspBody().getJspContext();"/>
<node CREATED="1512505147385" ID="ID_1828481008" MODIFIED="1512554846928" TEXT="getJspBody().invoke(null);">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1512505168209" ID="ID_273963151" MODIFIED="1512554842140" TEXT="Avalia o corpo da tag."/>
</node>
</node>
<node CREATED="1512502893509" ID="ID_1474938990" MODIFIED="1512502912657" TEXT="SkipPageException(&quot;&quot;)">
<node CREATED="1512502913516" ID="ID_1457548908" MODIFIED="1513255679932" TEXT="Interrompe o restante da p&#xe1;gina que invocou a tag. Se existir p&#xe1;ginas que incluem a p&#xe1;gina que a invovou, continua seu processamento."/>
</node>
<node CREATED="1512503043204" ID="ID_1073037194" MODIFIED="1512503122464" TEXT="getJspContext()">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1512503058035" ID="ID_1770670112" MODIFIED="1512503151609" TEXT="getJspContext().getOut().print(&quot;valor&quot;);">
<node CREATED="1512503103216" ID="ID_1138610442" MODIFIED="1512503114148" TEXT="Sa&#xed;da para o corpo da tag"/>
</node>
<node CREATED="1512502048316" ID="ID_1483469947" MODIFIED="1512505097328" TEXT="getJspContext().setAttribute(&quot;&quot;, &quot;&quot;);">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1512502194578" ID="ID_1999209693" MODIFIED="1512502221461" TEXT="Seta os atributos que est&#xe3;o dentro do corpo da tag."/>
</node>
</node>
</node>
<node CREATED="1512504559923" ID="ID_1039321678" MODIFIED="1512555142665" TEXT="Ciclo de vida tag simples">
<node CREATED="1512504580221" ID="ID_1851432737" MODIFIED="1512504593082" TEXT="Ordem execu&#xe7;&#xe3;o dos m&#xe9;todos">
<node CREATED="1512504593541" ID="ID_750318754" MODIFIED="1512504609810" TEXT="setJspContext()"/>
<node CREATED="1512504610926" ID="ID_1787949632" MODIFIED="1512504619802" TEXT="setParent()">
<node CREATED="1512504620622" ID="ID_29218042" MODIFIED="1512504855419" TEXT="S&#xf3; &#xe9; executado se a tag estiver aninhada."/>
</node>
<node CREATED="1512504807413" ID="ID_1140201023" MODIFIED="1512504823898" TEXT="M&#xe9;todos set java bean">
<node CREATED="1512504824693" ID="ID_530833171" MODIFIED="1512504851267" TEXT="Se a tag existir atributos nesse momento &#xe9; chamado os sets para cada atributo java bean."/>
</node>
<node CREATED="1512504644015" ID="ID_564210290" MODIFIED="1512504647803" TEXT="setJspBody()">
<node CREATED="1512504648487" ID="ID_751111939" MODIFIED="1513601089121" TEXT="S&#xf3; &#xe9; executado se o &lt;body-content&gt; n&#xe3;o estiver como empty e tamb&#xe9;m se a tag contiver um corpo."/>
</node>
<node CREATED="1512504692201" ID="ID_2914772" MODIFIED="1512504697341" TEXT="doTag()"/>
</node>
</node>
<node CREATED="1512554551213" ID="ID_1024187441" MODIFIED="1512555092827" TEXT="Tag Cl&#xe1;ssica">
<node CREATED="1512554556942" ID="ID_311662940" MODIFIED="1512554568539" TEXT="extends TagSupport"/>
<node CREATED="1512554571846" ID="ID_715584296" MODIFIED="1512554592907" TEXT="doStartTag() throws JspException">
<node CREATED="1512554597967" ID="ID_644756719" MODIFIED="1512554631373" TEXT="N&#xe3;o declara um IOException"/>
<node CREATED="1512554637689" ID="ID_1290149189" MODIFIED="1512555508686" TEXT="return SKIP_BODY;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1512554645665" ID="ID_841109743" MODIFIED="1512554656142" TEXT="Serve para pular o corpo da tag"/>
</node>
<node CREATED="1512554913707" ID="ID_1838458590" MODIFIED="1512554947425" TEXT="return EVAL_BODY_INCLUDE;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1512554932954" ID="ID_1012196964" MODIFIED="1512554943805" TEXT="Faz a tag avaliar o corpo."/>
</node>
</node>
<node CREATED="1512555099320" ID="ID_651489457" MODIFIED="1512555108435" TEXT="doAfterBody() throws JspException">
<node CREATED="1512555523268" ID="ID_232922551" MODIFIED="1512555554602" TEXT="return SKIP_BODY;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1512555532515" ID="ID_313883390" MODIFIED="1512555554603" TEXT="return EVAL_BODY_AGAIN;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1512555592271" ID="ID_451171101" MODIFIED="1512555619906" TEXT="&#xda;nica constante de IterationTag o restante s&#xe3;o da Tag"/>
</node>
</node>
<node CREATED="1512554661249" ID="ID_589635390" MODIFIED="1512554677487" TEXT="doEndTag() throws JspException">
<node CREATED="1512554685242" ID="ID_246068265" MODIFIED="1512555634350" TEXT="return EVAL_PAGE;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1512554698977" ID="ID_353602388" MODIFIED="1512554714220" TEXT="Continue processando o restante da p&#xe1;gina."/>
</node>
<node CREATED="1512554690713" ID="ID_1205253736" MODIFIED="1512555634349" TEXT="return SKIP_PAGE;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1512554715968" ID="ID_1681691468" MODIFIED="1512554755946" TEXT="Equivalente ao SkipPageException da SimpleTagSuport"/>
</node>
</node>
<node CREATED="1512555147284" ID="ID_1529257504" MODIFIED="1512555155848" TEXT="Ciclo de vida">
<node CREATED="1512555161163" ID="ID_184606042" MODIFIED="1512555168519" TEXT="setPageContext(PageContext)"/>
<node CREATED="1512555177170" ID="ID_466170408" MODIFIED="1512555182486" TEXT="setParent(Tag)">
<node CREATED="1512555183186" ID="ID_174139028" MODIFIED="1512555189702" TEXT="Se existir tags aninhadas."/>
</node>
<node CREATED="1512555198257" ID="ID_1619809992" MODIFIED="1512555214572" TEXT="M&#xe9;todos set java bean"/>
<node CREATED="1512555221463" ID="ID_1769570927" MODIFIED="1512555226475" TEXT="doStartTag()"/>
<node CREATED="1512555240382" ID="ID_1664400333" MODIFIED="1512555273544" TEXT="doAfterBody()">
<node CREATED="1512555274836" ID="ID_299175675" MODIFIED="1512555291159" TEXT="Se o m&#xe9;todo doStartTag() retornar EVAL_BODY_INCLUDE chama o doAfterBody()."/>
<node CREATED="1512555438289" ID="ID_750629252" MODIFIED="1512555449685" TEXT="return EVAL_BODY_AGAIN;">
<node CREATED="1512555450456" ID="ID_1526287426" MODIFIED="1512555660896" TEXT="Avalia o body novamente no doAfterBody()."/>
</node>
<node CREATED="1512557099615" ID="ID_415832048" MODIFIED="1513257625055" TEXT="Roda depois do corpo ter sido processado"/>
</node>
<node CREATED="1512555298074" ID="ID_240690212" MODIFIED="1512555302030" TEXT="doEndTag()"/>
</node>
<node CREATED="1512556085960" ID="ID_12921842" MODIFIED="1512556230083" TEXT="Valores padr&#xf5;es dos m&#xe9;todos quando n&#xe3;o faz o override na tag">
<node CREATED="1512556105038" ID="ID_697277672" MODIFIED="1512556109978" TEXT="doStartTag()">
<node CREATED="1512556110502" ID="ID_123760632" MODIFIED="1512556115330" TEXT="SKIP_BODY">
<node CREATED="1512556116358" ID="ID_1376440419" MODIFIED="1512556124562" TEXT="Sempre assume que sua tag n&#xe3;o tem corpo."/>
</node>
</node>
<node CREATED="1512556162091" ID="ID_799825382" MODIFIED="1512556166775" TEXT="doAfterBody()">
<node CREATED="1512556187185" ID="ID_262275903" MODIFIED="1512556191397" TEXT="SKIP_BODY"/>
</node>
<node CREATED="1512556194033" ID="ID_1865872446" MODIFIED="1512556200045" TEXT="doEndTag()">
<node CREATED="1512556200984" ID="ID_1273873479" MODIFIED="1512556204220" TEXT="EVAL_PAGE"/>
</node>
</node>
<node CREATED="1512557281179" ID="ID_1396641679" MODIFIED="1513262010685" TEXT="Funciona diferente da tag simples, as vari&#xe1;veis de inst&#xe2;ncia tem que ser reiniciadas na execu&#xe7;&#xe3;o do m&#xe9;todo doStartTag() j&#xe1; na SimpleTagSupport as tags n&#xe3;o s&#xe3;o reutiliz&#xe1;veis."/>
<node CREATED="1512559494829" ID="ID_589689528" MODIFIED="1512559513480" TEXT="&lt;dynamic-attributes&gt;true&lt;/dynamic-attributes&gt;">
<node CREATED="1513772074222" ID="ID_819857990" MODIFIED="1513772081594" TEXT="implements DynamicAttributes">
<node CREATED="1513772083149" ID="ID_1443253360" MODIFIED="1513772241447" TEXT="public void setDynamicAttribute(String arg0, String arg1, Object arg2) throws JspException"/>
</node>
</node>
<node CREATED="1512560280642" ID="ID_1317786225" MODIFIED="1512560843618" TEXT="extends BodyTagSupport ou implementar BodyTag">
<node CREATED="1512560288834" ID="ID_664740806" MODIFIED="1512560299141" TEXT="setBodyContent()">
<node CREATED="1512560418553" ID="ID_221025055" MODIFIED="1512560541062" TEXT="&#xc9; chamado quando o m&#xe9;todo doStartTag() quando retorna EVAL_BODY_BUFFERED. Novo padr&#xe3;o para o doStartTag()"/>
</node>
<node CREATED="1512560300025" ID="ID_217936108" MODIFIED="1512560303701" TEXT="doInitBody()"/>
</node>
</node>
<node CREATED="1512561130376" ID="ID_1728054959" MODIFIED="1512561135581" TEXT="getParent()">
<node CREATED="1512561136576" ID="ID_1156112720" MODIFIED="1512561231599" TEXT="Tags cl&#xe1;ssicas retornam um objeto de &quot;Tag&quot;"/>
<node CREATED="1512561189625" ID="ID_160669659" MODIFIED="1512561236208" TEXT="Simple Tags retorna o objeto &quot;JspTag&quot;"/>
<node CREATED="1512561561479" ID="ID_1929925318" MODIFIED="1512561580620" TEXT="Tags cl&#xe1;ssicas s&#xf3; podem ter parents cl&#xe1;ssico &quot;Tag&quot;"/>
<node CREATED="1512561581775" ID="ID_877266329" MODIFIED="1512561605012" TEXT="Tags simples podem ter parents cl&#xe1;ssico e simples. &quot;Tag&quot; ou &quot;JspTag&quot;"/>
</node>
<node CREATED="1512562340030" ID="ID_1083113017" MODIFIED="1512562413077" TEXT="findAncestorWithClass(tagInicial this, classe da Tag que vc deseja)"/>
<node CREATED="1512563006323" ID="ID_1371781208" MODIFIED="1512563015623" TEXT="JspContext">
<node CREATED="1512563019626" ID="ID_864997639" MODIFIED="1512563160246" TEXT="getAttribute(String name) - pageScope"/>
<node CREATED="1512563034697" ID="ID_1363484598" MODIFIED="1512563054556" TEXT="getAttribute(String name, int scope)"/>
<node CREATED="1512563055752" ID="ID_119782233" MODIFIED="1512563077491" TEXT="getAttributeNamesInScope(int scope)"/>
<node CREATED="1512563086526" ID="ID_34642578" MODIFIED="1512563099049" TEXT="findAttribute(String name)"/>
<node CREATED="1512563104517" ID="ID_1460286641" MODIFIED="1512563120384" TEXT="getOut(): JspWriter"/>
</node>
<node CREATED="1512571401374" ID="ID_1793031192" MODIFIED="1512571405458" TEXT="Tag Files">
<node CREATED="1512571406189" ID="ID_1025580540" MODIFIED="1512571929092" TEXT="S&#xf3; poder&#xe1; existir dentro da pasta /WEB-INF/tags e subdiret&#xf3;rios, tamb&#xe9;m no /META-INF/tags dentro do /WEB-INF/lib e subdiret&#xf3;rios."/>
<node CREATED="1512571453898" ID="ID_754643775" MODIFIED="1512571464174" TEXT="As extens&#xf5;es .tag ou .tagx"/>
<node CREATED="1512571465745" ID="ID_1675371109" MODIFIED="1512571623628" TEXT="&lt;%@taglib prefix=&quot;xxx&quot; tagdir=&quot;/WEB-INF/tags&quot; %&gt; - Atributo tagdir na diretiva taglib"/>
<node CREATED="1512571572235" ID="ID_18299777" MODIFIED="1512571643538" TEXT="&lt;%@attribute name=&quot;xxx&quot; required=&quot;true&quot; rtexprvalue=&quot;true&quot; %&gt; - Atributos para a tag ${xxx}"/>
<node CREATED="1512571700370" ID="ID_1435885904" MODIFIED="1512571709070" TEXT="&lt;jsp:doBody /&gt;">
<node CREATED="1512571709682" ID="ID_1344559650" MODIFIED="1512571732986" TEXT="Recupera o corpo da tag"/>
</node>
<node CREATED="1512571780275" ID="ID_836589539" MODIFIED="1512571801562" TEXT="&lt;%@tag body-content=&quot;tagdependent&quot; %&gt;"/>
</node>
<node CREATED="1513255011163" ID="ID_428004241" MODIFIED="1513255070152" TEXT="Tags obrigat&#xf3;rias">
<node CREATED="1513255029385" ID="ID_341487120" MODIFIED="1513255052412" TEXT="&lt;tlib-version&gt;&lt;/tlib-version&gt;"/>
<node CREATED="1513255072838" ID="ID_456275836" MODIFIED="1513255105545" TEXT="&lt;short-name&gt;&lt;/short-name&gt;">
<node CREATED="1513255052967" ID="ID_1733750611" MODIFIED="1513255066563" TEXT="s&#xf3; a tag &#xe9; obrigat&#xf3;ria n&#xe3;o seu conte&#xfa;do"/>
</node>
</node>
</node>
</node>
<node CREATED="1512397810774" ID="ID_1780565899" MODIFIED="1512397818574" TEXT="P&#xe1;ginas de erro">
<node CREATED="1512397821713" ID="ID_1480014139" MODIFIED="1513263165222" TEXT="&lt;%@page isErrorPage=&quot;true&quot; %&gt;">
<node CREATED="1512397854590" ID="ID_1778160228" MODIFIED="1512398423318" TEXT="Indica que a p&#xe1;gina &#xe9; uma p&#xe1;gina de erro. &#xc9; necess&#xe1;rio que a p&#xe1;gina contenha essa declara&#xe7;&#xe3;o para obter acesso ao objeto impl&#xed;cito exception"/>
</node>
<node CREATED="1512397883789" ID="ID_665287361" MODIFIED="1512397904832" TEXT="&lt;%@page errorPage=&quot;errorPage.jsp&quot; %&gt;">
<node CREATED="1512397911659" ID="ID_679554859" MODIFIED="1512398405176" TEXT="Indica ao container que caso ocorra alguma exce&#xe7;&#xe3;o encaminhar a solicita&#xe7;&#xe3;o para a p&#xe1;gina informada"/>
</node>
<node CREATED="1512398113662" ID="ID_647090139" MODIFIED="1512398127818" TEXT="DD - web.xml">
<node CREATED="1512398045634" ID="ID_1818381753" MODIFIED="1512398106227" TEXT="&lt;error-page&gt;&lt;exception-type&gt;&lt;/exception-type&gt;&lt;location&gt;/errorPage.jsp&lt;/location&gt;&lt;/eror-page&gt;"/>
</node>
<node CREATED="1512398195297" ID="ID_1821954907" MODIFIED="1512398207132" TEXT="&lt;error-code&gt;404&lt;/error-code&gt;"/>
<node CREATED="1512398698504" ID="ID_645030809" MODIFIED="1512398726531" TEXT="&lt;c:catch var=&quot;myException&quot;&gt;&lt;/c:catch&gt;">
<node CREATED="1512398744237" ID="ID_554744295" MODIFIED="1512398772424" TEXT="O atributo myException fica dispon&#xed;vel no escopo de p&#xe1;gina"/>
</node>
</node>
<node CREATED="1512575325700" ID="ID_856617395" MODIFIED="1512575787378" TEXT="Sintaxe documentos JSP">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1512575446981" ID="ID_1718330116" MODIFIED="1512575469965" TEXT="Diretivas">
<node CREATED="1512575341294" ID="ID_1426571554" MODIFIED="1512575554064" TEXT="&lt;%@page import=&quot;java.util.*&quot; %&gt; equivalente a &lt;jsp:directive.page import=&quot;java.util.*&quot; /&gt;">
<node CREATED="1512575412216" ID="ID_700598360" MODIFIED="1512575423855" TEXT="Exceto diretiva taglib"/>
</node>
</node>
<node CREATED="1512575476249" ID="ID_1387398590" MODIFIED="1512575478438" TEXT="Declara&#xe7;&#xe3;o">
<node CREATED="1512575486058" ID="ID_1896407925" MODIFIED="1512575535181" TEXT="&lt;%! int y = 3; %&gt; equivalente a  &lt;jsp:declaration&gt;int y = 3;&lt;/jsp:declaration&gt;"/>
</node>
<node CREATED="1512575556548" ID="ID_879486574" MODIFIED="1512575565249" TEXT="Scriplet">
<node CREATED="1512575573439" ID="ID_894900775" MODIFIED="1512575621776" TEXT="&lt;% list.add(&quot;feed&quot;); %&gt; equivalente a &lt;jsp:scriplet&gt;list.add(&quot;feed&quot;);&lt;/jsp:scriplet&gt;"/>
</node>
<node CREATED="1512575673533" ID="ID_575905394" MODIFIED="1512575676602" TEXT="Texto">
<node CREATED="1512575677670" ID="ID_1612543020" MODIFIED="1512575701531" TEXT="Texto equivalente a &lt;jsp:text&gt;Texto&lt;/jsp:text&gt;"/>
</node>
<node CREATED="1512575711263" ID="ID_1999492802" MODIFIED="1512575715731" TEXT="Express&#xe3;o de script">
<node CREATED="1512575716967" ID="ID_390710582" MODIFIED="1512575772629" TEXT="&lt;%= it.next() %&gt; equivalente a &lt;jsp:expression&gt;it.next()&lt;/jsp:expression&gt;"/>
</node>
</node>
</node>
<node CREATED="1512485955323" ID="ID_102371873" MODIFIED="1512590459759" POSITION="right" TEXT="File upload">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1512485964681" ID="ID_1720405984" MODIFIED="1512486087574" TEXT="@MultipartConfig">
<node CREATED="1512485970234" ID="ID_1885982071" MODIFIED="1512485986550" TEXT="Atributos v&#xe1;lidos">
<node CREATED="1512485978865" ID="ID_1084386671" MODIFIED="1512485989658" TEXT="fileSizeThreshold "/>
<node CREATED="1512485994698" ID="ID_912629489" MODIFIED="1512485995791" TEXT="location"/>
<node CREATED="1512486000403" ID="ID_1035432685" MODIFIED="1512486000935" TEXT="maxFileSize"/>
<node CREATED="1512486006003" ID="ID_831292054" MODIFIED="1512486006471" TEXT="maxRequestSize"/>
</node>
</node>
</node>
<node CREATED="1512576256654" ID="ID_656178226" MODIFIED="1512576274505" POSITION="left" TEXT="Deployment Descriptor - DD web.xml">
<node CREATED="1512576275924" ID="ID_1198289159" MODIFIED="1512576283384" TEXT="EJB">
<node CREATED="1512576360431" ID="ID_824791475" MODIFIED="1512576362523" TEXT="local">
<node CREATED="1512576284356" ID="ID_1382917373" MODIFIED="1513772733968" TEXT="&lt;ejb-local-ref&gt;&lt;ejb-ref-name&gt;&lt;/ejb-ref-name&gt;&lt;ejb-ref-type&gt;&lt;/ejb-ref-type&gt;&lt;local-home&gt;&lt;/local-home&gt;&lt;local&gt;&lt;/local&gt;&lt;ejb-link&gt;&lt;/ejb-link&gt;&lt;/ejb-local-ref&gt;"/>
</node>
<node CREATED="1512576369182" ID="ID_1558004243" MODIFIED="1512576370531" TEXT="remoto">
<node CREATED="1512576372310" ID="ID_1197127717" MODIFIED="1512576464940" TEXT="&lt;ejb-ref&gt;&lt;ejb-ref-name&gt;/ejb-ref-name&gt;&lt;ejb-ref-type&gt;&lt;/ejb-ref-type&gt;&lt;home&gt;&lt;/home&gt;&lt;remote&gt;&lt;/remote&gt;&lt;/ejb-ref&gt;"/>
</node>
</node>
<node CREATED="1512577879933" ID="ID_1150401971" MODIFIED="1512585324833" TEXT="&lt;env-entry&gt;">
<node CREATED="1512577893932" ID="ID_909626084" MODIFIED="1512577967820" TEXT="&lt;env-entry&gt;&lt;env-entry-name&gt;&lt;/env-entry-name&gt;&lt;env-entry-type&gt;&lt;/env-entry-type&gt;&lt;env-entry-value&gt;&lt;/env-entry-value&gt;&lt;/env-entry&gt;">
<node CREATED="1512577976623" ID="ID_37295369" MODIFIED="1512577997186" TEXT="Par&#xe2;metros para os EJB&#xb4;s que ser&#xe3;o recuperados pelo &lt;env-entry-name&gt;"/>
<node CREATED="1512578053754" ID="ID_1257984209" MODIFIED="1512578066390" TEXT="&lt;env-entry-type&gt; N&#xe3;o pode ser um primitivo."/>
</node>
</node>
<node CREATED="1512578155364" ID="ID_938906536" MODIFIED="1512585324833" TEXT="Servlets Preced&#xea;ncia">
<node CREATED="1512578163539" ID="ID_1314777091" MODIFIED="1512578283920" TEXT="caminho exato &lt;url-pattern&gt;/Diretorio/TesteServlet&lt;/url-pattern&gt;"/>
<node CREATED="1512578185626" ID="ID_1164273099" MODIFIED="1512578311622" TEXT="diret&#xf3;rios &lt;url-pattern&gt;/Diretorio/*&lt;/url-pattern&gt;"/>
<node CREATED="1512578314537" ID="ID_1294586123" MODIFIED="1512578353795" TEXT="extens&#xe3;o &lt;url-pattern&gt;*.do&lt;/url-pattern&gt;"/>
</node>
<node CREATED="1512578541163" ID="ID_698955475" MODIFIED="1512578548143" TEXT="&lt;mime-mapping&gt;">
<node CREATED="1512578548970" ID="ID_534708967" MODIFIED="1512578626394" TEXT="&lt;mime-mapping&gt;&lt;extension&gt;mpg&lt;/extension&gt;&lt;mime-type&gt;video/mpeg&lt;/mime-type&gt;&lt;mime-mapping&gt;"/>
</node>
<node CREATED="1512579034444" ID="ID_1961972872" MODIFIED="1512585290698" TEXT="&lt;welcome-file-list&gt;&lt;welcome-file&gt;&lt;/welcome-file&gt;&lt;welcome-file&gt;&lt;/welcome-file&gt;&lt;/welcome-file-list&gt;"/>
<node CREATED="1513959190947" ID="ID_684897502" MODIFIED="1513959339580" TEXT="&lt;resource-ref&gt;&lt;description&gt;&lt;/description&gt;&lt;res-ref-name&gt;&lt;/res-ref-name&gt;&lt;res-type&gt;&lt;/res-type&gt;&lt;res-auth&gt;Container&lt;/res-auth&gt;&lt;/resource-ref&gt;"/>
<node CREATED="1513959463503" ID="ID_941520400" MODIFIED="1513959486306" TEXT="&lt;resource-env-ref&gt;&lt;resource-env-ref-name&gt;&lt;/resource-env-ref-name&gt;&lt;resource-env-ref-type&gt;&lt;/resource-env-ref-type&gt;&lt;/resource-env-ref&gt;"/>
</node>
<node CREATED="1512585495996" ID="ID_1982038145" MODIFIED="1512590440686" POSITION="right" TEXT="Seguran&#xe7;a">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1512590022486" ID="ID_485977434" MODIFIED="1512590030331" TEXT="web.xml - DD">
<node CREATED="1512585504435" ID="ID_1026293239" MODIFIED="1512585506488" TEXT="&lt;security-constraint&gt;">
<node CREATED="1512585531250" ID="ID_1705325244" MODIFIED="1512586060396" TEXT="&lt;web-resource-collection&gt; obrigat&#xf3;rio e pode ter mais de um.">
<node CREATED="1512585555768" ID="ID_1992020898" MODIFIED="1512585609001" TEXT="&lt;web-resource-name&gt;UpdateRecipes&lt;/web-resource-name&gt;"/>
<node CREATED="1512585640859" ID="ID_930584694" MODIFIED="1512585846610" TEXT="&lt;url-pattern&gt;/TesteServlet3&lt;/url-pattern&gt; Um  ou mais. Obrigat&#xf3;rio"/>
<node CREATED="1512585662457" ID="ID_1339665863" MODIFIED="1512585984969" TEXT="&lt;http-method&gt;&lt;/http-method&gt; Opcional, zero ou mais. Se n&#xe3;o for informado o container assume todos os m&#xe9;todos HTTP.">
<node CREATED="1512585874028" ID="ID_675618939" MODIFIED="1512585875728" TEXT="GET"/>
<node CREATED="1512585876579" ID="ID_1835562299" MODIFIED="1512585878032" TEXT="POST"/>
<node CREATED="1512585879875" ID="ID_1991173869" MODIFIED="1512585881352" TEXT="PUT"/>
<node CREATED="1512585882547" ID="ID_545798145" MODIFIED="1512585884063" TEXT="TRACE"/>
<node CREATED="1512585924201" ID="ID_535412145" MODIFIED="1512585927484" TEXT="DELETE"/>
<node CREATED="1512585885139" ID="ID_568474084" MODIFIED="1512585886623" TEXT="HEAD"/>
<node CREATED="1512585887859" ID="ID_383315854" MODIFIED="1512585893167" TEXT="OPTIONS"/>
</node>
<node CREATED="1512585780570" ID="ID_1157597312" MODIFIED="1512585797149" TEXT="&lt;description&gt;&lt;/description&gt; Opcional."/>
</node>
<node CREATED="1512586180830" ID="ID_1803448057" MODIFIED="1512587777294" TEXT="&lt;auth-constraint&gt;&lt;/auth-constraint&gt;">
<node CREATED="1512588057872" ID="ID_142873537" MODIFIED="1512588071211" TEXT="&lt;description&gt;&lt;/description&gt;">
<node CREATED="1512588071774" ID="ID_1999204895" MODIFIED="1512588074619" TEXT="Opcional"/>
</node>
<node CREATED="1512587592781" ID="ID_1980333028" MODIFIED="1512587624087" TEXT="&lt;role-name&gt;&lt;/role-name&gt;">
<node CREATED="1512587561159" ID="ID_136906821" MODIFIED="1512587573603" TEXT="S&#xe3;o case sensitive"/>
<node CREATED="1512586213531" ID="ID_589591608" MODIFIED="1512587620760" TEXT="Opcional - se n&#xe3;o existir nenhum usu&#xe1;rio tem acesso ao recurso"/>
<node CREATED="1512587497755" ID="ID_1471424439" MODIFIED="1512587506879" TEXT="&lt;role-name&gt;*&lt;/role-name&gt;">
<node CREATED="1512587507851" ID="ID_1502076908" MODIFIED="1512587524294" TEXT="Todos os usu&#xe1;rios s&#xe3;o permitidos."/>
</node>
<node CREATED="1512587678672" ID="ID_1802858328" MODIFIED="1512587706874" TEXT="Pode existir mais de um no &lt;auth-constraint&gt;"/>
</node>
<node CREATED="1512587769658" ID="ID_501866147" MODIFIED="1512587807260" TEXT="Aplica a todos os elementos &lt;web-resource-collection&gt;"/>
<node CREATED="1512587796600" ID="ID_1226878364" MODIFIED="1512587800004" TEXT="Opcional."/>
<node CREATED="1512587859236" ID="ID_94938585" MODIFIED="1512588005031" TEXT="Se existir o elemento &lt;auth-constraint&gt; o container deve realizar a autentica&#xe7;&#xe3;o nas urls associadas."/>
<node CREATED="1512587925584" ID="ID_1985164422" MODIFIED="1512587970473" TEXT="Se n&#xe3;o existir o elemento &lt;auth-constraint&gt; o container deve permitir acesso n&#xe3;o autenticado nas urls mencionadas."/>
<node CREATED="1512589376931" ID="ID_1553727479" MODIFIED="1512589403629" TEXT="&lt;role-name&gt;Admin&lt;/role-name&gt; + &lt;role-name&gt;Guest&lt;/role-name&gt;">
<node CREATED="1512589404553" ID="ID_371764062" MODIFIED="1512589408869" TEXT="Admin e Guest"/>
</node>
<node CREATED="1512589420888" ID="ID_230918527" MODIFIED="1512589449194" TEXT="&lt;role-name&gt;*&lt;/role-name&gt; + &lt;role-name&gt;Admin&lt;/role-name&gt;">
<node CREATED="1512589450046" ID="ID_12543367" MODIFIED="1512589451994" TEXT="Todos"/>
</node>
<node CREATED="1512589458005" ID="ID_791600727" MODIFIED="1512589591313" TEXT="&lt;auth-constraint /&gt; tag vazia + &lt;auth-constraint&gt;&lt;role-name&gt;Admin&lt;/role-name&gt;&lt;/auth-constraint&gt;">
<node CREATED="1512589508346" ID="ID_276607852" MODIFIED="1512589520070" TEXT="Nenhum a tag vazia tem preced&#xea;ncia"/>
</node>
<node CREATED="1512589542152" ID="ID_811150577" MODIFIED="1512589582138" STYLE="fork" TEXT="&lt;auth-constraint /&gt; tag vazia + &lt;auth-constraint&gt;&lt;role-name&gt;*&lt;/role-name&gt;&lt;/auth-constraint&gt;">
<node CREATED="1512589557231" ID="ID_1933731198" MODIFIED="1512589558451" TEXT="?"/>
</node>
<node CREATED="1512589632082" ID="ID_1498413173" MODIFIED="1512589658349" TEXT="Nenhum elemento &lt;auth-constraint /&gt; + &lt;auth-constraint&gt;&lt;role-name&gt;Admin&lt;/role-name&gt;&lt;/auth-constraint&gt;">
<node CREATED="1512589659176" ID="ID_569992856" MODIFIED="1512589660813" TEXT="Todos"/>
</node>
</node>
<node CREATED="1512669786136" ID="ID_1678275159" MODIFIED="1512670055866" TEXT="&lt;user-data-constraint&gt;&lt;transport-guarantee&gt;CONFIDENTIAL&lt;/transport-guarantee&gt;&lt;/user-data-constraint&gt; - S&#xf3; pode haver um para cada &lt;security-constraint&gt;">
<node CREATED="1512669885948" ID="ID_191718188" MODIFIED="1512669897306" TEXT="NONE">
<node CREATED="1513606578044" ID="ID_309427886" MODIFIED="1513606593576" TEXT="Default e n&#xe3;o h&#xe1; prote&#xe7;&#xe3;o aos dados."/>
</node>
<node CREATED="1512669891699" ID="ID_1172595502" MODIFIED="1512669894591" TEXT="INTEGRAL">
<node CREATED="1513606528119" ID="ID_879640623" MODIFIED="1513606544715" TEXT="Os dados n&#xe3;o podem ser modificados ao longo do caminho."/>
</node>
<node CREATED="1512669899603" ID="ID_651471300" MODIFIED="1512669903063" TEXT="CONFIDENTIAL">
<node CREATED="1513606545998" ID="ID_123788478" MODIFIED="1513606564842" TEXT="Os dados n&#xe3;o podem ser vistos por ningu&#xe9;m ao longo do caminho."/>
</node>
</node>
</node>
<node CREATED="1512589941068" ID="ID_1216458225" MODIFIED="1512589961339" TEXT="&lt;login-config&gt;&lt;auth-method&gt;BASIC&lt;/auth-method&gt;&lt;/login-config&gt;"/>
<node CREATED="1512589992107" ID="ID_1601620124" MODIFIED="1513606652524" TEXT="&lt;security-role&gt;&lt;role-name&gt;Admin&lt;/role-name&gt;&lt;/security-role&gt;"/>
</node>
<node CREATED="1512662311918" ID="ID_771866760" MODIFIED="1512662328755" TEXT="Seguran&#xe7;a program&#xe1;tica">
<node CREATED="1512662329806" ID="ID_849177803" MODIFIED="1512663419336" TEXT="request.isUserInRole(&quot;Manager&quot;);"/>
<node CREATED="1512663408940" ID="ID_1308040129" MODIFIED="1512663498650" TEXT="&lt;servlet&gt;&lt;security-role-ref&gt;&lt;role-name&gt;Manager&lt;/role-name&gt;&lt;role-link&gt;Admin&lt;/role-link&gt;&lt;/security-role-ref&gt;&lt;/servlet&gt;">
<node CREATED="1512663420411" ID="ID_1863052904" MODIFIED="1512663452005" TEXT="Vincula a role-name program&#xe1;tica com a role-name declarativa do web.xml"/>
<node CREATED="1512663508901" ID="ID_229332984" MODIFIED="1512663553263" TEXT="Tem preced&#xea;ncia sobre outras role-name declaradas no web.xml"/>
</node>
</node>
<node CREATED="1512664133989" ID="ID_1046505646" MODIFIED="1512664138593" TEXT="Tipos de autentica&#xe7;&#xe3;o">
<node CREATED="1512664277308" ID="ID_900024448" MODIFIED="1512664279264" TEXT="BASIC"/>
<node CREATED="1512664280276" ID="ID_1951954101" MODIFIED="1512664282384" TEXT="DIGEST"/>
<node CREATED="1512664287883" ID="ID_1220226936" MODIFIED="1512664290887" TEXT="CLIENT-CERT">
<node CREATED="1512664468392" ID="ID_695868499" MODIFIED="1512664475644" TEXT="O client precisa de certificado."/>
</node>
<node CREATED="1512664293987" ID="ID_1532586137" MODIFIED="1512664294991" TEXT="FORM">
<node CREATED="1512664476719" ID="ID_1279945060" MODIFIED="1512664506962" TEXT="Pode utilizar um formul&#xe1;rio pr&#xf3;prio para autentica&#xe7;&#xe3;o."/>
<node CREATED="1512664567241" ID="ID_519785578" MODIFIED="1513340483514" TEXT="&lt;login-config&gt;&lt;auth-method&gt;FORM&lt;/auth-method&gt;&lt;form-login-config&gt;&lt;form-login-page&gt;&lt;/form-login-page&gt;&lt;form-error-page&gt;&lt;/form-error-page&gt;&lt;/form-login-config&gt;&lt;/login-config&gt;"/>
</node>
</node>
</node>
<node CREATED="1512725787019" ID="ID_1337150465" MODIFIED="1512725790247" POSITION="left" TEXT="Filtros">
<node CREATED="1512726051578" ID="ID_1930909883" MODIFIED="1512726569569" TEXT="&#xc9; toda classe que implementa a interface &lt;&lt;javax.servlet.Filter&gt;&gt;"/>
<node CREATED="1512726208360" ID="ID_1626500768" MODIFIED="1512726230755" TEXT="Deve implementar os tr&#xea;s m&#xe9;todos">
<node CREATED="1512726232526" ID="ID_1317955832" MODIFIED="1514375231788" TEXT="void init(FilterConfig) throws ServletException"/>
<node CREATED="1512726250813" ID="ID_21455708" MODIFIED="1512726280624" TEXT="void doFilter(ServletRequest, ServletResponse, FilterChain) throws ServletException, IOException"/>
<node CREATED="1512726289875" ID="ID_665515233" MODIFIED="1512726294447" TEXT="void destroy()"/>
</node>
<node CREATED="1512727431745" ID="ID_1339884111" MODIFIED="1513266766858" TEXT="&lt;filter&gt;&lt;filter-name&gt;&lt;/filter-name&gt;&lt;filter-class&gt;&lt;/filter-class&gt;&lt;init-param&gt;&lt;/init-param&gt;&lt;/filter&gt;"/>
<node CREATED="1512727461671" ID="ID_614250306" MODIFIED="1513772870511" TEXT="&lt;filter-mapping&gt;&lt;filter-name&gt;&lt;/filter-name&gt;&lt;url-pattern&gt;&lt;/url-pattern&gt;&lt;/filter-mapping&gt; ou &lt;servlet-name&gt; lugar do url-pattern"/>
<node CREATED="1512727700816" ID="ID_1627839238" MODIFIED="1512727707212" TEXT="preced&#xea;ncia">
<node CREATED="1512727729374" ID="ID_984382865" MODIFIED="1512727784903" TEXT="1&#xaa; - Os que estiverem com as URL&#xb4;s correspondentes levando em considera&#xe7;&#xe3;o a ordem em que foram definidos no DD web.xml"/>
<node CREATED="1512727846919" ID="ID_922089913" MODIFIED="1512727871689" TEXT="2&#xaa; - Depois &#xe9; feita a mesma coisa com os filtros com servlet-name correspondentes"/>
</node>
<node CREATED="1512728021611" ID="ID_1545577753" MODIFIED="1512728023320" TEXT="&lt;dispatcher&gt;">
<node CREATED="1512728024235" ID="ID_573182439" MODIFIED="1512728035335" TEXT="REQUEST">
<node CREATED="1512728158939" ID="ID_1687575119" MODIFIED="1512728169198" TEXT="dispatcher padr&#xe3;o quando n&#xe3;o informado"/>
</node>
<node CREATED="1512728035954" ID="ID_300541199" MODIFIED="1512728037999" TEXT="INCLUDE"/>
<node CREATED="1512728038938" ID="ID_1305410506" MODIFIED="1512728040726" TEXT="FORWARD"/>
<node CREATED="1512728041674" ID="ID_1088005157" MODIFIED="1512728042942" TEXT="ERROR"/>
<node CREATED="1512728108806" ID="ID_1787059871" MODIFIED="1512728130625" TEXT="Pode haver nenhum ou at&#xe9; quatro dispatcher&#xb4;s dentro do filter-mapping"/>
</node>
<node CREATED="1512730664239" ID="ID_315605324" MODIFIED="1512730673243" TEXT="Classes wrapper">
<node CREATED="1512730674111" ID="ID_1685049485" MODIFIED="1512730680508" TEXT="ServletRequestWrapper"/>
<node CREATED="1512730681543" ID="ID_1854183286" MODIFIED="1512730687332" TEXT="ServletResponseWrapper"/>
<node CREATED="1512730688128" ID="ID_1164138770" MODIFIED="1512730695300" TEXT="HttpServletRequestWrapper"/>
<node CREATED="1512730696223" ID="ID_1979892343" MODIFIED="1512730705388" TEXT="HttpServletResponseWrapper"/>
</node>
</node>
</node>
</map>
