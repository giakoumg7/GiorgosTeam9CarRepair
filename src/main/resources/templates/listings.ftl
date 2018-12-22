<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1" name="viewport">

    <meta content="Short website description" name="description">
    <link href="./favicon.png" rel="icon">

    <title>Listings</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dashboard.css" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button aria-controls="navbar" aria-expanded="false" class="navbar-toggle collapsed" data-target="#navbar"
                    data-toggle="collapse" type="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="./index.html">Project name</a>
        </div>
        <div class="navbar-collapse collapse" id="navbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="./index.html">Home</a></li>
                <li><a href="./users.html">Users</a></li>
                <li><a href="./listings.html">Listings</a></li>
                <li><a href="./login.html">Logout</a></li>
            </ul>

            <form action="/search" class="navbar-form navbar-right" id="search">
                <div class="form-group">
                    <input class="form-control" id="searchID" name="searchID" placeholder="search..." type="text">
                </div>
                <button class="btn btn-default" type="submit">Search</button>
            </form>

        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="./users.html">Users</a></li>
                <li><a href="./create-user.html">Add User</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="./listings.html">Listing</a></li>
                <li><a href="./create-listing.html">Add listing</a></li>
            </ul>
        </div>





         <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Listings</h1>
        <table class="table table-striped">
          <thead><tr><th>Repairdate<th>RepairStatus<th>RepairType<th>RepairPrice<th>RepairCommnents
          <#list repair as repair>

            <tr><td>${repair.repairDate}<td>${repair.repairStatus}<td>${repair.repairType}<td>${repair.price}<td>${repair.comment}
          </#list>
        </table>
         </div>




    </div>
</div>

<div id="dialog-delete-confirmation" title="Are you sure?" class="hidden">
    <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>

    <div>
        <button class="btn btn-clock btn-primary">Close</button>
    </div>
</div>



<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="./static/js/bootstrap.min.js"></script>
<script src="./static/js/app.js"></script>

</body>
</html>
