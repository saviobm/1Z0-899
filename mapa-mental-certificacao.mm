<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1508186603022" ID="ID_440038459" MODIFIED="1509400680493" STYLE="fork" TEXT="Cerifica&#xe7;&#xe3;o">
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
<node CREATED="1509051179734" HGAP="-72" ID="ID_1742763790" MODIFIED="1509400670903" POSITION="left" TEXT="Interface - HttpServletResponse" VSHIFT="93">
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
<node CREATED="1509054333224" HGAP="-111" ID="ID_708576079" MODIFIED="1509400670909" POSITION="left" TEXT="Interface - ServletConfig" VSHIFT="42">
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
<node CREATED="1510002335832" ID="ID_321241215" MODIFIED="1510002345926" TEXT="attributeRemoved"/>
<node CREATED="1510002350133" ID="ID_1824248630" MODIFIED="1510002356093" TEXT="attributeReplaced"/>
</node>
</node>
<node CREATED="1510002394220" ID="ID_1150164019" MODIFIED="1510003123711" TEXT="Voc&#xea; tem uma classe de atributo (uma classe para um objeto que ser&#xe1; colocado em um atributo) e voc&#xea; quer que os objetos desse tipo sejam notificados quando eles forem associados ou removidos de uma sess&#xe3;o.">
<node CREATED="1510002470013" ID="ID_223011409" MODIFIED="1510002532897" TEXT="&lt;&lt; interface &gt;&gt; javax.servlet.http.HttpSessionBindingListener">
<node CREATED="1510002514407" ID="ID_288799797" MODIFIED="1510002524450" TEXT="HttpSessionBindingEvent"/>
<node CREATED="1510002534442" ID="ID_275163042" MODIFIED="1510002597840" TEXT="valueBound"/>
<node CREATED="1510002563053" ID="ID_1380288617" MODIFIED="1510002604834" TEXT="valueUnbound"/>
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
</node>
</node>
</map>
