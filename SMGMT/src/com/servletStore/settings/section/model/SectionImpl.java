package com.servletStore.settings.section.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbconnect.DBConnection;

public class SectionImpl implements SectionDAO
{
	DBConnection dbconnect=new DBConnection();
	Connection connection;
	
	public SectionImpl() 
	{
	
		connection=dbconnect.getConnection();

	}

	@Override
	public void insertSchoolSectionDetails(SectionPojo section) throws SQLException 
	{
		String query="insert into sections_details(`name`)values(?)";
		PreparedStatement ps=connection.prepareStatement(query);
		ps.setString(1, section.getName());
		ps.executeUpdate();
	}

	/*@Override
	public List<SectionPojo> getSectionDetails() throws SQLException 
	{
		List<SectionPojo> list=new ArrayList<SectionPojo>();
		String query="select (`id`,`name`) from school_sections";
		PreparedStatement ps=connection.prepareStatement(query);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			SectionPojo pojo=new SectionPojo();
		    pojo.setId(rs.getInt("id"));
		    pojo.setName(rs.getString("name"));
			list.add(pojo);			
		}
		return list;
		
	}
*/
	
}
