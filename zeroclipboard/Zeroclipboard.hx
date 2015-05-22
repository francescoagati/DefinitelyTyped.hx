extern class ZeroClipboard {
	function new(?elements:Dynamic, ?options:ZeroClipboardOptions):Void;
	function activate(element:Dynamic):Void;
	function setText(newText:String):Void;
	function title(newTitle:String):Void;
	function setSize(width:Float, height:Float):Void;
	var version : String;
	var moviePath : String;
	var trustedDomains : Dynamic;
	var text : String;
	var hoverClass : String;
	var activeClass : String;
	function deactivate():Void;
	var ready : Bool;
	function reposition():Void;
	function on(eventName:String, func:haxe.Constraints.Function):Void;
	function off(eventName:String, func:haxe.Constraints.Function):Void;
	function clip(elements:Dynamic):Void;
	function unclip(elements:Dynamic):Void;
	static function config(options:ZeroClipboardOptions):Void;
	static function destroy():Void;
	static function emit(eventName:String, args:Dynamic):Void;
}
typedef ZeroClipboardOptions = {
	@:optional
	var autoActivate : Bool;
	@:optional
	var cacheBust : Bool;
	@:optional
	var debug : Bool;
	@:optional
	var forceHandCursor : Bool;
	@:optional
	var moviePath : String;
	@:optional
	var swfPath : String;
	@:optional
	var trustedDomains : Dynamic;
	@:optional
	var title : String;
	@:optional
	var zIndex : Float;
	@:optional
	var activeClass : String;
	@:optional
	var hoverClass : String;
	@:optional
	var allowScriptAccess : String;
	@:optional
	var trustedOrigins : Dynamic;
	@:optional
	var useNoCache : Bool;
};
