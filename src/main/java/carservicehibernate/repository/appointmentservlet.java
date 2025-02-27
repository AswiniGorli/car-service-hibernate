package carservicehibernate.repository;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import carservicehibernate.dbconnections.cardbconn;
import carservicehibernate.models.appointment;
import carservicehibernate.services.appointmentservice;


@WebServlet("/appinsert")
public class appointmentservlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email =req.getParameter("email");
		String  vehicletype=req.getParameter("vehicletype");
		String  vehicleno=req.getParameter("vehicleno");
		String  date=req.getParameter("date");
		String time =req.getParameter("time");
		
		appointment stu=new appointment(email,vehicletype,vehicleno,date,time);
		HttpSession session = req.getSession();
		
		appointmentservice service=new appointmentservice(cardbconn.getConnection());
		boolean f= service.adduser(stu);
		
		if(f)
		{
			
			session.setAttribute("SuccMsg", "Successfully inserted ....");
			
			System.out.println("Successfully inserted ....");
			
			resp.sendRedirect("home.jsp");
		}
		
		else
		{
	        session.setAttribute("ErrorMsg", "check the connection ....");
			
			System.out.println("check the connection ....");
			
			resp.sendRedirect("adduser.jsp");
		}
	}

}
