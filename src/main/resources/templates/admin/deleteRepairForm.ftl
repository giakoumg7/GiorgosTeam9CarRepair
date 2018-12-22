<!DOCTYPE html>
<html lang="en">

<head>

    <#include "/partials/head.ftl">

    <title>Delete Repairs</title>

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
            <#import "/spring.ftl" as spring />
            <h2 class="hello-title">Delete Repair</h2>

            <form action="/admin/deleteRepair" name="repairForm" method="POST" class="form-horizontal">

                <div class="form-group">
            <@spring.bind "repairForm.id"/>
                    <input type="hidden" value=${repairForm.id} name="id" id="id" placeholder=${repairForm.id}>

                </div>
                <div class="form-group">

                    <label class="col-sm-1 control-label" for="date">Date</label>
                    <div class="col-sm-11">
       <@spring.bind "repairForm.date"/>

                        <input class="form-control" type="datetime" value =${repairForm.date}  name="date" id="date" placeholder=${repairForm.date}>
                    </div>
                </div>

                <div class="form-group">
             <@spring.bind "repairForm.repairStatus"/>
                    <label class="col-sm-1 control-label"for="repairStatus">Repairstatus</label>
                    <div class="col-sm-11">
                        <input class="form-control" type="text" value= ${repairForm.repairStatus} name="repairStatus" id="repairStatus" placeholder=${repairForm.repairStatus}>
                    </div>
                </div>

                <div class="form-group">

            <@spring.bind "repairForm.repairType"/>
                    <label class="col-sm-1 control-label" for="repairType">RepairType</label>
                    <div class="col-sm-11">
                        <input class="form-control" type="repairType" value =${repairForm.repairType} name="repairType" id="repairType" placeholder=${repairForm.repairType}>

                    </div>
                </div>

                <div class="form-group">

                <@spring.bind "repairForm.price"/>
                    <label class="col-sm-1 control-label" for="price">Price</label>
                    <div class="col-sm-11">
                        <input class="form-control" type="number" value =${repairForm.price} name="price" id="price" placeholder=${repairForm.price}>

                    </div>
                </div>

                <div class="form-group">

               <@spring.bind "repairForm.afm"/>
                    <label class="col-sm-1 control-label" for="afm">Owner AFM</label>
                    <div class="col-sm-11">
                        <input class="form-control" type="afm" value =${repairForm.afm}   name="afm" id="afm" placeholder=${repairForm.afm} >

                    </div>
                </div>

                <div class="form-group">

                           <@spring.bind "repairForm.comments"/>
                    <label class="col-sm-1 control-label"="comments">Comments</label>
                    <div class="col-sm-11">
                        <input class="form-control" type="comments" value =${repairForm.comments}  name="comments" id="comments" placeholder=${repairForm.comments}>

                    </div>
                </div>

                <div class="form-group">

                    <div class="col-sm-offset-1 col-sm-11">
                        <button class="btn btn-danger" type="submit" >Delete Repair</button>
                    </div>
                </div>
            </form>

        </div>


    </div>
    <!-- /#page-content-wrapper -->
</div>
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