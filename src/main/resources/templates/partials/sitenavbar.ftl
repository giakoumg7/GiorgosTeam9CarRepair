<nav class="navbar fixed-top navbar-expand-lg navbar-dark fixed-top bg-dark" style="background: linear-gradient(to bottom, #4c4c4c 0%,#595959 12%,#666666 25%,#474747 39%,#2c2c2c 50%,#000000 51%,#111111 60%,#2b2b2b 76%,#1c1c1c 91%,#131313 100%); ">
    <div class="container">
        <a class="navbar-brand" href="index.ftl"><img src="../images/logo.png" width="300px" height="80px"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">

        </div>
    </div>
    <form name="login" class="navbar-form navbar-right" method="post" style="float: left">

        <input class="form-control" type="text" name="username"  placeholder="Email" formmethod="post" style="float: left">


        <input class="form-control" type="password" name="password" id="password" placeholder="password" >

        <button name="submit" type="submit" value="submit" class="btn-primary">Sign in</button>
    </form>
</nav>