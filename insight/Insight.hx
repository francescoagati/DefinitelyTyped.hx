typedef IOptions = {
	var trackingCode : String;
	@:optional
	var trackingProvider : String;
	var packageName : String;
	@:optional
	var packageVersion : String;
	@:optional
	var config : IConfigstore;
};
typedef IConfigstore = {
	var path : String;
	var all : Dynamic;
	function get(key:String):Dynamic;
	function set(key:String, val:Dynamic):Void;
	function del(key:String):Void;
};
extern class Insight {
	var trackingCode : String;
	var trackingProvider : String;
	var packageName : String;
	var packageVersion : String;
	var os : String;
	var nodeVersion : String;
	var appVersion : String;
	var config : IConfigstore;
	var optOut : Bool;
	var clientId : String;
	function new(options:IOptions):Void;
	function track(args:haxe.extern.Rest<String>):Void;
	function askPermission(?msg:String, ?cb:haxe.Constraints.Function):Void;
}
