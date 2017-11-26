package com.servletStore.settings.classRoom.model;

import java.sql.SQLException;

public interface AddClassDAO 
{

	public void insertClassDetails(AddClassPOJO pojo) throws SQLException;
	
}
