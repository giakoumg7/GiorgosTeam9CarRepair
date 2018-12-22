<#if repairs??>
<h1 class="page-header">Repairs</h1>

<table class="table table-striped">
    <thead>
    <tr>
        <th>Id</th>
        <th>Date</th>
        <th>RepairStatus</th>
        <th>RepairType</th>
        <th>RepairAfm</th>
        <th>RepairPrice</th>
        <th>RepairComments</th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>

    <#list repairs as repair>
    <tr>


        <td> ${repair.id}</td>
        <td> ${repair.date}</td>
        <td> ${repair.repairStatus}</td>
        <td> ${repair.repairType}</td>
        <td> ${repair.afm}</td>
        <td> ${repair.price}</td>
        <td> ${repair.comments}</td>


        <td class="text-right">
            <a class="btn" href="/updateRepair/${repair.id}">Edit</a>

        </td>
        <td class="text-right">
                    <a class="btn" href="/deleteRepair/${repair.id}">Delete</a>

                </td>
    </tr>
    </#list>

    </tbody>
</table>
</#if>