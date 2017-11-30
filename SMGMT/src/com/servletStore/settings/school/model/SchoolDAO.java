package com.servletStore.settings.school.model;

import java.util.List;

public interface SchoolDAO {
	
	public void addSchool(SchoolPOJO schoolPojo,int len);
	public List<SchoolPOJO> getSchoolInfo();
	public List<SchoolPOJO> getSchoolDetails();
	public void updateSchoolDetails(SchoolPOJO schoolPojo,String schoolId);
	public List<SchoolPOJO> getSection(SchoolPOJO schoolPojo);
	public List<SchoolPOJO> selectSchoolDetails(SchoolPOJO schoolPojo,String id);
	
	
}
