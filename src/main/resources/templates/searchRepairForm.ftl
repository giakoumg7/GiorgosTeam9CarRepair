<#import "/spring.ftl" as spring />



          <form action="/searchRepairResult" class="navbar-form navbar-right" id="searchForm" name="searchForm"
                      style="margin-left:37%; float: none!important;">

                    <div class="form-group">

                        <input class="form-control" type="datetime-local" name="fromDate" id="fromDate" placeholder="datetime">
                        <input class="form-control" type="datetime-local" name="toDate" id="toDate" placeholder="datetime">
                        <input class="form-control" type="text" name="Afm" id="Afm" placeholder="OnwerAfm">
                        <input class="form-control" type="text" name="Plate" id="Plate" placeholder="Plate">
                        </div>
                    <button class="btn btn-default" type="submit">Search</button>
                </form>

            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                        <#include "repairs.ftl">
                    </div>


</form>

