<!DOCTYPE html>
<html lang="en">

  <head>

 <#include "partials/head.ftl">

      <title>Car Repair Station</title>

      <!-- Bootstrap core CSS -->

    <#include "partials/styles.ftl">

  </head>

  <body>

  <!-- Navigation -->

<#include "partials/sitenavbar.ftl">
    <!-- Page Content -->
    <div class="container">

    <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3" style="color: #ffffff">Contact</h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.ftl">Home</a>
        </li>
        <li class="breadcrumb-item active">Contact</li>
      </ol>

      <!-- Content Row -->
      <div class="row">
        <!-- Map Column -->
        <div class="col-lg-8 mb-4">
          <!-- Embedded Google Map -->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12559.638807819576!2d23.81572312769976!3d38.09576557523397!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14a19e59b431fb77%3A0x478e76c3c6b0c06!2sKastri%2C+Nea+Erythraia+146+71!5e0!3m2!1sen!2sgr!4v1544455025903" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <!-- Contact Details Column -->
        <div class="table">
          <span> <p>  <b> Address :</b> Nea Erithraia Attikh Greece</p> </span>
              <br>
          <p><b>    Postal Code :</b> 18451</p>
              <br>
              <p><b>  Email : </b>projectfutureteam9@gmail.com</p>
              <br>
          <p><b>     Telephone :  </b> 2105898884</p>
        </div>
      </div>
      <!-- /.row -->

      <!-- Contact Form -->
      <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->

      <!-- /.row -

    <!-- /.container -->
    </div>
    <!-- Footer -->
<#include "partials/footer.ftl">

    <!-- Bootstrap core JavaScript -->
<#include "partials/scripts.ftl">


  </body>

</html>
