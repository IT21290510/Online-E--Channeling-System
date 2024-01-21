package com.receptionist;

public class Appoinments {
    
	private int id;
    private String fname;
    private String lname;
    private String phone;
    private String email;
    private String doctor;
    private String date;
   
    //Overloaded constructor
    public Appoinments(int id, String fname,String lname, String phone, String email, String doctor, String date) {
  		this.id = id;
  		this.fname = fname;
  		this.lname = lname;
  		this.phone = phone;
  		this.email = email;
  		this.doctor = doctor;
  		this.date = date;
  	}

	public String getDate() {
		return date;
	}


	public String getDoctor() {
		return doctor;
	}

	public int getId() {
		return id;
	}

	

	public String getFname() {
		return fname;
	}


	public String getLname() {
		return lname;
	}



	public String getPhone() {
		return phone;
	}

	

	public String getEmail() {
		return email;
	}


	
    
}
