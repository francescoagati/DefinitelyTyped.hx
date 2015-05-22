extern class __MethodOptions {
	function new():Void;
	var method : String;
}
extern class __Options {
	function new():Void;
	var data : String;
	var handleAs : String;
	var headers : Dynamic;
	var method : String;
	var password : String;
	var preventCache : Bool;
	var query : String;
	var timeout : Float;
	var user : String;
}
extern class __BaseOptions {
	function new():Void;
	var data : String;
	var handleAs : String;
	var headers : Dynamic;
	var password : String;
	var preventCache : Bool;
	var query : String;
	var timeout : Float;
	var user : String;
}
typedef Watch = { };
typedef Watch = {
	var ioCheck : haxe.Constraints.Function;
	var resHandle : haxe.Constraints.Function;
	var validCheck : haxe.Constraints.Function;
	function cancelAll():Void;
};
