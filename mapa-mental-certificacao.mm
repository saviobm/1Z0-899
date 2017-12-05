<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1508186603022" ID="ID_440038459" MODIFIED="1510153608911" STYLE="fork" TEXT="Cerifica&#xe7;&#xe3;o">
<node CREATED="1508186603022" ID="ID_490295773" MODIFIED="1509400670885" POSITION="right" STYLE="fork" TEXT="Protocolo HTTP">
<node CREATED="1508186641763" ID="ID_549836734" MODIFIED="1509400670885" TEXT="GET - Solicita&#xe7;&#xe3;o simples"/>
<node CREATED="1508186659228" ID="ID_1537363229" MODIFIED="1509400670885" TEXT="POST - Solicita&#xe7;&#xe3;o de um recurso com informa&#xe7;&#xf5;es do usu&#xe1;rio. Ex: Formul&#xe1;rio"/>
<node CREATED="1508186754752" ID="ID_1366919293" MODIFIED="1509400670885" TEXT="Outros m&#xe9;todos: HEAD, TRACE, PUT, DELETE, OPTIONS e CONNECT"/>
</node>
<node CREATED="1508796682144" ID="ID_1738090764" MODIFIED="1509400670885" POSITION="right" TEXT="&#xe7;">
<node CREATED="1508796841572" HGAP="59" ID="ID_715790932" MODIFIED="1509400670885" TEXT="Classe abstrata GenericServlet" VSHIFT="21">
<node CREATED="1508796953928" ID="ID_1412163915" MODIFIED="1509400670885" TEXT="Implementa a maioria dos m&#xe9;todos b&#xe1;sicos do servlet incluindo os m&#xe9;todos da interface servlet que a mesma implementa"/>
</node>
<node CREATED="1508186603022" HGAP="55" ID="ID_163528415" MODIFIED="1509400670888" STYLE="fork" TEXT="Classe abstrata HttpServlet" VSHIFT="29">
<node CREATED="1508186641763" ID="ID_1443275315" MODIFIED="1509400670888" TEXT="Implementa o m&#xe9;todo service para refletir as caracter&#xed;sticas HTTP"/>
</node>
</node>
<node CREATED="1508797595765" ID="ID_1799908126" MODIFIED="1509400670888" POSITION="left" TEXT="Ciclo de vida Servlet">
<node CREATED="1508797615662" ID="ID_194615133" MODIFIED="1509400670888" TEXT="O Container Web chama o m&#xe9;todo init() depois de instanciado, possibilita que inicialize o Servlet antes de tratar a solicita&#xe7;&#xe3;o do cliente. Roda apenas uma vez no ciclo de vida do servlet."/>
<node CREATED="1508797789691" ID="ID_971615184" MODIFIED="1509400670890" TEXT="Quando chega a primeira solicita&#xe7;&#xe3;o do cliente o container Web o container cria ou aloca uma nova thread do pool de threads fazendo com que o m&#xe9;todo service do servlet seja ativado, anaisa a solicita&#xe7;&#xe3;o e verifica qual m&#xe9;todo ser&#xe1; chamado doGet e/ou doPost. O m&#xe9;todo service nunca pode ser sobrescrito."/>
<node CREATED="1508798011667" ID="ID_615238334" MODIFIED="1509400670893" TEXT="Agora &#xe9; o clico dos m&#xe9;todos doGet e/ou doPost onde tudo come&#xe7;a. Respons&#xe1;vel por tudo que esperamos da aplica&#xe7;&#xe3;o."/>
</node>
<node CREATED="1508962211455" ID="ID_1807574844" MODIFIED="1509400670895" POSITION="left" TEXT="M&#xe9;todos HTTP">
<node CREATED="1508962226279" ID="ID_979220854" MODIFIED="1509400670895" TEXT="GET (Indempotente -&gt; Capaz de rodar v&#xe1;rias vezes sem afetar os dados.), POST (N&#xe3;o idempotente - Tem que garantir os dados ao receber v&#xe1;rias solicita&#xe7;&#xf5;es do mesmo cliente.), HEAD, TRACE, OPTIONS, OUT, DELETE e CONNECT.">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1508966509835" ID="ID_1319556276" MODIFIED="1509400670897" POSITION="right" TEXT="Headers">
<node CREATED="1508966522383" ID="ID_901625906" MODIFIED="1509400670898" TEXT="setHeader(&quot;&quot;, &quot;&quot;) --&gt; Substitui o valor existente para o header."/>
<node CREATED="1508966549915" ID="ID_1062308988" MODIFIED="1509400670898" TEXT="addHeader(&quot;&quot;, &quot;&quot;) --&gt; Se o Header existir adiciona mais um valor ao header sen&#xe3;o cria um novo header."/>
</node>
<node CREATED="1508967171537" ID="ID_427853416" MODIFIED="1509400670898" POSITION="left" TEXT="Response">
<node CREATED="1508966642904" ID="ID_1885508790" MODIFIED="1509400670898" TEXT="Op&#xe7;&#xf5;es de sa&#xed;da no HttpServletResponse">
<node CREATED="1508966667420" ID="ID_1173077233" MODIFIED="1509400670898" TEXT="PrintWriter writer = response.getWriter(); writer.println(&quot;&quot;);"/>
<node CREATED="1508966711173" ID="ID_580515631" MODIFIED="1509400670898" TEXT="ServletOutputStream out = response.getOutputStream(); out.write(&quot;&quot;);"/>
</node>
</node>
<node CREATED="1508967535810" HGAP="39" ID="ID_276670620" MODIFIED="1510002072473" POSITION="right" TEXT="Request" VSHIFT="-37"/>
<node CREATED="1508967835678" ID="ID_1507773308" MODIFIED="1509400670898" POSITION="left" TEXT="Redirecionamento">
<node CREATED="1508967183140" ID="ID_275407495" MODIFIED="1509400670898" TEXT="URLs relativas no response.sendRedirect(&quot;foo/stuff.html&quot;); --&gt; retira o nome do servlet da url e adiciona o que est&#xe1; sendo informado. response.sendRedirect(&quot;/foo/stuff.html&quot;); --&gt; raiz do servidor ex: http://localhost:8080/foo/stuff.html - O trabalho &#xe9; feito pelo cliente (browser) e a URL muda e o cliente sabe que foi redirecionado."/>
<node CREATED="1508967551061" ID="ID_1678644419" MODIFIED="1509400670901" TEXT="RequestDiaspatcher view = request.getRequestDiaspatcher(&quot;teste.jsp&quot;); view.forward(request, response); O trabalho &#xe9; feito pelo servidor. A URL n&#xe3;o muda e o cliente n&#xe3;o sabe que foi redirecionado."/>
</node>
<node CREATED="1509051017536" ID="ID_357585972" MODIFIED="1509400670903" POSITION="right" TEXT="Interface - ServletResponse">
<node CREATED="1509051036183" ID="ID_757927878" MODIFIED="1509400670903" TEXT="m&#xe9;todos getBufferSize(), setContentType(), getOutPutStream(), getWriter(), setContentLenght()"/>
</node>
<node CREATED="1509051179734" HGAP="-72" ID="ID_1742763790" MODIFIED="1510153606023" POSITION="left" TEXT="Interface - HttpServletResponse" VSHIFT="93">
<node CREATED="1509051207670" ID="ID_1655201396" MODIFIED="1509400670903" TEXT="add/cookie(), addHeader(), encodeURL(), sendError(), setStatus(), sendRedirect()"/>
</node>
<node CREATED="1509051285797" ID="ID_1513252555" MODIFIED="1509400670903" POSITION="right" TEXT="Interface - ServletRequest">
<node CREATED="1509051313010" ID="ID_87909527" MODIFIED="1510002035253" TEXT="getAttribute(String), getContentLenght(), getInputStream(), getLocalPort(), getRemotePort(), getServletPort(), getParameter(String), getParameterValues(String), getParameternames()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1509051410045" HGAP="-92" ID="ID_261169795" MODIFIED="1509400670905" POSITION="left" TEXT="Interface - HttpServletRequest" VSHIFT="32">
<node CREATED="1509051440923" ID="ID_726788840" MODIFIED="1509400670905" TEXT="getContextPath(), getCookies(), getHeader(String), getIntHeader(String), getMethod(), getQueryString(), getSession()"/>
</node>
<node CREATED="1509054191224" ID="ID_1856006342" MODIFIED="1509400670907" POSITION="right" TEXT="Classe abstrata GenericServlet">
<node CREATED="1509054210865" ID="ID_377899945" MODIFIED="1509400670907" TEXT="service(ServletRequest, ServletResponse), init(ServletConfig), init(), destroy(), getServletConfig(), getServletInfo(), getInitParameter(String), getInitParameternames(), getServletContext(), log(String), log(String, Throwable)"/>
</node>
<node CREATED="1509054333224" HGAP="-111" ID="ID_708576079" MODIFIED="1510232414801" POSITION="left" TEXT="Interface - ServletConfig" VSHIFT="42">
<node CREATED="1509054357489" ID="ID_866106118" MODIFIED="1509400670910" TEXT="getInitParameter(String), Enumeration - getInitParameterNames(), getServletContext(), getServletNames()"/>
</node>
<node CREATED="1509400683852" ID="ID_1912751497" MODIFIED="1510001683506" POSITION="right" TEXT="Listeners">
<node CREATED="1509400695583" ID="ID_1364960084" MODIFIED="1509400797591" TEXT="&lt;&lt;interface&gt;&gt; javax.selvlet.ServletContextListener">
<node CREATED="1509400726416" ID="ID_1726272227" MODIFIED="1509400751319" TEXT="contextInitialized(ServletContextEvent)"/>
<node CREATED="1509400756024" ID="ID_151879806" MODIFIED="1509400773411" TEXT="contextDestroyed(ServletContextEvent)"/>
</node>
<node CREATED="1510001683507" ID="ID_1511530302" MODIFIED="1510002763333" TEXT="Cen&#xe1;rios">
<node CREATED="1510001689611" ID="ID_1620391137" MODIFIED="1510001871838" TEXT="Voc&#xea; quer saber se um atributo em um contexto da aplica&#xe7;&#xe3;o foi adicionado, removido ou substitu&#xed;do.">
<node CREATED="1510001742633" ID="ID_294724851" MODIFIED="1510001832115" TEXT="&lt;&lt;interface&gt;&gt; javax.servlet.ServletContextAttributeListener">
<node CREATED="1510001806002" ID="ID_697360504" MODIFIED="1510001827802" TEXT="ServletContextAttributoEvent"/>
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
<node CREATED="1510153676242" ID="ID_934419623" MODIFIED="1510153686062" TEXT="Como obt&#xea;-lo">
<node CREATED="1510153687257" ID="ID_85284212" MODIFIED="1510153714428" TEXT="request.getRequestDispatcher(&quot;teste.jsp&quot;); - caminho relativo"/>
<node CREATED="1510153716071" ID="ID_601688953" MODIFIED="1510153749865" TEXT="getServletContext().getRequestDispatcher(&quot;/teste.jsp&quot;); - raiz da aplica&#xe7;&#xe3;o"/>
</node>
</node>
<node CREATED="1510241283088" ID="ID_894154611" MODIFIED="1510241595176" POSITION="right" TEXT="Sess&#xf5;es">
<node CREATED="1510241297695" ID="ID_936405436" MODIFIED="1510241332609" TEXT="Existe duas maneiras de objter a sess&#xe3;o.">
<node CREATED="1510241333724" ID="ID_577421403" MODIFIED="1510241347296" TEXT="request.getSession(); - Requisi&#xe7;&#xe3;o"/>
<node CREATED="1510241350083" ID="ID_467945123" MODIFIED="1510241461529" TEXT="HttpSessionEvent e sua subClasse HttpSessionBindingEvent - Listeners de sess&#xe3;o.">
<node CREATED="1510241392273" ID="ID_457417423" MODIFIED="1510241476776" TEXT="HttpSessionEvent possui um m&#xe9;todo getSession();"/>
</node>
</node>
<node CREATED="1510241493722" ID="ID_1566791088" MODIFIED="1510241504750" TEXT="Recuperando uma sess&#xe3;o pr&#xe9;-existente">
<node CREATED="1510241506617" ID="ID_1300389524" MODIFIED="1510241563098" TEXT="getSession(boolean)  - request.getSession(fasle); devolve a sess&#xe3;o pr&#xe9;-existente, se n&#xe3;o existir retorna null."/>
</node>
<node CREATED="1510241596539" ID="ID_589697227" MODIFIED="1510241645861" TEXT="O m&#xe9;todo isNew() - Booleano que informa se a sess&#xe3;o acabou de ser criada no m&#xe9;todo: getSession()."/>
<node CREATED="1510323935963" ID="ID_606496143" MODIFIED="1510323944066" TEXT="Reescrita de URL">
<node CREATED="1510323945704" ID="ID_771127927" MODIFIED="1510324055030" TEXT="S&#xf3; &#xe9; feita na inst&#xe2;ncia da classe HttpServletResponse">
<node CREATED="1510323965543" ID="ID_372109994" MODIFIED="1510324022104" TEXT="encodeURL(&quot;&quot;);"/>
<node CREATED="1510323977454" ID="ID_343570070" MODIFIED="1510324027528" TEXT="encodeRedirectURL(&quot;&quot;);"/>
</node>
</node>
<node CREATED="1510325636600" ID="ID_707245372" MODIFIED="1510325642926" TEXT="Principais m&#xe9;todos">
<node CREATED="1510325644489" ID="ID_213369862" MODIFIED="1510325660688" TEXT="getCreationTime()"/>
<node CREATED="1510325662276" ID="ID_1291457873" MODIFIED="1510325691548" TEXT="getLastAccessedTime() - milisegundos"/>
<node CREATED="1510325693976" ID="ID_647204272" MODIFIED="1510325740362" TEXT="setMaxInactiveInterval() - segundos"/>
<node CREATED="1510325753632" ID="ID_362642874" MODIFIED="1510325763965" TEXT="getMaxInactiveInterval() - segundos"/>
<node CREATED="1510325773065" ID="ID_1429801812" MODIFIED="1510325775877" TEXT="invaliade()"/>
</node>
<node CREATED="1510325811234" ID="ID_731422391" MODIFIED="1510325979772" TEXT="Timeouts">
<node CREATED="1510325843219" ID="ID_51132536" MODIFIED="1510326040548" TEXT="No DD &lt;servlet-config&gt;&lt;servlet-timeout&gt;15&lt;/servlet-timeout&gt;&lt;/session-config&gt;">
<node CREATED="1510325884660" ID="ID_840527033" MODIFIED="1510326120489" TEXT="&#xc9; configurado em minutos e &#xe9; utilizado por todas as sess&#xf5;es."/>
</node>
<node CREATED="1510325994761" ID="ID_760286540" MODIFIED="1510326081977" TEXT="Na aplica&#xe7;&#xe3;o - session.setMaxInactiveInterval()">
<node CREATED="1510326023514" ID="ID_1516489586" MODIFIED="1510326104449" TEXT="&#xc9; configurado em segundos e fica espec&#xed;fico da sess&#xe3;o configurada."/>
</node>
</node>
<node CREATED="1510326481917" ID="ID_174082729" MODIFIED="1510326627512" TEXT="Depois de chamado o session.invalidade() ou se a sess&#xe3;o foi configurada com o session.setMaxInactiveInterval(0);, Ocorrer&#xe1; uma exce&#xe7;&#xe3;o IllegalStateException."/>
<node CREATED="1510326851566" ID="ID_111144567" MODIFIED="1510326933629" TEXT="O servidor envia um header na resposta sob o nome: Set-Cookie e depois o cliente devolve com um header na solicita&#xe7;&#xe3;o sob o nome Cookie com os mesmos dados que vieram no Set-Cookie."/>
<node CREATED="1510327083895" ID="ID_1384452350" MODIFIED="1510327089011" TEXT="Cookies">
<node CREATED="1510327089838" ID="ID_1524540961" MODIFIED="1510327180229" TEXT="setMaxAge() - &#xc9; definido em segundos. Se configurar com &quot;-1&quot; ele s&#xf3; ser&#xe1; removido quando o browser fechar. Mesmo exemplo do cookie: JSESSIONID"/>
<node CREATED="1510327729421" ID="ID_727019585" MODIFIED="1510327790110" TEXT="N&#xe3;o existe um getCookie(&quot;&quot;), a &#xfa;nica forma &#xe9; um array de cookies: request.getCookies();"/>
</node>
<node CREATED="1510584224198" ID="ID_1214562147" MODIFIED="1510584270623" TEXT="As sess&#xf5;es s&#xe3;o os &#xfa;nicos objetos que n&#xe3;o s&#xe3;o duplicados em JVM&#xb4;s diferentes."/>
</node>
<node CREATED="1510843978085" ID="ID_188006675" MODIFIED="1510843981137" POSITION="left" TEXT="JSP">
<node CREATED="1510842030047" ID="ID_1246914587" MODIFIED="1510844184112" TEXT="Diretivas JSP: Sempre come&#xe7;am com @, e existem tr&#xea;s diretivas.">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1510842043826" ID="ID_1990682660" MODIFIED="1510842118674" TEXT="&lt;%@ page import=&quot;com.test.*,java.util.*&quot; %&gt;">
<node CREATED="1510931059595" ID="ID_140014766" MODIFIED="1510931099037" TEXT="atributos mais usados na diretira page">
<node CREATED="1510931102729" ID="ID_1289087689" MODIFIED="1510931104709" TEXT="import"/>
<node CREATED="1510931106384" ID="ID_1340023218" MODIFIED="1510931113524" TEXT="isThreadSafe"/>
<node CREATED="1510931114904" ID="ID_574415255" MODIFIED="1510931120252" TEXT="contentType"/>
<node CREATED="1510931121783" ID="ID_1531056486" MODIFIED="1510933422992" TEXT="isLEIgnored - S&#xf3; funciona se no DD estiver configurado um padr&#xe3;o de Url que atenda a p&#xe1;gina informada."/>
<node CREATED="1510931135742" ID="ID_645438871" MODIFIED="1510931138771" TEXT="isErrorPage"/>
<node CREATED="1510931139830" ID="ID_694947990" MODIFIED="1510931145810" TEXT="errorPage"/>
</node>
</node>
<node CREATED="1510842367813" ID="ID_1932018203" MODIFIED="1510842699772" TEXT="&lt;%@ taglib %&gt;"/>
<node CREATED="1510842701960" ID="ID_1682860638" MODIFIED="1510842720379" TEXT="&lt;%@ include %&gt;"/>
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
<node CREATED="1510928320817" ID="ID_696358875" MODIFIED="1510928355572" TEXT="PageContext">
<node CREATED="1510928356151" ID="ID_210100099" MODIFIED="1510928359355" TEXT="JspContext">
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
</node>
<node CREATED="1511273832596" ID="ID_1946073304" MODIFIED="1511273850031" TEXT="&lt;jsp:getProperty name=&quot;&quot; property=&quot;&quot; /&gt;">
<node CREATED="1511277843002" ID="ID_1231209758" MODIFIED="1511277918074" TEXT="S&#xf3; acessa as propriedades do bean mencionado em name=&quot;&quot;. N&#xe3;o acessa objetos aninhados. Ex: person.dog.name com isso tem que usar EL: ${person.dog.name}"/>
</node>
<node CREATED="1511273862410" ID="ID_1737725692" MODIFIED="1511276662364" TEXT="&lt;jsp:setProperty name=&quot;nome do bean&quot; property=&quot;propriedade do bean&quot; value=&quot;valor&quot; param=&quot;nome do par&#xe2;metro do formul&#xe1;rio (recupera o valor)&quot; /&gt;">
<node CREATED="1511273969803" ID="ID_1473880188" MODIFIED="1511274016221" TEXT="Se for usada dentro de um &lt;jsp:UseBean /&gt; significa que s&#xf3; ser&#xe1; usado o setProperty se o bean for criado. "/>
<node CREATED="1511276901769" ID="ID_738314146" MODIFIED="1511276930526" TEXT="property=&quot;*&quot; coincide todas as propriedades do formul&#xe1;rio com o bean."/>
</node>
</node>
<node CREATED="1511275864169" ID="ID_179633022" MODIFIED="1511275865678" TEXT="&lt;jsp:include /&gt;"/>
<node CREATED="1511431311659" ID="ID_1530270957" MODIFIED="1511432627794" TEXT="&lt;jsp:forward page=&quot;&quot;&gt;&lt;jsp:param name=&quot;&quot; value=&quot;&quot; /&gt;&lt;/jsp:foward&gt;"/>
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
<node CREATED="1511432771660" ID="ID_64334603" MODIFIED="1511432824117" TEXT="O conte&#xfa;do inclu&#xed;do n&#xe3;o pode alterar o c&#xed;digo de status da resposta e nem configurar headers."/>
</node>
<node CREATED="1512139269949" ID="ID_1288668131" MODIFIED="1512400341849" TEXT="JSTL">
<node CREATED="1512139275598" ID="ID_559959710" MODIFIED="1512140341547" TEXT="&lt;c:set var=&quot;&quot; value=&quot;&quot; scope=&quot;&quot; /&gt;">
<node CREATED="1512139566659" ID="ID_714294266" MODIFIED="1512139576807" TEXT="serve para setar vari&#xe1;veis de atributos">
<node CREATED="1512139708186" ID="ID_1727441429" MODIFIED="1512139724200" TEXT="pode conter corpo, se o corpo for nulo a vari&#xe1;vel &#xe9; removida"/>
</node>
</node>
<node CREATED="1512139514862" ID="ID_484304580" MODIFIED="1512139859835" TEXT="&lt;c:set target=&quot;&quot; property=&quot;&quot;  value=&quot;&quot; scope=&quot;&quot; /&gt;">
<node CREATED="1512139528206" ID="ID_253106945" MODIFIED="1512139547121" TEXT="target serve para setar propriedades dos beans">
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
<node CREATED="1512140960009" ID="ID_108281701" MODIFIED="1512141458006" TEXT="&lt;c:import  url=&quot;&quot; /&gt; direfente da diretiva &quot;@page include&quot; e tamb&#xe9;m da a&#xe7;&#xe3;o padr&#xe3;o &quot;jsp:include&quot; o conte&#xfa;do pode estar fora do container web. Pode ser combinada com a &lt;c:param name=&quot;&quot; value=&quot;&quot; /&gt; que &#xe9; equivalente a &lt;jsp:param name=&quot;&quot; value=&quot;&quot; /&gt;"/>
<node CREATED="1512141771245" ID="ID_1758161248" MODIFIED="1512141819423" TEXT="&lt;c:url value=&quot;/teste.jsp?first${first}&quot; var=&quot;inputUrl&quot; /&gt;">
<node CREATED="1512141870487" ID="ID_165043603" MODIFIED="1512141890770" TEXT="pode conter corpo com o &lt;c:param name=&quot;&quot; value=&quot;&quot; /&gt;"/>
<node CREATED="1512141924763" ID="ID_324391694" MODIFIED="1512141952798" TEXT="Nas urls n&#xe3;o podem conter espa&#xe7;os, S&#xe3;o substitu&#xed;dos por &quot;+&quot;"/>
</node>
<node CREATED="1512400343073" ID="ID_1197640765" MODIFIED="1512400389442" TEXT="Taglib customizadas">
<node CREATED="1512400390165" ID="ID_929486769" MODIFIED="1512400455454" TEXT="&lt;tag&gt;&lt;attribute&gt;&lt;name&gt;user&lt;/name&lt;required&gt;true&lt;/required&gt;&lt;rtexprvalue&gt;true&lt;/rtexprvalue&gt;&lt;/attribute&gt;&lt;/tag&gt;">
<node CREATED="1512400467617" ID="ID_451643882" MODIFIED="1512400482204" TEXT="Se n&#xe3;o informar o rtexprvalue o valor padr&#xe3;o &#xe9; sempre false"/>
</node>
<node CREATED="1512400727696" ID="ID_716574812" MODIFIED="1512400855532" TEXT="Se a tag contiver o &lt;tag&gt;&lt;body-content&gt;false&lt;/body-content&gt;&lt;/tag&gt;, ainda assim poder&#xe1; existir a a&#xe7;&#xe3;o padr&#xe3;o &lt;jsp:attribute name=&quot;user&quot;&gt;${userName}&lt;/jsp:attribute&gt; no corpo da tag."/>
</node>
</node>
<node CREATED="1512397810774" ID="ID_1780565899" MODIFIED="1512397818574" TEXT="P&#xe1;ginas de erro">
<node CREATED="1512397821713" ID="ID_1480014139" MODIFIED="1512397844868" TEXT="&lt;%page isErrorPage=&quot;true&quot; %&gt;">
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
</node>
<node CREATED="1512485955323" ID="ID_102371873" MODIFIED="1512485963679" POSITION="right" TEXT="File upload">
<node CREATED="1512485964681" ID="ID_1720405984" MODIFIED="1512486087574" TEXT="@MultipartConfig">
<node CREATED="1512485970234" ID="ID_1885982071" MODIFIED="1512485986550" TEXT="Atributos v&#xe1;lidos">
<node CREATED="1512485978865" ID="ID_1084386671" MODIFIED="1512485989658" TEXT="fileSizeThreshold "/>
<node CREATED="1512485994698" ID="ID_912629489" MODIFIED="1512485995791" TEXT="location"/>
<node CREATED="1512486000403" ID="ID_1035432685" MODIFIED="1512486000935" TEXT="maxFileSize"/>
<node CREATED="1512486006003" ID="ID_831292054" MODIFIED="1512486006471" TEXT="maxRequestSize"/>
</node>
</node>
</node>
</node>
</map>
