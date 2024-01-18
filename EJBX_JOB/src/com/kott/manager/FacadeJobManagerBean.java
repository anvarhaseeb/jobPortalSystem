package com.kott.manager;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kott.ejbx.JobModelValue;
import com.kott.ejbx.SkillsModelValue;

@Service
public class FacadeJobManagerBean  implements FacadeJobManager{


	@Autowired
	FacadeJobRepository repository;
	
	@Transactional
	public String addJob(JobModelValue modelValue) {
		return repository.repoAddJob(modelValue);
	}

	@Transactional
	public List<JobModelValue> searchJob(JobModelValue modelValue) {
		return repository.repoSearchJob(modelValue);
	}

	
	@Transactional
	public String editJob(JobModelValue modelValue) {
		return repository.repoEditJob(modelValue);
	}

	@Transactional
	public JobModelValue editPage(int id) {
		return repository.repoEditPage(id);
	}

	@Transactional
	public String deleteJob(int id) {
		return repository.repoDeleteJob(id);
	}

	@Transactional
	public List<SkillsModelValue> viewSkills() {
		return repository.repoViewSkills();
	}
	@Transactional
	public List<Object[]> countJobByCategory() {
		return repository.repoCountJobByCategory();
	}
	

}
