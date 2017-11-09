import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Servlet3", 
	urlPatterns = "/Servlet3",
	initParams = { 
			@WebInitParam(name = "nome", value = "Savera bacheiro"),
			@WebInitParam(name = "idade", value = "38") 
	})
public class Servlet3 extends HttpServlet {

	/**
	 * serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		out.println("Nome: " + getInitParameter("nome"));
		out.println("Idade: " + getInitParameter("idade"));
		
	}

}
