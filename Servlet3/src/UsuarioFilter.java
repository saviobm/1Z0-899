import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter(urlPatterns = "/usuario")
public class UsuarioFilter implements Filter {

	public void destroy() {
		
		System.out.println("Finalizou o filter.");
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
		
		System.out.println("Chamou a jsp de usuário.");

	}

	public void init(FilterConfig arg0) throws ServletException {
		
		System.out.println("Iniciou o filter.");

	}

}
