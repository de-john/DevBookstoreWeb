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
        <div class="col-sm-8 text-left">
            <h1 class="topnav" style="text-align: left;"><span style="font-family: 'book antiqua', palatino, serif; font-size: 24pt;"><em>Bookstore</em></span></h1>
            <hr />
            <h3 style="text-align: left;">Results for "${resName}"</h3>
            <hr />
            ${queryResults}
        </div>
        <div class="col-sm-2 sidenav">
            <div class="well">
                <p>Try our new cologne</p>
            </div>
            <div class="well">
                <p>Global warming is real.</p>
            </div>
        </div>
    </div>
</div>

<footer class="container-fluid text-center">
    <p>Footer Text</p>
</footer>

</body>

</html>
