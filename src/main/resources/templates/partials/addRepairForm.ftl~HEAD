<#import "/spring.ftl" as spring />



<form  action="/admin/addRepair" name="repairForm" method="POST" class="form-horizontal">


    <div class="form-group">

        <label class="col-sm-1 control-label" for="date">Date</label>
        <div class="col-sm-11">
       <@spring.bind "repairForm.date"/>

            <input class="form-control" type="datetime-local"  name="date" id="date" placeholder="Date">
        </div>
    </div>

    <div class="form-group">
             <@spring.bind "repairForm.repairStatus"/>
        <label class="col-sm-1 control-label"for="repairStatus">Repair Status</label>
        <div class="col-sm-11">
            <input class="form-control" type="text"  name="repairStatus" id="repairStatus" placeholder="Status">
        </div>
    </div>

    <div class="form-group">

            <@spring.bind "repairForm.repairType"/>
        <label class="col-sm-1 control-label" for="repairType">Repair Type</label>
        <div class="col-sm-11">
            <input class="form-control" type="text"  name="repairType" id="repairType" placeholder="Type">

        </div>
    </div>

    <div class="form-group">

                <@spring.bind "repairForm.price"/>
        <label class="col-sm-1 control-label" for="price">Price</label>
        <div class="col-sm-11">
            <input class="form-control" type="number"  name="price" id="price" placeholder="Price">

        </div>
    </div>

    <div class="form-group">

               <@spring.bind "repairForm.afm"/>
        <label class="col-sm-1 control-label" for="afm">Owner AFM</label>
        <div class="col-sm-11">
            <input class="form-control" type="text"    name="afm" id="afm" placeholder="AFM" >

        </div>
    </div>

    <div class="form-group">

                           <@spring.bind "repairForm.comments"/>
        <label class="col-sm-1 control-label"="comments">Comments</label>
        <div class="col-sm-11">
            <input class="form-control" type="text"  name="comments" id="comments" placeholder="Comments">

        </div>
    </div>

    <div class="form-group">

        <div class="col-sm-offset-1 col-sm-11">
            <button class="btn btn-primary" type="submit" >Add Repair Service</button>
        </div>
    </div>
</form>
