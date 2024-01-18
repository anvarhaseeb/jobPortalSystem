package com.job.action;

import java.util.Map;

import com.job.controller.FacadeJobController;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GenericAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String FACADEJOB_CONTROLLER = "";


	public FacadeJobController  getFacadeJobController(){

		FacadeJobController facadeJobController = (FacadeJobController) getSession().get(FACADEJOB_CONTROLLER);
		if(facadeJobController == null) {
			facadeJobController = new FacadeJobController();
			getSession().put(FACADEJOB_CONTROLLER, facadeJobController);
		}
		return facadeJobController;
	}

	private Map<String,Object> getSession() {
		return ActionContext.getContext().getSession();
	} 
}

