package com.servletStore.settings.school.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dbconnect.DBConnection;

public class SchoolImpl implements SchoolDAO{

	DBConnection dbConnect = new DBConnection();
	Connection conn = dbConnect.getConnection();
	
	PreparedStatement pstmt = null;
	
	@Override
	public void addSchool(SchoolPOJO schoolPojo) {
		
		try {
			System.out.println(schoolPojo.getName() +" "+schoolPojo.getSection_id() +" "+schoolPojo.getAddress() +" "+schoolPojo.getContact_no() +" "+schoolPojo.getShift() +" "+schoolPojo.getAlias_name());
			pstmt = conn.prepareStatement("INSERT INTO school_details(name, section_id, address, contact_no, shift, alias_name) VALUES (?, ?, ?, ?, ?, ?); ");
			pstmt.setString(1, schoolPojo.getName());
			pstmt.setInt(2, schoolPojo.getSection_id());
			pstmt.setString(3, schoolPojo.getAddress());
			pstmt.setString(4, schoolPojo.getContact_no());
			pstmt.setString(5, schoolPojo.getShift());
			pstmt.setString(6, schoolPojo.getAlias_name());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
