extern class WinJS.ApplicationTopLevel {
	static var local : IOHelper;
	static var roaming : IOHelper;
	static var temp : IOHelper;
	static var sessionState : Dynamic;
	static function setPromise(promise:Promise<Dynamic>):Void;
	static function addEventListener(type:String, listener:haxe.Constraints.Function, ?capture:Bool):Void;
	static function checkpoint():Void;
	static function queueEvent(eventRecord:Dynamic):Void;
	static function removeEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Dynamic):Void;
	static function start():Void;
	static function stop():Void;
	static function onactivated(eventInfo:CustomEvent):Void;
	static function oncheckpoint(eventInfo:CustomEvent):Void;
	static function onerror(eventInfo:CustomEvent):Void;
	static function onloaded(eventInfo:CustomEvent):Void;
	static function onready(eventInfo:CustomEvent):Void;
	static function onsettings(eventInfo:CustomEvent):Void;
	static function onunload(eventInfo:CustomEvent):Void;
}
