package com.bookstorer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "purchaseBook")
public class purchasebook extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String[] purchaseReturn = new String[9];
        DevBookstorewebDB newDBCP = new DevBookstorewebDB();
        newDBCP.openConnection();
        try
        {
            purchaseReturn = newDBCP.purchaseBook(request.getParameter("ISBNAttr"));
        } catch (SQLException e)
        {
            System.out.println("SQL Exception: " + e);
        }
        newDBCP.closeConnection();
        request.setAttribute("bookName", purchaseReturn[0]);
        request.setAttribute("authorFirst", purchaseReturn[1]);
        request.setAttribute("authorLast", purchaseReturn[2]);
        request.setAttribute("ISBN", purchaseReturn[3]);
        request.setAttribute("bookRDate", purchaseReturn[4]);
        request.setAttribute("bookPageCount", purchaseReturn[5]);
        request.setAttribute("bookGenre", purchaseReturn[6]);
        request.setAttribute("publisherName", purchaseReturn[7]);
        request.setAttribute("bookPrice", purchaseReturn[8]);
        request.getRequestDispatcher("/purchaseBook.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }
}
