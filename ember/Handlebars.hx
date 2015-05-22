extern class Helpers {
	function action(actionName:String, context:Dynamic, ?options:{ }):Void;
	function bindAttr(?options:{ }):String;
	function connectOutlet(outletName:String, view:{ }):Void;
	function control(path:String, modelPath:String, ?options:{ }):String;
	function debugger(property:String):Void;
	function disconnectOutlet(outletName:String):Void;
	function each(name:String, path:String, ?options:{ }):Void;
	function if(context:haxe.Constraints.Function, ?options:{ }):String;
	function init():Void;
	function input(?options:{ }):Void;
	function linkTo(routeName:String, context:Dynamic, ?options:{ }):String;
	function loc(str:String):Void;
	function log(property:String):Void;
	function outlet(property:String):String;
	function partial(partialName:String):Void;
	function render(name:String, ?context:String, ?options:{ }):String;
	function textarea(?options:{ }):Void;
	function unbound(property:String):String;
	function unless(context:haxe.Constraints.Function, ?options:{ }):String;
	function view(path:String, ?options:{ }):String;
	function with(context:haxe.Constraints.Function, ?options:{ }):String;
	function yield(?options:{ }):String;
}
extern class Compiler {

}
extern class JavaScriptCompiler {

}
extern class SafeString {
	function new(str:String):Void;
	static function toString():String;
}
extern class HandlebarsTopLevel {
	static function compile(string:String):haxe.Constraints.Function;
	static function get(root:Dynamic, path:String, ?options:{ }):Dynamic;
	static function helper(name:String, func:haxe.Constraints.Function, ?dependentKeys:String):Void;
	static function helper(name:String, view:View, ?dependentKeys:String):Void;
	static function precompile(string:String):Void;
	static function registerBoundHelper(name:String, func:haxe.Constraints.Function, ?dependentKeys:String):Void;
	static function registerHelper(name:String, fn:haxe.Constraints.Function, ?inverse:Bool):Void;
	static function registerPartial(name:String, str:Dynamic):Void;
	static function K():Dynamic;
	static function createFrame(objec:Dynamic):Dynamic;
	static function Exception(message:String):Void;
	static function parse(string:String):Dynamic;
	static function print(ast:Dynamic):Void;
	static var logger : Dynamic;
	static function log(level:String, str:String):Void;
	static function compile(environment:Dynamic, ?options:Dynamic, ?context:Dynamic, ?asObject:Dynamic):Dynamic;
	static var IS_BINDING : js.RegExp;
	static var K : haxe.Constraints.Function;
	static var LOG_BINDINGS : Bool;
	static var LOG_STACKTRACE_ON_DEPRECATION : Bool;
	static var LOG_VERSION : Bool;
	static var Logger : { function assert(param:Dynamic):Void; function debug(args:haxe.extern.Rest<Dynamic>):Void; function error(args:haxe.extern.Rest<Dynamic>):Void; function info(args:haxe.extern.Rest<Dynamic>):Void; function log(args:haxe.extern.Rest<Dynamic>):Void; function warn(args:haxe.extern.Rest<Dynamic>):Void; };
	static function MANDATORY_SETTER_FUNCTION(value:String):Void;
	static var META_KEY : String;
	static var NAME_KEY : String;
	static var ORDER_DEFINITION : Array<String>;
	static var compile : Dynamic;
	static var get : Dynamic;
	static var helper : Dynamic;
	static var precompile : Dynamic;
	static var registerBoundHelper : Dynamic;
	static var registerHelper : Dynamic;
	static var registerPartial : Dynamic;
	static var K : Dynamic;
	static var createFrame : Dynamic;
	static var Exception : Dynamic;
	static var parse : Dynamic;
	static var print : Dynamic;
	static var logger : Dynamic;
	static var log : Dynamic;
	static var IS_BINDING : Dynamic;
	static var K : Dynamic;
	static var LOG_BINDINGS : Dynamic;
	static var LOG_STACKTRACE_ON_DEPRECATION : Dynamic;
	static var LOG_VERSION : Dynamic;
	static var Logger : Dynamic;
	static var MANDATORY_SETTER_FUNCTION : Dynamic;
	static var META_KEY : Dynamic;
	static var NAME_KEY : Dynamic;
	static var ORDER_DEFINITION : Dynamic;
	static var compile : Dynamic;
	static var get : Dynamic;
	static var helper : Dynamic;
	static var precompile : Dynamic;
	static var registerBoundHelper : Dynamic;
	static var registerHelper : Dynamic;
	static var registerPartial : Dynamic;
	static var K : Dynamic;
	static var createFrame : Dynamic;
	static var Exception : Dynamic;
	static var parse : Dynamic;
	static var print : Dynamic;
	static var logger : Dynamic;
	static var log : Dynamic;
	static var IS_BINDING : Dynamic;
	static var K : Dynamic;
	static var LOG_BINDINGS : Dynamic;
	static var LOG_STACKTRACE_ON_DEPRECATION : Dynamic;
	static var LOG_VERSION : Dynamic;
	static var Logger : Dynamic;
	static var MANDATORY_SETTER_FUNCTION : Dynamic;
	static var META_KEY : Dynamic;
	static var NAME_KEY : Dynamic;
	static var ORDER_DEFINITION : Dynamic;
}
extern class HashLocation extends Dynamic {
	static function detect(obj:Dynamic):Bool;
	static function detectInstance(obj:Dynamic):Bool;
	static function eachComputedProperty(callback:haxe.Constraints.Function, binding:{ }):Void;
	static function metaForProperty(key:String):{ };
	static var isClass : Bool;
	static var isMethod : Bool;
}
extern class HistoryLocation extends Dynamic {
	static function detect(obj:Dynamic):Bool;
	static function detectInstance(obj:Dynamic):Bool;
	static function eachComputedProperty(callback:haxe.Constraints.Function, binding:{ }):Void;
	static function metaForProperty(key:String):{ };
	static var isClass : Bool;
	static var isMethod : Bool;
	var rootURL : String;
}
extern class Instrumentation {
	@:overload(function(obj:Dynamic, args:haxe.extern.Rest<String>):{ } { })
	function getProperties(obj:Dynamic, list:Array<Dynamic>):{ };
	function instrument(name:String, payload:Dynamic, callback:haxe.Constraints.Function, binding:Dynamic):Void;
	function reset():Void;
	function subscribe(pattern:String, object:Dynamic):Void;
	function unsubscribe(subscriber:Dynamic):Void;
}
extern class LinkView extends View {
	static function detect(obj:Dynamic):Bool;
	static function detectInstance(obj:Dynamic):Bool;
	static function eachComputedProperty(callback:haxe.Constraints.Function, binding:{ }):Void;
	static function metaForProperty(key:String):{ };
	static var isClass : Bool;
	static var isMethod : Bool;
	function init():Void;
	var active : Dynamic;
	var activeClass : String;
	var attributeBindings : Dynamic;
	var classNameBindings : Array<String>;
	var disabled : Dynamic;
	var disabledClass : String;
	var eventName : String;
	var href : Dynamic;
	var loading : Dynamic;
	var loadingClass : String;
	var loadingHref : String;
	var rel : Dynamic;
	var replace : Bool;
	var title : Dynamic;
	var click : haxe.Constraints.Function;
}
extern class Location {
	function create(?options:{ }):Dynamic;
	function registerImplementation(name:String, implementation:Dynamic):Void;
}
extern class Map {
	function copy():Map;
	static function create():Map;
	function forEach(callback:haxe.Constraints.Function, self:Dynamic):Void;
	function get(key:Dynamic):Dynamic;
	function has(key:Dynamic):Bool;
	function remove(key:Dynamic):Bool;
	function set(key:Dynamic, value:Dynamic):Void;
	var length : Float;
}
extern class MapWithDefault extends Map {
	function copy():MapWithDefault;
	static function create():MapWithDefault;
}
extern class Mixin {
	function apply(obj:Dynamic):Dynamic;
	static function create<T:(Mixin)>(args:{ }):T;
	function detect(obj:Dynamic):Bool;
	function reopen<T:(Mixin)>(?args:{ }):T;
}
extern class MutableArray {
	function addArrayObserver(target:Dynamic, ?opts:EnumerableConfigurationOptions):Array<Dynamic>;
	function addEnumerableObserver(target:Dynamic, opts:EnumerableConfigurationOptions):Enumerable;
	function any(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function anyBy(key:String, ?value:String):Bool;
	function arrayContentDidChange(startIdx:Float, removeAmt:Float, addAmt:Float):Array<Dynamic>;
	function arrayContentWillChange(startIdx:Float, removeAmt:Float, addAmt:Float):Array<Dynamic>;
	function someProperty(key:String, ?value:String):Bool;
	function clear():Array<Dynamic>;
	function compact():Array<Dynamic>;
	function contains(obj:Dynamic):Bool;
	@:overload(function(start:Float, removing:Enumerable, adding:Float):Dynamic { })
	@:overload(function(start:Float, removing:Float, adding:Enumerable):Dynamic { })
	@:overload(function(start:Float, removing:Enumerable, adding:Enumerable):Dynamic { })
	@:overload(function(removing:Float, adding:Float):Dynamic { })
	@:overload(function(removing:Enumerable, adding:Float):Dynamic { })
	@:overload(function(removing:Float, adding:Enumerable):Dynamic { })
	@:overload(function(removing:Enumerable, adding:Enumerable):Dynamic { })
	function enumerableContentDidChange(start:Float, removing:Float, adding:Float):Dynamic;
	@:overload(function(removing:Enumerable, adding:Float):Enumerable { })
	@:overload(function(removing:Float, adding:Enumerable):Enumerable { })
	@:overload(function(removing:Enumerable, adding:Enumerable):Enumerable { })
	function enumerableContentWillChange(removing:Float, adding:Float):Enumerable;
	function every(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function everyBy(key:String, ?value:String):Bool;
	function everyProperty(key:String, ?value:String):Bool;
	function filter(callback:haxe.Constraints.Function, target:Dynamic):Array<Dynamic>;
	function filterBy(key:String, ?value:String):Array<Dynamic>;
	function find(callback:haxe.Constraints.Function, target:Dynamic):Dynamic;
	function findBy(key:String, ?value:String):Dynamic;
	function forEach(callback:haxe.Constraints.Function, ?target:Dynamic):Dynamic;
	function getEach(key:String):Array<Dynamic>;
	function indexOf(object:Dynamic, startAt:Float):Float;
	function insertAt(idx:Float, object:Dynamic):Array<Dynamic>;
	function invoke(methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	function lastIndexOf(object:Dynamic, startAt:Float):Float;
	var map : ItemIndexEnumerableCallbackTarget;
	function mapBy(key:String):Array<Dynamic>;
	function nextObject(index:Float, previousObject:Dynamic, context:Dynamic):Dynamic;
	function objectAt(idx:Float):Dynamic;
	function objectsAt(args:haxe.extern.Rest<Float>):Array<Dynamic>;
	function popObject():Dynamic;
	function pushObject(obj:Dynamic):Dynamic;
	function pushObjects(args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	function reduce(callback:ReduceCallback, initialValue:Dynamic, reducerProperty:String):Dynamic;
	var reject : ItemIndexEnumerableCallbackTarget;
	function rejectBy(key:String, ?value:String):Array<Dynamic>;
	function removeArrayObserver(target:Dynamic, opts:EnumerableConfigurationOptions):Array<Dynamic>;
	function removeAt(start:Float, len:Float):Dynamic;
	function removeEnumerableObserver(target:Dynamic, opts:EnumerableConfigurationOptions):Enumerable;
	function replace(idx:Float, amt:Float, objects:Array<Dynamic>):Dynamic;
	function reverseObjects():Array<Dynamic>;
	function setEach(key:String, ?value:Dynamic):Dynamic;
	function setObjects(objects:Array<Dynamic>):Array<Dynamic>;
	function shiftObject():Dynamic;
	function slice(?beginIndex:Float, ?endIndex:Float):Array<Dynamic>;
	function some(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function toArray():Array<Dynamic>;
	function uniq():Enumerable;
	function unshiftObject(object:Dynamic):Dynamic;
	function unshiftObjects(objects:Array<Dynamic>):Array<Dynamic>;
	function without(value:Dynamic):Enumerable;
	var [] : Array<Dynamic>;
	var @each : EachProxy;
	var Boolean : Bool;
	var firstObject : Dynamic;
	var hasEnumerableObservers : Bool;
	var lastObject : Dynamic;
	var length : Float;
	function addObject(object:Dynamic):Dynamic;
	function addObjects(objects:Enumerable):MutableEnumberable;
	function removeObject(object:Dynamic):Dynamic;
	function removeObjects(objects:Enumerable):MutableEnumberable;
}
extern class MutableEnumberable {
	function addEnumerableObserver(target:Dynamic, opts:EnumerableConfigurationOptions):Enumerable;
	function addObject(object:Dynamic):Dynamic;
	function addObjects(objects:Enumerable):MutableEnumberable;
	function any(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function anyBy(key:String, ?value:String):Bool;
	function someProperty(key:String, ?value:String):Bool;
	function compact():Array<Dynamic>;
	function contains(obj:Dynamic):Bool;
	@:overload(function(start:Float, removing:Enumerable, adding:Float):Dynamic { })
	@:overload(function(start:Float, removing:Float, adding:Enumerable):Dynamic { })
	@:overload(function(start:Float, removing:Enumerable, adding:Enumerable):Dynamic { })
	@:overload(function(removing:Float, adding:Float):Dynamic { })
	@:overload(function(removing:Enumerable, adding:Float):Dynamic { })
	@:overload(function(removing:Float, adding:Enumerable):Dynamic { })
	@:overload(function(removing:Enumerable, adding:Enumerable):Dynamic { })
	function enumerableContentDidChange(start:Float, removing:Float, adding:Float):Dynamic;
	@:overload(function(removing:Enumerable, adding:Float):Enumerable { })
	@:overload(function(removing:Float, adding:Enumerable):Enumerable { })
	@:overload(function(removing:Enumerable, adding:Enumerable):Enumerable { })
	function enumerableContentWillChange(removing:Float, adding:Float):Enumerable;
	function every(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function everyBy(key:String, ?value:String):Bool;
	function everyProperty(key:String, ?value:String):Bool;
	function filter(callback:haxe.Constraints.Function, target:Dynamic):Array<Dynamic>;
	function filterBy(key:String, ?value:String):Array<Dynamic>;
	function find(callback:haxe.Constraints.Function, target:Dynamic):Dynamic;
	function findBy(key:String, ?value:String):Dynamic;
	function forEach(callback:haxe.Constraints.Function, ?target:Dynamic):Dynamic;
	function getEach(key:String):Array<Dynamic>;
	function invoke(methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	var map : ItemIndexEnumerableCallbackTarget;
	function mapBy(key:String):Array<Dynamic>;
	function nextObject(index:Float, previousObject:Dynamic, context:Dynamic):Dynamic;
	function reduce(callback:ReduceCallback, initialValue:Dynamic, reducerProperty:String):Dynamic;
	var reject : ItemIndexEnumerableCallbackTarget;
	function rejectBy(key:String, ?value:String):Array<Dynamic>;
	function removeEnumerableObserver(target:Dynamic, opts:EnumerableConfigurationOptions):Enumerable;
	function removeObject(object:Dynamic):Dynamic;
	function removeObjects(objects:Enumerable):MutableEnumberable;
	function setEach(key:String, ?value:Dynamic):Dynamic;
	function some(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function toArray():Array<Dynamic>;
	function uniq():Enumerable;
	function without(value:Dynamic):Enumerable;
	var [] : Array<Dynamic>;
	var firstObject : Dynamic;
	var hasEnumerableObservers : Bool;
	var lastObject : Dynamic;
}
extern class Namespace extends Dynamic {
	static function detect(obj:Dynamic):Bool;
	static function detectInstance(obj:Dynamic):Bool;
	static function eachComputedProperty(callback:haxe.Constraints.Function, binding:{ }):Void;
	static function metaForProperty(key:String):{ };
	static var isClass : Bool;
	static var isMethod : Bool;
}
extern class NativeArray {
	function new(arr:Array<Dynamic>):Void;
	static function activate():Void;
	function addArrayObserver(target:Dynamic, ?opts:EnumerableConfigurationOptions):Array<Dynamic>;
	function addEnumerableObserver(target:Dynamic, opts:EnumerableConfigurationOptions):Enumerable;
	function any(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function anyBy(key:String, ?value:String):Bool;
	function arrayContentDidChange(startIdx:Float, removeAmt:Float, addAmt:Float):Array<Dynamic>;
	function arrayContentWillChange(startIdx:Float, removeAmt:Float, addAmt:Float):Array<Dynamic>;
	function someProperty(key:String, ?value:Dynamic):Bool;
	function clear():Array<Dynamic>;
	function compact():Array<Dynamic>;
	function contains(obj:Dynamic):Bool;
	@:overload(function(start:Float, removing:Enumerable, adding:Float):Dynamic { })
	@:overload(function(start:Float, removing:Float, adding:Enumerable):Dynamic { })
	@:overload(function(start:Float, removing:Enumerable, adding:Enumerable):Dynamic { })
	@:overload(function(removing:Float, adding:Float):Dynamic { })
	@:overload(function(removing:Enumerable, adding:Float):Dynamic { })
	@:overload(function(removing:Float, adding:Enumerable):Dynamic { })
	@:overload(function(removing:Enumerable, adding:Enumerable):Dynamic { })
	function enumerableContentDidChange(start:Float, removing:Float, adding:Float):Dynamic;
	@:overload(function(removing:Enumerable, adding:Float):Enumerable { })
	@:overload(function(removing:Float, adding:Enumerable):Enumerable { })
	@:overload(function(removing:Enumerable, adding:Enumerable):Enumerable { })
	function enumerableContentWillChange(removing:Float, adding:Float):Enumerable;
	function every(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function everyBy(key:String, ?value:String):Bool;
	function everyProperty(key:String, ?value:Dynamic):Bool;
	function filter(callback:haxe.Constraints.Function, target:Dynamic):Array<Dynamic>;
	function filterBy(key:String, ?value:String):Array<Dynamic>;
	function find(callback:haxe.Constraints.Function, target:Dynamic):Dynamic;
	function findBy(key:String, ?value:String):Dynamic;
	function forEach(callback:haxe.Constraints.Function, ?target:Dynamic):Dynamic;
	function getEach(key:String):Array<Dynamic>;
	function indexOf(object:Dynamic, startAt:Float):Float;
	function insertAt(idx:Float, object:Dynamic):Array<Dynamic>;
	function invoke(methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	function lastIndexOf(object:Dynamic, startAt:Float):Float;
	var map : ItemIndexEnumerableCallbackTarget;
	function mapBy(key:String):Array<Dynamic>;
	function nextObject(index:Float, previousObject:Dynamic, context:Dynamic):Dynamic;
	function objectAt(idx:Float):Dynamic;
	function objectsAt(args:haxe.extern.Rest<Float>):Array<Dynamic>;
	function popObject():Dynamic;
	function pushObject(obj:Dynamic):Dynamic;
	function pushObjects(args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	function reduce(callback:ReduceCallback, initialValue:Dynamic, reducerProperty:String):Dynamic;
	var reject : ItemIndexEnumerableCallbackTarget;
	function rejectBy(key:String, ?value:String):Array<Dynamic>;
	function removeArrayObserver(target:Dynamic, opts:EnumerableConfigurationOptions):Array<Dynamic>;
	function removeAt(start:Float, len:Float):Dynamic;
	function removeEnumerableObserver(target:Dynamic, opts:EnumerableConfigurationOptions):Enumerable;
	function replace(idx:Float, amt:Float, objects:Array<Dynamic>):Dynamic;
	function reverseObjects():Array<Dynamic>;
	function setEach(key:String, ?value:Dynamic):Dynamic;
	function setObjects(objects:Array<Dynamic>):Array<Dynamic>;
	function shiftObject():Dynamic;
	function slice(?beginIndex:Float, ?endIndex:Float):Array<Dynamic>;
	function some(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function toArray():Array<Dynamic>;
	function uniq():Enumerable;
	function unshiftObject(object:Dynamic):Dynamic;
	function unshiftObjects(objects:Array<Dynamic>):Array<Dynamic>;
	function without(value:Dynamic):Enumerable;
	var [] : Array<Dynamic>;
	var @each : EachProxy;
	var Boolean : Bool;
	var firstObject : Dynamic;
	var hasEnumerableObservers : Bool;
	var lastObject : Dynamic;
	var length : Float;
	function addObject(object:Dynamic):Dynamic;
	function addObjects(objects:Enumerable):MutableEnumberable;
	function removeObject(object:Dynamic):Dynamic;
	function removeObjects(objects:Enumerable):MutableEnumberable;
	var addObserver : ModifyObserver;
	function beginPropertyChanges():Observable;
	function cacheFor(keyName:String):Dynamic;
	function decrementProperty(keyName:String, ?decrement:Float):Float;
	function endPropertyChanges():Observable;
	function get(keyName:String):Dynamic;
	@:overload(function(keys:Array<String>):{ } { })
	function getProperties(args:haxe.extern.Rest<String>):{ };
	function getWithDefault(keyName:String, defaultValue:Dynamic):Dynamic;
	function hasObserverFor(key:String):Bool;
	function incrementProperty(keyName:String, ?increment:Float):Float;
	function notifyPropertyChange(keyName:String):Observable;
	function propertyDidChange(keyName:String):Observable;
	function propertyWillChange(keyName:String):Observable;
	@:overload(function(key:String, target:Dynamic, method:haxe.Constraints.Function):Void { })
	function removeObserver(key:String, target:Dynamic, method:String):Void;
	function set(keyName:String, value:Dynamic):Observable;
	function setProperties(hash:{ }):Observable;
	function toggleProperty(keyName:String):Dynamic;
	function copy(deep:Bool):Copyable;
	function frozenCopy():Copyable;
}
extern class NoneLocation extends Dynamic {
	static function detect(obj:Dynamic):Bool;
	static function detectInstance(obj:Dynamic):Bool;
	static function eachComputedProperty(callback:haxe.Constraints.Function, binding:{ }):Void;
	static function metaForProperty(key:String):{ };
	static var isClass : Bool;
	static var isMethod : Bool;
}
extern class Object extends CoreObject {
	var addObserver : ModifyObserver;
	function beginPropertyChanges():Observable;
	function cacheFor(keyName:String):Dynamic;
	function decrementProperty(keyName:String, ?decrement:Float):Float;
	function endPropertyChanges():Observable;
	@:overload(function<T>(keyName:String):T { })
	function get(keyName:String):Dynamic;
	@:overload(function(keys:Array<String>):{ } { })
	function getProperties(args:haxe.extern.Rest<String>):{ };
	function getWithDefault(keyName:String, defaultValue:Dynamic):Dynamic;
	function hasObserverFor(key:String):Bool;
	function incrementProperty(keyName:String, ?increment:Float):Float;
	function notifyPropertyChange(keyName:String):Observable;
	function propertyDidChange(keyName:String):Observable;
	function propertyWillChange(keyName:String):Observable;
	@:overload(function(key:String, target:Dynamic, method:haxe.Constraints.Function):Observable { })
	function removeObserver(key:String, target:Dynamic, method:String):Observable;
	function set(keyName:String, value:Dynamic):Observable;
	function setProperties(hash:{ }):Observable;
	function toggleProperty(keyName:String):Dynamic;
}
extern class ObjectController extends ObjectProxy {
	function replaceRoute(name:String, args:haxe.extern.Rest<Dynamic>):Void;
	function transitionToRoute(name:String, args:haxe.extern.Rest<Dynamic>):Void;
	var controllers : Dynamic;
	var needs : Array<String>;
	var target : Dynamic;
	var model : Dynamic;
	var queryParams : Dynamic;
	function send(name:String, args:haxe.extern.Rest<Dynamic>):Void;
	var actions : { };
}
extern class ObjectProxy extends Dynamic {
	static function detect(obj:Dynamic):Bool;
	static function detectInstance(obj:Dynamic):Bool;
	static function eachComputedProperty(callback:haxe.Constraints.Function, binding:{ }):Void;
	static function metaForProperty(key:String):{ };
	static var isClass : Bool;
	static var isMethod : Bool;
	var content : Dynamic;
}
extern class Observable {
	var addObserver : ModifyObserver;
	function beginPropertyChanges():Observable;
	function cacheFor(keyName:String):Dynamic;
	function decrementProperty(keyName:String, ?decrement:Float):Float;
	function endPropertyChanges():Observable;
	function get(keyName:String):Dynamic;
	@:overload(function(keys:Array<String>):{ } { })
	function getProperties(args:haxe.extern.Rest<String>):{ };
	function getWithDefault(keyName:String, defaultValue:Dynamic):Dynamic;
	function hasObserverFor(key:String):Bool;
	function incrementProperty(keyName:String, ?increment:Float):Float;
	function notifyPropertyChange(keyName:String):Observable;
	function propertyDidChange(keyName:String):Observable;
	function propertyWillChange(keyName:String):Observable;
	@:overload(function(key:String, target:{ }, method:haxe.Constraints.Function):Void { })
	function removeObserver(key:String, target:{ }, method:String):Void;
	function set(keyName:String, value:Dynamic):Observable;
	function setProperties(hash:{ }):Observable;
	function toggleProperty(keyName:String):Bool;
}
extern class OrderedSet {
	function add(obj:Dynamic):Void;
	function clear():Void;
	function copy():OrderedSet;
	static function create():OrderedSet;
	function forEach(fn:haxe.Constraints.Function, self:Dynamic):Void;
	function has(obj:Dynamic):Bool;
	function isEmpty():Bool;
	function remove(obj:Dynamic):Void;
	function toArray():Array<Dynamic>;
}
extern class Helpers extends Ember.Handlebars.Helpers {

}
extern class Compiler extends Ember.Handlebars.Compiler {

}
extern class JavaScriptCompiler extends Ember.Handlebars.JavaScriptCompiler {

}
extern class SafeString extends Ember.Handlebars.SafeString {

}
extern class HandlebarsTopLevel {
	static function compile(string:String):haxe.Constraints.Function;
	static function get(root:Dynamic, path:String, ?options:{ }):Dynamic;
	static function helper(name:String, func:haxe.Constraints.Function, ?dependentKeys:String):Void;
	static function helper(name:String, view:View, ?dependentKeys:String):Void;
	static function precompile(string:String):Void;
	static function registerBoundHelper(name:String, func:haxe.Constraints.Function, ?dependentKeys:String):Void;
	static function registerHelper(name:String, fn:haxe.Constraints.Function, ?inverse:Bool):Void;
	static function registerPartial(name:String, str:Dynamic):Void;
	static function K():Dynamic;
	static function createFrame(objec:Dynamic):Dynamic;
	static function Exception(message:String):Void;
	static function parse(string:String):Dynamic;
	static function print(ast:Dynamic):Void;
	static var logger : Dynamic;
	static function log(level:String, str:String):Void;
	static function compile(environment:Dynamic, ?options:Dynamic, ?context:Dynamic, ?asObject:Dynamic):Dynamic;
	static var IS_BINDING : js.RegExp;
	static var K : haxe.Constraints.Function;
	static var LOG_BINDINGS : Bool;
	static var LOG_STACKTRACE_ON_DEPRECATION : Bool;
	static var LOG_VERSION : Bool;
	static var Logger : { function assert(param:Dynamic):Void; function debug(args:haxe.extern.Rest<Dynamic>):Void; function error(args:haxe.extern.Rest<Dynamic>):Void; function info(args:haxe.extern.Rest<Dynamic>):Void; function log(args:haxe.extern.Rest<Dynamic>):Void; function warn(args:haxe.extern.Rest<Dynamic>):Void; };
	static function MANDATORY_SETTER_FUNCTION(value:String):Void;
	static var META_KEY : String;
	static var NAME_KEY : String;
	static var ORDER_DEFINITION : Array<String>;
	static var compile : Dynamic;
	static var get : Dynamic;
	static var helper : Dynamic;
	static var precompile : Dynamic;
	static var registerBoundHelper : Dynamic;
	static var registerHelper : Dynamic;
	static var registerPartial : Dynamic;
	static var K : Dynamic;
	static var createFrame : Dynamic;
	static var Exception : Dynamic;
	static var parse : Dynamic;
	static var print : Dynamic;
	static var logger : Dynamic;
	static var log : Dynamic;
	static var IS_BINDING : Dynamic;
	static var K : Dynamic;
	static var LOG_BINDINGS : Dynamic;
	static var LOG_STACKTRACE_ON_DEPRECATION : Dynamic;
	static var LOG_VERSION : Dynamic;
	static var Logger : Dynamic;
	static var MANDATORY_SETTER_FUNCTION : Dynamic;
	static var META_KEY : Dynamic;
	static var NAME_KEY : Dynamic;
	static var ORDER_DEFINITION : Dynamic;
	static var compile : Dynamic;
	static var get : Dynamic;
	static var helper : Dynamic;
	static var precompile : Dynamic;
	static var registerBoundHelper : Dynamic;
	static var registerHelper : Dynamic;
	static var registerPartial : Dynamic;
	static var K : Dynamic;
	static var createFrame : Dynamic;
	static var Exception : Dynamic;
	static var parse : Dynamic;
	static var print : Dynamic;
	static var logger : Dynamic;
	static var log : Dynamic;
	static var IS_BINDING : Dynamic;
	static var K : Dynamic;
	static var LOG_BINDINGS : Dynamic;
	static var LOG_STACKTRACE_ON_DEPRECATION : Dynamic;
	static var LOG_VERSION : Dynamic;
	static var Logger : Dynamic;
	static var MANDATORY_SETTER_FUNCTION : Dynamic;
	static var META_KEY : Dynamic;
	static var NAME_KEY : Dynamic;
	static var ORDER_DEFINITION : Dynamic;
}
extern class HashLocation extends Ember.HashLocation {

}
extern class HistoryLocation extends Ember.HistoryLocation {

}
extern class Instrumentation extends Ember.Instrumentation {

}
extern class LinkView extends Ember.LinkView {

}
extern class Location extends Ember.Location {

}
extern class Map extends Ember.Map {

}
extern class MapWithDefault extends Ember.MapWithDefault {

}
extern class Mixin extends Ember.Mixin {

}
extern class MutableArray extends Ember.MutableArray {

}
extern class MutableEnumerable extends Ember.MutableEnumberable {

}
extern class Namespace extends Ember.Namespace {

}
extern class NativeArray extends Ember.NativeArray {

}
extern class NoneLocation extends Ember.NoneLocation {

}
extern class Object extends Ember.Object {

}
extern class ObjectController extends Ember.ObjectController {

}
extern class ObjectProxy extends Ember.ObjectProxy {

}
extern class Observable extends Ember.Observable {

}
extern class OrderedSet extends Ember.OrderedSet {

}
extern class Helpers extends Ember.Handlebars.Helpers {

}
extern class Compiler extends Ember.Handlebars.Compiler {

}
extern class JavaScriptCompiler extends Ember.Handlebars.JavaScriptCompiler {

}
extern class SafeString extends Ember.Handlebars.SafeString {

}
extern class HandlebarsTopLevel {
	static function compile(string:String):haxe.Constraints.Function;
	static function get(root:Dynamic, path:String, ?options:{ }):Dynamic;
	static function helper(name:String, func:haxe.Constraints.Function, ?dependentKeys:String):Void;
	static function helper(name:String, view:View, ?dependentKeys:String):Void;
	static function precompile(string:String):Void;
	static function registerBoundHelper(name:String, func:haxe.Constraints.Function, ?dependentKeys:String):Void;
	static function registerHelper(name:String, fn:haxe.Constraints.Function, ?inverse:Bool):Void;
	static function registerPartial(name:String, str:Dynamic):Void;
	static function K():Dynamic;
	static function createFrame(objec:Dynamic):Dynamic;
	static function Exception(message:String):Void;
	static function parse(string:String):Dynamic;
	static function print(ast:Dynamic):Void;
	static var logger : Dynamic;
	static function log(level:String, str:String):Void;
	static function compile(environment:Dynamic, ?options:Dynamic, ?context:Dynamic, ?asObject:Dynamic):Dynamic;
	static var IS_BINDING : js.RegExp;
	static var K : haxe.Constraints.Function;
	static var LOG_BINDINGS : Bool;
	static var LOG_STACKTRACE_ON_DEPRECATION : Bool;
	static var LOG_VERSION : Bool;
	static var Logger : { function assert(param:Dynamic):Void; function debug(args:haxe.extern.Rest<Dynamic>):Void; function error(args:haxe.extern.Rest<Dynamic>):Void; function info(args:haxe.extern.Rest<Dynamic>):Void; function log(args:haxe.extern.Rest<Dynamic>):Void; function warn(args:haxe.extern.Rest<Dynamic>):Void; };
	static function MANDATORY_SETTER_FUNCTION(value:String):Void;
	static var META_KEY : String;
	static var NAME_KEY : String;
	static var ORDER_DEFINITION : Array<String>;
	static var compile : Dynamic;
	static var get : Dynamic;
	static var helper : Dynamic;
	static var precompile : Dynamic;
	static var registerBoundHelper : Dynamic;
	static var registerHelper : Dynamic;
	static var registerPartial : Dynamic;
	static var K : Dynamic;
	static var createFrame : Dynamic;
	static var Exception : Dynamic;
	static var parse : Dynamic;
	static var print : Dynamic;
	static var logger : Dynamic;
	static var log : Dynamic;
	static var IS_BINDING : Dynamic;
	static var K : Dynamic;
	static var LOG_BINDINGS : Dynamic;
	static var LOG_STACKTRACE_ON_DEPRECATION : Dynamic;
	static var LOG_VERSION : Dynamic;
	static var Logger : Dynamic;
	static var MANDATORY_SETTER_FUNCTION : Dynamic;
	static var META_KEY : Dynamic;
	static var NAME_KEY : Dynamic;
	static var ORDER_DEFINITION : Dynamic;
	static var compile : Dynamic;
	static var get : Dynamic;
	static var helper : Dynamic;
	static var precompile : Dynamic;
	static var registerBoundHelper : Dynamic;
	static var registerHelper : Dynamic;
	static var registerPartial : Dynamic;
	static var K : Dynamic;
	static var createFrame : Dynamic;
	static var Exception : Dynamic;
	static var parse : Dynamic;
	static var print : Dynamic;
	static var logger : Dynamic;
	static var log : Dynamic;
	static var IS_BINDING : Dynamic;
	static var K : Dynamic;
	static var LOG_BINDINGS : Dynamic;
	static var LOG_STACKTRACE_ON_DEPRECATION : Dynamic;
	static var LOG_VERSION : Dynamic;
	static var Logger : Dynamic;
	static var MANDATORY_SETTER_FUNCTION : Dynamic;
	static var META_KEY : Dynamic;
	static var NAME_KEY : Dynamic;
	static var ORDER_DEFINITION : Dynamic;
}
extern class HashLocation extends Ember.HashLocation {

}
extern class HistoryLocation extends Ember.HistoryLocation {

}
extern class Instrumentation extends Ember.Instrumentation {

}
extern class LinkView extends Ember.LinkView {

}
extern class Location extends Ember.Location {

}
extern class Map extends Ember.Map {

}
extern class MapWithDefault extends Ember.MapWithDefault {

}
extern class Mixin extends Ember.Mixin {

}
extern class MutableArray extends Ember.MutableArray {

}
extern class MutableEnumerable extends Ember.MutableEnumberable {

}
extern class Namespace extends Ember.Namespace {

}
extern class NativeArray extends Ember.NativeArray {

}
extern class NoneLocation extends Ember.NoneLocation {

}
extern class Object extends Ember.Object {

}
extern class ObjectController extends Ember.ObjectController {

}
extern class ObjectProxy extends Ember.ObjectProxy {

}
extern class Observable extends Ember.Observable {

}
extern class OrderedSet extends Ember.OrderedSet {

}
