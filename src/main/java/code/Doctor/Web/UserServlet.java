package code.Doctor.Web;

import code.Doctor.DAO.DatabaseConnection;
import code.Doctor.DAO.UserDAO;
import code.Doctor.Model.User;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String role = request.getParameter("role"); // Get the role (patient or doctor)

        // Create a new User object with role
        User user = new User(name, password, email, phone, address, role);

        // Establish DB connection and save user
        Connection connection = DatabaseConnection.getConnection();
        UserDAO userDAO = new UserDAO(connection);

        try {
            userDAO.saveUser(user);
            response.sendRedirect("index.jsp?success=1"); // Redirect to home with success message
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("index.jsp?error=1"); // Redirect to register page with error
        }
    }
}
