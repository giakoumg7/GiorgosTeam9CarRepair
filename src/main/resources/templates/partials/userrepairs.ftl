<#if personrepairs??>


<table class="table table-striped" style="background: #2aabd2">
    <thead>
    <tr>

        <th>Date</th>
        <th>RepairStatus</th>
        <th>RepairType</th>
        <th>RepairComments</th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>

    <#list personrepairs as repair>
    <tr>



        <td> ${repair.repairDate}</td>
        <td> ${repair.repairStatus}</td>
        <td> ${repair.repairType}</td>
        <td> ${repair.comment}</td>



    </tr>
    </#list>

    </tbody>
</table>
<#else>
</#if>