<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">

<div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-md">
    <h2 class="text-2xl font-bold text-center mb-6">Create an Account</h2>
    <form action="register" method="post" class="space-y-4">

        <!-- Full Name -->
        <div>
            <label class="block text-gray-700">Full Name</label>
            <input type="text" name="name" class="w-full p-2 border border-gray-300 rounded" required>
        </div>

        <!-- Email -->
        <div>
            <label class="block text-gray-700">Email</label>
            <input type="email" name="email" class="w-full p-2 border border-gray-300 rounded" required>
        </div>

        <!-- Password -->
        <div>
            <label class="block text-gray-700">Password</label>
            <input type="password" name="password" class="w-full p-2 border border-gray-300 rounded" required>
        </div>

        <!-- Phone -->
        <div>
            <label class="block text-gray-700">Phone</label>
            <input type="text" name="phone" class="w-full p-2 border border-gray-300 rounded" required>
        </div>

        <!-- Address -->
        <div>
            <label class="block text-gray-700">Address</label>
            <input type="text" name="address" class="w-full p-2 border border-gray-300 rounded" required>
        </div>

        <!-- Role Selection -->
        <div>
            <label class="block text-gray-700">Select Role</label>
            <select name="role" id="roleSelect" class="w-full p-2 border border-gray-300 rounded bg-white" onchange="toggleSpecialty()">
                <option value="patient">Patient</option>
                <option value="doctor">Doctor</option>
            </select>
        </div>

        <!-- Specialty (Only for Doctor) -->
        <div id="specialtyField" class="hidden">
            <label class="block text-gray-700">Specialty</label>
            <input type="text" name="specialty" id="specialtyInput" class="w-full p-2 border border-gray-300 rounded">
        </div>

        <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded hover:bg-blue-600 transition">
            Register
        </button>
    </form>

    <p class="text-center text-gray-600 mt-4">Already have an account?
        <a href="login.jsp" class="text-blue-500 hover:underline">Login here</a>
    </p>
</div>

<script>
    function toggleSpecialty() {
        let role = document.getElementById("roleSelect").value;
        let specialtyField = document.getElementById("specialtyField");
        if (role === "doctor") {
            specialtyField.classList.remove("hidden");
            document.getElementById("specialtyInput").required = true;
        } else {
            specialtyField.classList.add("hidden");
            document.getElementById("specialtyInput").required = false;
        }
    }
</script>

</body>
</html>
