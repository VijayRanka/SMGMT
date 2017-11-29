package com.servletStore.settings.school.model;

import java.util.List;

public interface SchoolDAO {
	
	public void addSchool(SchoolPOJO schoolPojo);
	public List<SchoolPOJO> getSchoolInfo();
	public List<SchoolPOJO> getSchoolDetails();
	
}
