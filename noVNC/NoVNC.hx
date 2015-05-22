typedef NvPoint = {
	var x : Float;
	var y : Float;
};
typedef NvFeatures = {
	var xpath : Bool;
	var air : Bool;
	var query : Bool;
};
typedef NvEngine = {
	var presto : Bool;
	var trident : Bool;
	var webkit : Bool;
	var gecko : Bool;
};
typedef NvFlash = {
	var version : Float;
	var build : Float;
};
typedef NvBox = {
	var x : Float;
	var y : Float;
	var w : Float;
	var h : Float;
};
typedef NvCleanDirtyBox = {
	var cleanBox : NvBox;
	var dirtyBoxes : Array<NvBox>;
};
typedef NvUtilStatic = {
	function init_logging(?level:String):Void;
	function get_logging():String;
	function conf_default(cfg:Dynamic, api:Dynamic, defaults:Dynamic, v:Dynamic, mode:Dynamic, type:Dynamic, defval:Dynamic, desc:Dynamic):Void;
	function conf_defaults(cfg:Dynamic, api:Dynamic, defaults:Dynamic, arr:Dynamic):Void;
	function get_include_uri():String;
	function load_scripts(files:Array<String>):Void;
	function getPosition(obj:HTMLElement):NvPoint;
	function getEventPosition(e:Event, obj:HTMLElement, scale:Float):NvPoint;
	function addEvent(obj:HTMLElement, evType:String, fn:haxe.Constraints.Function):Void;
	function removeEvent(obj:HTMLElement, evType:String, fn:haxe.Constraints.Function):Void;
	function stopEvent(e:Event):Void;
	var Features : NvFeatures;
	var Engine : NvEngine;
	function Flash():NvFlash;
};
typedef NvRenderAction = {
	var type : String;
	var old_x : Float;
	var old_y : Float;
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
};
typedef NvRFBDefaults = {
	@:optional
	var target : HTMLCanvasElement;
	@:optional
	var focusContainer : HTMLElement;
	@:optional
	var encrypt : Bool;
	@:optional
	var true_color : Bool;
	@:optional
	var local_cursor : Bool;
	@:optional
	var shared : Bool;
	@:optional
	var view_only : Bool;
	@:optional
	var connectTimeout : Float;
	@:optional
	var disconnectTimeout : Float;
	@:optional
	var viewportDrag : Bool;
	@:optional
	var check_rate : Float;
	@:optional
	var fbu_req_rate : Float;
	@:optional
	var repeaterID : String;
	@:optional
	var onUpdateState : RFB -> Dynamic -> Dynamic -> String -> Void;
	@:optional
	var onPasswordRequired : RFB -> Void;
	@:optional
	var onClipboard : RFB -> String -> Void;
	@:optional
	var onBell : RFB -> Void;
	@:optional
	var onFBUReceive : RFB -> Dynamic -> Void;
	@:optional
	var onFBUComplete : RFB -> Dynamic -> Void;
	@:optional
	var onFBResize : RFB -> Float -> Float -> Void;
};
extern class RFB {
	function new(defaults:Dynamic):Void;
	function set_local_cursor(cursor:Dynamic):Void;
	function get_display():Display;
	function get_keyboard():Keyboard;
	function get_mouse():Mouse;
	function connect(host:String, port:Float, password:String, path:String):Void;
	function disconnect():Void;
	function sendPassword(passwd:String):Void;
	function sendCtrlAltDel():Void;
	function sendKey(code:Float, down:Bool):Void;
	function clipboardPasteFrom(text:String):Void;
	function testMode(override_send:Array<Dynamic> -> Bool, data_mode:String):Void;
}
typedef Display = {
	function get_context():CanvasRenderingContext2D;
	function set_scale(scale:Float):Void;
	function set_width(val:Float):Void;
	function get_width():Float;
	function set_height(val:Float):Void;
	function get_height():Float;
	function viewportChange(deltaX:Float, deltaY:Float, width:Float, height:Float):Void;
	function getCleanDirtyReset():NvCleanDirtyBox;
	function absX(x:Float):Float;
	function absY(y:Float):Float;
	function resize(width:Float, height:Float):Void;
	function clear():Void;
	function fillRect(x:Float, y:Float, width:Float, height:Float, color:Array<Float>):Dynamic;
	function copyImage(old_x:Float, old_y:Float, new_x:Float, new_y:Float, w:Float, h:Float):Dynamic;
	function startTile(x:Float, y:Float, width:Float, height:Float, color:Array<Float>):Dynamic;
	function subTile(x:Float, y:Float, w:Float, h:Float, color:Array<Float>):Dynamic;
	function finishTile():Void;
	function blitImage(x:Float, y:Float, width:Float, height:Float, arr:Array<Dynamic>, offset:Float):Void;
	function blitRgbImage(x:Float, y:Float, width:Float, height:Float, arr:Array<Dynamic>, offset:Float):Void;
	function blitStringImage(str:String, x:Float, y:Float):Void;
	function drawImage(img:HTMLImageElement, x:Float, y:Float):Void;
	function renderQ_push(action:NvRenderAction):Void;
};
typedef Keyboard = {
	function grab():Void;
	function ungrab():Void;
};
typedef Mouse = {
	function grab():Void;
	function ungrab():Void;
};
extern class NoVNCTopLevel {
	static var Util : NvUtilStatic;
}
