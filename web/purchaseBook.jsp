<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>

        body {background-color: cornsilk;}
        html, body{
            height: 100%;
        }

        .container-fluid{
            min-height: 100%;
        }

        .sidenav {
            background-color: firebrick;
        }

        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;
            background-color: dodgerblue;
            height: 100%;
        }

        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }

        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }

            .row.content {
                height: auto;
            }
        }
    </style>
</head>
<body>

<div class="container-fluid text-center">
    <div class="row content">
        <div class="col-sm-2 sidenav">
            <a class="active" href="${pageContext.request.contextPath}/index.jsp"><span style="font-size: 12pt; font-family: georgia, palatino, serif; color: white"><strong>Home Page</strong></span></a>
            <form action="${pageContext.request.contextPath}/bookQuery" method="post">
                <label>Search By: </label>
                <select id = "myList" name="dataType">
                    <option value = "Book Name">Book Name</option>
                    <option value = "Author First Name">Author's First Name</option>
                    <option value = "Year">Year Released</option>
                    <option value = "ISBN">ISBN</option>
                    <option value = "Publisher Name">Publisher</option>
                </select>
                <input type="text" name="queryInput" placeholder="Search Books.." /> <button type="submit">Search</button>
            </form>
            <hr />
        </div>
        <div class="col-sm-8 text-left">
            <h1 class="topnav" style="text-align: left;"><span style="font-family: 'book antiqua', palatino, serif; font-size: 24pt;"><em>Bookstore</em></span></h1>
            <hr />
            <h2 class="topnav" style="text-align: left;"><span style="font-family: verdana, geneva, sans-serif;">Purchase Order for: ${bookName}&nbsp;</span></h2>
            <p><span style="font-family: verdana, geneva, sans-serif;">Details:</span></p>
            <p><span style="font-family: verdana, geneva, sans-serif;">Author: ${authorFirst} ${authorLast} </span></p>
            <p><span style="font-family: verdana, geneva, sans-serif;">ISBN: ${ISBN}</span></p>
            <p><span style="font-family: verdana, geneva, sans-serif;">Release Date: ${bookRDate}</span></p>
            <p><span style="font-family: verdana, geneva, sans-serif;">Page Count: ${bookPageCount}</span></p>
            <p><span style="font-family: verdana, geneva, sans-serif;">Genre: ${bookGenre}</span></p>
            <p><span style="font-family: verdana, geneva, sans-serif;">Publisher: ${publisherName}</span></p>
            <p><strong>Total Due: $${bookPrice}</strong></p>
            <hr />
            <h2>Shipping And Billing</h2>
            <form action="${pageContext.request.contextPath}/addOrder" method="post">
                <p>Address:</p>
                <input style="width: 500px;" name="userAddr" type="text" placeholder="Address" />
                <p>Zip: <input style="width: 100px;" name="userZip" type="text" placeholder="Zip" /> State: <input style="width: 100px;" name="userState" type="text" placeholder="State" /> Country: <input style="width: 135px;" name="userCountry" type="text"
                                                                                                                                                                                                             placeholder="Country" /></p>
                <p>First Name: <input style="width: 150px;" name="userFName" type="text" placeholder="First Name" /> Last Name: <input style="width: 170px;" name="userLName" type="text" placeholder="Last Name" /></p>
                <p>Phone Number: <input style="width: 150px;" name="userPhone" type="text" placeholder="Phone Number" /> E-Mail Address: <input style="width: 120px;" name="userEmail" type="text" placeholder="someone@domain.com" /></p>
                <p>Birth Date: <input style="width: 155px;" name="userDOB" type="text" placeholder="YYYYMMDD" /></p>
                <hr />
                <p>Credit Card Information:</p>
                <p>Card Number: <input style="width: 200px;" name="userCardNum" type="text" placeholder="Card Number" /> Expiration Date: <input style="width: 100px;" name="userCardExpDate" type="text" placeholder="Expiration Date" /></p>
                <p>Credit Card PIN: <input style="width: 50px;" name="userCardPin" type="text" placeholder="PIN" /></p>
                <p style="text-align: center;"><button type="submit" name="paidISBN" value="${ISBN}">Place Order</button></p>
            </form>
        </div>
        <div class="col-sm-2 sidenav">
            <div class="well">
                <p>KRUSTY KRAB IS UNFAIR!!</p>
            </div>
            <div class="well">
                <p>2020 is the worst year of your life so far..</p>
            </div>
        </div>
    </div>
</div>

<footer class="container-fluid text-center">
    <p>Footer Text</p>
</footer>

</body>

</html>
