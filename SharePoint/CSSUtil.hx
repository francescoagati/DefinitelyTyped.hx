extern class CSSUtilTopLevel {
	static function HasClass(elem:HTMLElement, className:String):Bool;
	static function AddClass(elem:HTMLElement, className:String):Void;
	static function RemoveClass(elem:HTMLElement, className:String):Void;
	static function pxToFloat(pxString:String):Float;
	static function pxToNum(px:String):Float;
	static function numToPx(n:Float):String;
	static function getCurrentEltStyleByNames(elem:HTMLElement, styleNames:Array<String>):String;
	static function getCurrentStyle(elem:HTMLElement, cssStyle:String):String;
	static function getCurrentStyleCorrect(element:HTMLElement, camelStyleName:String, dashStyleName:String):String;
	static function getOpacity(element:HTMLElement):Float;
	static function setOpacity(element:HTMLElement, value:Float):Void;
}
