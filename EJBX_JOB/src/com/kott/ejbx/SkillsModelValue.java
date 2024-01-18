package com.kott.ejbx;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="SKILLS")
public class SkillsModelValue {
	@Id
	@Column(name = "skill_id")
	private String skill_id;

    @Column(name = "skill_name")
    private String skill_name;

	public String getSkill_id() {
		return skill_id;
	}

	public void setSkill_id(String skill_id) {
		this.skill_id = skill_id;
	}

	public String getSkill_name() {
		return skill_name;
	}

	public void setSkill_name(String skill_name) {
		this.skill_name = skill_name;
	}

	@Override
	public String toString() {
		return "SkillsModelValue [skill_id=" + skill_id + ", skill_name=" + skill_name + "]";
	}
	
	
}
