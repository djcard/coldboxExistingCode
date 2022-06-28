<h1>Welcome to my MyCo! module page!</h1>
<p>This site is to show three ways to access current code from a coldbox site. Helpful is you're transtition from an existing
code base to a Coldbox site. </p>
	<p>
		The key to each of these is in the .cfconfig.json file where we create mappings from the coldbox site to the existing code.
		<ul>
			<li>/existingMyCo - the root of the existing site</li>
			<li>/com - the root of the cfc namespave. In this case we're assuming all of the cfcs are inside a folder structure of /com/mycode/..... This isn't stricty necessary
				since they can be in whatever folder structure you want but the key point is that the top level folder mapping (/com) matches the top level of the cfc folders.
			</li>
</ul>
	</p>
<p>
	<ul>
		<li>Example 1: <a href="/myco/accountsByInclude" target="_blank"> Using Include </a></li>
		<li>Example 2: <a href="/myco/accountsByData" target="_blank"> Accessing the data inplace with a new look </a></li>
	</ul>
</p>
