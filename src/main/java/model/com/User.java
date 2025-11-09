package model.com;

public class User {
private String name;
private String email;
private long accnum;
private long phone;
private String password;
public User(String name, String email, long accnum, long phone, String password) {
	super();
	
	this.name = name;
	this.email = email;
	this.accnum = accnum;
	this.phone = phone;
	this.password = password;
}

public User() {
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
public long getAccnum() {
	return accnum;
}
public void setAccnum(long accnum) {
	this.accnum = accnum;
}
public long getPhone() {
	return phone;
}
public void setPhone(long phone) {
	this.phone = phone;
}
public String getPassword() {
	return password;
}


public void setPassword(String string) {
	
}

}
