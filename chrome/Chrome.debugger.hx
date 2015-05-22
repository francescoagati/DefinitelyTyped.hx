typedef Debuggee = {
	var tabId : Float;
};
typedef DebuggerDetachedEvent = {
	>chrome.events.Event,
	function addListener(callback:Debuggee -> Void):Void;
};
typedef DebuggerEventEvent = {
	>chrome.events.Event,
	function addListener(callback:Debuggee -> String -> ?Dynamic -> Void):Void;
};
extern class Chrome.debuggerTopLevel {
	static function attach(target:Debuggee, requiredVersion:String, ?callback:haxe.Constraints.Function):Void;
	static function detach(target:Debuggee, ?callback:haxe.Constraints.Function):Void;
	static function sendCommand(target:Debuggee, method:String, ?commandParams:Dynamic, ?callback:Dynamic -> Void):Void;
	static var onDetach : DebuggerDetachedEvent;
	static var onEvent : DebuggerEventEvent;
}
