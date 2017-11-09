import java.io.Serializable;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

@WebListener
public class Usuario implements Serializable, HttpSessionBindingListener  {

	/**
	 * serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	private String nome;
	
	private String idade;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getIdade() {
		return idade;
	}

	public void setIdade(String idade) {
		this.idade = idade;
	}
	
	public void valueBound(HttpSessionBindingEvent event) {
		
		Usuario usuario = (Usuario)event.getValue();
		
		System.out.println("Usuário adicionado na sessão: Nome -> " + usuario.getNome() + " idade -> " + usuario.getIdade());
		
	}

	public void valueUnbound(HttpSessionBindingEvent event) {
		
		System.out.println("Usuário removido da sessão: " + event.getName());
		
	}
	
}