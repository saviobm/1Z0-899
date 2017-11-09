import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Servlet3", 
	urlPatterns = "/SessaoProduto",
	initParams = { 
			@WebInitParam(name = "nome", value = "Savera bacheiro"),
			@WebInitParam(name = "idade", value = "38")
	},
	loadOnStartup = 1
)
public class Servlet3 extends HttpServlet {

	/**
	 * serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		HttpSession session = request.getSession();
		
		List<String> listaCarros = (List<String>)session.getAttribute("listaCarros");
		
		if (listaCarros == null) listaCarros = new ArrayList<String>();
		
		listaCarros.add(request.getParameter("carro"));
		
		session.setAttribute("listaCarros", listaCarros);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
		requestDispatcher.forward(request, response);
		
		
	}

}