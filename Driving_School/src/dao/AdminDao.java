package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import pojo.Admin;

public class AdminDao {
	public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");
            
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/driving_school","root","");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
    
    public Admin AdmincheckLogin(String email, String password) {
		Admin admin = null;
		try {
			Connection con=Dao.getConnection();  
			PreparedStatement pst = con.prepareStatement("SELECT * FROM admin WHERE email = ? and password = ?");
			pst.setString(1, email);
			pst.setString(2, password);
			ResultSet result = pst.executeQuery();
			if (result.next()) {
				admin = new Admin();
				admin.setName((result.getString("name")));
				admin.setEmail(email);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return admin;
	}
}
