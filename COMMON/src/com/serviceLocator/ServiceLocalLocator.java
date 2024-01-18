package com.serviceLocator;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ServiceLocalLocator {
	public static ServiceLocalLocator serviceLocalLocator;
	
	public static ServiceLocalLocator getInstance() {
		if(serviceLocalLocator == null) {
			serviceLocalLocator = new ServiceLocalLocator();
		}
		return serviceLocalLocator;
	} 
	
	@SuppressWarnings("unchecked")
	public<T> T getFacadeManager (Class<T> facadeMangerClazz) {
		String clazzName = facadeMangerClazz.getSimpleName();
		if("FacadeJobManager".equals(clazzName)) {
			return (T) facadeJobManager();
		}
		return null;
	}

	private Object facadeJobManager() {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("jobBeans.xml");
		return  context.getBean("FacadeJobManagerBean");
	}
}
