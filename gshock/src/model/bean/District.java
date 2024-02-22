package model.bean;

public class District {
	private int id;
	private String name;
	private String type;
	private Province province;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Province getProvince() {
		return province;
	}
	public void setProvince(Province province) {
		this.province = province;
	}
	public District() {
		super();
		// TODO Auto-generated constructor stub
	}
	public District(int id, String name, String type, Province province) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.province = province;
	}
	
}
