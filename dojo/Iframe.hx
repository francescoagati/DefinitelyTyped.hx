extern class __MethodOptions {
	function new():Void;
	var method : String;
}
extern class __BaseOptions {
	function new():Void;
	var data : String;
	var form : HTMLElement;
	var handleAs : String;
	var preventCache : Bool;
	var query : String;
	var timeout : Float;
}
extern class __Options {
	function new():Void;
	var data : String;
	var form : HTMLElement;
	var handleAs : String;
	var method : String;
	var preventCache : Bool;
	var query : String;
	var timeout : Float;
}
typedef Notify = { };
typedef Notify = {
	function emit(type:Dynamic, event:Dynamic, cancel:Dynamic):Void;
};
