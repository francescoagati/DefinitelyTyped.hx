extern class Adapter {
	function asyncEnd():Void;
	function asyncStart():Void;
	function exception(error:String):Void;
}
extern class QUnitAdapter extends Adapter {

}
typedef Function = {
	function observes(args:haxe.extern.Rest<String>):haxe.Constraints.Function;
	function observesBefore(args:haxe.extern.Rest<String>):haxe.Constraints.Function;
	function on(args:haxe.extern.Rest<String>):haxe.Constraints.Function;
	function property(args:haxe.extern.Rest<String>):haxe.Constraints.Function;
};
typedef String = {
	function camelize():String;
	function capitalize():String;
	function classify():String;
	function dasherize():String;
	function decamelize():String;
	function fmt(args:haxe.extern.Rest<String>):String;
	function htmlSafe():Dynamic;
	function loc(args:haxe.extern.Rest<String>):String;
	function underscore():String;
	function w():Array<String>;
};
typedef Array<T> = {
	function new(arr:Array<Dynamic>):Void;
	function activate():Void;
	function addArrayObserver(target:Dynamic, ?opts:EnumerableConfigurationOptions):Array<Dynamic>;
	function addEnumerableObserver(target:Dynamic, opts:EnumerableConfigurationOptions):Array<Dynamic>;
	function any(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function anyBy(key:String, ?value:String):Bool;
	function arrayContentDidChange(startIdx:Float, removeAmt:Float, addAmt:Float):Array<Dynamic>;
	function arrayContentWillChange(startIdx:Float, removeAmt:Float, addAmt:Float):Array<Dynamic>;
	function someProperty(key:String, ?value:Dynamic):Bool;
	function clear():Array<Dynamic>;
	function compact():Array<Dynamic>;
	function contains(obj:Dynamic):Bool;
	@:overload(function(start:Float, removing:Ember.Enumerable, adding:Float):Dynamic { })
	@:overload(function(start:Float, removing:Float, adding:Ember.Enumerable):Dynamic { })
	@:overload(function(start:Float, removing:Ember.Enumerable, adding:Ember.Enumerable):Dynamic { })
	@:overload(function(removing:Float, adding:Float):Dynamic { })
	@:overload(function(removing:Ember.Enumerable, adding:Float):Dynamic { })
	@:overload(function(removing:Float, adding:Ember.Enumerable):Dynamic { })
	@:overload(function(removing:Ember.Enumerable, adding:Ember.Enumerable):Dynamic { })
	function enumerableContentDidChange(start:Float, removing:Float, adding:Float):Dynamic;
	@:overload(function(removing:Ember.Enumerable, adding:Float):Array<Dynamic> { })
	@:overload(function(removing:Float, adding:Ember.Enumerable):Array<Dynamic> { })
	@:overload(function(removing:Ember.Enumerable, adding:Ember.Enumerable):Array<Dynamic> { })
	function enumerableContentWillChange(removing:Float, adding:Float):Array<Dynamic>;
	function every(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function everyBy(key:String, ?value:String):Bool;
	function everyProperty(key:String, ?value:Dynamic):Bool;
	function filter(callback:haxe.Constraints.Function, ?target:Dynamic):Array<Dynamic>;
	function filterBy(key:String, ?value:String):Array<Dynamic>;
	function find(callback:haxe.Constraints.Function, ?target:Dynamic):Dynamic;
	function findBy(key:String, ?value:String):Dynamic;
	function forEach(callback:haxe.Constraints.Function, ?target:Dynamic):Dynamic;
	function getEach(key:String):Array<Dynamic>;
	function indexOf(object:Dynamic, ?startAt:Float):Float;
	function insertAt(idx:Float, object:Dynamic):Array<Dynamic>;
	function invoke(methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	function lastIndexOf(object:Dynamic, ?startAt:Float):Float;
	function map(callback:haxe.Constraints.Function, ?target:Dynamic):Array<Dynamic>;
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
	function removeEnumerableObserver(target:Dynamic, opts:EnumerableConfigurationOptions):Array<Dynamic>;
	function replace(idx:Float, amt:Float, objects:Array<Dynamic>):Void;
	function reverseObjects():Array<Dynamic>;
	function setEach(key:String, ?value:Dynamic):Dynamic;
	function setObjects(objects:Array<Dynamic>):Array<Dynamic>;
	function shiftObject():Dynamic;
	function slice(?beginIndex:Float, ?endIndex:Float):Array<Dynamic>;
	function some(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function toArray():Array<Dynamic>;
	function uniq():Array<Dynamic>;
	function unshiftObject(object:Dynamic):Dynamic;
	function unshiftObjects(objects:Array<Dynamic>):Array<Dynamic>;
	function without(value:Dynamic):Array<Dynamic>;
	var [] : Array<Dynamic>;
	var @each : Ember.EachProxy;
	var Boolean : Bool;
	var firstObject : Dynamic;
	var hasEnumerableObservers : Bool;
	var lastObject : Dynamic;
	function addObject(object:Dynamic):Dynamic;
	function addObjects(objects:Ember.Enumerable):Array<Dynamic>;
	function removeObject(object:Dynamic):Dynamic;
	function removeObjects(objects:Ember.Enumerable):Array<Dynamic>;
	var addObserver : ModifyObserver;
	function beginPropertyChanges():Array<Dynamic>;
	function cacheFor(keyName:String):Dynamic;
	function decrementProperty(keyName:String, ?decrement:Float):Float;
	function endPropertyChanges():Array<Dynamic>;
	function get(keyName:String):Dynamic;
	@:overload(function(keys:Array<String>):{ } { })
	function getProperties(args:haxe.extern.Rest<String>):{ };
	function getWithDefault(keyName:String, defaultValue:Dynamic):Dynamic;
	function hasObserverFor(key:String):Bool;
	function incrementProperty(keyName:String, ?increment:Float):Float;
	function notifyPropertyChange(keyName:String):Array<Dynamic>;
	function propertyDidChange(keyName:String):Array<Dynamic>;
	function propertyWillChange(keyName:String):Array<Dynamic>;
	@:overload(function(key:String, target:Dynamic, method:haxe.Constraints.Function):Ember.Observable { })
	function removeObserver(key:String, target:Dynamic, method:String):Ember.Observable;
	function set(keyName:String, value:Dynamic):Array<Dynamic>;
	function setProperties(hash:{ }):Array<Dynamic>;
	function toggleProperty(keyName:String):Dynamic;
	function copy(deep:Bool):Array<Dynamic>;
	function frozenCopy():Array<Dynamic>;
	function isAny(key:String, ?value:String):Bool;
	function isEvery(key:String, ?value:String):Bool;
};
typedef ApplicationCreateArguments = {
	@:optional
	var customEvents : { };
	@:optional
	var rootElement : String;
	@:optional
	var LOG_TRANSITIONS : Bool;
	@:optional
	var LOG_TRANSITIONS_INTERNAL : Bool;
};
typedef ApplicationInitializerArguments = {
	@:optional
	var name : String;
	@:optional
	var initialize : ApplicationInitializerFunction;
};
typedef ApplicationInitializerFunction = { };
typedef CoreObjectArguments = {
	@:optional
	var init : haxe.Constraints.Function;
	@:optional
	var willDestroy : haxe.Constraints.Function;
};
typedef EnumerableConfigurationOptions = {
	@:optional
	var willChange : Bool;
	@:optional
	var didChange : Bool;
};
typedef ItemIndexEnumerableCallbackTarget = { };
typedef ItemIndexEnumerableCallback = { };
typedef ReduceCallback = { };
typedef TransitionsHash = {
	var contexts : Array<Dynamic>;
	var exitStates : Array<Ember.State>;
	var enterStates : Array<Ember.State>;
	var resolveState : Ember.State;
};
typedef ActionsHash = {
	@:optional
	var willTransition : haxe.Constraints.Function;
	@:optional
	var error : haxe.Constraints.Function;
};
typedef DisconnectOutletOptions = {
	@:optional
	var outlet : String;
	@:optional
	var parentView : String;
};
typedef RenderOptions = {
	@:optional
	var into : String;
	@:optional
	var controller : String;
	@:optional
	var model : Dynamic;
	@:optional
	var outlet : String;
	@:optional
	var view : String;
};
typedef ModifyObserver = { };
