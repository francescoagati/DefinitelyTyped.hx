extern class _ClassMixin {
	function new():Void;
	function addClass(className:String, names:Dynamic):haxe.Constraints.Function;
	function gatherClassState(className:String, names:Dynamic):Dynamic;
	function removeClass(className:String, names:Dynamic):haxe.Constraints.Function;
}
extern class _EnableMixin {
	function new():Void;
	function disable(state:Dynamic):Dynamic;
	function enable(state:Dynamic, defaultState:Bool):haxe.Constraints.Function;
	function gatherEnableState(names:Dynamic):Dynamic;
}
extern class _DisplayMixin {
	function new():Void;
	function gatherDisplayState(names:Dynamic):Dynamic;
	function hide(state:Dynamic):Dynamic;
	function show(state:Dynamic, defaultState:Bool):haxe.Constraints.Function;
}
extern class _FormMixin {
	function new():Void;
	var accept : String;
	var accept-charset : String;
	var action : String;
	var encType : String;
	var method : String;
	var name : String;
	var target : String;
	var isValid : { };
	function reset():haxe.Constraints.Function;
	function startup():Void;
	function submit():Void;
	function validate():Bool;
	function onReset():Bool;
	function onSubmit():Dynamic;
}
extern class _NodeMixin {
	function new():Void;
	function destroy():Void;
	@:overload(function(elem:HTMLElement, value:Dynamic):Dynamic { })
	@:overload(function(elem:Array<Dynamic>, value:Dynamic):Dynamic { })
	function formNodeValue(elem:String, value:Dynamic):Dynamic;
	function inspectFormNodes(inspector:haxe.Constraints.Function, state:Dynamic, defaultValue:Dynamic):Dynamic;
	@:overload(function(node:HTMLElement):Dynamic { })
	function registerNode(node:String):Dynamic;
	@:overload(function(node:HTMLElement):Dynamic { })
	function registerNodeDescendants(node:String):Dynamic;
	function unregisterNode(name:String):Dynamic;
	@:overload(function(node:HTMLElement):Dynamic { })
	function unregisterNodeDescendants(node:String):Dynamic;
}
extern class _Mixin {
	function new():Void;
	var watching : Bool;
	function destroy():Void;
	@:overload(function(elem:Dynamic, value:Dynamic):Dynamic { })
	@:overload(function(elem:Array<Dynamic>, value:Dynamic):Dynamic { })
	function formPointValue(elem:String, value:Dynamic):Dynamic;
	@:overload(function(elem:Dynamic, value:Dynamic):Dynamic { })
	@:overload(function(elem:Array<Dynamic>, value:Dynamic):Dynamic { })
	function formWidgetValue(elem:String, value:Dynamic):Dynamic;
	function inspect(inspector:haxe.Constraints.Function, state:Dynamic, defaultValue:Dynamic):Dynamic;
	function inspectAttachedPoints(inspector:haxe.Constraints.Function, state:Dynamic, defaultValue:Dynamic):Dynamic;
	function inspectFormWidgets(inspector:haxe.Constraints.Function, state:Dynamic, defaultValue:Dynamic):Dynamic;
	@:overload(function(widget:HTMLElement):Dynamic { })
	@:overload(function(widget:dijit.form._FormWidget):Dynamic { })
	function registerWidget(widget:String):Dynamic;
	@:overload(function(widget:HTMLElement):Dynamic { })
	@:overload(function(widget:dijit._Widget):Dynamic { })
	function registerWidgetDescendants(widget:String):Dynamic;
	function startup():Void;
	function unregisterWidget(name:String):Dynamic;
	@:overload(function(widget:HTMLElement):Dynamic { })
	@:overload(function(widget:dijit._Widget):Dynamic { })
	function unregisterWidgetDescendants(widget:String):Dynamic;
}
extern class _ValueMixin {
	function new():Void;
	function elementValue(name:String, value:Dynamic):Dynamic;
	function gatherFormValues(names:Dynamic):Dynamic;
	function setFormValues(values:Dynamic):haxe.Constraints.Function;
}
