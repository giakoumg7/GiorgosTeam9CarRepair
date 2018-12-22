<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="/images/favicon.png" rel="icon">

    <title>Car Repair Station</title>

    <!-- Bootstrap core CSS -->

    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/modern-business.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark fixed-top bg-dark" style="background: linear-gradient(to bottom, #4c4c4c 0%,#595959 12%,#666666 25%,#474747 39%,#2c2c2c 50%,#000000 51%,#111111 60%,#2b2b2b 76%,#1c1c1c 91%,#131313 100%); ">
    <div class="container">
        <a class="navbar-brand" href="index.ftl"><img src="/images/logo.png" width="300px" height="80px"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <form action="/logout">
            <div  class="form-group" >

                <div class="col-sm-offset-1 col-sm-11">
                    <button  class="btn btn-primary" type="submit"  >Logout</button>
                </div>
            </div>
            </form>
        </div>
    </div>

</nav>

<!-- Page Content -->
<div class="container" style="padding-top: 120px">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3" style="color: #ffffff">Repair Service Status</h1>

    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="/login">Home</a>
        </li>
        <li class="breadcrumb-item active">Repair Service Status</li>
    </ol>

    <!-- Content Row -->
    <div class="row">
        <!-- Map Column -->
        <div class="col-lg-8 mb-4">
            <!-- Embedded Google Map -->

            <#include "/partials/userrepairs.ftl">

        </div>
        <!-- Contact Details Column -->

    </div>

</div>


<!-- Footer -->
<footer class="py-5 bg-dark" style="background: linear-gradient(to bottom, #4c4c4c 0%,#595959 12%,#666666 25%,#474747 39%,#2c2c2c 50%,#000000 51%,#111111 60%,#2b2b2b 76%,#1c1c1c 91%,#131313 100%); ">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Team 9 Project Future 2018 - All Rights Reserved</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.bundle.min.js"></script>

<!-- Bootstrap core JavaScript -->



</body>

</html>
