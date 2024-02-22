package model.bean;

public class Torders {
	private int id;
	private String fullname;
	private String address;
	private String payment;
	private int status;
	private int result;
	private int phone;
	private String email;
	private String content;
	
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public Torders() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Torders(int id, String fullname, String address, String payment,
			int status, int result) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.address = address;
		this.payment = payment;
		this.status = status;
		this.result = result;
	}
	public Torders(int id, String fullname, String address, String payment,
			int status, int result, int phone, String email) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.address = address;
		this.payment = payment;
		this.status = status;
		this.result = result;
		this.phone = phone;
		this.email = email;
	}
	public Torders(int id, String fullname, String address, String payment,
			int status, int result, int phone, String email, String content) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.address = address;
		this.payment = payment;
		this.status = status;
		this.result = result;
		this.phone = phone;
		this.email = email;
		this.content = content;
	}
	
	
	
}
