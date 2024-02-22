package model.bean;

public class Ward {
	private int id;
	private String name;
	private String type;
	private District district;
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
	public District getDistrict() {
		return district;
	}
	public void setDistrict(District district) {
		this.district = district;
	}
	public Ward() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ward(int id, String name, String type, District district) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.district = district;
	}
	
}
