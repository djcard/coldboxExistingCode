<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>This is my existing Site</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>

<h1>My Co Account Balances By Accessing COM from the Coldbox site but via a handler</h1>
	<p> Here we're using a handler and createObject to  pointing to same cfcs that power the view in the existing code. This works because we've mapped "/com" to the "/com" in the existing code. </p>
	<p>You can see we've also added a few new styles in the view just to illustrate that we can still make those changes. </p>
	<p>Check out /modules_app/myco/handlers/myCo to see the handler created. You can see the view in /modules_app/myco/views/home/passingVariables.cfm. Notice if we click on the ID row, this passes in the id number as a URL variable which is used by the view to set the emphasis. Using the getValue() method returns either the value requested OR a defauolt value which you can pass in as well. I.e. event.getValue("howdy","") will return either URL.howdy or "". </p>
	<table class="table table-bordered table-hover table-striped">
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
			<cfset prc.people.map( function(item, index){
				var emphasis = event.getValue("activeReview","") == item.id ? "font-weight:1000;" : "";
				writeOutput('
					<tr style="#emphasis#">
					  <td>#index#</td>
					  <td><a href="/myco/accountsWithVariables?activeReview=#item.id#">#item.id#</a></td>
					  <td>#item.first#</td>
					  <td>#item.last#</td>
					  <td>#prc.balances.keyExists(item.id) ? prc.balances[item.id] : ""#</td>
					</tr>
				');
			}) />
		</tbody>
	</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>

