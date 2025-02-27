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
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Patient</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-br from-blue-400 to-blue-600 min-h-screen flex items-center justify-center">

<div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-3xl">
    <h2 class="text-3xl font-bold text-center text-gray-800 mb-4">Bienvenue, <%= user.getName() %>!</h2>
    <p class="text-center text-gray-600 mb-6">Votre espace patient</p>

    <!-- User Details -->
    <div class="mb-6 bg-gray-100 p-4 rounded-lg shadow-sm">
        <p class="text-lg text-gray-700"><strong>Email:</strong> <%= user.getEmail() %></p>
        <p class="text-lg text-gray-700"><strong>Téléphone:</strong> <%= user.getPhone() %></p>
        <p class="text-lg text-gray-700"><strong>Adresse:</strong> <%= user.getAddress() %></p>
    </div>

    <!-- Appointments Section -->
    <div class="bg-white p-4 rounded-lg shadow">
        <h2 class="text-lg font-semibold mb-2 text-blue-600">Mes Rendez-vous</h2>

        <table class="w-full border-collapse border border-gray-300">
            <thead>
            <tr class="bg-blue-600 text-white text-left">
                <th class="p-2 border border-gray-300">Date</th>
                <th class="p-2 border border-gray-300">Heure</th>
                <th class="p-2 border border-gray-300">Médecin</th>
                <th class="p-2 border border-gray-300">Statut</th>
                <th class="p-2 border border-gray-300">Action</th>
            </tr>
            </thead>
            <tbody>
            <!-- Dynamic appointment rows go here -->
            <tr>
                <td class="p-2 border border-gray-300">25/03/2025</td>
                <td class="p-2 border border-gray-300">14:00</td>
                <td class="p-2 border border-gray-300">Dr. Smith</td>
                <td class="p-2 border border-gray-300 text-green-600">Confirmé</td>
                <td class="p-2 border border-gray-300">
                    <a href="#" class="text-red-500 hover:underline">Annuler</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

    <!-- Actions -->
    <div class="mt-6 text-center">
        <a href="appointment.jsp" class="bg-green-500 text-white py-2 px-6 rounded-lg hover:bg-green-600 mr-2">
            Prendre un Rendez-vous
        </a>
        <a href="logout" class="bg-red-500 text-white py-2 px-6 rounded-lg hover:bg-red-600">
            Déconnexion
        </a>
    </div>
</div>

</body>
</html>
