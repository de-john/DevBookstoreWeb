<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
<div class="topnav" style="text-align: left;">
    <a class="active" href="${pageContext.request.contextPath}/index.jsp"><span style="font-size: 12pt; font-family: georgia, palatino, serif; color: white"><strong>Home Page</strong></span></a>
    <form action="${pageContext.request.contextPath}/bookQuery" method="post">
        <label>Search By: </label>
        <label for="myList"></label><select id = "myList" name="dataType">
            <option value = "Book Name">Book Name</option>
            <option value = "Author First Name">Author's First Name</option>
            <option value = "Year">Year Released</option>
            <option value = "ISBN">ISBN</option>
            <option value = "Publisher Name">Publisher</option>
        </select>
        <label>
            <input type="text" name="queryInput" placeholder="Search Books.." />
        </label>
        <button type="submit">Search</button>
    </form>
    <hr />
</div>
<h1 class="topnav" style="text-align: left;"><span style="font-family: 'book antiqua', palatino, serif; font-size: 24pt;"><em>Bookstore</em></span></h1>
<hr />
<h1 class="topnav" style="text-align: left;">Thank you for your order!</h1>


</body>
</html>

