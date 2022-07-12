<p>This is strictly an include. Any content changes made on the original site will show up here but we've created the routes we need to get started. We've mapped the folder /existingMyCo to point to the /mycode folder in the cloned repo (which is outside of the webroot). </p>
<p> You can see the view in /modules_app/myco/views/home/byInclude.cfm. </p>

<cfinclude template="/existingMyCo/index.cfm" />
