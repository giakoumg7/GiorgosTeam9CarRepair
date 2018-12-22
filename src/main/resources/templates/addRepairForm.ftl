<#import "/spring.ftl" as spring />
<h2 class="hello-title">Register</h2>


<form action="/addRepair" name="repairForm" method="POST">


    <div>
        <label for="date">Date</label>
    <@spring.bind "repairForm.date"/>
        <input type="datetime-local" name="date" id="date" placeholder="date">

    </div>
    <div>
    <@spring.bind "repairForm.repairStatus"/>
        <label for="repairStatus">Repairstatus</label>
        <input type="text" name="repairStatus" id="repairStatus" placeholder="repairStatus">


    </div>

    <div>

            <@spring.bind "repairForm.repairType"/>
            <label for="repairType">RepairType</label>
        <input type="repairType" name="repairType" id="repairType" placeholder="repairType">

    </div>

     <div>

                <@spring.bind "repairForm.price"/>
                <label for="price">Price</label>
            <input type="number" name="price" id="price" placeholder="price">

        </div>

        <div>

               <@spring.bind "repairForm.afm"/>
               <label for="afm">Owner AFM</label>
               <input type="afm" name="afm" id="afm" placeholder="afm">

            </div>

            <div>

                           <@spring.bind "repairForm.comments"/>
                           <label for="comments">Comments</label>
                           <input type="comments" name="comments" id="comments" placeholder="comments">

                        </div>



    <button type="submit">Save Repair</button>
</form>

