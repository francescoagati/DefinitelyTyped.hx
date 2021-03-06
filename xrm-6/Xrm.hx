typedef ClientContext = {
	function getClient():String;
	function getClientState():String;
};
typedef Context = {
	var client : ClientContext;
	function getClientUrl():String;
	function getCurrentTheme():String;
	function getOrgLcid():Float;
	function getOrgUniqueName():String;
	function getQueryStringParameters():{ };
	function getUserId():String;
	function getUserLcid():Float;
	function getUserName():String;
	function getUserRoles():Array<String>;
	function prependOrgName(sPath:String):String;
};
