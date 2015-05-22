extern class InProcess {
	function addListener(event:String, listener:haxe.Constraints.Function):InProcess;
	function on(event:String, listener:haxe.Constraints.Function):InProcess;
	function once(event:String, listener:haxe.Constraints.Function):InProcess;
	function removeListener(event:String, listener:haxe.Constraints.Function):InProcess;
	function removeAllListeners(?event:String):InProcess;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
	function send(channel:String, args:haxe.extern.Rest<Dynamic>):Void;
	function sendSync(channel:String, args:haxe.extern.Rest<Dynamic>):String;
	function sendToHost(channel:String, args:haxe.extern.Rest<Dynamic>):Void;
}
