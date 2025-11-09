package Com.pack.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.sun.net.httpserver.Request;

import Dbconn.com.DbConccetion;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.com.Dblogic;
import model.com.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		User ud=Dblogic.Validation(email, password);
		
		if(ud!=null) {
			HttpSession session = req.getSession();
			session.setAttribute("name", ud.getName());
			session.setAttribute("email", ud.getEmail());
			session.setAttribute("accountNumber", ud.getAccnum());
			session.setAttribute("phone", ud.getPhone());
			// Avoid storing password in session for security reasons

			resp.sendRedirect("dashboard.jsp");
		}
		
		
		
	}
}
