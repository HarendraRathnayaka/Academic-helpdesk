package com.helpdesk;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class questDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<quest> validate(String Uniquecode, String Useremail){
		
		ArrayList<quest> qst= new ArrayList<>();


		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from question where Uniquecode='"+Uniquecode+"' and Useremail='"+Useremail+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int qid = rs.getInt(1);
				String ucode = rs.getString(2);
				String umail = rs.getString(3);
				String desc = rs.getString(4);
				String ques = rs.getString(5);
				
				quest q = new quest(qid, ucode, umail, desc, ques);
				qst.add(q);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return qst;
		
	}
	
	public static Boolean uploadquestion(String ucode , String email , String Description , String Question) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into question values(0, '"+ucode+"' ,'"+email+"', '"+Description+"', '"+Question+"');";
			int rs = stmt.executeUpdate(sql);
			
			if (rs>0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static Boolean updatequestion(String qid, String ucode , String email , String Description , String Question) {
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "update question set Uniquecode='"+ucode+"', Useremail='"+email+"' ,Description='"+Description+"', Question='"+Question+"'"
					+ "where qid='"+qid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return isSuccess;
		
	}
	
	public static boolean deleteQuestion(String qid){
		
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from question where qid='"+qid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	


}
