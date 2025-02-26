package code.Doctor.Web;

import code.Doctor.DAO.DatabaseConnection;
import code.Doctor.DAO.UserDAO;
import code.Doctor.Model.User;

import java.io.IOException;
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
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        User user = new User(name, password, email, phone, address);
        UserDAO userDAO = null;
        userDAO = new UserDAO(DatabaseConnection.getConnection());

        try {
            userDAO.saveUser(user);
            response.sendRedirect("index.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("index.jsp");
        }
    }
}
