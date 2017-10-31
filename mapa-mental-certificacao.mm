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
<node CREATED="1508967535810" HGAP="-101" ID="ID_276670620" MODIFIED="1509400670898" POSITION="right" TEXT="Request" VSHIFT="19"/>
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
<node CREATED="1509051313010" ID="ID_87909527" MODIFIED="1509400670903" TEXT="getAttribute(String), getContentLenght(), getInputStream(), getLocalPort(), getRemotePort(), getServletPort(), getParameter(String), getParameterValues(String), getParameternames()"/>
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
<node CREATED="1509400683852" ID="ID_1912751497" MODIFIED="1509400691922" POSITION="right" TEXT="Listeners">
<node CREATED="1509400695583" ID="ID_1364960084" MODIFIED="1509400797591" TEXT="&lt;&lt;interface&gt;&gt; javax.selvlet.ServletContextListener">
<node CREATED="1509400726416" ID="ID_1726272227" MODIFIED="1509400751319" TEXT="contextInitialized(ServletContextEvent)"/>
<node CREATED="1509400756024" ID="ID_151879806" MODIFIED="1509400773411" TEXT="contextDestroyed(ServletContextEvent)"/>
</node>
</node>
</node>
</map>
