package com.niit.goonline.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="USER_DETAIL")
public class UserDetail {
	@Id
	@GeneratedValue
	@Column(name="USER_ID")
	private int Userid;
	
	@Size(min=4,max=30 ,message="Size must be between 4 to 30")
	@NotEmpty(message ="UserFullName can not be empty.")
	@Column(name="FIRST_NAME")
	private String UserFirstName;
	
	
	@Size(min=4,max=30 ,message="Size must be between 4 to 30")
	@NotEmpty(message ="UserFullName can not be empty.")
	@Column(name="LAST_NAME")
	private String UserLastName;
	

	@Size(min=3,max=30, message="Size must be between4 to 30")
	@NotEmpty(message ="UserName can not be empty.")
	@Column(name="USER_NAME",unique=true)
	private String UserName;
	
	@Pattern(regexp=".+@.+\\.[a-z]+", message ="email format jkl@ghj.com")
	@NotEmpty(message="Email can not be empty.")
	@Column(name="EMAIL",unique=true)
	private String Email;
	
	@Pattern(regexp="\\d{10}",message="Enter 10 digit phone number")
	@NotEmpty(message="Phone can not be empty.")
	@Column(name="PHONE_NO",unique=true)
	private String  Phone;
	
	@NotEmpty(message="Password can not be empty.")
	private String Password;
	
	private boolean enable;
	public int getId() {
		return Userid;
	}
	public void setId(int id) {
		this.Userid = id;
	}
	public String getUserFirstName() {
		return UserFirstName;
	}
	public void setUserFirstName(String userFirstName) {
		UserFirstName = userFirstName;
	}
	public String getUserLastName() {
		return UserLastName;
	}
	public void setUserLastName(String userLastName) {
		UserLastName = userLastName;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public boolean isEnable() {
		return enable;
	}
	public void setEnable(boolean enable) {
		this.enable = enable;
	}
	
	
	

	

}
