<!DOCTYPE html>
<html lang="en">

<head>

    <#include "/partials/head.ftl">

    <title>Owners</title>

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

    div class="topnav">
    <a href="/admin">Home</a>
    <a href="/admin/searchRepair">Repairs</a>
    <a  class="active" href="/admin/Users">Owners</a>
    <a href="/admin/addRepair">Add Repair Service</a>
    <a href="/admin/addUser">Add User</a>
    <div class="search-container">
        <form class="example" action="/admin/index" name="seachForm" method="get">
            <input type="text" placeholder="Search by Surname | AFM" name="criteria">
            <button type="submit"><i class="fa fa-search"></i></button>
        </form>

    </div>
    <a href="logout.ftl">Log out</a>
</div>

    <#include "/partials/searchByAfm.ftl">

    <div id="page-content-wrapper">
        <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Toggle Menu</a>
        <div class="container-fluid">
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">Users</h1>
                <table id="Users" class="table table-striped">
                    <thead>
                    <tr>
                        <th>AFM</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Car Brand</th>
                        <th>Plate Number</th>
                        <th>User Type</th>
                    </tr>
                    </thead>
                    <tbody>

                    <#list Persons as Person>
                    <tr>

                        <td> ${Person.afm}</td>
                        <td> ${Person.name}</td>
                        <td> ${Person.surname}</td>
                        <td> ${Person.address}</td>
                        <td> ${Person.email}</td>
                        <td> ${Person.password}</td>
                        <td> ${Person.carBrand}</td>
                        <td> ${Person.plateNumber}</td>
                        <td> ${Person.userType}</td>


                        <td class="text-right">
                            <button class="btn btn-danger button-delete-confirmation" type="submit" value="Delete">Delete
                            </button>
                            <button class="btn btn-success" type="submit" value="Edit">Edit</button>
                        </td>
                    </tr>
                    </#list>


                    </tbody>
                </table>
            </div>

        </div>
    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->
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