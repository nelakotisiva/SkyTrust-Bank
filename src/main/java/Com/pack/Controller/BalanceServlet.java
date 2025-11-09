package Com.pack.Controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.com.Dblogic;

@WebServlet("/balance")
public class BalanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession(false);
		if(session ==null) {
			resp.sendRedirect("login.jsp");
			return ;
		}
		String email=(String)session.getAttribute("email");
		double balance=Dblogic.getBalance(email);
		req.setAttribute("balance", balance);
	        // Forward to JSP rather than redirect
	        req.getRequestDispatcher("balance.jsp").forward(req, resp);
	}

}
