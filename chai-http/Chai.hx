typedef ChaiStatic = {
	var request : ChaiHttpRequest;
};
typedef ChaiHttpRequest = {
	function agent(server:Dynamic):ChaiHttp.Agent;
	function addPromises(promiseConstructor:Dynamic):Void;
};
typedef Assertion = {
	function status(code:Float):Assertion;
	@:overload(function(key:String, ?value:js.RegExp):Assertion { })
	function header(key:String, ?value:String):Assertion;
	var headers : Assertion;
	var json : Assertion;
	var text : Assertion;
	var html : Assertion;
	var redirect : Assertion;
	function redirectTo(location:String):Assertion;
	function param(key:String, ?value:String):Assertion;
	function cookie(key:String, ?value:String):Assertion;
};
typedef TypeComparison = {
	var ip : Assertion;
};
