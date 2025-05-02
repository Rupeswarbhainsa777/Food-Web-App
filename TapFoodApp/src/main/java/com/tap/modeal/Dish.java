package com.tap.modeal;

public class Dish {
	private int id;
	private String name;
	private String description;
	private String imagePath;

	public Dish() {

	}

	public Dish(String name, String description, String imagePath) {
		super();

		this.name = name;
		this.description = description;
		this.imagePath = imagePath;

	}

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

}