package model.bean;

import java.sql.Timestamp;

public class News {
	private int id;
	private String name;
	private String preview;
	private String content;
	private Timestamp date;
	private String picture;
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
	public String getPreview() {
		return preview;
	}
	public void setPreview(String preview) {
		this.preview = preview;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public News() {
		super();
		// TODO Auto-generated constructor stub
	}
	public News(int id, String name, String preview, String content,
			Timestamp date, String picture) {
		super();
		this.id = id;
		this.name = name;
		this.preview = preview;
		this.content = content;
		this.date = date;
		this.picture = picture;
	}
	
	
}
