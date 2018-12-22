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


<#if foundPersonList??>
<h1 class="page-header">Owners</h1>

<table id="Persons" class="table table-striped">
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Surname</th>
        <th>AFM</th>
        <th>Address</th>
        <th>Email</th>
        <th>User Type</th>
        <th>Plate Number</th>
        <th>Car Brand</th>
    </tr>
    </thead>
    <tbody>

    <#list foundPersonList as person>
    <tr>


        <td> ${person.getId()}</td>
        <td> ${person.getName()}</td>
        <td> ${person.getSurname()}</td>
        <td> ${person.getAfm()}</td>
        <td> ${person.getAddress()}</td>
        <td> ${person.getEmail()}</td>
        <td> ${person.getUserType()}</td>
        <td> ${person.getPlateNumber()}</td>
        <td> ${person.getCarBrand()}</td>


        <td class="text-right">
            <form action="/admin/updatePerson/${person.getId()}">
                <input type="submit" value="Edit"/>
            </form>
        </td>

        <td class="text-right">
            <form action="/admin/deletePerson/${person.getId()}" name="personToBeDeletedFormId" method="post">
                <input type="submit" value="Delete"/>
            </form>
        </td>
    </tr>
    </#list>

</tbody>
</table>
</#if>


</body>
</html>