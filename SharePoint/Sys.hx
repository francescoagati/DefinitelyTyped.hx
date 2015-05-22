extern class EventArgs {
	static var Empty : Sys.EventArgs;
}
extern class StringBuilder {
	function append(s:String):Void;
	function appendLine(s:String):Void;
	function clear():Void;
	function isEmpty():Bool;
	function toString():String;
}
extern class Component {
	function get_id():String;
	static function create(type:Component, ?properties:Dynamic, ?events:Dynamic, ?references:Dynamic, ?element:Node):Dynamic;
	function initialize():Void;
	function updated():Void;
}
typedef IContainer = {
	function addComponent(component:Component):Void;
	function findComponent(id:String):Component;
	function getComponents():Array<Component>;
	function removeComponent(component:Component):Dynamic;
};
extern class Application extends Component {
	function addComponent(component:Component):Void;
	function findComponent(id:String):Component;
	function getComponents():Array<Component>;
	function removeComponent(component:Component):Dynamic;
	static function add_load(handler:Application -> ApplicationLoadEventArgs -> Void):Dynamic;
	static function remove_load(handler:Application -> ApplicationLoadEventArgs -> Void):Dynamic;
}
extern class ApplicationLoadEventArgs {
	function new(components:Array<Component>, isPartialLoad:Bool):Void;
	var components : Array<Component>;
	var isPartialLoad : Bool;
}
