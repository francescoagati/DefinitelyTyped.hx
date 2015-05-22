typedef PromiseResolve = { };
typedef PromiseReject = { };
typedef PromiseResolverFunction = { };
extern class Promise {
	function new(resolver:PromiseResolverFunction, ?label:String):Void;
	function then(?onFulfilled:haxe.Constraints.Function, ?onRejected:haxe.Constraints.Function):Promise;
	function catch(onRejection:haxe.Constraints.Function, ?label:String):Promise;
	function finally(callback:haxe.Constraints.Function, ?label:String):Promise;
}
extern class RenderBuffer {
	function addClass(className:String):RenderBuffer;
	function attr(name:String, value:Dynamic):Dynamic;
	function element():HTMLElement;
	function id(id:String):RenderBuffer;
	function prop(name:String, value:String):Dynamic;
	function push(string:String):RenderBuffer;
	function removeAttr(name:String):RenderBuffer;
	function removeProp(name:String):RenderBuffer;
	function string():String;
	function style(name:String, value:String):RenderBuffer;
	var classes : Array<Dynamic>;
	var elementAttributes : { };
	var elementId : String;
	var elementProperties : { };
	var elementStyle : { };
	var elementTag : String;
	var parentBuffer : RenderBuffer;
}
extern class Route extends Dynamic {
	static var isClass : Bool;
	static var isMethod : Bool;
	var activate : haxe.Constraints.Function;
	function afterModel(resolvedModel:Dynamic, transition:EmberStates.Transition):RSVP.Promise;
	function beforeModel(transition:EmberStates.Transition):RSVP.Promise;
	var controller : Controller;
	function controllerFor(name:String):Controller;
	var controllerName : String;
	var deactivate : haxe.Constraints.Function;
	function deserializeQueryParam(value:Dynamic, urlKey:String, defaultValueType:String):Dynamic;
	function disconnectOutlet(options:haxe.extern.EitherType<DisconnectOutletOptions, String>):Void;
	function findModel(type:String, value:Dynamic):Dynamic;
	function generateController(name:String, model:{ }):Controller;
	function intermediateTransitionTo(name:String, models:haxe.extern.Rest<Dynamic>):Void;
	function model(params:{ }, transition:EmberStates.Transition):haxe.extern.EitherType<Dynamic, RSVP.Promise>;
	function modelFor(name:String):{ };
	function paramsFor(name:String):Dynamic;
	var queryParams : { };
	function redirect():EmberStates.Transition;
	function refresh():EmberStates.Transition;
	function render(name:String, ?options:RenderOptions):Void;
	function renderTemplate(controller:Controller, model:{ }):Void;
	function replaceWith(name:String, models:haxe.extern.Rest<Dynamic>):Void;
	function resetController(controller:Ember.Controller, isExiting:Bool, transition:Dynamic):Void;
	function serialize(model:{ }, params:Array<String>):String;
	function serializeQueryParam(value:Dynamic, urlKey:String, defaultValueType:String):String;
	function serializeQueryParamKey(controllerPropertyName:String):String;
	function setupController(controller:Controller, model:{ }):Void;
	function store(store:Dynamic):Dynamic;
	var templateName : String;
	function transitionTo(name:String, object:haxe.extern.Rest<Dynamic>):EmberStates.Transition;
	var viewName : String;
	function send(name:String, args:haxe.extern.Rest<Dynamic>):Void;
	var actions : ActionsHash;
	function on(name:String, target:Dynamic, method:haxe.Constraints.Function):Evented;
	function one(name:String, target:Dynamic, method:haxe.Constraints.Function):Evented;
	function trigger(name:String, args:haxe.extern.Rest<String>):Void;
	function off(name:String, target:Dynamic, method:haxe.Constraints.Function):Evented;
	function has(name:String):Bool;
}
extern class Router extends Dynamic {
	static function detect(obj:Dynamic):Bool;
	static function detectInstance(obj:Dynamic):Bool;
	static function eachComputedProperty(callback:haxe.Constraints.Function, binding:{ }):Void;
	static function metaForProperty(key:String):{ };
	static var isClass : Bool;
	static var isMethod : Bool;
	function map(callback:haxe.Constraints.Function):Router;
}
extern class RouterDSL {
	@:overload(function(name:String, callback:haxe.Constraints.Function):Void { })
	function resource(name:String, ?options:{ }, ?callback:haxe.Constraints.Function):Void;
	function route(name:String, ?options:{ }):Void;
}
extern class Select extends View {
	static function detect(obj:Dynamic):Bool;
	static function detectInstance(obj:Dynamic):Bool;
	static function eachComputedProperty(callback:haxe.Constraints.Function, binding:{ }):Void;
	static function metaForProperty(key:String):{ };
	static var isClass : Bool;
	static var isMethod : Bool;
	var content : Array<Dynamic>;
	var groupView : View;
	var multiple : Bool;
	var optionGroupPath : String;
	var optionLabelPath : String;
	var optionValuePath : String;
	var optionView : View;
	var prompt : String;
	var selection : Dynamic;
	var value : String;
}
extern class SelectOption extends View {
	static function detect(obj:Dynamic):Bool;
	static function detectInstance(obj:Dynamic):Bool;
	static function eachComputedProperty(callback:haxe.Constraints.Function, binding:{ }):Void;
	static function metaForProperty(key:String):{ };
	static var isClass : Bool;
	static var isMethod : Bool;
}
extern class Set extends CoreObject {
	function addEnumerableObserver(target:Dynamic, opts:EnumerableConfigurationOptions):Set;
	function addObject(object:Dynamic):Dynamic;
	function addObjects(objects:Enumerable):Set;
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
	@:overload(function(removing:Enumerable, adding:Float):Set { })
	@:overload(function(removing:Float, adding:Enumerable):Set { })
	@:overload(function(removing:Enumerable, adding:Enumerable):Set { })
	function enumerableContentWillChange(removing:Float, adding:Float):Set;
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
	function removeEnumerableObserver(target:Dynamic, opts:EnumerableConfigurationOptions):Set;
	function removeObject(object:Dynamic):Dynamic;
	function removeObjects(objects:Enumerable):Set;
	function setEach(key:String, ?value:Dynamic):Dynamic;
	function some(callback:haxe.Constraints.Function, ?target:Dynamic):Bool;
	function toArray():Array<Dynamic>;
	function uniq():Set;
	function without(value:Dynamic):Set;
	var [] : Array<Dynamic>;
	var firstObject : Dynamic;
	var hasEnumerableObservers : Bool;
	var lastObject : Dynamic;
	function copy(deep:Bool):Set;
	function frozenCopy():Set;
	function freeze():Set;
	var isFrozen : Bool;
	function add(obj:Dynamic):Set;
	function addEach(args:haxe.extern.Rest<Dynamic>):Set;
	function clear():Set;
	function isEqual(obj:Set):Bool;
	function pop():Dynamic;
	function push(obj:Dynamic):Set;
	function remove(obj:Dynamic):Set;
	function removeEach(args:haxe.extern.Rest<Dynamic>):Set;
	function shift():Dynamic;
	function unshift(obj:Dynamic):Set;
	var length : Float;
}
extern class SortableMixin {
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
	var arrangedContent : Dynamic;
	var firstObject : Dynamic;
	var hasEnumerableObservers : Bool;
	var lastObject : Dynamic;
	var sortAscending : Bool;
	var sortFunction : Comparable;
	var sortProperties : Array<Dynamic>;
}
extern class State extends Dynamic {
	static function detect(obj:Dynamic):Bool;
	static function detectInstance(obj:Dynamic):Bool;
	static function eachComputedProperty(callback:haxe.Constraints.Function, binding:{ }):Void;
	static function metaForProperty(key:String):{ };
	static var isClass : Bool;
	static var isMethod : Bool;
	function has(name:String):Bool;
	function off(name:String, target:Dynamic, method:haxe.Constraints.Function):State;
	function on(name:String, target:Dynamic, method:haxe.Constraints.Function):State;
	function one(name:String, target:Dynamic, method:haxe.Constraints.Function):State;
	function trigger(name:String, args:haxe.extern.Rest<String>):Void;
	function getPathsCache(stateManager:{ }, path:String):{ };
	function init():Void;
	function setPathsCache(stateManager:{ }, path:String, transitions:Dynamic):Void;
	static function transitionTo(target:String):Void;
	var hasContext : Bool;
	var isLeaf : Bool;
	var name : String;
	var parentState : State;
	var path : String;
	var enter : haxe.Constraints.Function;
	var exit : haxe.Constraints.Function;
	var setup : haxe.Constraints.Function;
}
extern class StateManager extends State {
	static function detect(obj:Dynamic):Bool;
	static function detectInstance(obj:Dynamic):Bool;
	static function eachComputedProperty(callback:haxe.Constraints.Function, binding:{ }):Void;
	static function metaForProperty(key:String):{ };
	static var isClass : Bool;
	static var isMethod : Bool;
	function contextFreeTransition(currentState:State, path:String):TransitionsHash;
	function enterState(transition:TransitionsHash):Void;
	function getState(name:String):State;
	function getStateByPath(root:State, path:String):State;
	function getStateMeta(state:State, key:String):Dynamic;
	function getStatesInPath(root:State, path:String):Array<State>;
	function goToState(path:String, context:Dynamic):Void;
	function send(event:String):Void;
	function setStateMeta(state:State, key:String, value:Dynamic):Dynamic;
	function stateMetaFor(state:State):{ };
	function transitionTo(path:String, context:Dynamic):Void;
	function triggerSetupContext(transitions:TransitionsHash):Void;
	function unhandledEvent(manager:StateManager, event:String):Dynamic;
	var currentPath : String;
	var currentState : State;
	var errorOnUnhandledEvents : Bool;
	var transitionEvent : String;
}
typedef PromiseResolve = {
	>Ember.RSVP.PromiseResolve,
};
typedef PromiseReject = {
	>Ember.RSVP.PromiseReject,
};
typedef PromiseResolverFunction = {
	>Ember.RSVP.PromiseResolverFunction,
};
extern class Promise extends Ember.RSVP.Promise {

}
extern class RSVPTopLevel {
	static var SHIM_ES5 : Bool;
	static var STRINGS : Bool;
	static var SHIM_ES5 : Dynamic;
	static var STRINGS : Dynamic;
	static var SHIM_ES5 : Dynamic;
	static var STRINGS : Dynamic;
}
extern class RenderBuffer extends Ember.RenderBuffer {

}
extern class Route extends Ember.Route {

}
extern class Router extends Ember.Router {

}
extern class RouterDSL extends Ember.RouterDSL {

}
extern class Select extends Ember.Select {

}
extern class SelectOption extends Ember.SelectOption {

}
extern class Set extends Ember.Set {

}
extern class SortableMixin extends Ember.SortableMixin {

}
extern class State extends Ember.State {

}
extern class StateManager extends Ember.StateManager {

}
typedef PromiseResolve = {
	>Ember.RSVP.PromiseResolve,
};
typedef PromiseReject = {
	>Ember.RSVP.PromiseReject,
};
typedef PromiseResolverFunction = {
	>Ember.RSVP.PromiseResolverFunction,
};
extern class Promise extends Ember.RSVP.Promise {

}
extern class RSVPTopLevel {
	static var SHIM_ES5 : Bool;
	static var STRINGS : Bool;
	static var SHIM_ES5 : Dynamic;
	static var STRINGS : Dynamic;
	static var SHIM_ES5 : Dynamic;
	static var STRINGS : Dynamic;
}
extern class RenderBuffer extends Ember.RenderBuffer {

}
extern class Route extends Ember.Route {

}
extern class Router extends Ember.Router {

}
extern class RouterDSL extends Ember.RouterDSL {

}
extern class Select extends Ember.Select {

}
extern class SelectOption extends Ember.SelectOption {

}
extern class Set extends Ember.Set {

}
extern class SortableMixin extends Ember.SortableMixin {

}
extern class State extends Ember.State {

}
extern class StateManager extends Ember.StateManager {

}
