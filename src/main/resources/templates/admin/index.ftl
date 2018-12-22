<!DOCTYPE html>
<html lang="en">

<head>

    <#include "/partials/head.ftl">

    <title>Home</title>

    <!-- Bootstrap core CSS -->
    <#include "/partials/styles.ftl">

</head>

<body>

<#import "/spring.ftl" as spring />

<div id="wrapper">

    <!-- Sidebar -->
    <#include "/partials/sidebar.ftl">

    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div class="topnav">
        <a class="active" href="/">Home</a>
        <a href="/admin/searchRepair">Repairs</a>
        <a href="/admin/addRepair">Add Repair Service</a>
        <a href="/admin/addUser">Add User</a>

        <a  style="float: right" href="/logout">Log out</a>
    </div>



    <div id="page-content-wrapper">

        <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle" style="float: left">Toggle Menu</a>

        <div class="container-fluid">

            <#import "/spring.ftl" as spring />

            <form class="form-horizontal" action="/admin/search" name="searchForm" method="GET" style="
    position: relative;
    top: 40px;
">
                <input class="form-control" type="text" placeholder="Search User by AFM | Email" name="criteria">
                <button class="btn btn-primary" type="submit"> Search User</button>
            </form>


                        <#include "/partials/persons.ftl">






                <div class="table" style="padding-left: 0px;position: relative;top: -45px;">

                    <div class="table-active" style=" position: relative; top: 90px;">


                    <#if first10RepairsList??>
                    <table id="Top10Repairs" class="table table-striped">
                        <thead>
                        <tr>
                            <th>Repair ID</th>
                            <th>Date/Time</th>
                            <th>Repair Status</th>
                            <th>Repair Type</th>
                            <th>Price</th>
                            <th>AFM</th>
                            <th>Comments</th>
                        </tr>
                        </thead>
                        <tbody>

                        <#list first10RepairsList as repair>
                        <tr>

                            <td> ${repair.id}</td>
                            <td> ${repair.date}</td>
                            <td> ${repair.repairStatus}</td>
                            <td> ${repair.repairType}</td>
                            <td> ${repair.price}</td>
                            <td> ${repair.afm}</td>
                            <#if repair.comments??>
                            <td> ${repair.comments}</td>
                            <#else>
                            <td> - </td>
                            </#if>

                        </tr>
                        </#list>
                        <#else>
                        Upcoming repairs can not be found.
                    </#if>
                </tbody>
            </table>


        </div>

            </div>

        </div>

    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Bootstrap core JavaScript -->

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