<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="code.Doctor.Model.User" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession sessionObj = request.getSession(false);
    User user = (sessionObj != null) ? (User) sessionObj.getAttribute("user") : null;

    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">
<div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-md">
    <h2 class="text-2xl font-bold text-center mb-6">Welcome, <%= user.getName() %>!</h2>
    <p class="text-center text-gray-700">Your email: <%= user.getEmail() %></p>
    <p class="text-center text-gray-700">Phone: <%= user.getPhone() %></p>

    <div class="text-center mt-4">
        <a href="logout" class="bg-red-500 text-white py-2 px-4 rounded hover:bg-red-600">Logout</a>
    </div>
</div>
</body>
</html>
