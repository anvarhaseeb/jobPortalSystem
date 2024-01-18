package com.job.model;

import java.io.InputStream;
import java.util.List;

import org.json.JSONArray;

public class JobModel {
	private int jobId;
	private String cmpName;
	private String reqName;
	private String cmpWebsite;
	private String postingDate ;
	private String jobTitle;
	private String skills ;
	private String ctcFrom ;
	private String ctcTo ;
	private String jobType ;
	private String cmpEmail ;
	private String jobLevel ;
	private String experience ;
	private String locations ;
	private String jobDescription ;
	private String category ;
	
	private String actionName;
	private JSONArray jobListJson;
	private String language;
	private List<JobModel> jobList;
	private List<SkillsModel> skillList;
	private List<JobModel> jobCounts;
	private long count;

	private String reportType;
	private InputStream inputStream;
	public String getCmpName() {
		return cmpName;
	}
	public void setCmpName(String cmpName) {
		this.cmpName = cmpName;
	}
	public String getCmpWebsite() {
		return cmpWebsite;
	}
	public void setCmpWebsite(String cmpWebsite) {
		this.cmpWebsite = cmpWebsite;
	}
	public String getPostingDate() {
		return postingDate;
	}
	public void setPostingDate(String postingDate) {
		this.postingDate = postingDate;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getCtcFrom() {
		return ctcFrom;
	}
	public void setCtcFrom(String ctcFrom) {
		this.ctcFrom = ctcFrom;
	}
	public String getCtcTo() {
		return ctcTo;
	}
	public void setCtcTo(String ctcTo) {
		this.ctcTo = ctcTo;
	}
	public String getJobType() {
		return jobType;
	}
	public void setJobType(String jobType) {
		this.jobType = jobType;
	}
	public String getCmpEmail() {
		return cmpEmail;
	}
	public void setCmpEmail(String cmpEmail) {
		this.cmpEmail = cmpEmail;
	}
	public String getJobLevel() {
		return jobLevel;
	}
	public void setJobLevel(String jobLevel) {
		this.jobLevel = jobLevel;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getLocations() {
		return locations;
	}
	public void setLocations(String locations) {
		this.locations = locations;
	}
	public String getJobDescription() {
		return jobDescription;
	}
	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}
	
	
	public String getReportType() {
		return reportType;
	}
	public void setReportType(String reportType) {
		this.reportType = reportType;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getActionName() {
		return actionName;
	}
	public void setActionName(String actionName) {
		this.actionName = actionName;
	}
	
	public String getReqName() {
		return reqName;
	}
	public void setReqName(String reqName) {
		this.reqName = reqName;
	}
	public int getJobId() {
		return jobId;
	}
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	
	public JSONArray getJobListJson() {
		return jobListJson;
	}
	public void setJobListJson(JSONArray jobListJson) {
		this.jobListJson = jobListJson;
	}
	
	public List<JobModel> getJobList() {
		return jobList;
	}
	public void setJobList(List<JobModel> jobList) {
		this.jobList = jobList;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public InputStream getInputStream() {
		return inputStream;
	}
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	
	public List<SkillsModel> getSkillList() {
		return skillList;
	}
	public void setSkillList(List<SkillsModel> skillList) {
		this.skillList = skillList;
	}
	public List<JobModel> getJobCounts() {
		return jobCounts;
	}
	public void setJobCounts(List<JobModel> jobCounts) {
		this.jobCounts = jobCounts;
	}
	public long getCount() {
		return count;
	}
	public void setCount(long count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "JobModel [jobId=" + jobId + ", cmpName=" + cmpName + ", reqName=" + reqName + ", cmpWebsite="
				+ cmpWebsite + ", postingDate=" + postingDate + ", jobTitle=" + jobTitle + ", skills=" + skills
				+ ", ctcFrom=" + ctcFrom + ", ctcTo=" + ctcTo + ", jobType=" + jobType + ", cmpEmail=" + cmpEmail
				+ ", jobLevel=" + jobLevel + ", experience=" + experience + ", locations=" + locations
				+ ", jobDescription=" + jobDescription + ", category=" + category + ", actionName=" + actionName
				+ ", jobListJson=" + jobListJson + ", language=" + language + ", jobList=" + jobList + ", skillList="
				+ skillList + ", jobCounts=" + jobCounts + ", count=" + count + ", reportType=" + reportType
				+ ", inputStream=" + inputStream + "]";
	}
	
	
	
	
	
	
}
