package Com.pack.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import Dbconn.com.DbConccetion;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.com.Dblogic;
import model.com.User;

@WebServlet("/transfer")
public class TransferServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession(false);
		if(session==null) {
			resp.sendRedirect("login.jsp");
			return;
		}
		String senderemail=(String)session.getAttribute("email");
		String reciveremail=req.getParameter("receiveremail");
		double amount = Double.parseDouble(req.getParameter("amount"));
		String type="transfer";
		
		try {
			User us=new User();
			double am=Dblogic.getBalance(senderemail);
			if(amount>am) {
				session.setAttribute("error", "Insufficient Balance!");
                resp.sendRedirect("error.jsp");
                return ;
			}
			Connection con=DbConccetion.giveConncetion();
			con.setAutoCommit(false);
            double senderBalance = Dblogic.getBalance(con,senderemail);
            if(amount>senderBalance) {
            	req.setAttribute("error", "Insufficient funds");
            	resp.sendRedirect("transfer.jsp");
            	
            }
            boolean debitsucces=Dblogic.updateBalance(con, senderemail, -amount);
            boolean creditsucces=Dblogic.updateBalance(con, reciveremail, amount);
            if (debitsucces && creditsucces) {
            	Dblogic.addTransaction(senderemail, type, amount, "Amountransfered to "+reciveremail);
            	Dblogic.addTransaction(reciveremail, type, amount, "received from "+senderemail);
            	con.commit();
                 session.setAttribute("type", type);
                 session.setAttribute("amount", amount);
                 resp.sendRedirect("success.jsp");
            }
            else {
            	con.rollback();
            	req.setAttribute("error", "transfer failed");
            	req.getRequestDispatcher("transfer.jsp").forward(req, resp);
            }
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
