<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">
<div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-md">
    <h2 class="text-2xl font-bold text-center mb-6">Login</h2>

    <%-- Display error message if login fails --%>
    <% if (request.getParameter("error") != null) { %>
    <p class="text-red-600 text-center mb-4">Invalid email or password. Try again.</p>
    <% } %>

    <form action="login" method="post" class="space-y-4">
        <div>
            <label class="block text-gray-700">Email</label>
            <input type="email" name="email" class="w-full p-2 border border-gray-300 rounded" required>
        </div>
        <div>
            <label class="block text-gray-700">Password</label>
            <input type="password" name="password" class="w-full p-2 border border-gray-300 rounded" required>
        </div>
        <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded hover:bg-blue-600 transition">
            Login
        </button>
    </form>

    <p class="text-center text-gray-600 mt-4">Don't have an account?
        <a href="register.jsp" class="text-blue-500 hover:underline">Register here</a>
    </p>
</div>
</body>
</html>
