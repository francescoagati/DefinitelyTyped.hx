extern class ServerInfo {
	var adminTokenServiceUrl : String;
	var currentVersion : Float;
	var server : String;
	var shortLivedTokenValidity : Float;
	var tokenServiceUrl : String;
	function toJson():Dynamic;
}
