package com.job.model;

import java.util.List;

public class View {
	private String cmpName;
	private String reqName;
	private String cmpWebsite;
	private String postingDate;
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
	private String category;
	private List<JobModel> jobList;
	
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCmpName() {
		return cmpName;
	}
	public void setCmpName(String cmpName) {
		this.cmpName = cmpName;
	}
	public String getReqName() {
		return reqName;
	}
	public void setReqName(String reqName) {
		this.reqName = reqName;
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
	
	
	public List<JobModel> getJobList() {
		return jobList;
	}
	public void setJobList(List<JobModel> jobList) {
		this.jobList = jobList;
	}
	@Override
	public String toString() {
		return "View [cmpName=" + cmpName + ", reqName=" + reqName + ", cmpWebsite=" + cmpWebsite + ", postingDate="
				+ postingDate + ", jobTitle=" + jobTitle + ", skills=" + skills + ", ctcFrom=" + ctcFrom + ", ctcTo="
				+ ctcTo + ", jobType=" + jobType + ", cmpEmail=" + cmpEmail + ", jobLevel=" + jobLevel + ", experience="
				+ experience + ", locations=" + locations + ", jobDescription=" + jobDescription + ", getCmpName()="
				+ getCmpName() + ", getReqName()=" + getReqName() + ", getCmpWebsite()=" + getCmpWebsite()
				+ ", getPostingDate()=" + getPostingDate() + ", getJobTitle()=" + getJobTitle() + ", getSkills()="
				+ getSkills() + ", getCtcFrom()=" + getCtcFrom() + ", getCtcTo()=" + getCtcTo() + ", getJobType()="
				+ getJobType() + ", getCmpEmail()=" + getCmpEmail() + ", getJobLevel()=" + getJobLevel()
				+ ", getExperience()=" + getExperience() + ", getLocations()=" + getLocations()
				+ ", getJobDescription()=" + getJobDescription() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
}
