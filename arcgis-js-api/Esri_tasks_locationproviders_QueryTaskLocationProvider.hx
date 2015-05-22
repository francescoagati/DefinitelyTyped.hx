extern class QueryTaskLocationProvider extends LocationProviderRemoteBase {
	var queryParameters : Dynamic;
	var queryTask : QueryTask;
	var unicode : Bool;
	var whereFields : Dynamic;
	function new(?options:esri.QueryTaskLocationProviderOptions):Void;
}
