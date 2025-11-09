package Com.pack.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.com.Dblogic;
import model.com.Transcation;

@WebServlet("/statement")
public class StatementServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=(String)req.getSession().getAttribute("email");
		try {
			List<Transcation> userstatement=Dblogic.getTransactionsByEmail(email);
			if(!userstatement.isEmpty()) {
				req.setAttribute("transdetails", userstatement);
				req.getRequestDispatcher("statement.jsp").forward(req, resp);
			}
			else {
				req.setAttribute("message", "Error fetching transactions.");
				req.getRequestDispatcher("error.jsp").forward(req, resp);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
