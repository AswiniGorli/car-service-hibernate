package carservicehibernate.services;

import java.sql.Connection;
import java.sql.PreparedStatement;

import carservicehibernate.models.carservicemodels;



public class carservice {
	private Connection conn;

	public carservice(Connection conn)
	{
		super();
		this.conn = conn;
	}
	//insert
	
	public boolean adduser(carservicemodels stu) {
		boolean f = false;

		try {
			String sql = "INSERT INTO carservicemodels (id, name, vehicletype,vehicleno,phoneo, email, password) VALUES (?, ?, ?, ?, ?, ?,?)";

			PreparedStatement pmst = conn.prepareStatement(sql);
			pmst.setString(1, stu.getId());
			pmst.setString(2, stu.getName());
			pmst.setString(3, stu.getVehicletype());
			pmst.setString(4, stu.getVehicleno());  
			pmst.setString(5, stu.getPhoneo());  
			pmst.setString(6, stu.getEmail());  
			pmst.setString(7, stu.getPassword());  
			
		
			int i = pmst.executeUpdate();
			if (i == 1)
			{
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	
}
