typedef Main = { };
extern class Controller {
	function new(app:Dynamic, events:Dynamic):Void;
	function bind(evented:Dynamic, event:String, handler:haxe.Constraints.Function):haxe.Constraints.Function;
	function unbind(evented:Dynamic, event:String):haxe.Constraints.Function;
}
extern class View extends dijit._TemplatedMixin {
	function new(params:Dynamic):Void;
	var attachScope : Dynamic;
	var contextRequire : haxe.Constraints.Function;
	var searchContainerNode : Bool;
	var templatePath : String;
	var templateString : String;
	var widgetsInTemplate : Bool;
	function afterActivate():Void;
	function afterDeactivate():Void;
	function beforeActivate():Void;
	function beforeDeactivate():Void;
	function buildRendering():Void;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyRendering():Void;
	function init():Void;
	function load():Dynamic;
	function own():Dynamic;
	function start():Dynamic;
	function startup():Void;
	function getCachedTemplate():Dynamic;
}
extern class ViewBase {
	function new(params:Dynamic):Void;
	function afterActivate():Void;
	function afterDeactivate():Void;
	function beforeActivate():Void;
	function beforeDeactivate():Void;
	function destroy():Void;
	function init():Void;
	function load():Dynamic;
	function start():Dynamic;
}
