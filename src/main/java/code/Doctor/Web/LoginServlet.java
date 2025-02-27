package code.Doctor.Web;

import code.Doctor.DAO.UserDAO;
import code.Doctor.Model.User;
import code.Doctor.DAO.DatabaseConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Connection connection = DatabaseConnection.getConnection();
        UserDAO userDAO = new UserDAO(connection);

        try {
            User user = userDAO.getUserByEmail(email);

            if (user != null && user.getPassword().equals(password)) {
                // Successful login - Create a session
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                response.sendRedirect("./dashboard.jsp");
            } else {
                // Login failed - Redirect back to login page
                response.sendRedirect("login.jsp?error=1");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("./login.jsp?error=1");
        }
    }
}
