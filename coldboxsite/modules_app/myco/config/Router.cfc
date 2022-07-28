component {

	function configure(){
		route( "/", "home.index" );
		route( "/accountsByInclude", "home.byInclude" );
		route( "/accountsByData", "home.ByData" );
		route( "/accountsWithHandler", "myCo.accountBalances" );
		route( "/accountsWithVariables", "myCo.passingVariables" );
		route( "/wirebox1", "myCo.wirebox1" );
		route( "/wirebox2", "myCo.wirebox2" );
	}

}
