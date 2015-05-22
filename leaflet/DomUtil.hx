extern class DomUtilTopLevel {
	static function get(id:String):HTMLElement;
	static function getStyle(el:HTMLElement, style:String):String;
	static function getViewportOffset(el:HTMLElement):Point;
	static function create(tagName:String, className:String, ?container:HTMLElement):HTMLElement;
	static function disableTextSelection():Void;
	static function enableTextSelection():Void;
	static function hasClass(el:HTMLElement, name:String):Bool;
	static function addClass(el:HTMLElement, name:String):Void;
	static function removeClass(el:HTMLElement, name:String):Void;
	static function setOpacity(el:HTMLElement, value:Float):Void;
	static function testProp(props:Array<String>):Dynamic;
	static function getTranslateString(point:Point):String;
	static function getScaleString(scale:Float, origin:Point):String;
	static function setPosition(el:HTMLElement, point:Point, ?disable3D:Bool):Void;
	static function getPosition(el:HTMLElement):Point;
	static var TRANSITION : String;
	static var TRANSFORM : String;
}
