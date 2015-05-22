typedef SignalWrapper = {
	var Signal : Signal;
};
typedef SignalBinding = {
	var active : Bool;
	var context : Dynamic;
	var params : Dynamic;
	function detach():haxe.Constraints.Function;
	function execute(?paramsArr:Array<Dynamic>):Dynamic;
	function getListener():haxe.Constraints.Function;
	function getSignal():Signal;
	function isBound():Bool;
	function isOnce():Bool;
};
typedef Signal = {
	function new():Signal;
	var active : Bool;
	var memorize : Bool;
	var VERSION : String;
	function add(listener:haxe.Constraints.Function, ?listenerContext:Dynamic, ?priority:Number):SignalBinding;
	function addOnce(listener:haxe.Constraints.Function, ?listenerContext:Dynamic, ?priority:Number):SignalBinding;
	function dispatch(params:haxe.extern.Rest<Dynamic>):Void;
	function dispose():Void;
	function forget():Void;
	function getNumListeners():Float;
	function halt():Void;
	function has(listener:haxe.Constraints.Function, ?context:Dynamic):Bool;
	function remove(listener:haxe.Constraints.Function, ?context:Dynamic):haxe.Constraints.Function;
	function removeAll():Void;
};
