package com.servletStore.caste.model;

public class CastePOJO {

	private int category_id;
	private String casteCategoryName;
	private String religionName;
	private String casteName;
	
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
	
	public String getReligionName() {
		return religionName;
	}
	
	public void setReligionName(String religionName) {
		this.religionName = religionName;
	}
	
	public String getCasteName() {
		return casteName;
	}

	public void setCasteName(String casteName) {
		this.casteName = casteName;
	}
}