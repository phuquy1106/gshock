package model.bean;

public class Comment {
	private int id;
	private String name;
	private String email;
	private int star;
	private String content;
	private Clock clock;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Clock getClock() {
		return clock;
	}
	public void setClock(Clock clock) {
		this.clock = clock;
	}
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Comment(int id, String name, String email, int star, String content,
			Clock clock) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.star = star;
		this.content = content;
		this.clock = clock;
	}
	
	
}
