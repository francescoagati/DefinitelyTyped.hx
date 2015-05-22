extern class WinJS.NavigationTopLevel {
	static var canGoBack : Bool;
	static var canGoForward : Bool;
	static var history : Dynamic;
	static var location : String;
	static var state : Dynamic;
	static function addEventListener(eventType:String, listener:haxe.Constraints.Function, ?capture:Bool):Void;
	static function back(?distance:Float):Promise<Bool>;
	static function forward(?distance:Float):Promise<Bool>;
	static function navigate(location:Dynamic, ?initialState:Dynamic):Promise<Bool>;
	static function removeEventListener(eventType:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	static function onbeforenavigate(eventInfo:CustomEvent):Void;
	static function onnavigated(eventInfo:CustomEvent):Void;
	static function onnavigating(eventInfo:CustomEvent):Void;
}
