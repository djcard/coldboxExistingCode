/**
	* Primary Handler for the MyCo company
	**/

component {

	/**
	 * Sets the PRC values of people and balances from the existing codebase
	 * @event - the Coldbox request
	 * @rc  - The form and URL scoped variables (unsagfe)
	 * @prc - Data created by Coldbox after the request came in. (safe)
	 **/
	public function accountBalances( event, rc, prc ){
		event.setPrivateValue( "people", createObject( "com.mycode.people.Accounts" ).allClients() );
		event.setPrivateValue( "balances", createObject( "com.mycode.accounting.accouting" ).allAccounts() );
		event.setView( "home/withHandler" );
	}

	public function passingVariables( event, rc, prc ){
		event.setPrivateValue( "people", createObject( "com.mycode.people.Accounts" ).allClients() );
		event.setPrivateValue( "balances", createObject( "com.mycode.accounting.accouting" ).allAccounts() );
		event.setView( "home/passingVariables" );
	}

}
