package carservicehibernate.repository;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import carservicehibernate.dbconnections.cardbconn;
import carservicehibernate.services.workerservice;

@WebServlet("/wlogin")


public class workerloginservlet extends HttpServlet{
	
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        
        HttpSession session = req.getSession();
        workerservice service = new workerservice(cardbconn.getConnection());
        boolean isValid = service.login(email, password);
        
        if (isValid) {
            session.setAttribute("workerEmail", email);
            session.setAttribute("SuccMsg", "Login successful!");
            System.out.println("Login successful!");
            resp.sendRedirect("getallappointments.jsp");
        } else {
            session.setAttribute("ErrorMsg", "Invalid email or password.");
            System.out.println("Invalid email or password.");
            resp.sendRedirect("home.jsp");
        }
    }
}
