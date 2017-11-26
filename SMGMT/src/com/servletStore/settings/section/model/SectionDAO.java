package com.servletStore.settings.section.model;

import java.sql.SQLException;
import java.util.List;

public interface SectionDAO 
{

	public void insertSchoolSectionDetails(SectionPojo section) throws SQLException;
/*	public List<SectionPojo> getSectionDetails() throws SQLException;
*/	
}
