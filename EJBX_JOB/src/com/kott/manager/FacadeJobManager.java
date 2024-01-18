package com.kott.manager;

import java.util.List;

import com.kott.ejbx.JobModelValue;
import com.kott.ejbx.SkillsModelValue;

public interface FacadeJobManager {
	public String addJob(JobModelValue modelValue);
	public List<JobModelValue> searchJob(JobModelValue modelValue);
	public String deleteJob(int id);
	public String editJob(JobModelValue modelValue);
	public JobModelValue editPage(int id);
	public List<SkillsModelValue> viewSkills();
	public List<Object[]> countJobByCategory();
	
}
