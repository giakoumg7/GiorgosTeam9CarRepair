<form id="create-user" action="/admin/addUser" name="registerForm" class="form-horizontal"
      method="POST">

    <div class="form-group">
        <label class="col-sm-1 control-label" for="name">First Name</label>
        <div class="col-sm-11">
                        <@spring.bind "registerForm.name"/>
            <input class="form-control" id="name" name="name" placeholder="First Name"
                   type="text"/>
                        <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                        </#list>

        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="surname">Surname</label>
        <div class="col-sm-11">
                    <@spring.bind "registerForm.surname"/>
            <input class="form-control" id="surname" name="surname" placeholder="Surname"
                   type="text"/>
                    <#list spring.status.errorMessages as error>
                    <span>${error}</span>
                    </#list>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="afm">AFM</label>
        <div class="col-sm-11">
                <@spring.bind "registerForm.afm"/>
            <input class="form-control" id="afm" name="afm" placeholder="AFM" type="text"/>
                <#list spring.status.errorMessages as error>
                <span>${error}</span>
                </#list>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="password">Password</label>
        <div class="col-sm-11">
            <@spring.bind "registerForm.password"/>
            <input class="form-control" id="password" name="password" placeholder="" type="password"/>
            <#list spring.status.errorMessages as error>
            <span>${error}</span>
            </#list>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="email">Email</label>
        <div class="col-sm-11">
        <@spring.bind "registerForm.email"/>
            <input class="form-control" id="email" name="email" placeholder="example@email.com" type="email"/>
        <#list spring.status.errorMessages as error>
        <span>${error}</span>
        </#list>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="address">Address</label>
        <div class="col-sm-11">
        <@spring.bind "registerForm.address"/>
            <input class="form-control" id="address" name="address" placeholder="address" type="text"/>
        <#list spring.status.errorMessages as error>
        <span>${error}</span>
        </#list>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="userType">Role</label>
        <div class="col-sm-11">
    <@spring.bind "registerForm.userType"/>
            <select class="form-control" id="userType" name="userType">
                <option value="" disabled selected>Select the role for the user</option>
                <option value="ADMIN">Administrator</option>
                <option value="USER">USER</option>
            </select>
    <#list spring.status.errorMessages as error>
    <span>${error}</span>
    </#list>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="plateNumber">Plate Number</label>
        <div class="col-sm-11">
    <@spring.bind "registerForm.plateNumber"/>
            <input class="form-control" id="plateNumber" name="plateNumber" placeholder="ABC-1234" type="text"/>
    <#list spring.status.errorMessages as error>
    <span>${error}</span>
    </#list>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="type"> Car Brand</label>
<@spring.bind "registerForm.carBrand"/>
        <div class="col-sm-11">
            <select class="form-control" id="carBrand" name="carBrand">
                <option selected value="">Select the brand of the car</option>
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
            <button class="btn btn-default" type="reset">Reset</button>
            <button class="btn btn-primary" type="submit" href="admin/index">Add</button>

</form>