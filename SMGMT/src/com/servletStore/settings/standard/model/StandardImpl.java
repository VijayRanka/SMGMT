package com.servletStore.settings.standard.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbconnect.DBConnection;
import com.servletStore.settings.school.model.SchoolPOJO;
import com.servletStore.settings.section.model.SectionPojo;

public class StandardImpl implements StandardDAO{

	DBConnection dbconnect=new DBConnection();
	Connection connection;
	
	public StandardImpl() 
	{
	
		connection=dbconnect.getConnection();

	}

	@Override
	public int addStandard(StandardPOJO standardPojo) 
	{
		int status=0;
		String query="insert into std_master(`name`) values (?)";
		PreparedStatement ps;
		try {
			ps = connection.prepareStatement(query);
			ps.setString(1, standardPojo.getName());
			status = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	@Override
	public List<StandardPOJO> getStandardDetails() 
	{
		List<StandardPOJO> list=new ArrayList<StandardPOJO>();
		String query="SELECT `id`, `name` FROM `std_master";
		PreparedStatement ps;
		try {
			ps = connection.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				//System.out.println("id "+rs.getInt("id") + " "+ rs.getString("name"));
				StandardPOJO stdpojo=new StandardPOJO();
				stdpojo.setId(rs.getInt("id"));
				stdpojo.setName(rs.getString("name"));
				list.add(stdpojo);			
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	
	@Override
	public List<SchoolPOJO> getSchoolDetails() 
	{
		List<SchoolPOJO> list=new ArrayList<SchoolPOJO>();
		String query="SELECT `id`, `name` FROM `school_master";
		PreparedStatement ps;
		try {
			ps = connection.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				//System.out.println("id "+rs.getInt("id") + " "+ rs.getString("name"));
				SchoolPOJO schoolpojo=new SchoolPOJO();
				schoolpojo.setSchool_id(rs.getInt("id"));
				schoolpojo.setName(rs.getString("name"));
				list.add(schoolpojo);			
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return list;
		
	}
		
}
