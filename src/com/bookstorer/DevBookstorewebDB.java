package com.bookstorer;

import java.sql.*;
import java.util.ArrayList;

//This class contains methods used to perform CRUD operations on the SQL DB.

public class DevBookstorewebDB
{
    static Connection dbConnection = null; //New connection object.

    public void openConnection()
    {
        String dbURL = "jdbc:mysql://localhost:3306/devbookstore"; //URL of the SQL server.
        try
        {
            Class.forName("com.mysql.jdbc.Driver"); //Forcing the MYSQL server driver to register
            dbConnection = DriverManager.getConnection(dbURL, "root", "SQLDEVSERVER"); //Passes the username and password to the server for authentication.
            System.out.println("Connected to SQL DB successfully");
        }
        catch(Exception e1)
        {
            System.out.println("Found Exception: " + e1);
        }
    }

    public void closeConnection()
    {
        try
        {
            dbConnection.close();
            System.out.println("Database connection closed");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public static final String QUERY_NAME = "SELECT book.ISBN, BookName, ReleaseDate, PageCount, Genre, Price, publisher.Name, author.FirstName, author.LastName FROM book, publisher, author, writes WHERE book.BookName LIKE '%\" + chosenIdData.replace(\"'\", \"\\\\'\") + \"%' and book.isbn = writes.isbn and writes.ID = author.ID and book.PublisherID = publisher.ID\";\n";


    public ArrayList bookQuery(String chosenIdentifierType, String chosenIdData) throws SQLException
    {
        Statement bookQStatement = dbConnection.createStatement();

        //chosenIdentifierType is the argument that specifies which type of keyword to look for
        //chosenIdData is the keyword inputted by the user

        String queryStatement = ""; //Declares the SQL statement passed to the server, changes depending on the chosen type of data to look for.

        int numRecords;

        switch(chosenIdentifierType) //List of possible identifiers to search for books, this is passed from the JSP search action and bookquery servlet
        {
            case "Book Name": queryStatement = "SELECT book.ISBN, BookName, ReleaseDate, PageCount, Genre, Price, publisher.Name, author.FirstName, author.LastName FROM book, publisher, author, writes WHERE book.BookName LIKE '%" + chosenIdData.replace("'", "\\'") + "%' and book.isbn = writes.isbn and writes.ID = author.ID and book.PublisherID = publisher.ID";
            break;
            case "Author First Name": queryStatement = "SELECT book.ISBN, BookName, ReleaseDate, PageCount, Genre, Price, publisher.Name, FirstName, LastName FROM book, publisher, author, writes WHERE author.FirstName LIKE '%" + chosenIdData.replace("'", "\\'") + "%' and book.isbn = writes.isbn and writes.ID = author.ID and book.PublisherID = publisher.ID";
            break;
            case "Year": queryStatement = "SELECT book.ISBN, BookName, ReleaseDate, PageCount, Genre, Price, publisher.Name, FirstName, LastName FROM book, publisher, author, writes WHERE year(ReleaseDate) = " + chosenIdData.replace("'", "\\'") + " and book.isbn = writes.isbn and writes.ID = author.ID and book.PublisherID = publisher.ID";
            break;
            case "ISBN": queryStatement = "SELECT book.ISBN, BookName, ReleaseDate, PageCount, Genre, Price, publisher.Name, FirstName, LastName FROM book, publisher, author, writes WHERE book.isbn = " + chosenIdData.replace("'", "\\'") + " and book.isbn = writes.isbn and writes.ID = author.ID and book.PublisherID = publisher.ID";
            break;
            case "Publisher Name": queryStatement = "SELECT book.ISBN, BookName, ReleaseDate, PageCount, Genre, Price, publisher.Name, FirstName, LastName FROM book, publisher, author, writes WHERE publisher.Name LIKE '%" + chosenIdData.replace("'", "\\'") + "%' and book.isbn = writes.isbn and writes.ID = author.ID and book.PublisherID = publisher.ID";
            break;
        }

        ResultSet bookReturn = bookQStatement.executeQuery(queryStatement);

        ArrayList<String> booksFound = new ArrayList<>();

        if(!bookReturn.next()){
            booksFound.add("<h4 style=\"text-align: left;\"> No matching books found </h4>");
            return booksFound;
        } else {
            bookReturn.last();
            numRecords = bookReturn.getRow(); //Used to check how many records match the query, and it is used as the for loop limit.
            bookReturn.first();


            for (int i = 1; i <= numRecords; i++) //appends the result with html formatting into the result's jsp file, and does so however many results come up
            {
                booksFound.add("<h4 style=\"text-align: left;\">" + bookReturn.getString("BookName") + "</h4>" +
                                "<p style=\"text-align: left;\">Author: " + bookReturn.getString("FirstName") + " " + bookReturn.getString("LastName") + "</p>" +
                                "<form action=\"purchaseBook\" method=\"post\"><label style=\"text-align: left;\">ISBN: " + bookReturn.getString("ISBN") + " </label>" +
                        "<button name=\"ISBNAttr\" value = \"" + bookReturn.getString("ISBN") + "\"" + "type=\"submit\">Purchase</button></form>" +
                        "<p style=\"text-align: left;\">Release Date: " + bookReturn.getString("ReleaseDate") + " Pages: " + bookReturn.getString("PageCount") + " Genre: " + bookReturn.getString("Genre") + "</p>" +
                        "<p style=\"text-align: left;\">Publisher: " + bookReturn.getString("publisher.Name") + " <strong>Price: $" + bookReturn.getString("Price") + "</strong></p><hr />");
                bookReturn.next();
            }

        }

        return booksFound; //returns the formatted arraylist to the servlet, which will be able to pass it into the JSP page

    }

    public String[] purchaseBook(String cISBN) throws SQLException //this method only queries the database again and passes the result to the purchase screen jsp
    {
        Statement newPurchStatement = dbConnection.createStatement();
        ResultSet purchReturn = newPurchStatement.executeQuery("SELECT book.ISBN, BookName, ReleaseDate, PageCount, Genre, Price, publisher.Name, FirstName, LastName FROM book, publisher, author, writes WHERE book.isbn = " + cISBN.replace("'", "\\'") + " and book.isbn = writes.isbn and writes.ID = author.ID and book.PublisherID = publisher.ID");
        purchReturn.first();

        String[] purchaseReturn = new String[] {purchReturn.getString("BookName"),purchReturn.getString("FirstName"),purchReturn.getString("LastName"), purchReturn.getString("ISBN"), purchReturn.getString("ReleaseDate"), purchReturn.getString("PageCount"),purchReturn.getString("Genre"), purchReturn.getString("publisher.Name"),purchReturn.getString("Price")};

        return purchaseReturn;
    }

    public void addOrder(String[] insertParams) throws SQLException //updates the customer, transaction, and order information when a purchase is made
    {
        Statement insertSQL = dbConnection.createStatement();
        insertSQL.execute("INSERT IGNORE INTO customer (Address, Zip, State, Country, FirstName, LastName, Phone, Email, DOB) VALUES('" + insertParams[0].replace("'", "\\'") + "','" + insertParams[1].replace("'", "\\'") + "','" + insertParams[2].replace("'", "\\'") + "','" + insertParams[3].replace("'", "\\'") + "','" + insertParams[4].replace("'", "\\'") + "','" + insertParams[5].replace("'", "\\'") + "','" + insertParams[6].replace("'", "\\'") + "','" + insertParams[7].replace("'", "\\'") + "','" + insertParams[8].replace("'", "\\'") + "')");
        insertSQL.execute("INSERT INTO purchaseorder(Address, oZip, State, Country, Date, FirstName, LastName, Phone) SELECT Address, Zip, State, Country, curDate(), FirstName, LastName, Phone FROM customer WHERE FirstName = '" + insertParams[4].replace("'", "\\'") + "' and LastName = '" + insertParams[5].replace("'", "\\'") + "' and Phone = '" + insertParams[6].replace("'", "\\'") + "'");
        insertSQL.execute("INSERT INTO contains(ISBN) VALUES('" + insertParams[9].replace("'", "\\'") + "')");
    }



}
