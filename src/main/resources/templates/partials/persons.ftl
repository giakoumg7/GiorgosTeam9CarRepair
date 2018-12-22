<#if foundPersonList??>
<h1 class="page-header">Owners</h1>

<table class="table table-striped">
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
            <a class="btn btn-primary" href="/admin/updatePerson/${person.getId()}">Edit</a>

        </td>
        <td class="text-right">
            <a class="btn btn-danger" href="/admin/deletePerson/${person.getId()}" name="personToBeDeletedFormId">Delete</a>

        </td>
    </tr>
    </#list>

    </tbody>
</table>
</#if>
