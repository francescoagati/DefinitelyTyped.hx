extern class DevicesTopLevel {
	static function orientation():String;
	static var orientationChanged : JQueryCallback;
	static function real():IDevice;
	static function current(deviceOrName:String):IDevice;
	static function current(deviceOrName:IDevice):IDevice;
	static function registerComponent(name:String, componentClass:Dynamic):Void;
}
typedef ComponentOptions = {
	@:optional
	var disabled : Bool;
};
extern class Component {
	@:overload(function(element:JQuery, ?options:ComponentOptions):Void { })
	function new(element:Element, ?options:ComponentOptions):Void;
	var disposing : JQueryCallback;
	var optionChanged : JQueryCallback;
	function instance():Component;
	function beginUpdate():Void;
	function endUpdate():Void;
	@:overload(function(options:String):Dynamic { })
	@:overload(function<T>(options:String):T { })
	@:overload(function(options:String, value:Dynamic):Void { })
	@:overload(function(options:{ }):Void { })
	@:overload(function(?options:Dynamic):Dynamic { })
	function option():Dynamic;
}
typedef DOMComponentOptions = {
	>ComponentOptions,
	@:optional
	var rtlEnabled : Bool;
};
extern class DOMComponent extends Component {
	function new(element:HTMLElement, ?options:DOMComponentOptions):Void;
	static function defaultOptions(rule:{ var device : Dynamic; var options : { }; }):Void;
}
