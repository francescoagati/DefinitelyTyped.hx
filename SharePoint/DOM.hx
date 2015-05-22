extern class DOMTopLevel {
	static var rightToLeft : Bool;
	static function cancelDefault(evt:Event):Void;
	static function AbsLeft(el:HTMLElement):Float;
	static function AbsTop(el:HTMLElement):Float;
	static function CancelEvent(evt:Event):Void;
	static function GetElementsByName(nae:String):NodeList;
	static function GetEventCoords(evt:Event):{ var x : Float; var y : Float; };
	static function GetEventSrcElement(evt:Event):HTMLElement;
	static function GetInnerText(el:HTMLElement):String;
	static function PreventDefaultNavigation(evt:Event):Void;
	static function SetEvent(eventName:String, eventFunc:haxe.Constraints.Function, el:HTMLElement):Dynamic;
}
