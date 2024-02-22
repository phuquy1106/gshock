package model.bean;

public class Pictures {
	private int id;
	private String picture;
	private Clock clock;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public Clock getClock() {
		return clock;
	}
	public void setClock(Clock clock) {
		this.clock = clock;
	}
	public Pictures() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Pictures(int id, String picture, Clock clock) {
		super();
		this.id = id;
		this.picture = picture;
		this.clock = clock;
	}
	
}
