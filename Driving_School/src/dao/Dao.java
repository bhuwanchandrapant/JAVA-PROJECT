package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import pojo.Instructors;
import pojo.User;

public class Dao {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/driving_school", "root", "");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static void change_password(String email, String password) {
		try {
			Connection con = Dao.getConnection();
			PreparedStatement pst = con.prepareStatement("update admin set password=? where email=?");
			pst.setString(1, password);
			pst.setString(2, email);
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
		//EditInstructor
		public static void EditInstructor(Instructors i)
		{
			try {
				Connection con = Dao.getConnection();
				String sql="update instructors set name=?,detail=?,profile=? where id=?";
				PreparedStatement pst=con.prepareStatement(sql);
				pst.setString(1, i.getName());
				pst.setString(2, i.getDetail());
				pst.setString(3, i.getProfile());
				pst.setInt(4,i.getId());
				pst.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		public User userCheckLogin(String name,String password) throws SQLException,ClassNotFoundException{
			
			Connection con = Dao.getConnection();
			String sql="select * from user where (email=? OR binary name=? ) AND binary password=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, name);
			pst.setString(3, password);
			ResultSet rs=pst.executeQuery();
			User user = null;
			
			if(rs.next()){
				user = new User();
				
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setContact(rs.getString("contact"));
				user.setPassword(rs.getString("password"));
			}

			con.close();
			return user;
		}
}
