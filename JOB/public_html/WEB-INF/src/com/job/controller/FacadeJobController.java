package com.job.controller;

import java.util.List;

import org.json.JSONArray;

import com.kott.ejbx.JobModelValue;
import com.kott.ejbx.SkillsModelValue;
import com.kott.manager.FacadeJobManager;
import com.serviceLocator.ServiceLocalLocator;

public class FacadeJobController {

	public static FacadeJobManager getFacadeManagers() {
		return ServiceLocalLocator.getInstance().getFacadeManager(FacadeJobManager.class);
	}

	public String addJob(JobModelValue modelValue) {
		return getFacadeManagers().addJob(modelValue);
	}



	public JSONArray  search(JobModelValue modelValue) {
		modelValue.setJobId(0);
		List<JobModelValue> jobList = getFacadeManagers().searchJob(modelValue);
		return new JSONArray (jobList);
	}
	public List<JobModelValue>  jobList(JobModelValue modelValue) {
		 return getFacadeManagers().searchJob(modelValue);
	

	}

	public String editJob(JobModelValue modelValue) {
		
		return getFacadeManagers().editJob(modelValue);
	}

	public JobModelValue editPage(int id) {
		return getFacadeManagers().editPage(id);
	}

	public String deleteJob(int jobId) {
		return  getFacadeManagers().deleteJob(jobId);
	}
	public List<SkillsModelValue>  viewSkills( ) {
		return getFacadeManagers().viewSkills();
	}
	public List<Object[]> countJobByCategory( ) {
		return getFacadeManagers().countJobByCategory();
	}

}
