extern class IE8SupportTopLevel {
	static function arrayIndexOf<T>(array:Array<T>, item:T, ?startIdx:Float):Float;
	static function attachDOMContentLoaded(handler:haxe.Constraints.Function):Void;
	static function getComputedStyle(domObj:HTMLElement, camelStyleName:String, dashStyleName:String):String;
	static function stopPropagation(evt:Event):Void;
}
