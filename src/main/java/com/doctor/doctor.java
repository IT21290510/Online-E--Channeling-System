package com.doctor;

public class doctor {
	private int id;
	private String firstName;
	private String lastName;
	private String specialization;
	private String address;
	private String email;
	private String phone;
	private String gender;
	private String username;
	private String password;
	
	
	public doctor(int id, String firstName, String lastName, String specialization, String address, String email,
			String phone, String gender, String username, String password) {
		
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.specialization = specialization;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getSpecialization() {
		return specialization;
	}

	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getGender() {
		return gender;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}
	
	
	
	
}
