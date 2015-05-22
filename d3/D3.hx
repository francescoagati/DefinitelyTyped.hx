typedef Selectors = {
	var select : { };
	var selectAll : { };
};
typedef D3Event = {
	>Event,
	var dx : Float;
	var dy : Float;
	var clientX : Float;
	var clientY : Float;
	var translate : Array<Float>;
	var scale : Float;
	var sourceEvent : D3Event;
	var x : Float;
	var y : Float;
	var keyCode : Float;
	@:optional
	var altKey : Bool;
	@:optional
	var ctrlKey : Bool;
	@:optional
	var metaKey : Bool;
	@:optional
	var shiftKey : Bool;
	var type : String;
};
typedef Base = {
	>Selectors,
	var behavior : Behavior.Behavior;
	var event : D3Event;
	function ascending<T>(a:T, b:T):Float;
	function descending<T>(a:T, b:T):Float;
	@:overload(function<T>(arr:Array<T>):T { })
	function min<T, U>(arr:Array<T>, map:?T -> ?Float -> U):U;
	@:overload(function<T>(arr:Array<T>):T { })
	function max<T, U>(arr:Array<T>, map:?T -> ?Float -> U):U;
	@:overload(function<T>(arr:Array<T>):Array<T> { })
	function extent<T, U>(arr:Array<T>, map:T -> U):Array<U>;
	@:overload(function(arr:Array<Float>):Float { })
	function sum<T>(arr:Array<T>, map:T -> Float):Float;
	@:overload(function(arr:Array<Float>):Float { })
	function mean<T>(arr:Array<T>, map:T -> Float):Float;
	@:overload(function(arr:Array<Float>):Float { })
	function median<T>(arr:Array<T>, map:T -> Float):Float;
	var quantile : Array<Float> -> Float -> Float;
	function bisect<T>(arr:Array<T>, x:T, ?low:Float, ?high:Float):Float;
	function bisectLeft<T>(arr:Array<T>, x:T, ?low:Float, ?high:Float):Float;
	function bisectRight<T>(arr:Array<T>, x:T, ?low:Float, ?high:Float):Float;
	function bisector(accessor:Dynamic -> Float -> Dynamic):Dynamic;
	function shuffle<T>(arr:Array<T>):Array<T>;
	function permute(arr:Array<Dynamic>, indexes:Array<Dynamic>):Array<Dynamic>;
	function zip(arrs:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	function transform(definition:String):Dynamic;
	function transpose(matrix:Array<Dynamic>):Array<Dynamic>;
	function pairs(arr:Array<Dynamic>):Array<Array<Dynamic>>;
	function keys(map:Dynamic):Array<String>;
	function values(map:Dynamic):Array<Dynamic>;
	function entries(map:Dynamic):Array<Dynamic>;
	function merge(map:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	var range : { };
	function nest():Nest;
	var xhr : { };
	var text : { };
	var json : String -> ?Dynamic -> Dynamic -> Void -> Xhr;
	var xml : { };
	var html : String -> ?DocumentFragment -> Void -> Xhr;
	var csv : Dsv;
	var dsv : Dsv;
	var tsv : Dsv;
	var time : Time.Time;
	var scale : Scale.ScaleBase;
	var interpolate : Transition.BaseInterpolate;
	var interpolateNumber : Transition.BaseInterpolate;
	var interpolateRound : Transition.BaseInterpolate;
	var interpolateString : Transition.BaseInterpolate;
	var interpolateRgb : Transition.BaseInterpolate;
	var interpolateHsl : Transition.BaseInterpolate;
	var interpolateHcl : Transition.BaseInterpolate;
	var interpolateLab : Transition.BaseInterpolate;
	var interpolateArray : Transition.BaseInterpolate;
	var interpolateObject : Transition.BaseInterpolate;
	var interpolateTransform : Transition.BaseInterpolate;
	var interpolators : Array<Transition.InterpolateFactory>;
	var layout : Layout.Layout;
	var svg : Svg.Svg;
	var random : Random;
	function format(specifier:String):Float -> String;
	function formatPrefix(value:Float, ?precision:Float):MetricPrefix;
	var version : String;
	function selection():_Selection<Dynamic>;
	var ns : { var prefix : { var svg : String; var xhtml : String; var xlink : String; var xml : String; var xmlns : String; }; function qualify(name:String):{ var space : String; var local : String; }; };
	var ease : String -> haxe.extern.Rest<Dynamic> -> D3.Transition.Transition;
	var rgb : { };
	var hcl : { };
	var hsl : { };
	var lab : { };
	var geo : Geo.Geo;
	var geom : Geom.Geom;
	function mouse(container:Dynamic):Array<Float>;
	function touches(container:Dynamic):Array<Array<Float>>;
	@:overload(function<T>(value:T):Dynamic -> T { })
	function functor<R, T>(value:R -> T):R -> T;
	var map : { };
	var set : { };
	function dispatch(types:haxe.extern.Rest<String>):Dispatch;
	function rebind(target:Dynamic, source:Dynamic, names:haxe.extern.Rest<Dynamic>):Dynamic;
	function requote(str:String):String;
	var timer : { function flush():Void; };
	function transition():Transition.Transition;
	function round(x:Float, n:Float):Float;
};
typedef Dispatch = {
	var on : { };
};
typedef MetricPrefix = {
	var scale : Float -> Float;
	var symbol : String;
};
typedef Xhr = {
	var header : { };
	var mimeType : { };
	var response : { };
	function get(?callback:XMLHttpRequest -> Void):Xhr;
	var post : { };
	var send : { };
	function abort():Xhr;
	var on : String -> Dynamic -> ?Float -> Dynamic -> Xhr;
};
typedef Dsv = {
	function parse(string:String, ?accessor:Dynamic -> ?Float -> Dynamic):Array<Dynamic>;
	function parseRows(string:String, accessor:Array<Dynamic> -> Float -> Dynamic):Dynamic;
	function format(rows:Array<Dynamic>):String;
};
typedef _Selection<T> = {
	>Selectors,
	>Array<Dynamic>,
	var attr : { };
	var classed : { };
	var style : { };
	var property : { };
	var text : { };
	var html : { };
	var append : { };
	var insert : { };
	var remove : Void -> _Selection<T>;
	var empty : Void -> Bool;
	var data : { };
	var datum : { };
	var filter : { };
	function call(callback:_Selection<T> -> haxe.extern.Rest<Dynamic> -> Void, args:haxe.extern.Rest<Dynamic>):_Selection<T>;
	function each(eachFunction:T -> Float -> Dynamic):_Selection<T>;
	var on : { };
	function size():Float;
	function transition():Transition.Transition;
	function sort(?comparator:T -> T -> Float):_Selection<T>;
	var order : Void -> _Selection<T>;
	var node : Void -> E;
};
typedef Selection = {
	>_Selection<Dynamic>,
};
typedef _EnterSelection<T> = {
	var append : { };
	var insert : { };
	var select : String -> _Selection<T>;
	var empty : Void -> Bool;
	var node : Void -> Element;
	var call : _EnterSelection<T> -> Void -> _EnterSelection<T>;
	var size : Void -> Float;
};
typedef EnterSelection = {
	>_EnterSelection<Dynamic>,
};
typedef _UpdateSelection<T> = {
	>_Selection<T>,
	var enter : Void -> _EnterSelection<T>;
	var update : Void -> _Selection<T>;
	var exit : Void -> _Selection<T>;
};
typedef UpdateSelection = {
	>_UpdateSelection<Dynamic>,
};
typedef NestKeyValue = {
	var key : String;
	var values : Dynamic;
};
typedef Nest = {
	function key(keyFunction:Dynamic -> Float -> String):Nest;
	function sortKeys(comparator:Dynamic -> Dynamic -> Float):Nest;
	function sortValues(comparator:Dynamic -> Dynamic -> Float):Nest;
	function rollup(rollupFunction:Dynamic -> Float -> Dynamic):Nest;
	function map(values:Array<Dynamic>, ?mapType:Dynamic):Dynamic;
	function entries(values:Array<Dynamic>):Array<NestKeyValue>;
};
typedef MapKeyValue<T> = {
	var key : String;
	var value : T;
};
typedef Map<T> = {
	function has(key:String):Bool;
	function get(key:String):T;
	function set(key:String, value:T):T;
	function remove(key:String):Bool;
	function keys():Array<String>;
	function values():Array<T>;
	function entries():Array<MapKeyValue<T>>;
	function forEach(func:String -> T -> Void):Void;
	function empty():Bool;
	function size():Float;
};
typedef Set<T> = {
	function has(value:T):Bool;
	function add(value:T):T;
	function remove(value:T):Bool;
	function values():Array<String>;
	function forEach(func:String -> Void):Void;
	function empty():Bool;
	function size():Float;
};
typedef Random = {
	function normal(?mean:Float, ?deviation:Float):Void -> Float;
	function logNormal(?mean:Float, ?deviation:Float):Void -> Float;
	function irwinHall(count:Float):Void -> Float;
};
