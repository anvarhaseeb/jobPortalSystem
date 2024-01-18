package com.kott.ejbx;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="job")
public class JobModelValue {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "job_id")
	private int jobId;

    @Column(name = "req_name")
    private String reqName;

    @Column(name = "cmp_name")
    private String cmpName;

    @Column(name = "cmp_website")
    private String cmpWebsite;

    @Column(name = "posting_date")
    private String postingDate;

    @Column(name = "job_title")
    private String jobTitle;

    @Column(name = "skills")
    private String skills;

    @Column(name = "ctc_from")
    private String ctcFrom;

    @Column(name = "ctc_to")
    private String ctcTo;

    @Column(name = "job_type")
    private String jobType;

    @Column(name = "cmp_email")
    private String cmpEmail;

    @Column(name = "job_level")
    private String jobLevel;

    @Column(name = "experience")
    private String experience;

    @Column(name = "locations")
    private String locations;

    @Column(name = "job_description")
    private String jobDescription;

    @Column(name = "category")
    private String category;


	
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	

	
	
}
