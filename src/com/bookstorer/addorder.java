package com.bookstorer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "addOrder")
public class addorder extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        String[] recordParams = new String[]{request.getParameter("userAddr"),request.getParameter("userZip"),request.getParameter("userState"),request.getParameter("userCountry"), request.getParameter("userFName"),request.getParameter("userLName"),request.getParameter("userPhone"),request.getParameter("userEmail"),request.getParameter("userDOB"),request.getParameter("paidISBN")};
        DevBookstorewebDB newDBCIO = new DevBookstorewebDB();
        newDBCIO.openConnection();
        try
        {
            newDBCIO.addOrder(recordParams);
        } catch (SQLException e)
        {
            System.out.println("SQL Exception: " + e);
        }
        newDBCIO.closeConnection();
        request.getRequestDispatcher("/addOrder.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) {

    }
}
