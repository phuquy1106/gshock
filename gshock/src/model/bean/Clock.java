package model.bean;

public class Clock {
	private int id;
	private String name;
	private String preview;
	private String detail;
	private String picture;
	private int price;
	private int number;
	private int discount;
	private Categories categories;
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
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public Categories getCategories() {
		return categories;
	}
	public void setCategories(Categories categories) {
		this.categories = categories;
	}
	public Clock() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Clock(int id, String name, String preview, String detail,
			String picture, int price, int number, int discount,
			Categories categories) {
		super();
		this.id = id;
		this.name = name;
		this.preview = preview;
		this.detail = detail;
		this.picture = picture;
		this.price = price;
		this.number = number;
		this.discount = discount;
		this.categories = categories;
	}
	
	
}
