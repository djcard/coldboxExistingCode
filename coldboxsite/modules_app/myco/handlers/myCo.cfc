/**
	* Primary Handler for the MyCo company
	**/

component {
	property name="people" inject="people";

	property name="accounts" inject="accounts@myco";
	property name="accounting" inject="accounting@myco";
	/**
	 * Sets the PRC values of people and balances from the existing codebase
	 * @event - the Coldbox request
	 * @rc  - The form and URL scoped variables (unsagfe)
	 * @prc - Data created by Coldbox after the request came in. (safe)
	 **/
	public function accountBalances( event, rc, prc ){
		event.setPrivateValue( "people", createObject( "com.mycode.people.Accounts" ).allClients() );
		event.setPrivateValue( "balances", createObject( "com.mycode.accounting.accounting" ).allAccounts() );
		event.setView( "home/withHandler" );
	}

/**
* Sets the PRC values of people and balances from the existing codebase
* @event - the Coldbox request
* @rc  - The form and URL scoped variables (unsagfe)
* @prc - Data created by Coldbox after the request came in. (safe)
**/
	public function passingVariables( event, rc, prc ){
		event.setPrivateValue( "people", createObject( "com.mycode.people.Accounts" ).allClients() );
		event.setPrivateValue( "balances", createObject( "com.mycode.accounting.accounting" ).allAccounts() );
		event.setView( "home/passingVariables" );
	}

	public function wirebox1( event, rc, prc ){
		event.setPrivateValue( "people", people.allClients() );
		event.setPrivateValue( "balances", wirebox.getinstance("accounting").allAccounts() );
		event.setView( "home/passingVariables" );
	}

	public function wirebox2( event, rc, prc ){
		event.setPrivateValue( "people", accounts.allClients() );
		event.setPrivateValue( "balances", accounting.allAccounts() );
		event.setView( "home/passingVariables" );
	}

}
