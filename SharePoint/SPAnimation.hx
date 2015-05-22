@:enum abstract Attribute(Int) {
	var PositionX = 0;
	var PositionY = 1;
	var Height = 2;
	var Width = 3;
	var Opacity = 4;
}
@:enum abstract ID(Int) {
	var Basic_Show = 0;
	var Basic_SlowShow = 1;
	var Basic_Fade = 2;
	var Basic_Move = 3;
	var Basic_Size = 4;
	var Content_SlideInFadeInRight = 5;
	var Content_SlideInFadeInRightInc = 6;
	var Content_SlideOutFadeOutRight = 7;
	var Content_SlideInFadeInLeft = 8;
	var Content_SlideInFadeInLeftInc = 9;
	var SmallObject_SlideInFadeInTop = 10;
	var SmallObject_SlideInFadeInLeft = 11;
	var Test_Instant = 12;
	var Test_Hold = 13;
	var Basic_Opacity = 14;
	var Basic_QuickShow = 15;
	var Basic_QuickFade = 16;
	var Content_SlideInFadeInGeneric = 17;
	var Basic_StrikeThrough = 18;
	var SmallObject_SlideInFadeInBottom = 19;
	var SmallObject_SlideOutFadeOutBottom = 20;
	var Basic_QuickSize = 21;
}
extern class Settings {
	static function DisableAnimation():Void;
	static function DisableSessionAnimation():Void;
	static function IsAnimationEnabled():Bool;
}
extern class State {
	function SetAttribute(attributeId:Attribute, value:Float):Dynamic;
	function GetAttribute(attributeId:Attribute):Float;
	function GetDataIndex(attributeId:Attribute):Float;
}
extern class Object {
	@:overload(function(animationID:ID, delay:Float, element:Array<HTMLElement>, finalState:State, ?finishFunc:Dynamic -> Void, ?data:Dynamic):Void { })
	function new(animationID:ID, delay:Float, element:HTMLElement, finalState:State, ?finishFunc:Dynamic -> Void, ?data:Dynamic):Void;
	function RunAnimation():Void;
}
