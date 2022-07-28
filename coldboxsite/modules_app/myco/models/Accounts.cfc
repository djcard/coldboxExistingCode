/***
 * Functions relating to the accounts for our organziation
 *
 **/

component {

	/**
	 * Returns an array of customers (as if it was a query being returned as an array of structs )
	 *
	 **/
	public array function allClients(){
		return [
			{ "id" : 1, "first" : "Jane", "last" : "Smith" },
			{ "id" : 2, "first" : "Tim", "last" : "Jones" },
			{ "id" : 3, "first" : "Peter", "last" : "Johnson" },
			{ "id" : 4, "first" : "Sven", "last" : "Johannson" },
			{ "id" : 5, "first" : "Susan", "last" : "Amundsen" },
			{ "id" : 10, "first" : "Un", "last" : "Known" }
		];
	}

}
