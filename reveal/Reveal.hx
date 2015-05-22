typedef RevealStatic = {
	var initialize : RevealOptions -> Void;
	var configure : RevealOptions -> Void;
	function slide(h:Float, v:Float, ?f:Float, ?o:Float):Void;
	function left():Void;
	function right():Void;
	function up():Void;
	function down():Void;
	function prev():Void;
	function next():Void;
	function prevFragment():Bool;
	function nextFragment():Bool;
	function toggleOverview(?override:Bool):Void;
	function getPreviousSlide():Element;
	function getCurrentSlide():Element;
	function getIndices(?slide:Element):{ var h : Float; var v : Float; };
	function addEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function removeEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function layout():Void;
	function togglePause():Void;
	function isOverview():Bool;
	function isPaused():Bool;
	function addEventListeners():Void;
	function removeEventListeners():Void;
	function getSlide(x:Float, ?y:Float):Element;
	function getScale():Float;
	function getConfig():RevealOptions;
	function getQueryHash():Dynamic;
	function isFirstSlide():Bool;
	function isLastSlide():Bool;
};
typedef RevealOptions = {
	@:optional
	var controls : Bool;
	@:optional
	var progress : Bool;
	@:optional
	var history : Bool;
	@:optional
	var keyboard : Bool;
	@:optional
	var overview : Bool;
	@:optional
	var center : Bool;
	@:optional
	var touch : Bool;
	@:optional
	var loop : Bool;
	@:optional
	var rtl : Bool;
	@:optional
	var autoSlide : Float;
	@:optional
	var mouseWheel : Bool;
	@:optional
	var rollingLinks : Bool;
	@:optional
	var theme : String;
	@:optional
	var transition : String;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var margin : Float;
	@:optional
	var minScale : Float;
	@:optional
	var maxScale : Float;
	@:optional
	var dependencies : Array<RevealDependency>;
};
typedef RevealDependency = {
	var src : String;
	var condition : Void -> Bool;
	@:optional
	var async : Bool;
};
extern class RevealTopLevel {
	static var Reveal : RevealStatic;
}
