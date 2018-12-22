<!DOCTYPE html>
<html lang="en">

<head>

    <#include "/partials/head.ftl">

    <title>Up Coming Repairs</title>

    <!-- Bootstrap core CSS -->
    <#include "/partials/styles.ftl">

</head>

<body>



<#import "/spring.ftl" as spring />


<div id="wrapper">

    <!-- Sidebar -->

    <#include "/partials/sidebar.ftl">
    <!-- Sidebar -->

    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->

    <#include "/partials/topnav.ftl">

        <#include "/partials/searchByAfm.ftl">


    <div id="page-content-wrapper">
        <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle" style="float: left">Toggle Menu</a>


            <div class="container-fluid">
                <h1 class="page-header">Search Repairs</h1>
            <#import "/spring.ftl" as spring />


          <form action="/admin/searchRepairResult" class="form-horizontal" id="searchForm" name="searchForm">

                    <div class="form-group">
                        <i><h3>From</h3></i>
                        <input class="form-control" type="datetime-local" name="fromDate" id="fromDate" placeholder="datetime">
                        <i><h3>To</h3></i>
                        <input class="form-control" type="datetime-local" name="toDate" id="toDate" placeholder="datetime">
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="text" name="Afm" id="Afm" placeholder="OnwerAfm">
                    </div>
                        <div class="form-group">
                        <input class="form-control" type="text" name="Plate" id="Plate" placeholder="Plate">
                        </div>
                    <button class="btn btn-primary" type="submit">Search</button>
          </form>


                        <#include "/partials/repairs.ftl">


            </div>


    </div>
    <!-- /#page-content-wrapper -->

</div>

<#include "/partials/scripts.ftl">

                <!-- Menu Toggle Script -->
                <script>
                    $("#menu-toggle").click(function(e) {
                        e.preventDefault();
                        $("#wrapper").toggleClass("toggled");
                    });
                </script>

</body>

</html>