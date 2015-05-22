extern class UIUtilityTopLevel {
	static function generateRandomElementId():String;
	static function cancelEvent(evt:Event):Void;
	static function clearChildNodes(elem:HTMLElement):Void;
	static function hideElement(elem:HTMLElement):Void;
	static function showElement(elem:HTMLElement):Void;
	static function insertBefore(elem:HTMLElement, targetElement:HTMLElement):Void;
	static function insertAfter(elem:HTMLElement, targetElement:HTMLElement):Void;
	static function removeNode(elem:HTMLElement):Void;
	static function calculateOffsetLeft(elem:HTMLElement):Float;
	static function calculateOffsetTop(elem:HTMLElement):Float;
	static function createHtmlInputText(text:String):HTMLInputElement;
	static function createHtmlInputCheck(isChecked:Bool):HTMLInputElement;
	static function setInnerText(elem:HTMLElement, value:String):Void;
	static function getInnerText(elem:HTMLElement):String;
	static function isTextNode(elem:HTMLElement):Bool;
	static function isSvgNode(elem:HTMLElement):Bool;
	static function isNodeOfType(elem:HTMLElement, tagNames:Array<String>):Bool;
	static function focusValidOnThisNode(elem:HTMLElement):Bool;
}
