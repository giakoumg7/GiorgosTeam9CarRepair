<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="css/favicon.png" rel="icon">

    <title>Add New Owner</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

    <!-- STYLE CSS -->
    <link rel="stylesheet" href="../../css/style.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap2.min.css" rel="stylesheet">
    <link href="css/dashboard.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link href="css/topnav.css" rel="stylesheet">

</head>

<body>



<div id="wrapper">

    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand">
                <a href="Home.ftl"> <img src="css/logo.png" width="200px" height="80px"></a>
            </li>
            <li>
                <a href="Home.ftl">Home</a>
            </li>
            <li>
                <a href="Repairs.ftl">Repairs</a>
            </li>
            <li>
                <a href="Users.ftl">Owners</a>
            </li>
            <li>
                <a href="addUser.html">Add new user</a>
            </li>
            <li>
                <a href="addRepair.ftl">Add new repair</a>
            </li>
        </ul>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div class="topnav">
        <a href="Home.ftl">Home</a>
        <a href="Repairs.ftl">Repairs</a>
        <a href="Users.ftl">Users</a>
        <a href="addRepair.ftl">Add Repair Service</a>
        <a class="active" href="addUser.html">Add User</a>
        <div class="search-container">
            <form action="">
                <input type="text" placeholder="Search.." name="search">
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>

        </div>
        <a href="logout.html">Log out</a>
    </div>

    <div style="padding-left: 233px;position: relative;top: -35px;">
        <h2>Responsive Search Bar</h2>
        <p>Navigation bar with a search box and a submit button inside of it.</p>
        <p>Resize the browser window to see the responsive effect.</p>
    </div>
    <div id="page-content-wrapper">
        <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Toggle Menu</a>
        <div class="container-fluid">

            <h1 class="page-header">Add Repair Service</h1>
            <form action="/create-listing" class="form-horizontal" id="create-listing">
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="dateListing">Date</label>
                    <div class="col-sm-11">
                        <input class="form-control" id="dateListing" name="dateListing" placeholder="Date" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="status">Status</label>
                    <div class="col-sm-11">
                        <select class="form-control" id="status" name="status">
                            <option value="" disabled selected>Select your option</option>
                            <option selected value="Pending">Pending</option>
                            <option value="Processed">Processed</option>
                            <option value="Completed">Completed</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="type">Brand</label>
                    <div class="col-sm-11">
                        <select class="form-control" id="brand" name="brand">
                            <option selected value="">Select the brand of the car</option>
                            <option value="Type A">ALFA_ROMEO</option>
                            <option value="Type B">ASTON_MARTIN</option>
                            <option value="Type C">AUDI</option>
                            <option value="Type D">BENTLEY</option>
                            <option value="Type E">BMW</option>
                            <option value="Type F">BUGATTI</option>
                            <option value="Type G">CHEVROLET</option>
                            <option value="Type H">CITROEN</option>
                            <option value="Type H">FERRARI</option>
                            <option value="Type H">FIAT</option>
                            <option value="Type H">FORD</option>
                            <option value="Type H">HONDA</option>
                            <option value="Type H">HYUNDAI</option>
                            <option value="Type H">JAGUAR</option>
                            <option value="Type H">LAMBORGHINI</option>
                            <option value="Type H">LAND_ROVER</option>
                            <option value="Type H">MAZDA</option>
                            <option value="Type H">MERCEDES_BENZ</option>
                            <option value="Type H">NISSAN</option>
                            <option value="Type H">PEUGEOT</option>
                            <option value="Type H">PORSCHE</option>
                            <option value="Type H">SUZUKI</option>
                            <option value="Type H">TOYOTA</option>
                            <option value="Type H">VOLVO</option>


                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="price">Price</label>
                    <div class="col-sm-11">
                        <input class="form-control" id="price" name="price" placeholder="Price" type="number">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="company">Owner</label>
                    <div class="col-sm-11">
                        <input class="form-control" id="company" name="company" placeholder="Company" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="description">Description</label>
                    <div class="col-sm-11">
                        <textarea class="form-control" cols="30" id="description" name="description" placeholder="Description"
                                  rows="10"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <button class="btn btn-default" type="reset">Reset</button>
                        <button class="btn btn-primary" type="submit">Create</button>
                    </div>
                </div>
            </form>


        </div>
    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Bootstrap core JavaScript -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>

<script src="js/bootstrap2.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>


<!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>

</body>

</html>