component {

	function configure(){
		route( "/", "home.index" );
		route( "/accountsByInclude", "home.byInclude" );
		route( "/accountsByData", "home.ByData" );
		route( "/accountsWithHandler", "myCo.accountBalances" );
	}

}
