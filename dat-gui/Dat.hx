extern class GUI {
	function new(?option:GUIParams):Void;
	var __controllers : Array<GUIController>;
	var __folders : Array<GUI>;
	var domElement : HTMLElement;
	@:overload(function(target:Dynamic, propName:String, min:Float, max:Float):GUIController { })
	@:overload(function(target:Dynamic, propName:String, status:Bool):GUIController { })
	@:overload(function(target:Dynamic, propName:String, items:Array<String>):GUIController { })
	@:overload(function(target:Dynamic, propName:String, items:Array<Float>):GUIController { })
	@:overload(function(target:Dynamic, propName:String, items:Dynamic):GUIController { })
	function add(target:Dynamic, propName:String):GUIController;
	@:overload(function(target:Dynamic, propName:String, color:String):GUIController { })
	@:overload(function(target:Dynamic, propName:String, rgba:Array<Float>):GUIController { })
	@:overload(function(target:Dynamic, propName:String, hsv:{ var h : Float; var s : Float; var v : Float; }):GUIController { })
	function addColor(target:Dynamic, propName:String):GUIController;
	function addFolder(propName:String):GUI;
	function close():Void;
	function open():Void;
	function remember(target:Dynamic):Void;
}
typedef GUIParams = {
	@:optional
	var autoPlace : Bool;
	@:optional
	var closed : Bool;
	@:optional
	var load : Dynamic;
	@:optional
	var name : String;
	@:optional
	var preset : String;
	@:optional
	var width : Float;
};
extern class GUIController {
	function destroy():Void;
	function fire():GUIController;
	function getValue():Dynamic;
	function isModified():Bool;
	function listen():GUIController;
	function min(n:Float):GUIController;
	function remove(target:GUIController):Void;
	function setValue(value:Dynamic):GUIController;
	function step(n:Float):GUIController;
	function updateDisplay():Void;
	var onChange : ?Dynamic -> Void;
	var onFinishChange : ?Dynamic -> Void;
}
