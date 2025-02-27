package carservicehibernate.services;

import java.sql.Connection;
import java.sql.PreparedStatement;

import carservicehibernate.models.appointment;
public class appointmentservice {
	private Connection conn;

	public appointmentservice(Connection conn)
	{
		super();
		this.conn = conn;
	}
	//insert
	
	public boolean adduser(appointment stu) {
		boolean f = false;

		try {
			String sql = "INSERT INTO appointment (email,vehicletype,vehicleno,date,time) VALUES (?, ?, ?, ?, ?)";

			PreparedStatement pmst = conn.prepareStatement(sql);
			pmst.setString(1, stu.getEmail());
			pmst.setString(2, stu.getVehicletype());
			pmst.setString(3, stu.getVehicleno());
			pmst.setString(4, stu.getDate());
			pmst.setString(5, stu.getTime());
			
			
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
	//delete
	public boolean deleteAppointment(String vehicleno) {
        boolean f = false;
        try {
            String sql = "DELETE FROM appointment WHERE vehicleno = ?";
            PreparedStatement pmst = conn.prepareStatement(sql);
            pmst.setString(1, vehicleno);

            int i = pmst.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}

