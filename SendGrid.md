<div style="font-family: inherit; text-align: center"><span style="font-size: 28px; font-family: &quot;lucida sans unicode&quot;, &quot;lucida grande&quot;, sans-serif; color: #0b4697"><strong> Please refund the following player&nbsp;</strong></span></div>

 <p style="margin-top:5%"> </p>
<table style="width:90%; margin-left: auto;margin-right: auto;" class="table-wrap is-auto-width  is-striped ">
  <thead>
    <tr class="content-header">
      <th class="sort"></th>
      <th class="sort"></th>
    
    </tr>
  </thead>
  <tbody>
      

  <tr>
      <td class="date">Type of purchase</td>
      <td class="actions"><span class="badge"> Private Coaching</span>  
      </td>
    </tr>
     <tr>
      <td class="date">Event Id (refrence)</td>
      <td class="actions"><span class="badge"> {{event_id}}</span>  
      </td>
    </tr>
     <tr>
       <td class="date">Prictice date & time </td>
      <td class="actions"><span class="badge">{{scheduled_at}}</span> </td>
    </tr>
    
     <tr>
       <td class="date">Cancellation date & time </td>
      <td class="actions"><span class="badge">{{canceled_at}}</span> </td>

    </tr>



     <!-- Template -->

     <tr>
      <td class="date"></td>
      <td> 
               <table border="2">
        
               <td> Player emails</td>
               <td>Parent emails</td>
  
               <!--  {{#each player_email}} -->
                    <tr>
                        <td>{{player_email}}</td>
                        <td>{{parent_email}}</td>
                    </tr>
                     <!-- {{/each}}-->
                </table>
            </td>
    </tr>
  <br>

    <tr>
      <td class="date">Coach_email</td>
      <td class="actions"><span class="badge">{{coach_email}}</span></td>
    </tr>
    <tr>
       <td class="date">Coach_name</td>
      <td class="actions"><span class="badge">{{coach_name}}</span> </td>
    </tr>
    

  </tbody>
</table>

