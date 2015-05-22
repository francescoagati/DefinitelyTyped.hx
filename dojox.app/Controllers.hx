extern class History extends dojox.app.Controller {
	function new():Void;
	var currentState : Dynamic;
	function bind(evented:Dynamic, event:String, handler:haxe.Constraints.Function):haxe.Constraints.Function;
	function unbind(evented:Dynamic, event:String):haxe.Constraints.Function;
	function onDomNodeChange(evt:Dynamic):Void;
	function onPopState(evt:Dynamic):Void;
	function onStartTransition(evt:Dynamic):Void;
}
extern class HistoryHash extends dojox.app.Controller {
	function new(app:Dynamic):Void;
	function bind(evented:Dynamic, event:String, handler:haxe.Constraints.Function):haxe.Constraints.Function;
	function unbind(evented:Dynamic, event:String):haxe.Constraints.Function;
	function onDomNodeChange(evt:Dynamic):Void;
	function onStartTransition(evt:Dynamic):Void;
}
extern class BorderLayout extends dojox.app.controllers.LayoutBase {
	function new(app:Dynamic, events:Dynamic):Void;
	function bind(evented:Dynamic, event:String, handler:haxe.Constraints.Function):haxe.Constraints.Function;
	function hideView(view:Dynamic):Void;
	function initLayout(event:Dynamic):Void;
	function layoutView(event:Dynamic):Void;
	function showView(view:Dynamic):Void;
	function unbind(evented:Dynamic, event:String):haxe.Constraints.Function;
	function onResize():Void;
}
extern class LayoutBase extends dojox.app.Controller {
	function new(app:Dynamic, events:Dynamic):Void;
	function bind(evented:Dynamic, event:String, handler:haxe.Constraints.Function):haxe.Constraints.Function;
	function hideView(view:Dynamic):Void;
	function initLayout(event:Dynamic):Void;
	function layoutView(event:Dynamic):Void;
	function showView(view:Dynamic):Void;
	function unbind(evented:Dynamic, event:String):haxe.Constraints.Function;
	function onResize():Void;
}
extern class Load extends dojox.app.Controller {
	function new(app:Dynamic, events:Dynamic):Void;
	function bind(evented:Dynamic, event:String, handler:haxe.Constraints.Function):haxe.Constraints.Function;
	function createChild(parent:Dynamic, childId:String, subIds:String, params:Dynamic):Dynamic;
	function createView(parent:Dynamic, id:String, name:String, mixin:String, params:Dynamic, type:String):Dynamic;
	function init(event:Dynamic):Void;
	function load(event:Dynamic):Dynamic;
	function loadChild(parent:Dynamic, childId:String, subIds:String, params:Dynamic, loadEvent:Dynamic):Dynamic;
	function loadView(loadEvent:Dynamic):Dynamic;
	function proceedLoadView(loadEvt:Dynamic):Void;
	function unbind(evented:Dynamic, event:String):haxe.Constraints.Function;
}
extern class Layout extends dojox.app.controllers.LayoutBase {
	function new(app:Dynamic, events:Dynamic):Void;
	function bind(evented:Dynamic, event:String, handler:haxe.Constraints.Function):haxe.Constraints.Function;
	function hideView(view:Dynamic):Void;
	function initLayout(event:Dynamic):Void;
	function layoutView(event:Dynamic):Void;
	function resizeSelectedChildren(w:Dynamic):Void;
	function showView(view:Dynamic):Void;
	function unbind(evented:Dynamic, event:String):haxe.Constraints.Function;
	function onResize():Void;
}
extern class Transition extends dojox.app.Controller {
	function new(app:Dynamic, events:Dynamic):Void;
	var proceeding : Bool;
	var waitingQueue : Array<Dynamic>;
	function bind(evented:Dynamic, event:String, handler:haxe.Constraints.Function):haxe.Constraints.Function;
	function proceedTransition(transitionEvt:Dynamic):Void;
	function transition(event:Dynamic):Void;
	function unbind(evented:Dynamic, event:String):haxe.Constraints.Function;
	function onDomNodeChange(evt:Dynamic):Void;
	function onStartTransition(evt:Dynamic):Void;
}
