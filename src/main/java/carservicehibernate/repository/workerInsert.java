package carservicehibernate.repository;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import carservicehibernate.dbconnections.cardbconn;
import carservicehibernate.models.workersignup;
import carservicehibernate.services.workerservice;

@WebServlet("/signup")
public class workerInsert extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String workerid =req.getParameter("workerid");
		String  workername =req.getParameter("workername");
		String email =req.getParameter("email");
		String password =req.getParameter("password");
		
		workersignup stu=new workersignup( workerid,  workername, email, password);
		HttpSession session = req.getSession();
		
		workerservice service=new workerservice(cardbconn.getConnection());
		boolean f= service.addworker(stu);
		
		if(f)
		{
			
			session.setAttribute("SuccMsg", "Successfully inserted ....");
			
			System.out.println("Successfully inserted ....");
			
			resp.sendRedirect("workersignup.jsp");
		}
		
		else
		{
	        session.setAttribute("ErrorMsg", "check the connection ....");
			
			System.out.println("check the connection ....");
			
			resp.sendRedirect("workersignup.jsp");
		}
	}
	
}
