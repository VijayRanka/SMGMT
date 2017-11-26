package com.servletStore.settings.school.model;

public class SchoolPOJO {
	
	 private int school_id, section_id, delete_status,status;
	 
	 private String name, address, contact_no, 
	 shift, alias_name;
	 
	 public int getSchool_id() {
		return school_id;
	}
	public void setSchool_id(int school_id) {
		this.school_id = school_id;
	}
	public int getSection_id() {
		return section_id;
	}
	public void setSection_id(int school_section_id) {
		this.section_id = school_section_id;
	}
	public int getDelete_status() {
		return delete_status;
	}
	public void setDelete_status(int delete_status) {
		this.delete_status = delete_status;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getName() {
		return name;
	}
	public void setName(String school_name) {
		this.name = school_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	public String getShift() {
		return shift;
	}
	public void setShift(String school_shift) {
		this.shift = school_shift;
	}
	public String getAlias_name() {
		return alias_name;
	}
	public void setAlias_name(String alias_name) {
		this.alias_name = alias_name;
	}
}