package carservicehibernate.repository;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carservicehibernate.services.appointmentservice;



@WebServlet("/wkdelete")
public class wdelete extends HttpServlet{
		
	
	private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String vehicleno = request.getParameter("vehicleno");

	        if (vehicleno != null) {
	            try {
	                // Establish connection
	                Class.forName("com.mysql.cj.jdbc.Driver");
	                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carhibernate", "root", "root");

	                // Use the service to delete the appointment
	                appointmentservice service = new appointmentservice(conn);
	                boolean deleted = service.deleteAppointment(vehicleno);

	                conn.close();

	                if (deleted) {
	                    response.sendRedirect("getallappointments.jsp");
	                } else {
	                    response.sendRedirect("getallappointments.jsp?msg=error");
	                }

	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
		}
}