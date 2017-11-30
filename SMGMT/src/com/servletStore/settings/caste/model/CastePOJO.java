package com.servletStore.settings.caste.model;

public class CastePOJO {

	private int category_id;
	private String casteCategoryName;
	private int religion_id;
	private String religionName;
	
	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public String getCasteCategoryName() {
		return casteCategoryName;
	}

	public void setCasteCategoryName(String casteCategoryName) {
		this.casteCategoryName = casteCategoryName;
	}
	
	public int getReligion_id() {
		return religion_id;
	}

	public void setReligion_id(int religion_id) {
		this.religion_id = religion_id;
	}
	
	public String getReligionName() {
		return religionName;
	}
	
	public void setReligionName(String religionName) {
		this.religionName = religionName;
	}
}