<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

<cfset people = createObject("com.mycode.people.Accounts").allClients() />
<cfset balances = createObject("com.mycode.accounting.accounting").allAccounts() />

<h1>My Co Account Balances By Accessing COM from the Coldbox site</h1>
	<p> Here we're using createObject and pointing to same cfcs that power the view in the existing code. This works because we've mapped "/com" to the "/com" in the existing code.   </p>
	<p>You can see we've also started to change the view a bit without touching the original code.</p>
	<p> You can see the view in /modules_app/myco/views/home/byData.cfm. Notice we're using createObject directly from the view. This works but it's the best "separation of concerns" and means that the data isn't re-usable. </p>
<table class="table">
	<thead>
	<tr>
		<th>#</th>
		<th>Id</th>
		<th>First</th>
		<th>Last</th>
		<th>Balance</th>
	</tr>
	</thead>
<tbody>
<cfset people.each(function(item, index){
	writeOutput("
        <tr>
          <td>#index#</td>
          <td>#item.id#</td>
          <td>#item.first#</td>
          <td>#item.last#</td>
          <td>#balances.keyExists(item.id) ? balances[item.id] : ''#</td>");
}) />
</tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
