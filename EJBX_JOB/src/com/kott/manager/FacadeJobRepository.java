package com.kott.manager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.kott.ejbx.JobModelValue;
import com.kott.ejbx.SkillsModelValue;

@Repository
public class FacadeJobRepository {
	private static final String SUCCESS = "success";
	private static final String ERROR = "error";

	private static final Logger logger = LoggerFactory.getLogger(FacadeJobRepository.class);

	@PersistenceContext
	EntityManager entityManager;

	public String repoAddJob(JobModelValue modelValue) {
		entityManager.persist(modelValue);
		return SUCCESS;
	}

	public List<JobModelValue> repoSearchJob(JobModelValue modelValue) {
		List<JobModelValue> jobList = new ArrayList<>();
		try {
			StringBuilder jpql = new StringBuilder("SELECT j FROM JobModelValue j WHERE 1=1");
			Map<String,Object> parameters = new HashMap<>();
			
			if(modelValue.getJobId() != 0) {
				jpql.append(" AND j.jobId like : jobId");
				parameters.put("jobId", modelValue.getJobId());
			}
			if(!StringUtils.isBlank(modelValue.getCmpName())) {
				jpql.append(" AND j.cmpName like : cmpName");
				parameters.put("cmpName", modelValue.getCmpName()+"%");
			}
			if(!StringUtils.isBlank(modelValue.getCategory())) {
				jpql.append(" AND j.category like : category");
				parameters.put("category", modelValue.getCategory()+"%");
			}
			if(!StringUtils.isBlank(modelValue.getPostingDate())) {
				jpql.append(" AND j.postingDate like :postingDate");
				parameters.put("postingDate", modelValue.getPostingDate()+"%");
			}
			if(!StringUtils.isBlank(modelValue.getJobTitle())) {
				jpql.append(" AND j.jobTitle like :jobTitle");
				parameters.put("jobTitle", modelValue.getJobTitle()+"%");
			}
			if(!StringUtils.isBlank(modelValue.getSkills())) {
				jpql.append(" AND j.skills like :skills");
				parameters.put("skills", "%" + modelValue.getSkills()+"%");
			}
			if(!StringUtils.isBlank(modelValue.getJobType())) {
				jpql.append(" AND j.jobType like :jobType");
				parameters.put("jobType", modelValue.getJobType()+"%");
			}
			if(!StringUtils.isBlank(modelValue.getJobLevel())) {
				jpql.append(" AND j.jobLevel like :jobLevel");
				parameters.put("jobLevel", modelValue.getJobLevel()+"%");
			}
			if(!StringUtils.isBlank( modelValue.getExperience())) {
				jpql.append(" AND j.experience like :experience");
				parameters.put("experience", modelValue.getExperience()+"%");
			}
			if(!StringUtils.isBlank(modelValue.getLocations())) {
				jpql.append(" AND j.locations like :locations");
				parameters.put("locations", modelValue.getLocations()+"%");
			}
			TypedQuery<JobModelValue> query  = entityManager.createQuery(jpql.toString(),JobModelValue.class);
			for(Map.Entry<String,Object> entry :parameters.entrySet() ) {
				query.setParameter(entry.getKey(), entry.getValue());
			}
			jobList = query.getResultList();
		}
		catch (Exception e) {
			logger.error("exception in search from Database",e);

		}

		return jobList;
	}

	public JobModelValue repoEditPage(int id) {
		return entityManager.find( JobModelValue.class,id);

	}

	public String repoEditJob(JobModelValue modelValue) {
		try {
			JobModelValue editValue = entityManager.find( JobModelValue.class,modelValue.getJobId());
			if(editValue != null) {
				editValue.setReqName(modelValue.getReqName());
				editValue.setCmpWebsite(modelValue.getCmpWebsite());
				editValue.setCmpName(modelValue.getCmpName());
				editValue.setPostingDate(modelValue.getPostingDate());
				editValue.setJobTitle(modelValue.getJobTitle());
				editValue.setSkills(modelValue.getSkills());
				editValue.setCtcFrom(modelValue.getCtcFrom());
				editValue.setCategory(modelValue.getCategory());
				editValue.setCtcTo(modelValue.getCtcTo());
				editValue.setJobType(modelValue.getJobType());
				editValue.setCmpEmail(modelValue.getCmpEmail());
				editValue.setJobLevel(modelValue.getJobLevel());
				editValue.setExperience(modelValue.getExperience());
				editValue.setLocations(modelValue.getLocations());
				editValue.setJobDescription(modelValue.getJobDescription());
				entityManager.merge(editValue);
				return SUCCESS;
			}
			return ERROR;
		} catch (Exception e) {
			logger.error("exception in editing the Database");
			return ERROR;
		}
	}

	public String repoDeleteJob(int id) {
		try {
		JobModelValue deleteValue = entityManager.find( JobModelValue.class,id);
		entityManager.remove(deleteValue);
		return SUCCESS;
	} catch (Exception e) {
		logger.error("exception in deleting from Database");
	}
	return ERROR;
	}

	@SuppressWarnings("unchecked")
	public List<SkillsModelValue> repoViewSkills() {
		String jpql="select s from SkillsModelValue s";
		
		return entityManager.createQuery(jpql).getResultList();
		 
	}
	
	@SuppressWarnings("unchecked")
	public List<Object[]> repoCountJobByCategory() {
	    String jpql = "SELECT category, COUNT(*) FROM JobModelValue GROUP BY category";
	    return entityManager.createQuery(jpql).getResultList();
	}


}
