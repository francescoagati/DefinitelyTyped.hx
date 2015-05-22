extern class Behavior extends Sys.Component {
	static function getBehaviorByName(element:Sys.UI.DomElement, name:String):Behavior;
	static function getBehaviorsByType(element:Sys.UI.DomElement, type:Sys.UI.Behavior):Array<Behavior>;
	static function getBehaviors(element:DomElement):Array<Behavior>;
	function dispose():Void;
	function get_element():Sys.UI.DomElement;
	function get_id():String;
	function set_id(value:String):Void;
	function set_name(value:String):Void;
	function get_name():String;
}
extern class Bounds {
	function new():Void;
	var height : Float;
	var width : Float;
	var x : Float;
	var y : Float;
}
extern class Control extends Sys.Component {
	function new(element:Sys.UI.DomElement):Void;
	function addCssClass(className:String):Void;
	function dispose():Void;
	function initialize():Void;
	function onBubbleEvent(source:Dynamic, args:Dynamic):Bool;
	function raiseBubbleEvent(source:Dynamic, args:Dynamic):Void;
	function removeCssClass(className:String):Void;
	function toggleCssClass(className:String):Void;
	function get_element():Sys.UI.DomElement;
	function get_id():String;
	function set_id(value:String):Void;
}
typedef DomElement = {
	function new():Void;
	function addCssClass(element:Sys.UI.DomElement, className:String):Void;
	function containsCssClass(element:Sys.UI.DomElement, className:String):Bool;
	function getBounds(element:Sys.UI.DomElement):Dynamic;
	@:overload(function(id:String, ?element:Sys.UI.DomElement):Sys.UI.DomElement { })
	@:overload(function(id:String, ?element:HTMLElement):HTMLElement { })
	@:overload(function(id:String, element:Dynamic):Dynamic { })
	function getElementById(id:String):Sys.UI.DomElement;
	@:overload(function(element:Dynamic):Dynamic { })
	function getLocation(element:Sys.UI.DomElement):Sys.UI.Point;
	@:overload(function(element:Dynamic):Sys.UI.VisibilityMode { })
	function getVisibilityMode(element:Sys.UI.DomElement):Sys.UI.VisibilityMode;
	function getVisible(element:Dynamic):Bool;
	function isDomElement(obj:Dynamic):Bool;
	@:overload(function(source:Dynamic, args:Dynamic):Void { })
	function raiseBubbleEvent(source:Sys.UI.DomElement, args:EventArgs):Void;
	@:overload(function(element:HTMLElement, className:String):Void { })
	@:overload(function(element:Dynamic, className:String):Void { })
	function removeCssClass(element:Sys.UI.DomElement, className:String):Void;
	@:overload(function(elementOrElementId:HTMLElement, ?containerElement:HTMLElement):HTMLElement { })
	@:overload(function(elementOrElementId:String):Dynamic { })
	function resolveElement(elementOrElementId:Sys.UI.DomElement, ?containerElement:Sys.UI.DomElement):Sys.UI.DomElement;
	@:overload(function(element:HTMLElement, x:Float, y:Float):Void { })
	@:overload(function(element:Dynamic, x:Float, y:Float):Void { })
	function setLocation(element:Sys.UI.DomElement, x:Float, y:Float):Void;
	function setVisibilityMode(element:Sys.UI.DomElement, value:Sys.UI.VisibilityMode):Void;
	@:overload(function(element:HTMLElement, value:Bool):Void { })
	@:overload(function(element:Dynamic, value:Bool):Void { })
	function setVisible(element:Sys.UI.DomElement, value:Bool):Void;
	@:overload(function(element:HTMLElement, className:String):Void { })
	@:overload(function(element:Dynamic, className:String):Void { })
	function toggleCssClass(element:Sys.UI.DomElement, className:String):Void;
};
extern class DomEvent {
	@:overload(function(domElement:Dynamic):Void { })
	function new(domElement:DomElement):Void;
	static function addHandler(element:Dynamic, eventName:String, handler:haxe.Constraints.Function, ?autoRemove:Bool):Void;
	static function addHandlers(element:Dynamic, events:Dynamic, ?handlerOwner:Dynamic, ?autoRemove:Bool):Void;
	static function clearHandlers(element:Dynamic):Void;
	static function removeHandler(element:Dynamic, eventName:String, handler:haxe.Constraints.Function):Void;
	function preventDefault():Void;
	function stopPropagation():Void;
	var altKey : Bool;
	var button : Sys.UI.MouseButton;
	var charCode : Float;
	var clientX : Float;
	var clientY : Float;
	var ctrlKey : Bool;
	var keyCode : Float;
	var offsetX : Float;
	var offsetY : Float;
	var screenX : Float;
	var screenY : Float;
	var shiftKey : Bool;
	var target : Dynamic;
	var type : String;
}
@:enum abstract Key(Int) {
	var backspace = 0;
	var tab = 1;
	var enter = 2;
	var esc = 3;
	var space = 4;
	var pageUp = 5;
	var pageDown = 6;
	var end = 7;
	var home = 8;
	var left = 9;
	var up = 10;
	var right = 11;
	var down = 12;
	var del = 13;
}
@:enum abstract MouseButton(Int) {

}
extern class Point {
	function new(x:Float, y:Float):Void;
	var x : Float;
	var y : Float;
}
@:enum abstract VisibilityMode(Int) {
	var hide = 0;
	var collapse = 1;
}
extern class UITopLevel {
	static var DomElement : Sys.UI.DomElement;
}
