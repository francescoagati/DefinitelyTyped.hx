extern class BasicAnimator {
	static function FadeIn(element:HTMLElement, ?finishFunc:Dynamic -> Void, ?data:Dynamic):Void;
	static function FadeOut(element:HTMLElement, ?finishFunc:Dynamic -> Void, ?data:Dynamic):Void;
	static function Move(element:HTMLElement, posX:Float, posY:Float, ?finishFunc:Dynamic -> Void, ?data:Dynamic):Void;
	static function StrikeThrough(element:HTMLElement, strikeThroughWidth:Float, ?finishFunc:Dynamic -> Void, ?data:Dynamic):Void;
	static function Resize(element:HTMLElement, newHeight:Float, newWidth:Float, ?finishFunc:Dynamic -> Void, ?data:Dynamic):Void;
	static function CommonResize(element:HTMLElement, newHeight:Float, newWidth:Float, finishFunc:Dynamic -> Void, data:Dynamic, animationId:SPAnimation.ID):Void;
	static function QuickResize(element:HTMLElement, newHeight:Float, newWidth:Float, ?finishFunc:Dynamic -> Void, ?data:Dynamic):Void;
	static function ResizeContainerAndFillContent(element:HTMLElement, newHeight:Float, newWidth:Float, finishFunc:Void -> Void, fAddToEnd:Bool):Void;
	static function GetWindowScrollPosition():{ var x : Float; var y : Float; };
	static function GetLeftOffset(element:HTMLElement):Float;
	static function GetTopOffset(element:HTMLElement):Float;
	static function GetRightOffset(element:HTMLElement):Float;
	static function PositionElement(element:HTMLElement, topValue:Float, leftValue:Float, heightValue:Float, widthValue:Float):Void;
	static function PositionAbsolute(element:HTMLElement):Void;
	static function PositionRelative(element:HTMLElement):Void;
	static function PositionRelativeExact(element:HTMLElement, topValue:Float, leftValue:Float, heightValue:Float, widthValue:Float):Void;
	static function PositionAbsoluteExact(element:HTMLElement, topValue:Float, leftValue:Float, heightValue:Float, widthValue:Float):Void;
	static function IsPositioned(element:HTMLElement):Bool;
}
typedef IEnumerator<T> = {
	function get_current():T;
	function moveNext():Bool;
	function reset():Void;
};
typedef IEnumerable<T> = {
	function getEnumerator():IEnumerator<T>;
};
