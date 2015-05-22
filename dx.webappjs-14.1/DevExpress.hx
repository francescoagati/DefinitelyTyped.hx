typedef Endpoint = {
	@:optional
	var local : String;
	var production : String;
};
extern class EndpointSelector {
	function new(config:{ }):Void;
	function urlFor(key:String):String;
}
typedef ActionOptions = {
	@:optional
	var context : Dynamic;
	@:optional
	var component : Dynamic;
	@:optional
	function beforeExecute(e:ActionExecuteArgs):Void;
	@:optional
	function afterExecute(e:ActionExecuteArgs):Void;
};
typedef ActionExecuteArgs = {
	var action : Dynamic;
	var args : Array<Dynamic>;
	var context : Dynamic;
	var component : Dynamic;
	var cancel : Bool;
	var handled : Bool;
};
extern class Action {
	function new(?action:Dynamic, ?config:ActionOptions):Void;
	function execute():Dynamic;
}
typedef IDevice = {
	@:optional
	var deviceType : String;
	@:optional
	var platform : String;
	@:optional
	var version : Array<Float>;
	@:optional
	var phone : Bool;
	@:optional
	var tablet : Bool;
	@:optional
	var android : Bool;
	@:optional
	var ios : Bool;
	@:optional
	var win8 : Bool;
	@:optional
	var tizen : Bool;
	@:optional
	var generic : Bool;
};
extern class DevExpressTopLevel {
	static function abstract():Void;
	static var rtlEnabled : Bool;
	static var hardwareBackButton : JQueryCallback;
}
