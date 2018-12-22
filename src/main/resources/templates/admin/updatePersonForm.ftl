<!DOCTYPE html>
<html lang="en">

<head>

    <#include "/partials/head.ftl">

    <title>Up Coming Repairs</title>

    <!-- Bootstrap core CSS -->
    <#include "/partials/styles.ftl">

</head>
<body>

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
            <h2 class="hello-title">Update User</h2>


<form action="/admin/updatePerson" name="personForm" method="POST" class="form-horizontal">

    <div class="form-group">
            <@spring.bind "personForm.id"/>
        <input type="hidden" value=${personForm.id} name="id" id="id" placeholder=${personForm.id}>

    </div>
    <div class="form-group">

        <label class="col-sm-1 control-label" for="name">Name</label>
        <div class="col-sm-11">
       <@spring.bind "personForm.name"/>

        <input class="form-control" type="text" value =${personForm.name}  name="name" id="date" placeholder=${personForm.name}>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-1 control-label" for="surname">Surname</label>
        <div class="col-sm-11">
           <@spring.bind "personForm.surname"/>
           <input class="form-control" type="text" value =${personForm.surname}  name="surname" id="surname" placeholder=${personForm.surname}>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-1 control-label" for="name">AFM</label>
        <div class="col-sm-11">
               <@spring.bind "personForm.afm"/>
        <input class="form-control" type="text" value =${personForm.afm}  name="afm" id="afm" placeholder=${personForm.afm}>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-1 control-label" for="name">Address</label>
        <div class="col-sm-11">
                   <@spring.bind "personForm.address"/>
        <input class="form-control" type="text" value =${personForm.address}  name="address" id="address" placeholder=${personForm.address}>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-1 control-label" for="email">Email</label>
        <div class="col-sm-11">
                       <@spring.bind "personForm.email"/>
        <input class="form-control" type="text" value =${personForm.email}  name="email" id="email" placeholder=${personForm.email}>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="userType">User Type</label>
        <div class="col-sm-11">
                      <@spring.bind "personForm.userType"/>
        <select class="form-control" id="userType" name="userType">
            <option value="" disabled selected> Current user type: ${personForm.userType}. Select the desired type</option>
            <option value="ADMIN">Administrator</option>
            <option value="USER">User</option>
        </select>
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-1 control-label" for="plateNumber">Plate Number</label>
        <div class="col-sm-11">
                   <@spring.bind "personForm.plateNumber"/>
        <input class="form-control"  type="text" value =${personForm.plateNumber}  name="plateNumber" id="plateNumber" placeholder=${personForm.plateNumber}>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="carBrand">Car Brand</label>
        <div class="col-sm-11">
                      <@spring.bind "personForm.carBrand"/>
        <select class="form-control" id="carBrand" name="carBrand">
            <option value="" disabled selected>Current Brand ${personForm.carBrand}. Select the brand of your choice</option>
            <option value="ALFA_ROMEO">Alfa Romeo</option>
            <option value="ASTON_MARTIN">Aston Martin</option>
            <option value="AUDI">Audi</option>
            <option value="BENTLEY">Bentley</option>
            <option value="BMW">BMW</option>
            <option value="BUGATTI">Buggati</option>
            <option value="CHEVROLET">Chevrolet</option>
            <option value="CITROEN">Citroen</option>
            <option value="FERRARI">Ferrari</option>
            <option value="FIAT">Fiat</option>
            <option value="FORD">Ford</option>
            <option value="HONDA">Honda</option>
            <option value="HYUNDAI">Hyundai</option>
            <option value="JAGUAR">Jaguar</option>
            <option value="LAMBORGHINI">Lamborghini</option>
            <option value="LAND_ROVER">Land Rover</option>
            <option value="MAZDA">Mazda</option>
            <option value="MERCEDES_BENZ">Mercedes Benz</option>
            <option value="NISSAN">Nissan</option>
            <option value="PEUGEOT">Peugeot</option>
            <option value="PORSCHE">Porsche</option>
            <option value="SUZUKI">Suzuki</option>
            <option value="TOYOTA">Toyota</option>
            <option value="VOLVO">Volvo</option>
        </select>
        </div>
    </div>
    <div class="form-group">

        <div class="col-sm-offset-1 col-sm-11">
            <button class="btn btn-primary" type="submit" >Update User</button>
        </div>
    </div>
    </form>

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