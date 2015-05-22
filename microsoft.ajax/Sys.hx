typedef Application = {
	function new():Void;
	function add_init(handler:haxe.Constraints.Function):Void;
	function remove_init(handler:haxe.Constraints.Function):Void;
	function add_load(handler:haxe.Constraints.Function):Void;
	function remove_load(handler:haxe.Constraints.Function):Void;
	function add_navigate(handler:haxe.Constraints.Function):Void;
	function remove_navigate(handler:haxe.Constraints.Function):Void;
	function add_unload(handler:haxe.Constraints.Function):Void;
	function remove_unload(handler:haxe.Constraints.Function):Void;
	function addComponent(component:Dynamic):Void;
	function beginCreateComponents():Void;
	function addHistoryPoint(state:Dynamic, ?title:String):Void;
	function beginUpdate():Void;
	function dispose():Void;
	function disposeElement(element:Element, childNodesOnly:Bool):Void;
	function endCreateComponents():Void;
	function endUpdate():Void;
	@:overload(function(id:String, ?parent:HTMLElement):Sys.Component { })
	function findComponent(id:String, ?parent:Sys.Component):Sys.Component;
	function getComponents():Array<Sys.Component>;
	function initialize():Void;
	function notifyScriptLoaded():Void;
	function raiseLoad():Void;
	function raisePropertyChanged(propertyName:String):Void;
	function registerDisposableObject(object:Dynamic):Void;
	function removeComponent(component:Component):Void;
	function unregisterDisposableObject(object:Dynamic):Void;
	function updated():Void;
	function get_enableHistory():Bool;
	function set_enableHistory(value:Bool):Void;
	function get_isCreatingComponents():Bool;
	function get_isDisposing():Bool;
};
typedef Browser = {
	var agent : Dynamic;
	var documentMode : Float;
	var hasDebuggerStatement : Bool;
	var name : String;
	var version : Float;
};
extern class Component {
	function new():Void;
	function add_disposing(handler:haxe.Constraints.Function):Void;
	function remove_disposing(handler:haxe.Constraints.Function):Void;
	function add_propertyChanged(handler:haxe.Constraints.Function):Void;
	function remove_propertyChanged(handler:haxe.Constraints.Function):Void;
	function beginUpdate():Void;
	static function create(type:Type, ?properties:Dynamic, ?events:Dynamic, ?references:Dynamic, ?element:HTMLElement):Sys.Component;
	function endUpdate():Void;
	function initialize():Void;
	function raisePropertyChanged(propertyName:String):Void;
	function updated():Void;
	function dispose():Void;
	function get_events():Dynamic;
	function get_id():String;
	function set_id(value:String):Void;
	function get_isInitialized():Bool;
	function get_isUpdating():Bool;
}
extern class CultureInfo {
	function new(name:String, numberFormat:String, dateTimeFormat:String):Void;
	var numberFormat : Array<String>;
	var name : String;
	static var InvariantCulture : CultureInfo;
	static var CurrentCulture : CultureInfo;
	var dateTimeFormat : Array<String>;
}
extern class Debug {
	function new():Void;
	static function assert(condition:Bool, ?message:String, ?displayCaller:Bool):Void;
	static function clearTrace():Void;
	static function fail(message:String):Void;
	static function trace(text:String):Void;
	static function traceDump(object:Dynamic, ?name:String):Void;
}
extern class CollectionChange {
	function new(action:NotifyCollectionChangedAction, newItems:Array<Dynamic>, newStartingIndex:Float, oldItems:Array<Dynamic>, oldStartingIndex:Float):Void;
	var action : NotifyCollectionChangedAction;
	var newItems : Array<Dynamic>;
	var newStartingIndex : Float;
	var oldItems : Array<Dynamic>;
	var oldStartingIndex : Float;
}
extern class Observer {
	static function add(target:Array<Dynamic>, item:Dynamic):Void;
	static function addCollectionChanged(target:Dynamic, handler:haxe.Constraints.Function):Void;
	static function addEventHandler(target:Dynamic, eventName:String, handler:haxe.Constraints.Function):Void;
	static function addPropertyChanged(target:Dynamic, handler:haxe.Constraints.Function):Void;
	static function addRange(target:Array<Dynamic>, items:Array<Dynamic>):Void;
	static function beginUpdate(target:Dynamic):Void;
	static function clear(target:Dynamic):Void;
	static function endUpdate(target:Dynamic):Void;
	static function insert(target:Dynamic, index:Float, item:Dynamic):Void;
	static function makeObservable(target:Dynamic):Dynamic;
	static function raiseCollectionChanged(target:Array<Dynamic>, changes:Sys.CollectionChange):Void;
	static function raiseEvent(target:Dynamic, eventName:String, eventArgs:Sys.EventArgs):Void;
	static function raisePropertyChanged(target:Dynamic, propertyName:String):Void;
	static function remove(target:Array<Dynamic>, item:Dynamic):Bool;
	static function removeAt(target:Array<Dynamic>, index:Float):Void;
	static function removeCollectionChanged(target:Dynamic, handler:haxe.Constraints.Function):Void;
	static function removeEventHandler(target:Dynamic, handler:haxe.Constraints.Function):Void;
	static function setValue(target:Dynamic, propertyName:String, value:Dynamic):Void;
	static function isUpdating(target:Dynamic):Bool;
}
extern class Res {
	static var actualValue : String;
	static var appLoadTimedout : String;
	static var argument : String;
	static var argumentNull : String;
	static var argumentOutOfRange : String;
	static var argumentType : String;
	static var argumentTypeWithTypes : String;
	static var argumentUndefined : String;
	static var assertFailed : String;
	static var assetFailedCaller : String;
	static var badBaseUrl1 : String;
	static var badBaseUrl2 : String;
	static var badBaseUrl3 : String;
	static var breakIntoDebugger : String;
	static var cannotAbortBeforeStart : String;
	static var cannotCallBeforeResponse : String;
	static var cannotCallOnceStarted : String;
	static var cannotCallOutsideHandler : String;
	static var cannotDeserializeEmptyString : String;
	static var cannotSerializeNonFiniteNumbers : String;
	static var controlCantSetId : String;
	static var enumInvalidValue : String;
	static var eventHandlerInvalid : String;
	static var format : String;
	static var formatBadDate : String;
	static var formatBadFormatSpecifier : String;
	static var formatInvalidString : String;
	static var invalidExecutorType : String;
	static var invalidHttpVerb : String;
	static var invalidOperation : String;
	static var invalidTimeout : String;
	static var invokeCalledTwice : String;
	static var notImplemented : String;
	static var nullWebRequest : String;
}
extern class StringBuilder {
	function new(?initialText:String):Void;
	function append(text:String):Void;
	function appendLine(text:String):Void;
	function clear():Void;
	function isEmpty():Bool;
	function toString(?separator:String):String;
}
@:enum abstract NotifyCollectionChangedAction(Int) {
	var add = 0;
	var remove = 1;
	var reset = 2;
}
typedef IContainer = {
	function addComponent(component:Component):Void;
	function findComponent(id:String):Component;
	function getComponents():Array<Component>;
	function removeComponent(component:Component):Void;
};
typedef IDisposable = {
	function dispose():Void;
};
typedef INotifyDisposing = {
	function add_disposing(handler:haxe.Constraints.Function):Void;
	function remove_disposing(handler:haxe.Constraints.Function):Void;
};
typedef INotifyPropertyChange = {
	function add_propertyChanged(handler:haxe.Constraints.Function):Void;
	function remove_propertyChanged(handler:haxe.Constraints.Function):Void;
};
extern class ApplicationLoadEventArgs {
	function new(components:Dynamic, isPartialLoad:Bool):Void;
	function get_components():Array<Component>;
	function get_isPartialLoad():Bool;
}
extern class EventArgs {
	function new():Void;
	static var Empty : EventArgs;
}
extern class CommandEventArgs extends EventArgs {
	function new(commandName:String, commandArgument:Dynamic, commandSource:Dynamic):Void;
	function get_commandName():String;
	function get_commandArgument():Dynamic;
	function get_commandSource():Dynamic;
}
extern class CancelEventArgs extends EventArgs {
	function new():Void;
	function set_cancel(value:Bool):Void;
	function get_cancel():Bool;
}
extern class HistoryEventArgs extends EventArgs {
	function new(state:Dynamic):Void;
	function get_State():Dynamic;
}
extern class NotifyCollectionChangedEventArgs extends EventArgs {
	function new(changes:CollectionChange):Void;
	function get_changes():Array<CollectionChange>;
}
extern class PropertyChangedEventArgs extends EventArgs {
	function new(propertyName:String):Void;
	function propertyName():String;
}
extern class ArgumentException {

}
extern class ArgumentNullException {

}
extern class ArgumentOutOfRangeException {

}
extern class ArgumentTypeException {

}
extern class ArgumentUndefinedException {

}
extern class FormatException {

}
extern class InvalidOperationException {

}
extern class NotImplementedException {

}
extern class ParameterCountException {

}
extern class ScriptLoadFailedException {

}
extern class SysTopLevel {
	static var Application : Application;
	static function Browser():Sys.Browser;
}
