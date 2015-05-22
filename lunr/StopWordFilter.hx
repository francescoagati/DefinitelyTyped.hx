extern class StopWordFilterTopLevel {
	static var stopWords : SortedSet<String>;
	static function trimmer(token:String):String;
	static function lunr(config:haxe.Constraints.Function):lunr.Index;
}
extern class EventEmitter {
	@:overload(function(eventName:String, eventName2:String, handler:haxe.Constraints.Function):Void { })
	@:overload(function(eventName:String, eventName2:String, eventName3:String, handler:haxe.Constraints.Function):Void { })
	@:overload(function(eventName:String, eventName2:String, eventName3:String, eventName4:String, handler:haxe.Constraints.Function):Void { })
	@:overload(function(eventName:String, eventName2:String, eventName3:String, eventName4:String, eventName5:String, handler:haxe.Constraints.Function):Void { })
	function addListener(eventName:String, handler:haxe.Constraints.Function):Void;
	function removeListener(eventName:String, handler:haxe.Constraints.Function):Void;
	function emit(eventName:String, args:haxe.extern.Rest<Dynamic>):Void;
	function hasHandler(eventName:String):Bool;
}
typedef IPipelineFunction = { };
extern class Pipeline {
	var registeredFunctions : { };
	function registerFunction(fn:IPipelineFunction, label:String):Void;
	function warnIfFunctionNotRegistered(fn:IPipelineFunction):Void;
	function add(functions:haxe.extern.Rest<IPipelineFunction>):Void;
	function after(existingFn:IPipelineFunction, newFn:IPipelineFunction):Void;
	function before(existingFn:IPipelineFunction, newFn:IPipelineFunction):Void;
	function remove(fn:IPipelineFunction):Void;
	function run(tokens:Array<String>):Array<String>;
	function reset():Void;
	function toJSON():Dynamic;
	static function load(serialised:Dynamic):Pipeline;
}
extern class Vector {
	var list : Node;
	function magnitude():Float;
	function dot(otherVector:Vector):Float;
	function similarity(otherVector:Vector):Float;
}
extern class Node {
	var idx : Float;
	var val : Float;
	var next : Node;
	function new(idx:Float, val:Float, next:Node):Void;
}
extern class SortedSet<T> {
	var elements : Array<T>;
	var length : Float;
	function add(values:haxe.extern.Rest<T>):Void;
	function toArray():Array<T>;
	function map(fn:haxe.Constraints.Function, ctx:Dynamic):Array<T>;
	function forEach(fn:haxe.Constraints.Function, ctx:Dynamic):Dynamic;
	function indexOf(elem:T, ?start:Float, ?end:Float):Float;
	function locationFor(elem:T, ?start:Float, ?end:Float):Float;
	function intersect(otherSet:SortedSet<T>):SortedSet<T>;
	function union(otherSet:SortedSet<T>):SortedSet<T>;
	function clone():SortedSet<T>;
	function toJSON():Dynamic;
	static function load<T>(serialisedData:Array<T>):SortedSet<T>;
}
typedef IIndexField = {
	var name : String;
	var boost : Float;
};
typedef IIndexSearchResult = {
	var ref : Dynamic;
	var score : Float;
};
extern class Index {
	var eventEmitter : EventEmitter;
	var documentStore : Store<String>;
	var tokenStore : TokenStore;
	var corpusTokens : SortedSet<String>;
	var pipeline : Pipeline;
	var _fields : Array<IIndexField>;
	var _ref : String;
	var _idfCache : { };
	@:overload(function(eventName:String, eventName2:String, handler:haxe.Constraints.Function):Void { })
	@:overload(function(eventName:String, eventName2:String, eventName3:String, handler:haxe.Constraints.Function):Void { })
	@:overload(function(eventName:String, eventName2:String, eventName3:String, eventName4:String, handler:haxe.Constraints.Function):Void { })
	@:overload(function(eventName:String, eventName2:String, eventName3:String, eventName4:String, eventName5:String, handler:haxe.Constraints.Function):Void { })
	function on(eventName:String, handler:haxe.Constraints.Function):Void;
	function off(eventName:String, handler:haxe.Constraints.Function):Void;
	function field(fieldName:String, ?options:{ @:optional
	var boost : Float; }):Index;
	function ref(refName:String):Index;
	function add(doc:Dynamic, ?emitEvent:Bool):Void;
	function remove(doc:Dynamic, ?emitEvent:Bool):Void;
	function update(doc:Dynamic, ?emitEvent:Bool):Void;
	function idf(token:String):String;
	function search(query:String):Array<IIndexSearchResult>;
	function documentVector(documentRef:String):Vector;
	function toJSON():Dynamic;
	function use(plugin:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Void;
	static function load(serialisedData:Dynamic):Index;
}
extern class Store<T> {
	var store : { };
	var length : Float;
	function set(id:String, tokens:SortedSet<T>):Void;
	function get(id:String):SortedSet<T>;
	function has(id:String):Bool;
	function remove(id:String):Void;
	function toJSON():Dynamic;
	static function load<T>(serialisedData:Dynamic):Store<T>;
}
typedef ITokenDocument = {
	var ref : Float;
	var tf : Float;
};
extern class TokenStore {
	var root : { };
	var docs : { };
	var length : Float;
	function add(token:String, doc:ITokenDocument, ?root:TokenStore):Void;
	function has(token:String):Bool;
	function getNode(token:String):TokenStore;
	function get(token:String, root:TokenStore):{ };
	function count(token:String, root:TokenStore):Float;
	function remove(token:String, ref:String):Void;
	function expand(token:String, ?memo:Array<String>):Array<String>;
	function toJSON():Dynamic;
	static function load(serialisedData:Dynamic):TokenStore;
}
