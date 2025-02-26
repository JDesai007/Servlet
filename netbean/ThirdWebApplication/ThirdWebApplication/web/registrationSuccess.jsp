<%-- 
    Document   : registrationSuccess
    Created on : 13-Feb-2024, 9:58:51 PM
    Author     : 91942
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>User Registration Successful</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f5f5f5;
                margin: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .container {
                max-width: 250px;
                margin: 50px auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 8px;
            }
            .success-message {
                background-color: #f2f2f2;
                color: green;
                text-align: center;
                padding: 50px;
                font-size: 28px;    
                border-radius: 5px;
            }
            .success-icon {
                color: #4caf50;
                font-size: 100px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="success-message">
                <i class="fa fa-check-circle success-icon"></i>
                <p>Registration Successful</p>
            </div>
        </div>
    </body>
</html>
