package com.servletStore.settings.classRoom.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dbconnect.DBConnection;

public class AddClassImpl implements AddClassDAO
{
	DBConnection dbconnect=new DBConnection();
	Connection connection;
	
	public AddClassImpl() 
	{
		connection=dbconnect.getConnection();
	}
	

	@Override
	public void insertClassDetails(AddClassPOJO pojo) throws SQLException 
	{
		String[] newClass=pojo.getAddclass();
		
		for (int i = 0; i < newClass.length; i++) {
			String query="INSERT INTO `std_master`(`class_name`) VALUES (?)";
			PreparedStatement ps=connection.prepareStatement(query);
			ps.setString(1, newClass[i]);
			ps.executeUpdate();
		}
	}

	
}
