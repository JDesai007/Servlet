<%-- 
    Document   : index
    Created on : 11-Feb-2024, 11:12:32 AM
    Author     : 91942
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Page</title>
        <style>
            body {
                font-family: Calibri, sans-serif; 
                background-color: #f2f2f2;
                margin: 0;
                padding: 0;
            }

            .container {
                border-radius: 5px;
                background-color: #fff;
                margin: 50px auto;
                padding: 30px;
                max-width: 500px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }

            h2 {
                text-align: center;
                color: #607d8b;
            }

            label {
                font-size: 18px;
                color: #607d8b;
            }

            input, textarea, select {
                width: 100%;
                padding: 10px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            button {
                width: 100%;
                background-color: #607d8b;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            button:hover {
                background-color: #78909c; 
            }

            .form-group {
                margin-bottom: 20px;
            }
        </style>
        <script>
            function validateForm() {
                var firstName = document.getElementById("firstName").value;
                var lastName = document.getElementById("lastName").value;
                var password = document.getElementById("password").value;
                var confirmPassword = document.getElementById("confirmPassword").value;
                var email = document.getElementById("email").value;
                var phone = document.getElementById("phone").value;
                var address = document.getElementById("address").value;
                var userRole = document.getElementById("userRole").value;
                var alphaPattern = /^[a-zA-Z]+$/;
                var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                var phonePattern = /^[6-9]\d{9}$/;

                if (!alphaPattern.test(firstName)) {
                    alert("Please enter a valid first name");
                    return false;
                }
                if (!alphaPattern.test(lastName)) {
                    alert("Please enter a valid last name");
                    return false;
                }
                if (password !== confirmPassword) {
                    alert("Passwords do not match");
                    return false;
                }
                if (password.length < 6) {
                    alert("Password must be at least 6 characters long");
                    return false;
                }
                if (!emailPattern.test(email)) {
                    alert("Please enter a valid email address");
                    return false;
                }
                if (!phonePattern.test(phone)) {
                    alert("Please enter a valid phone number (10 digits)");
                    return false;
                }
                if (address.trim() === "" || userRole.trim() === "") {
                    alert("Empty feild are not allow");
                    return false;
                }

                return true;
            }
        </script>

    </head>
    <body>
        <div class="container">
            <h2>Registration Form</h2>
            <form id="registration-form" method="post" action="registration.htm" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="firstName">First Name:</label>
                    <input type="text" id="firstName" name="firstName" class="form-control">
                </div>

                <div class="form-group">
                    <label for="lastName">Last Name:</label>
                    <input type="text" id="lastName" name="lastName" class="form-control">
                </div>

                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control">
                </div>

                <div class="form-group">
                    <label for="confirmPassword">Confirm Password:</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" >
                </div>

                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" class="form-control">
                </div>

                <div class="form-group">
                    <label for="phone">Phone Number:</label>
                    <input type="text" id="phone" name="phone" class="form-control">
                </div>

                <div class="form-group">
                    <label for="address">Address:</label>
                    <textarea id="address" name="address" class="form-control"></textarea>
                </div>

                <div class="form-group">
                    <label for="userRole">User Role:</label>
                    <select id="userRole" name="userRole" class="form-control">
                        <option value="">Select User Role</option>
                        <option value="1">Admin</option>
                        <option value="2">Guest</option>
                        <option value="3">Registered User</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary">Register</button>
            </form>
        </div>
    </body>
</html>
