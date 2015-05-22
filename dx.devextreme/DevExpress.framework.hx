extern class ViewCache {
	var viewRemoved : JQueryCallback;
	function clear():Void;
	function getView(key:String):Dynamic;
	function hasView(key:String):Bool;
	function removeView(key:String):Dynamic;
	function setView(key:String, viewInfo:Dynamic):Void;
}
typedef DxCommandOptions = {
	>DOMComponentOptions,
	@:optional
	var action : Dynamic;
	@:optional
	var onExecute : Dynamic;
	@:optional
	var disabled : Bool;
	@:optional
	var icon : String;
	@:optional
	var iconSrc : String;
	@:optional
	var id : String;
	@:optional
	var title : String;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
};
extern class DxCommand extends DOMComponent {
	@:overload(function(options:DxCommandOptions):Void { })
	function new(element:JQuery, options:DxCommandOptions):Void;
	function execute():Void;
}
extern class Router {
	function register(pattern:String, ?defaults:Dynamic, ?constraints:Dynamic):Void;
	function parse(uri:String):Dynamic;
	function format(obj:Dynamic):String;
}
