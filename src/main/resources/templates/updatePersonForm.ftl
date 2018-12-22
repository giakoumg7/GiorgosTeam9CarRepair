<!doctype html>
<html lang=" ">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<#import "/spring.ftl" as spring />
<h2 class="hello-title">Register</h2>


<form action="/admin/updatePerson" name="personForm" method="POST">
        <div>
            <@spring.bind "personForm.id"/>
                <input type="hidden" value=${personForm.id} name="id" id="id" placeholder=${personForm.id}>
        </div>

    <div>
        <label for="name">Name</label>
       <@spring.bind "personForm.name"/>
        <input type="text" value =${personForm.name}  name="name" id="date" placeholder=${personForm.name}>
    </div>

        <div>
            <label for="surname">Surname</label>
           <@spring.bind "personForm.surname"/>
            <input type="text" value =${personForm.surname}  name="surname" id="surname" placeholder=${personForm.surname}>
        </div>

            <div>
                <label for="name">AFM</label>
               <@spring.bind "personForm.afm"/>
                <input type="text" value =${personForm.afm}  name="afm" id="afm" placeholder=${personForm.afm}>
            </div>

                <div>
                    <label for="name">Address</label>
                   <@spring.bind "personForm.address"/>
                    <input type="text" value =${personForm.address}  name="address" id="address" placeholder=${personForm.address}>
                </div>

                    <div>
                        <label for="email">Email</label>
                       <@spring.bind "personForm.email"/>
                        <input type="text" value =${personForm.email}  name="email" id="email" placeholder=${personForm.email}>
                    </div>

                     <div>
                      <label for="userType">User Type</label>
                      <@spring.bind "personForm.userType"/>
                      <select class="form-control" id="userType" name="userType">
                      <option value="" disabled selected> Current user type: ${personForm.userType}. Select the desired type</option>
                      <option value="ADMIN">Administrator</option>
                      <option value="USER">User</option>
                      </select>
                     </div>

                    <div>
                    <label for="plateNumber">Plate Number</label>
                   <@spring.bind "personForm.plateNumber"/>
                    <input type="text" value =${personForm.plateNumber}  name="plateNumber" id="plateNumber" placeholder=${personForm.plateNumber}>
                    </div>

                     <div>
                      <label for="carBrand">Car Brand</label>
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
    <div>

    <button type="submit">Save Repair</button>
</form>

</body>
</html>