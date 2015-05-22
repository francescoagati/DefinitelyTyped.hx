typedef BlocksStatic = {
	@:overload(function(model:Dynamic, element:HTMLElement):Void { })
	function query(model:Dynamic):Void;
	function extend(obj:Dynamic, objects:haxe.extern.Rest<Dynamic>):Void;
	function each(collection:Dynamic, callback:Dynamic -> Dynamic -> Dynamic -> Void, ?thisArg:Dynamic):Void;
	function eachRight(collection:Dynamic, callback:Dynamic -> Dynamic -> Dynamic -> Void, ?thisArg:Dynamic):Void;
	function isArray(value:Dynamic):Bool;
	function noop():haxe.Constraints.Function;
	function type(value:Dynamic):String;
	function is(value:Dynamic, type:String):Bool;
	function has(obj:Dynamic, key:String):Bool;
	function unwrap(value:Dynamic):Dynamic;
	function toArray(value:Dynamic):Array<Dynamic>;
	@:overload(function(value:Dynamic, unit:String):Dynamic { })
	function toUnit(value:Dynamic):Dynamic;
	@:overload(function(value:Dynamic, deepClone:Bool):Dynamic { })
	function clone(value:Dynamic):Dynamic;
	function isElements(value:Dynamic):Bool;
	function isElement(value:Dynamic):Bool;
	function isBoolean(value:Dynamic):Bool;
	function isObject(obj:Dynamic):Bool;
	function isPlainObject(obj:Dynamic):Bool;
	function bind(func:haxe.Constraints.Function, thisArg:Dynamic, args:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
	@:overload(function(a:Dynamic, b:Dynamic, deepEqual:Bool):Bool { })
	function equals(a:Dynamic, b:Dynamic):Bool;
	function context(element:Dynamic):Dynamic;
	function dataItem(element:Dynamic):Dynamic;
	function isObservable(value:Dynamic):Bool;
	function unwrapObservable(value:Dynamic):Dynamic;
	function route(route:String):BlocksStatic;
	@:overload(function(param:String, defaultValue:Dynamic):BlocksStatic { })
	function optional(param:String):BlocksStatic;
	function range(start:Float, end:Float):BlocksStatic;
	@:overload(function(options:Server):{ function express():Dynamic; } { })
	function server():{ function express():Dynamic; };
	@:overload(function(value:Array<Dynamic>):BlocksArray { })
	@:overload(function(value:Dynamic):BlocksObservable { })
	function observable():BlocksObservable;
	@:overload(function(options:{ var history : String; }):App { })
	function Application():App;
};
typedef BlocksObservable = {
	>Extendable<BlocksObservable>,
	function update():BlocksObservable;
	function on(event:String, trigger:haxe.Constraints.Function):BlocksObservable;
};
typedef BlocksArray = {
	>BlocksObservable,
	function update():BlocksArray;
	@:overload(function(name:String, options:haxe.extern.Rest<Dynamic>):BlocksArray { })
	function extend(options:haxe.extern.Rest<Dynamic>):BlocksArray;
	function reset(value:Array<Dynamic>):BlocksArray;
	@:overload(function(value:Dynamic, index:Float):BlocksArray { })
	function add(value:Dynamic):BlocksArray;
	@:overload(function(value:Array<Dynamic>, index:Float):BlocksArray { })
	function addMany(value:Array<Dynamic>):BlocksArray;
	function swap(indexA:Float, indexB:Float):BlocksArray;
	function move(sourceIndex:Float, targetIndex:Float):BlocksArray;
	@:overload(function(value:Dynamic, thisArg:haxe.Constraints.Function):BlocksArray { })
	function remove(value:Dynamic):BlocksArray;
	@:overload(function(index:Float, count:Float):BlocksArray { })
	function removeAt(index:Float):BlocksArray;
	@:overload(function(callback:haxe.Constraints.Function):BlocksArray { })
	@:overload(function(callback:haxe.Constraints.Function, thisArg:Dynamic):BlocksArray { })
	function removeAll():BlocksArray;
	function concat(arrays:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	@:overload(function(start:Float, end:Float):Array<Dynamic> { })
	function slice(start:Float):Array<Dynamic>;
	@:overload(function(seperator:String):String { })
	function join():String;
	function pop():Dynamic;
	function push(values:haxe.extern.Rest<Dynamic>):Float;
	function reverse():Array<Dynamic>;
	function shift():Dynamic;
	@:overload(function(sortfunction:haxe.Constraints.Function):Array<Dynamic> { })
	function sort():Array<Dynamic>;
	function splice(index:Float, howMany:Float, items:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	function unshift(items:haxe.extern.Rest<Dynamic>):Float;
};
typedef App = {
	>Extendable<App>,
	@:overload(function(options:PropertyPrototype):Dynamic { })
	function Property():Dynamic;
	@:overload(function(parentViewName:String, name:String, prototype:ViewPrototype):Dynamic { })
	function View(name:String, prototype:ViewPrototype):Dynamic;
	function Model(prototype:ModelPrototype):Model;
	@:overload(function(model:Model, prototype:CollectionPrototype):Collection { })
	function Collection(prototype:CollectionPrototype):Collection;
};
typedef PropertyPrototype = {
	@:optional
	var defaultValue : Dynamic;
	@:optional
	var isObservable : Bool;
	@:optional
	var field : String;
	@:optional
	var value : Dynamic;
	@:optional
	var validateOnChange : Bool;
	@:optional
	var maxErrors : Float;
	@:optional
	var validateInitially : Bool;
	@:optional
	var required : Validator;
	@:optional
	var minlength : Validator;
	@:optional
	var maxlength : Validator;
	@:optional
	var min : Validator;
	@:optional
	var max : Validator;
	@:optional
	var email : Validator;
	@:optional
	var url : Validator;
	@:optional
	var date : Validator;
	@:optional
	var creditcard : Validator;
	@:optional
	var regexp : Validator;
	@:optional
	var number : Validator;
	@:optional
	var digits : Validator;
	@:optional
	var letters : Validator;
	@:optional
	var equals : Validator;
};
typedef Validator = { };
typedef ViewPrototype = {
	@:optional
	var parentView : Dynamic;
	@:optional
	function route(name:String):ViewPrototype;
	@:optional
	function isActive():Bool;
	@:optional
	var init : haxe.Constraints.Function;
	@:optional
	var routed : haxe.Constraints.Function;
	@:optional
	var navigateTo : haxe.Constraints.Function;
	@:optional
	var ready : haxe.Constraints.Function;
	@:optional
	var options : { @:optional
	var route : Dynamic; @:optional
	var url : String; };
};
typedef Model = {
	@:overload(function(params:Dynamic):Model { })
	function read():Model;
	function sync():Model;
};
typedef ModelPrototype = {
	@:optional
	var init : haxe.Constraints.Function;
	@:optional
	function validate():Bool;
	@:optional
	function dataItem():Dynamic;
	@:optional
	function reset(dataItem:ModelPrototype):ModelPrototype;
	@:optional
	function isNew():Bool;
	@:optional
	var options : { @:optional
	var idAttr : String; @:optional
	var baseUrl : String; @:optional
	var read : { @:optional
	var url : String; }; @:optional
	var create : { @:optional
	var url : String; }; @:optional
	var destroy : { @:optional
	var url : String; }; @:optional
	var update : { @:optional
	var url : String; }; };
};
typedef Collection = {
	>Extendable<Collection>,
	@:overload(function(params:Dynamic):Collection { })
	function read():Collection;
	function clearChanges():Collection;
	function sync():Collection;
	function update(id:Float, newValues:Dynamic):Collection;
};
typedef CollectionPrototype = {
	@:optional
	var options : { @:optional
	var read : { @:optional
	var url : String; }; @:optional
	var create : { @:optional
	var url : String; }; @:optional
	var destroy : { @:optional
	var url : String; }; @:optional
	var update : { @:optional
	var url : String; }; };
};
typedef Extendable<T> = {
	@:overload(function(arg:Dynamic):T { })
	function extend(?name:String, options:haxe.extern.Rest<Dynamic>):T;
};
typedef Server = {
	@:optional
	var port : Float;
	@:optional
	var static : String;
	@:optional
	var cache : Bool;
	@:optional
	var use : Dynamic;
};
extern class BlocksTopLevel {
	static var blocks : BlocksStatic;
}
extern class BlocksTopLevel {
	static var blocks : BlocksStatic;
}
