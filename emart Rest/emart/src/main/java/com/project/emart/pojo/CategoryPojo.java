package com.project.emart.pojo;

public class CategoryPojo {
	private int id;
	private String name;
	private String brief;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrief() {
		return brief;
	}
	public void setBrief(String brief) {
		this.brief = brief;
	}
	public CategoryPojo(int id, String name, String brief) {
		super();
		this.id = id;
		this.name = name;
		this.brief = brief;
	}
	public CategoryPojo() {
		super();
		// TODO Auto-generated constructor stub
	}

}
