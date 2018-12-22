<#import "/spring.ftl" as spring />
<h2 class="hello-title">Register</h2>


<form action="/deleteRepair" name="repairForm" method="POST">
        <div>
            <@spring.bind "repairForm.id"/>
                <input type="hidden" value=${repairForm.id} name="id" id="id" placeholder=${repairForm.id}>

        </div>



    <div>
        <label for="date">Date</label>
       <@spring.bind "repairForm.date"/>
        <input type="datetime-local" value =${repairForm.date}  name="date" id="date" placeholder=${repairForm.date}>
    </div>

    <div>
     <@spring.bind "repairForm.repairStatus"/>
        <label for="repairStatus">Repairstatus</label>
        <input type="text" value= ${repairForm.repairStatus} name="repairStatus" id="repairStatus" placeholder=${repairForm.repairStatus}>
    </div>

    <div>

            <@spring.bind "repairForm.repairType"/>
            <label for="repairType">RepairType</label>
        <input type="repairType" value =${repairForm.repairType} name="repairType" id="repairType" placeholder=${repairForm.repairType}>

    </div>

     <div>

                <@spring.bind "repairForm.price"/>
                <label for="price">Price</label>
            <input type="number" value =${repairForm.price} name="price" id="price" placeholder=${repairForm.price}>

        </div>

        <div>

               <@spring.bind "repairForm.afm"/>
               <label for="afm">Owner AFM</label>
               <input type="afm" value =${repairForm.afm}   name="afm" id="afm" placeholder=${repairForm.afm} >

            </div>

            <div>

                           <@spring.bind "repairForm.comments"/>
                           <label for="comments">Comments</label>
                           <input type="comments" value =${repairForm.comments}  name="comments" id="comments" placeholder=${repairForm.comments}>

                        </div>



    <button type="submit">delete Repair</button>
</form>

