package com.doctor;

import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class doctorDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String username, String password) {
		try {
			con = connectDB.getConnection();
			stmt = con.createStatement();
			String sql = "select * from doctor where username = '"+username+"' and password ='"+password+"' ";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	public static List<doctor>getDoctor(String username){
		ArrayList<doctor> doc = new ArrayList<>();
		
		try {
			con = connectDB.getConnection();
			stmt = con.createStatement();
			String sql = "select * from doctor where username = '"+username+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String specialization = rs.getString(4);
				String address = rs.getString(5);
				String email = rs.getString(6);
				String phone = rs.getString(7);
				String gender = rs.getString(8);
				String userU = rs.getString(9);
				String passU = rs.getString(10);
				
				doctor d= new doctor(id,firstName,lastName,specialization,address,email,phone,gender,userU,passU);
				doc.add(d); //pass values to doc array list
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return doc;
	}
	
	public static boolean insertDoctor(String fname,String lname,String specialization,String address,String email, String phone,String gender,String username,String password) {
		boolean isSuccess = false;
		
		try {
			
			con = connectDB.getConnection();
			stmt = con.createStatement();
	 		
			String sql = "insert into doctor values(0,'"+fname+"','"+lname+"','"+specialization+"','"+address+"','"+email+"','"+phone+"','"+gender+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0){
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateDoc(String id, String fname, String lname,String specialization,String address,String email, String phone,String gender,String username,String password) {
		try {
			con = connectDB.getConnection();
			stmt = con.createStatement();
			String sql = "update doctor set firstName='"+fname+"',lastName='"+lname+"',specialization='"+specialization+"',address='"+address+"',email='"+email+"',phone='"+phone+"',gender='"+gender+"',"
					+ "username='"+username+"',password='"+password+"'"
					+" where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<doctor> getDoctorDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<doctor> doc = new ArrayList<>();
		try {
			con = connectDB.getConnection();
			stmt = con.createStatement();
			String sql = "select * from doctor where id ='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String specialization = rs.getString(4);
				String address = rs.getString(5);
				String email= rs.getString(6);
				String phone = rs.getString(7);
				String gender = rs.getString(8);
				String username = rs.getString(9);
				String password = rs.getString(10);
				
				doctor d = new doctor(id,firstName,lastName,specialization,address,email,phone,gender,username,password);
				doc.add(d);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return doc;
	}
	
	
	
	public static boolean deleteDoctor(String id) {
		int convID = Integer.parseInt(id);
		
		try {
			
			con = connectDB.getConnection();
			stmt = con.createStatement();
			String sql = "delete from doctor where id='"+convID+"'";
			int r = stmt.executeUpdate(sql);
			if(r>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	
}


