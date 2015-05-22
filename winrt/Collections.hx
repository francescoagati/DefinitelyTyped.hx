@:enum abstract CollectionChange(Int) {
	var reset = 0;
	var itemInserted = 1;
	var itemRemoved = 2;
	var itemChanged = 3;
}
typedef IVectorChangedEventArgs = {
	var collectionChange : Windows.Foundation.Collections.CollectionChange;
	var index : Float;
};
typedef IPropertySet = {
	>Windows.Foundation.Collections.IObservableMap<String, Dynamic>,
	>Windows.Foundation.Collections.IMap<String, Dynamic>,
	>Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>,
};
extern class PropertySet {
	var size : Float;
	var onmapchanged : Dynamic;
	function lookup(key:String):Dynamic;
	function hasKey(key:String):Bool;
	function getView():Windows.Foundation.Collections.IMapView<String, Dynamic>;
	function insert(key:String, value:Dynamic):Bool;
	function remove(key:String):Void;
	function clear():Void;
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>;
}
typedef IIterable<T> = {
	function first():Windows.Foundation.Collections.IIterator<T>;
};
typedef IIterator<T> = {
	var current : T;
	var hasCurrent : Bool;
	function moveNext():Bool;
	function getMany():{ var items : Array<T>; var returnValue : Float; };
};
typedef IVectorView<T> = {
	>Windows.Foundation.Collections.IIterable<T>,
	var size : Float;
	function getAt(index:Float):T;
	function indexOf(value:T):{ var index : Float; var returnValue : Bool; };
	function getMany(startIndex:Float):{ var items : Array<T>; var returnValue : Float; };
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<T>>):Array<T>;
	function join(seperator:String):String;
	function pop():T;
	function push(items:haxe.extern.Rest<T>):Void;
	function reverse():Array<T>;
	function shift():T;
	@:overload(function(start:Float, end:Float):Array<T> { })
	function slice(start:Float):Array<T>;
	@:overload(function(compareFn:T -> T -> Float):Array<T> { })
	function sort():Array<T>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<T>):Array<T> { })
	function splice(start:Float):Array<T>;
	function unshift(items:haxe.extern.Rest<T>):Float;
	@:overload(function(searchElement:T, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:T):Float;
	@:overload(function(callbackfn:T -> Float -> Array<T> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:T -> Float -> Array<T> -> Bool):Bool;
	@:overload(function(callbackfn:T -> Float -> Array<T> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:T -> Float -> Array<T> -> Bool):Bool;
	@:overload(function(callbackfn:T -> Float -> Array<T> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:T -> Float -> Array<T> -> Void):Void;
	@:overload(function(callbackfn:T -> Float -> Array<T> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:T -> Float -> Array<T> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:T -> Float -> Array<T> -> Bool, thisArg:Dynamic):Array<T> { })
	function filter(callbackfn:T -> Float -> Array<T> -> Bool):Array<T>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<T> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<T> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<T> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<T> -> Dynamic):Dynamic;
	var length : Float;
};
typedef IVector<T> = {
	>Windows.Foundation.Collections.IIterable<T>,
	var size : Float;
	function getAt(index:Float):T;
	function getView():Windows.Foundation.Collections.IVectorView<T>;
	function indexOf(value:T):{ var index : Float; var returnValue : Bool; };
	function setAt(index:Float, value:T):Void;
	function insertAt(index:Float, value:T):Void;
	function removeAt(index:Float):Void;
	function append(value:T):Void;
	function removeAtEnd():Void;
	function clear():Void;
	function getMany(startIndex:Float):{ var items : Array<T>; var returnValue : Float; };
	function replaceAll(items:Array<T>):Void;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<T>>):Array<T>;
	function join(seperator:String):String;
	function pop():T;
	function push(items:haxe.extern.Rest<T>):Void;
	function reverse():Array<T>;
	function shift():T;
	@:overload(function(start:Float, end:Float):Array<T> { })
	function slice(start:Float):Array<T>;
	@:overload(function(compareFn:T -> T -> Float):Array<T> { })
	function sort():Array<T>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<T>):Array<T> { })
	function splice(start:Float):Array<T>;
	function unshift(items:haxe.extern.Rest<T>):Float;
	@:overload(function(searchElement:T, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:T):Float;
	@:overload(function(callbackfn:T -> Float -> Array<T> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:T -> Float -> Array<T> -> Bool):Bool;
	@:overload(function(callbackfn:T -> Float -> Array<T> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:T -> Float -> Array<T> -> Bool):Bool;
	@:overload(function(callbackfn:T -> Float -> Array<T> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:T -> Float -> Array<T> -> Void):Void;
	@:overload(function(callbackfn:T -> Float -> Array<T> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:T -> Float -> Array<T> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:T -> Float -> Array<T> -> Bool, thisArg:Dynamic):Array<T> { })
	function filter(callbackfn:T -> Float -> Array<T> -> Bool):Array<T>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<T> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<T> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<T> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<T> -> Dynamic):Dynamic;
	var length : Float;
};
typedef IKeyValuePair<K, V> = {
	var key : K;
	var value : V;
};
typedef IMap<K, V> = {
	>Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<K, V>>,
	var size : Float;
	function lookup(key:K):V;
	function hasKey(key:K):Bool;
	function getView():Windows.Foundation.Collections.IMapView<K, V>;
	function insert(key:K, value:V):Bool;
	function remove(key:K):Void;
	function clear():Void;
};
typedef IMapView<K, V> = {
	>Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<K, V>>,
	var size : Float;
	function lookup(key:K):V;
	function hasKey(key:K):Bool;
	function split():{ var first : Windows.Foundation.Collections.IMapView<K, V>; var second : Windows.Foundation.Collections.IMapView<K, V>; };
};
typedef VectorChangedEventHandler<T> = { };
typedef IObservableVector<T> = {
	>Windows.Foundation.Collections.IVector<T>,
	>Windows.Foundation.Collections.IIterable<T>,
	var onvectorchanged : Dynamic;
};
typedef IMapChangedEventArgs<K> = {
	var collectionChange : Windows.Foundation.Collections.CollectionChange;
	var key : K;
};
typedef MapChangedEventHandler<K, V> = { };
typedef IObservableMap<K, V> = {
	>Windows.Foundation.Collections.IMap<K, V>,
	>Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<K, V>>,
	var onmapchanged : Dynamic;
};
