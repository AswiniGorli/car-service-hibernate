package carservicehibernate.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import carservicehibernate.models.workersignup;



public class workerservice {

	private Connection conn;

	public workerservice(Connection conn)
	{
		super();
		this.conn = conn;
	}
	//insert
	public boolean addworker(workersignup stu) {
		boolean f = false;

		try {
			String sql = "INSERT INTO workersignup (workerid,workername,email,password) VALUES (?, ?, ?, ?)";

			PreparedStatement pmst = conn.prepareStatement(sql);
			pmst.setString(1, stu.getWorkerid());
			pmst.setString(2, stu.getWorkername());
			pmst.setString(3, stu.getEmail());  
			pmst.setString(4, stu.getPassword());  
			
		
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
	
	
		//login
		public boolean login(String email,String password)
		{
			boolean f=false;
			
			try {
				String sql="select * from workersignup where email=? and password=?";
				PreparedStatement pmst=conn.prepareStatement(sql);
				pmst.setString(1, email);
				pmst.setString(2, password);
				ResultSet rs=pmst.executeQuery();
				
				while(rs.next())
				{
				f=true;	
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return f;
		}
}
