package br.net.rwd.sisescola;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ApplicationContextProvider {
	
	private Logger log = Logger.getLogger(Class.class.getName());
	private ApplicationContext applicationContext;
	private static final ApplicationContextProvider provider = new ApplicationContextProvider();

	public ApplicationContextProvider() throws ExceptionInInitializerError {
		try {
			this.applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		} catch (Throwable ex) {
			log.error("Falha na inicialização da criação do ApplicationContext \n" + ex.getMessage(), ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	public synchronized static ApplicationContextProvider getInstance()
			throws ExceptionInInitializerError {
		return provider;
	}

	public ApplicationContext getApplicationContext() {
		return applicationContext;
	}

	public void setApplicationContext(ApplicationContext applicationContext) {
		this.applicationContext = applicationContext;
	}
}
