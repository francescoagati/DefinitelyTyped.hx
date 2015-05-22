typedef Device = {
	@:optional
	var android : Bool;
	@:optional
	var deviceType : String;
	@:optional
	var generic : Bool;
	@:optional
	var ios : Bool;
	@:optional
	var phone : Bool;
	@:optional
	var platform : String;
	@:optional
	var tablet : Bool;
	@:optional
	var tizen : Bool;
	@:optional
	var version : Array<Float>;
	@:optional
	var win8 : Bool;
};
extern class DevicesTopLevel {
	static var orientationChanged : JQueryCallback;
	static function current(deviceName:Dynamic):Void;
	static function current():Device;
	static function orientation():String;
	static function real():Device;
}
typedef PositionOptions = {
	@:optional
	var at : String;
	@:optional
	var boundary : Element;
	@:optional
	var boundaryOffset : String;
	@:optional
	var collision : Dynamic;
	@:optional
	var my : String;
	@:optional
	var of : HTMLElement;
	@:optional
	var offset : String;
};
typedef ComponentOptions = {
	@:optional
	var onOptionChanged : haxe.Constraints.Function;
	@:optional
	var onDisposing : haxe.Constraints.Function;
};
extern class Component {
	function new(?options:ComponentOptions):Void;
	function beginUpdate():Void;
	function endUpdate():Void;
	function instance():Component;
	@:overload(function():Dynamic { })
	@:overload(function(optionName:String):Dynamic { })
	@:overload(function(optionName:String, optionValue:Dynamic):Void { })
	function option(options:Dynamic):Void;
}
typedef DOMComponentOptions = {
	>ComponentOptions,
	@:optional
	var rtlEnabled : Bool;
};
extern class DOMComponent extends Component {
	@:overload(function(element:HTMLElement, ?options:DOMComponentOptions):Void { })
	function new(element:JQuery, ?options:DOMComponentOptions):Void;
	function element():JQuery;
	static function defaultOptions(rule:{ @:optional
	var device : Dynamic; @:optional
	var options : Dynamic; }):Void;
}
