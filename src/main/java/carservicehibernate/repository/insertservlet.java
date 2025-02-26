package carservicehibernate.repository;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import carservicehibernate.dbconnections.cardbconn;
import carservicehibernate.models.carservicemodels;
import carservicehibernate.services.carservice;

@WebServlet("/insert")
public class insertservlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id =req.getParameter("id");
		String name =req.getParameter("name");
		String  vehicletype=req.getParameter("vehicletype");
		String  vehicleno=req.getParameter("vehicleno");
		String  phoneo=req.getParameter("phoneo");
		String email =req.getParameter("email");
		String password =req.getParameter("password");
		
		carservicemodels stu=new carservicemodels(id, name, vehicletype,vehicleno,phoneo, email, password);
		HttpSession session = req.getSession();
		
		carservice service=new carservice(cardbconn.getConnection());
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
