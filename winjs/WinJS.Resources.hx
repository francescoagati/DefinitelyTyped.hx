extern class WinJS.ResourcesTopLevel {
	static function addEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	static function dispatchEvent(type:String, details:Dynamic):Void;
	static function getString(resourceId:String):{ var value : String; @:optional
	var empty : Bool; @:optional
	var lang : String; };
	static function processAll(?rootElement:HTMLElement):Promise<Void>;
	static function removeEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	static function oncontextchanged(eventInfo:CustomEvent):Void;
}
