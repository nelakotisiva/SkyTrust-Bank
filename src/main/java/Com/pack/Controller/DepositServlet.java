package Com.pack.Controller;

import java.io.IOException;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.com.Dblogic;

@WebServlet("/deposit")
public class DepositServlet extends HttpServlet {
	@Override
	  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	            throws ServletException, IOException {

	        String email = (String) req.getSession().getAttribute("email"); // ✅ use session, not request attribute
	        double amount = Double.parseDouble(req.getParameter("amount"));

	        try {
	            boolean updated = Dblogic.updateBalance(amount, email);
	            if (updated) {
	            	String type = "Deposit"; 
	                Dblogic.addTransaction(email, "Deposit", amount, "Amount deposited successfully");
	                HttpSession session=req.getSession();
	                session.setAttribute("amount", amount);
	                session.setAttribute("type", type);
	                resp.sendRedirect("success.jsp"); 
	            } else {
	                resp.sendRedirect("error.jsp");
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            resp.sendRedirect("error.jsp");
	        }
	    }
}
