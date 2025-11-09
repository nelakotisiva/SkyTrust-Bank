package model.com;

import java.sql.Timestamp;

public class Transcation {
	private int id;
	private String email;
	private String type;
	private Double amount;
	private Timestamp trans_date;
	private String description;
	public Transcation() {
		// TODO Auto-generated constructor stub
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public Timestamp getTrans_date() {
		return trans_date;
	}
	public void setTrans_date(Timestamp trans_date) {
		this.trans_date = trans_date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	} 	
}
