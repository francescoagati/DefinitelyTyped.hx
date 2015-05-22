typedef ChatWorkInitOptions = {
	var token : String;
};
typedef ChatWork = {
	var apiVersion : String;
	var sdkVersion : String;
	var token : String;
	var Deferred : Dynamic;
	var when : Dynamic;
	function init(options:ChatWorkInitOptions):Void;
	@:overload(function(api:My/status, callback:Error -> superagent.Response -> Void):Void { })
	@:overload(function(api:My/tasks, callback:Error -> superagent.Response -> Void):Void { })
	@:overload(function(api:Contacts, callback:Error -> superagent.Response -> Void):Void { })
	@:overload(function(api:Rooms, callback:Error -> superagent.Response -> Void):Void { })
	@:overload(function(api:String):Dynamic { })
	@:overload(function(api:String, callback:Error -> superagent.Response -> Void):Void { })
	@:overload(function(api:String, args:Dynamic, callback:Error -> superagent.Response -> Void):Void { })
	function get(api:Me, callback:Error -> superagent.Response -> Void):Void;
	@:overload(function(api:String):Dynamic { })
	@:overload(function(api:String, callback:Error -> superagent.Response -> Void):Void { })
	@:overload(function(api:String, args:Dynamic, callback:Error -> superagent.Response -> Void):Void { })
	function post(api:Rooms, args:Dynamic, callback:Error -> superagent.Response -> Void):Void;
	@:overload(function(method:String, api:String, callback:Error -> superagent.Response -> Void):Void { })
	@:overload(function(method:String, api:String, args:Dynamic, callback:Error -> superagent.Response -> Void):Void { })
	function api(method:String, api:String):Dynamic;
	@:overload(function(api:String, callback:Error -> superagent.Response -> Void):Void { })
	@:overload(function(api:String, args:Dynamic, callback:Error -> superagent.Response -> Void):Void { })
	function put(api:String):Dynamic;
	@:overload(function(api:String, callback:Error -> superagent.Response -> Void):Void { })
	@:overload(function(api:String, args:Dynamic, callback:Error -> superagent.Response -> Void):Void { })
	function del(api:String):Dynamic;
};
