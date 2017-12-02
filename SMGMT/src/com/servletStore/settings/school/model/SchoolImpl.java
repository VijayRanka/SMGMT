package com.servletStore.settings.school.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import com.dbconnect.DBConnection;



public class SchoolImpl implements SchoolDAO{

	DBConnection dbConnect = new DBConnection();
	Connection conn = dbConnect.getConnection();
	
	
	PreparedStatement pstmt = null;
	
	
	public void addSchool(SchoolPOJO schoolPojo,int len) {		
		List<SchoolPOJO> list=new ArrayList<SchoolPOJO>();
		try {

			pstmt = conn.prepareStatement("INSERT INTO school_master(name,address,slogan,index_no,licence_no,udise,school_code,email_id,phone_no,board,punit_code,center,date,jubilee_year,establish_year,medium) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

			pstmt.setString(1, schoolPojo.getName());
			pstmt.setString(2, schoolPojo.getAddress());
			pstmt.setString(3, schoolPojo.getSlogan());
			pstmt.setString(4, schoolPojo.getIndexno());
			pstmt.setString(5, schoolPojo.getLicenceno());
			pstmt.setString(6, schoolPojo.getUdise());
			pstmt.setString(7, schoolPojo.getShoolcode());
			pstmt.setString(8, schoolPojo.getEmailid());
			pstmt.setString(9, schoolPojo.getPhoneno());
			pstmt.setString(10, schoolPojo.getBoard());
			pstmt.setString(11, schoolPojo.getPunitcode());
			pstmt.setString(12, schoolPojo.getCenter());
			pstmt.setString(13, schoolPojo.getDate());	
			pstmt.setString(14, schoolPojo.getJubileeYear());
			pstmt.setString(15, schoolPojo.getEstablishYear());
			pstmt.setString(16, schoolPojo.getMedium());
			
			int i=pstmt.executeUpdate();	
			
			if(i==1)
			{
				int k=1;
				System.out.println("lenth is:"+len);
				while(len>=k)
				{

					String school_section="INSERT INTO fk_school_section_details(school_id,section_id) VALUES(?,?)";
					pstmt=conn.prepareStatement(school_section);
					pstmt.setInt(1, schoolPojo.getSchool_id());
					pstmt.setInt(2, schoolPojo.getSection_id());
					int j=pstmt.executeUpdate();
					System.out.println("Inserted Successfully");
				}
			}
			
			
			
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
	
	}



	public List<SchoolPOJO> getSchoolInfo() {
				
		List<SchoolPOJO> list=new ArrayList<SchoolPOJO>();
		
		String select="SELECT `id`,`name` FROM `sections_master`";
		
		try {
			pstmt=conn.prepareStatement(select);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				SchoolPOJO pojo=new SchoolPOJO();
				System.out.println("id:"+rs.getInt("id")+" name:"+rs.getString("name"));
				
				pojo.setSection_id(rs.getInt("id"));
				pojo.setSectionName(rs.getString("name"));
				list.add(pojo);
			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		
		
		
	}



	
	public List<SchoolPOJO> getSchoolDetails() 
	{
		List<SchoolPOJO> list=new ArrayList<SchoolPOJO>();
		String selectSchoolDetails="SELECT school_master.id,school_master.name,school_master.address,school_master.slogan,school_master.index_no,school_master.licence_no,school_master.udise,school_master.school_code,school_master.email_id,school_master.phone_no,school_master.board,school_master.punit_code,school_master.center,school_master.date,school_master.jubilee_year,school_master.establish_year,school_master.medium FROM school_master";
		try {
			pstmt=conn.prepareStatement(selectSchoolDetails);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				SchoolPOJO pojo=new SchoolPOJO();
				System.out.println("id:"+rs.getInt("id")+" name:"+rs.getString("name")+"address:"+rs.getString("address")+"slogan:"+rs.getString("slogan")+"index_no:"+rs.getString("index_no")+"licence_no:"+rs.getString("licence_no"));
				pojo.setSchool_id(rs.getInt("id"));
				pojo.setName(rs.getString("name"));
				pojo.setAddress(rs.getString("address"));
				pojo.setSlogan(rs.getString("slogan"));
				pojo.setIndexno(rs.getString("index_no"));
				pojo.setLicenceno(rs.getString("licence_no"));
				pojo.setUdise(rs.getString("udise"));
				pojo.setShoolcode(rs.getString("school_code"));
				pojo.setEmailid(rs.getString("email_id"));
				pojo.setPhoneno(rs.getString("phone_no"));
				pojo.setBoard(rs.getString("board"));
				pojo.setPunitcode(rs.getString("punit_code"));
				pojo.setCenter(rs.getString("center"));
				pojo.setDate(rs.getString("date"));
				pojo.setJubileeYear(rs.getString("jubilee_year"));
				pojo.setEstablishYear(rs.getString("establish_year"));
				pojo.setMedium(rs.getString("medium"));
				
				list.add(pojo);
			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}



	@Override
	public void updateSchoolDetails(SchoolPOJO schoolPojo,String schoolId) {
		List<SchoolPOJO> list=new ArrayList<SchoolPOJO>();
		try {
			
			
			String update_query="UPDATE school_master SET school_master.name='?',school_master.address='?',school_master.slogan='?',school_master.index_no='?',school_master.licence_no='?',school_master.udise='?',school_master.school_code='?',school_master.email_id='?',school_master.phone_no='?',school_master.board='?',school_master.punit_code='?',school_master.center='?',school_master.date='?',school_master.jubilee_year='?',school_master.establish_year='?',school_master.medium='?' WHERE school_master.id="+schoolId+"";
			System.out.println("update idis:"+update_query);
			
			pstmt=conn.prepareStatement(update_query);		
		
			
			pstmt.setString(1, schoolPojo.getName());
			pstmt.setString(2, schoolPojo.getAddress());
			pstmt.setString(3, schoolPojo.getSlogan());
			pstmt.setString(4, schoolPojo.getIndexno());
			pstmt.setString(5, schoolPojo.getLicenceno());
			pstmt.setString(6, schoolPojo.getUdise());
			pstmt.setString(7, schoolPojo.getShoolcode());
			pstmt.setString(8, schoolPojo.getEmailid());
			pstmt.setString(9, schoolPojo.getPhoneno());
			pstmt.setString(10, schoolPojo.getBoard());
			pstmt.setString(11, schoolPojo.getPunitcode());
			pstmt.setString(12, schoolPojo.getCenter());
			pstmt.setString(13, schoolPojo.getDate());	
			pstmt.setString(14, schoolPojo.getJubileeYear());
			pstmt.setString(15, schoolPojo.getEstablishYear());
			pstmt.setString(16, schoolPojo.getMedium());
		
			
			int i=pstmt.executeUpdate();	
			
			System.out.println("updated id:"+i);
			System.out.println("Updated Successfully");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}



	@Override
	public List<SchoolPOJO> getSection(SchoolPOJO schoolPojo) {
		List<SchoolPOJO> list=new ArrayList<SchoolPOJO>();
			
			String select="SELECT `id`,`name` FROM `sections_master`";
			try {
				pstmt=conn.prepareStatement(select);
				ResultSet rs = pstmt.executeQuery();
				
				while (rs.next()) {
					SchoolPOJO pojo=new SchoolPOJO();
					System.out.println("id:"+rs.getInt("id")+" name:"+rs.getString("name"));
					
					pojo.setSection_id(rs.getInt("id"));
					pojo.setSectionName(rs.getString("name"));
					list.add(pojo);
				
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
			
	}



	@Override
	public List<SchoolPOJO> selectSchoolDetails(SchoolPOJO schoolPojo,String id) {
		List<SchoolPOJO> list=new ArrayList<SchoolPOJO>();
		System.out.println("school is:"+id);
		String selectModalDetails="SELECT school_master.id,school_master.name,school_master.address,school_master.slogan,school_master.index_no,school_master.licence_no,school_master.udise,school_master.school_code,school_master.email_id,school_master.email_id,school_master.phone_no,school_master.board,school_master.punit_code,school_master.center,school_master.date,school_master.jubilee_year,school_master.establish_year,school_master.medium FROM school_master WHERE school_master.id='"+id+"'";
		System.out.println("selectModalDetails:"+selectModalDetails);
		
		try {
			pstmt=conn.prepareStatement(selectModalDetails);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				SchoolPOJO pojo=new SchoolPOJO();
								
				pojo.setSchool_id(rs.getInt("id"));
				pojo.setName(rs.getString("name"));
				pojo.setAddress(rs.getString("address"));
				pojo.setSlogan(rs.getString("slogan"));
				pojo.setIndexno(rs.getString("index_no"));
				pojo.setLicenceno(rs.getString("licence_no"));
				pojo.setUdise(rs.getString("udise"));
				pojo.setShoolcode(rs.getString("school_code"));
				pojo.setEmailid(rs.getString("email_id"));
				pojo.setPhoneno(rs.getString("phone_no"));
				pojo.setBoard(rs.getString("board"));
				pojo.setPunitcode(rs.getString("punit_code"));
				pojo.setCenter(rs.getString("center"));
				pojo.setDate(rs.getString("date"));
				pojo.setJubileeYear(rs.getString("jubilee_year"));
				pojo.setEstablishYear(rs.getString("establish_year"));
				pojo.setMedium(rs.getString("medium"));
				list.add(pojo);
			
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}


	
		
}
