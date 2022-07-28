<h1>Welcome to my MyCo! module page!</h1>
<p>This site is to show three ways to access current code from a coldbox site. Helpful when you're transtitioning from an existing
code base to a Coldbox site. </p>
<p>There are 2 key actions here to set up the sites
	<ol>
		<li>Duplicate the .env.example file in the "coldbox" folder and call the copy ".env". Set the MYCODE_ROOT value in the .env file to the absolute path to the "mycode" folder which came with this repo.  </li>
		<li>Use Commandbox to navigate to the "coldbox" folder and type `install`. This will make sure that all of the dependencies are installed.</li>
	</ol>
</p>
<p>What makes all of this work is the mappings created in the .cfconfig.json file. When the cfconfig module is installed in CommandBox, whenever a server is started, it looks for a .cfconfig.json file and copies those values into the server starting up. This include mappings, mail settings, datasources, password values and so on. The mappings are:
	<ul>
		<li>/existingMyCo - the root of the existing site</li>
		<li>/com - the root of the cfc namespave. In this case we're assuming all of the cfcs are inside a folder structure of /com/mycode/..... This isn't strictly necessary
			since they can be in whatever folder structure you want but the key point is that the top level folder mapping (/com) matches the top level of the cfc folders.
		</li>
	</ul>
</p>
<p>
	<h2>Post 2 links</h2>
	<ul>
		<li>Example 1: <a href="/mycotest" target="_blank"> First view </a></li>
		<li>Example 2: <a href="/mycotest2" target="_blank"> First route </a></li>
		<li>Example 3: <a href="/mycoHandler" target="_blank"> First Handler </a></li>
	</ul>

		<h2>Post 3 links</h2>
	<ul>
		<li>Example 1: <a href="/myco/accountsByInclude" target="_blank"> Using Include </a></li>
	</ul>
	<h2>Post 4 Links</h2>
	<ul>
		<li>Example 2: <a href="/myco/accountsByData" target="_blank"> Accessing the data inplace with a new look </a></li>
		<li>Example 3: <a href="/myco/accountsWithHandler" target="_blank"> Using a handler to do some pre-processing before the view is shown. We are  </a></li>
		<li>Example 4: <a href="/myco/accountsWithVariables" target="_blank"> Passing variables in from the view  </a></li>
		<li>Example 5: <a href="/myco/wirebox1" target="_blank"> Mapping our external code in WireBox</a></li>
		<li>Example 6: <a href="/myco/wirebox2" target="_blank"> Moving our external code into our ColdBox Module.   </a></li>
	</ul>

</p>
<div style="height: 200px">&nbsp;</div>
