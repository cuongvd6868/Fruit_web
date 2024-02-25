package model;

import java.sql.Date;

public class Customer {
	private String customerID;
	private String userName;
	private String passWord;
	private String fullName;
	private String sex;
	private String address;
	private Date birthday;
	private String phoneNumber;
	private String email;
	private boolean emailNewsLetter;

	

	public Customer() {
		super();
	}

	public Customer(String customerID, String userName, String passWord, String fullName, String sex, String address,
			Date birthday, String phoneNumber, String email, boolean emailNewsLetter) {
		super();
		this.customerID = customerID;
		this.userName = userName;
		this.passWord = passWord;
		this.fullName = fullName;
		this.sex = sex;
		this.address = address;
		this.birthday = birthday;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.emailNewsLetter = emailNewsLetter;
	}

	public String getCustomerID() {
		return customerID;
	}

	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isEmailNewsLetter() {
		return emailNewsLetter;
	}

	public void setEmailNewsLetter(boolean emailNewsLetter) {
		this.emailNewsLetter = emailNewsLetter;
	}

}
