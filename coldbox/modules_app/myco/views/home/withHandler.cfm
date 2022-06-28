<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>This is my existing Site</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>

<h1>My Co Account Balances By Accessing COM from the Coldbox site buty via a handler</h1>
	<p> Here we're using handler and createObject and pointing to same cfcs that power the view in the existing code. This works because we've mapped "/com" to the "/com" in the existing code.   </p>
	<p>You can see we've also started to change the view a bit without touching the original code.</p>
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
<cfset prc.people.map(function(item, index){
	writeOutput("
        <tr>
          <td>#index#</td>
          <td>#item.id#</td>
          <td>#item.first#</td>
          <td>#item.last#</td>
          <td>#prc.balances.keyExists(item.id) ? prc.balances[item.id] : ''#</td>");
}) />
</tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>

