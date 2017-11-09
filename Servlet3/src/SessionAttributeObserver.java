import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

@WebListener
public class SessionAttributeObserver implements HttpSessionAttributeListener {

	public void attributeAdded(HttpSessionBindingEvent event) {
		
		System.out.println("Objeto adicionado na sessão: " + event.getName() + " value: " + event.getValue());
		
	}

	public void attributeRemoved(HttpSessionBindingEvent event) {
		
		System.out.println("Objeto removido da sessão: " + event.getName() + " value: " + event.getValue());

		
	}

	public void attributeReplaced(HttpSessionBindingEvent event) {
		
		System.out.println("Objeto substituído na sessão: " + event.getName() + " value: " + event.getValue());
		
	}

}