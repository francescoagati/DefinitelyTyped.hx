typedef EventModule = {
	function addListener(event:String, listener:haxe.Constraints.Function):EventModule;
	function on(event:String, listener:haxe.Constraints.Function):EventModule;
	function onAny(listener:haxe.Constraints.Function):EventModule;
	function offAny(listener:haxe.Constraints.Function):EventModule;
	function once(event:String, listener:haxe.Constraints.Function):EventModule;
	function many(event:String, timesToListen:Float, listener:haxe.Constraints.Function):EventModule;
	function removeListener(event:String, listener:haxe.Constraints.Function):EventModule;
	function off(event:String, listener:haxe.Constraints.Function):EventModule;
	function removeAllListeners(event:String):EventModule;
	function setMaxListener(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function listenersAny():Array<haxe.Constraints.Function>;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
};
