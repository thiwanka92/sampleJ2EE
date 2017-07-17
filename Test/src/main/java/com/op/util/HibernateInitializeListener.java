package com.op.util;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class HibernateInitializeListener implements ServletContextListener{

	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

	public void contextInitialized(ServletContextEvent arg0) {
		try {
			HibernateUtil.initialize();
		} catch (Throwable ex) {
			System.err.println("Error initializing hibernate :" + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

}
