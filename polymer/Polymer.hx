typedef PolymerElement = {
	@:optional
	var publish : Dynamic;
	@:optional
	var computed : Dynamic;
	@:optional
	var observe : Dynamic;
	@:optional
	function created():Void;
	@:optional
	function ready():Void;
	@:optional
	function attached():Void;
	@:optional
	function domReady():Void;
	@:optional
	function detached():Void;
	@:optional
	function attributeChanged(attrName:String, oldVal:Dynamic, newVal:Dynamic):Void;
	function resizableAttachedHandler():Void;
	function resizableDetachedHandler():Void;
	function resizerAttachedHandler():Void;
	function resizerDetachedHandler():Void;
	function notifyResize():Void;
};
typedef Polymer = {
	function importElements(node:Node, callback:haxe.Constraints.Function):Void;
	function import(url:String, ?callback:Void -> Void):Void;
	function mixin(target:Dynamic, mixins:haxe.extern.Rest<Dynamic>):Dynamic;
	function waitingFor():Array<String>;
	function forceReady(timeout:Float):Void;
};
extern class PolymerTopLevel {
	static var Polymer : Polymer;
}
