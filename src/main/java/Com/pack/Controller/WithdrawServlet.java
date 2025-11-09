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
import model.com.User;

@WebServlet("/withdraw")
public class WithdrawServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=(String)req.getSession().getAttribute("email");
		double amount=Double.parseDouble(req.getParameter("amount"));
		try {
			User us=new User();
			double am=Dblogic.getBalance(email);
			if(amount>am) {
				
				HttpSession session=req.getSession();
				session.setAttribute("error", "Insufficient Balance!");
                resp.sendRedirect("error.jsp");
                return;
			}
			
			String type="withdraw";
			boolean withdraw=Dblogic.Withdraw(email, amount);
			if(withdraw) {
				Dblogic.addTransaction(email, "withdraw", amount, "withdraw successfull");
                HttpSession session=req.getSession();
                session.setAttribute("type", type);
                session.setAttribute("amount", amount);
                resp.sendRedirect("success.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
