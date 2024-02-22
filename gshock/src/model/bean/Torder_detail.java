package model.bean;

public class Torder_detail {
	private int id;
	private Clock clock;
	private Torders torders;
	private int number;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Clock getClock() {
		return clock;
	}
	public void setClock(Clock clock) {
		this.clock = clock;
	}
	public Torders getTorders() {
		return torders;
	}
	public void setTorders(Torders torders) {
		this.torders = torders;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Torder_detail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Torder_detail(int id, Clock clock, Torders torders, int number) {
		super();
		this.id = id;
		this.clock = clock;
		this.torders = torders;
		this.number = number;
	}
	
}
