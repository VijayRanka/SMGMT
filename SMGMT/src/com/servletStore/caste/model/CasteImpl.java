package com.servletStore.caste.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbconnect.DBConnection;

public class CasteImpl implements CasteDAO {
	
	DBConnection dbconnect=new DBConnection();
	Connection connection=dbconnect.getConnection();
	
	PreparedStatement pstmt=null;
	
	@Override
	public void addCasteCategory(CastePOJO castePojo) {
		
		try 
		{
			pstmt=connection.prepareStatement("INSERT INTO caste_category (category_name) VALUES (?)");
			pstmt.setString(1, castePojo.getCasteCategoryName());
			pstmt.executeUpdate();
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}		
	}

	@Override
	public List<CastePOJO> getCategoryDetails() {
		
		List<CastePOJO> list=new ArrayList<>();
		try {
			pstmt=connection.prepareStatement("SELECT category_id,category_name FROM caste_category");
			ResultSet rs= pstmt.executeQuery();
			while(rs.next()){
				CastePOJO castePojo=new CastePOJO();
				castePojo.setCategory_id(rs.getInt("category_id"));
				castePojo.setCasteCategoryName(rs.getString("category_name"));
				list.add(castePojo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int deleteCategory(int category_id) {
		
		try {
			pstmt=connection.prepareStatement("SELECT category_id,category_name FROM caste_category=?");
			pstmt.setInt(1, category_id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 1;
	}
}