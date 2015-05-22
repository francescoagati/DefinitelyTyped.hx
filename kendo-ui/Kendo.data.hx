typedef ObservableObjectEvent = {
	@:optional
	var sender : ObservableObject;
	@:optional
	var field : String;
};
typedef ObservableObjectSetEvent = {
	>ObservableObjectEvent,
	@:optional
	var value : Dynamic;
	@:optional
	var preventDefault : haxe.Constraints.Function;
};
extern class Binding extends Observable {
	var source : Dynamic;
	var parents : Array<Dynamic>;
	var path : String;
	var dependencies : { };
	var observable : Bool;
	function new(parents:Array<Dynamic>, path:String):Void;
	function change(e:Dynamic):Void;
	function start(source:kendo.Observable):Void;
	function stop(source:kendo.Observable):Void;
	function get():Dynamic;
	function set(value:Dynamic):Void;
	function destroy():Void;
}
extern class BindingTarget {
	var target : Dynamic;
	var options : Dynamic;
	var source : Dynamic;
}
extern class EventBinding extends Binding {
	function get():Void;
}
extern class TemplateBinding extends Binding {
	function new(source:kendo.Observable, path:String, template:haxe.Constraints.Function):Void;
	function render(value:Dynamic):String;
}
