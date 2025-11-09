package Com.pack.Controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.com.Dblogic;
import model.com.User;
@WebServlet("/register")
public class RegisreServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        long phone = Long.parseLong(req.getParameter("phone"));
        long accnum = Long.parseLong(req.getParameter("accnum"));
        String password = req.getParameter("password");

        boolean isregister = Dblogic.Accountcreation(name, email, accnum, phone, password);

        RequestDispatcher rd;
        if (isregister) {
            rd = req.getRequestDispatcher("login.jsp");
        } else {
            rd = req.getRequestDispatcher("register.jsp");
        }
        rd.forward(req, resp);
    }
}
