typedef SwipeViewEvent = { };
typedef SwipeViewOptions = {
	@:optional
	var text : String;
	@:optional
	var numberOfPages : Float;
	@:optional
	var snapThreshold : Float;
	@:optional
	var hastyPageFlip : Bool;
	@:optional
	var loop : Bool;
};
extern class SwipeView {
	var masterPages : Array<HTMLElement>;
	var currentMasterPage : Float;
	var wrapper : HTMLElement;
	var slider : HTMLElement;
	@:overload(function(element:String, options:SwipeViewOptions):Void { })
	function new(element:String):Void;
	function destroy():Void;
	function refreshSize():Void;
	function updatePageCount(n:Float):Void;
	function goToPage(p:Float):Void;
	function next():Void;
	function prev():Void;
	function handleEvent(e:Event):Void;
	var onFlip : SwipeViewEvent;
	var onMoveOut : SwipeViewEvent;
	var onMoveIn : SwipeViewEvent;
	var onTouchStart : SwipeViewEvent;
	var wrapperHeight : Float;
}
