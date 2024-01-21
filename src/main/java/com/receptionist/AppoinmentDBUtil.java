package com.receptionist;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AppoinmentDBUtil {

	public static boolean isSuccess;
	private static Connection con;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	/*
	 * This method written to get channeling details from channeling table according to given doctor and date
	 */

	public static List<Appoinments> getChannels(String docName, String chDate){

		ArrayList<Appoinments> apt = new ArrayList<>();

		try {
			
			//establish connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			//select some fileds from chammling table
			String sql = "select id, fname, lname, phone,email, doctor, date from channeling where doctor = '"+docName+"' and date = '"+chDate+"'";

			rs = stmt.executeQuery(sql);

			while(rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String doctor = rs.getString(4);
				String email = rs.getString(5);
				String phone = rs.getString(6);
				String date = rs.getString(7);

				Appoinments appnments = new Appoinments(id, fname,lname,doctor,email, phone,date);
				apt.add(appnments);
			}

		}
		catch(Exception e) {
			e.printStackTrace();
		}


		return apt;
	}

	/*
	 * This method written to insert confirmed channels to appointment table according to doc name
	 */

	public static boolean insertAppoinments(String fname, String lname,  String doctor, String date,  String phone, String email) {

		boolean isSuccess = false;
		String sqlInsert = null;

		try {

			con = DBConnect.getConnection();
			System.out.println("con " +con);
			stmt = con.createStatement();
			
			
			//insert values to doc appointments table according to doc name
			if(doctor.equals("Dr.H.S.D.Rathnayake")) {
				sqlInsert = "insert into rathnayake_appoinment values (0, '"+fname+"', '"+lname+"',  '"+doctor+"', '"+date+"', '0719844721', '"+email+"')";
				
			}

			else if(doctor.equals("Dr.A.Perera")) {
				sqlInsert = "insert into perera_appoinment values (0, '"+fname+"', '"+lname+"',  '"+doctor+"', '"+date+"', '"+phone+"', '"+email+"')";
			}

			int rs = stmt.executeUpdate(sqlInsert);

			if(rs> 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	/*
	 * This method written to delete confirmed channels from channeling table
	 */
	public static boolean deleteChannel(String id) {

		int convId = Integer.parseInt(id);

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "delete from channeling where id = '"+convId+"'";
			int result = stmt.executeUpdate(sql);

			if(result > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}

		}
		catch(Exception e) {

			e.printStackTrace();
		}

		return isSuccess;
	}

	
	/*
	 * This method is written to update the channeling dates which patients update their visit date
	 */
	public static boolean updateChannels(String id, String date) {

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update channeling set date = '"+date+"' where id = '"+id+"'";

			int rs = stmt.executeUpdate(sql);

			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}

		}
		catch(Exception e) {

			e.printStackTrace();
		}

		return isSuccess;
	}
	/*
	 * This method is to validate users from receptionist table
	 */
	public static boolean validateLogin(String username, String password) {

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();

			//get column values for given username passowrd
			String sql = "select * from receptionist where username = '"+username+"' and password = '"+password+"'";
			rs = stmt.executeQuery(sql);

			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}

		}
		catch(Exception e) {

			e.printStackTrace();
		}

		return isSuccess;
	}

	/*
	 * Get all user details of given user 
	 */
	public static List<Receptionist> getUsers(String username){

		ArrayList<Receptionist> recep = new ArrayList<>();

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "select * from receptionist where username = '"+username+"'";

			rs = stmt.executeQuery(sql);

			while(rs.next()) {
				int id = rs.getInt(1);
				String userU = rs.getString(2);
				String passU = rs.getString(3);

				Receptionist r = new Receptionist(id, userU, passU);
				recep.add(r);
			}

		}
		catch(Exception e) {
			e.printStackTrace();
		}


		return recep;
	}
}
