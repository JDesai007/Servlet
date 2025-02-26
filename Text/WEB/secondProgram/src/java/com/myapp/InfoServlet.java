package com.myapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class InfoServlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        System.out.println("Calling Init");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        System.out.println("Calling doGet");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head><title>Info Servlet</title></head>");
        out.println("<body>");

        // Servlet initialization parameters
        out.println("<h1>Servlet Initialization Parameters</h1>");
        ServletConfig config = getServletConfig();
        Enumeration<String> initParameterNames = config.getInitParameterNames();
        if (initParameterNames.hasMoreElements()) {
            out.println("<ul>");
            while (initParameterNames.hasMoreElements()) {
                String paramName = initParameterNames.nextElement();
                String paramValue = config.getInitParameter(paramName);
                out.println("<li><b>" + paramName + ":</b> " + paramValue + "</li>");
            }
            out.println("</ul>");
        } else {
            out.println("<p>No initialization parameters found.</p>");
        }

        // HTTP request headers
        out.println("<h1>HTTP Request Headers</h1>");
        Enumeration<String> headerNames = request.getHeaderNames();
        if (headerNames.hasMoreElements()) {
            out.println("<ul>");
            while (headerNames.hasMoreElements()) {
                String headerName = headerNames.nextElement();
                String headerValue = request.getHeader(headerName);
                out.println("<li><b>" + headerName + ":</b> " + headerValue + "</li>");
            }
            out.println("</ul>");
        } else {
            out.println("<p>No headers found.</p>");
        }

        // Client and browser information
        out.println("<h1>Client/Browser Information</h1>");
        String clientIP = request.getRemoteAddr();
        String clientHost = request.getRemoteHost();
        String userAgent = request.getHeader("User-Agent");
        out.println("<p><b>Client IP Address:</b> " + clientIP + "</p>");
        out.println("<p><b>Client Host:</b> " + clientHost + "</p>");
        out.println("<p><b>User Agent:</b> " + userAgent + "</p>");

        // Server information
        out.println("<h1>Server Information</h1>");
        String serverName = request.getServerName();
        int serverPort = request.getServerPort();
        out.println("<p><b>Server Name:</b> " + serverName + "</p>");
        out.println("<p><b>Server Port:</b> " + serverPort + "</p>");

        out.println("</body>");
        out.println("</html>");
    }

//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//          System.out.println("Calling doPost");
//        doGet(request, response);
//    }
}
