package com.servletStore.caste.model;

import java.util.List;

public interface CasteDAO {
	
	public void addCasteCategory(CastePOJO castePojo);
	
	public List<CastePOJO> getCategoryDetails();
	
	public int deleteCategory(int category_id);

}
