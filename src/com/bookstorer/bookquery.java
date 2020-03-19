package com.bookstorer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet(name = "bookQuery")
public class bookquery extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        ArrayList pBooksFound = new ArrayList<>();

        DevBookstorewebDB newDBCQ = new DevBookstorewebDB(); // opens a new connection
        newDBCQ.openConnection();
        try
        {
            pBooksFound = newDBCQ.bookQuery(request.getParameter("dataType"), request.getParameter("queryInput")); //passes the data type argument and keywords to the query method

        } catch (SQLException e)
        {
            System.out.println("SQL Exception: " + e);
        }
        newDBCQ.closeConnection();
        if (request.getParameter("queryInput").equals("")) //Stops all books from being shown for empty searches
        {
            pBooksFound.clear();
        }
        //Assigns the results (formatted) to the queryResults expression, which can be shown within the JSP file
        request.setAttribute("queryResults", pBooksFound.toString().replace("[", "").replace("]", "").replace(",", ""));
        request.setAttribute("resName", request.getParameter("queryInput"));
        request.getRequestDispatcher("/bookQuery.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) {

    }
}
