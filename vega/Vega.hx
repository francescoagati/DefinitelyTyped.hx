typedef Parse = {
	@:overload(function(spec:Spec, callback:ViewArgs -> View -> Void):Void { })
	function spec(url:String, callback:ViewArgs -> View -> Void):Void;
	function data(dataSet:Array<Data>, callback:Void -> Void):Void;
};
typedef ViewArgs = {
	var el : Dynamic;
	@:optional
	var data : Dynamic;
	@:optional
	var hover : Bool;
	@:optional
	var renderer : String;
};
typedef View = {
	@:overload(function(w:Float):View { })
	function width():Float;
	@:overload(function(h:Float):View { })
	function height():Float;
	@:overload(function(p:Padding):View { })
	function padding():Padding;
	@:overload(function(v:Array<Float>):View { })
	function viewport():Array<Float>;
	function renderer(r:String):View;
	@:overload(function(d:Dynamic):View { })
	function data():Runtime.DataSets;
	@:overload(function(node:Element):View { })
	function initialize(selector:String):View;
	function render(?r:Array<Dynamic>):View;
	function update(?options:UpdateOptions):View;
	function model():Vega.Model;
	@:overload(function(defs:Defs):View { })
	function defs():Defs;
};
typedef Padding = {
	var top : Float;
	var right : Float;
	var bottom : Float;
	var left : Float;
};
typedef UpdateOptions = {
	@:optional
	var props : String;
	@:optional
	var items : Dynamic;
	@:optional
	var duration : Float;
	@:optional
	var ease : String;
};
typedef Bounds = {
	var x1 : Float;
	var y1 : Float;
	var x2 : Float;
	var y2 : Float;
	function clear():Bounds;
	function set(x1:Float, y1:Float, x2:Float, y2:Float):Bounds;
	function add(x:Float, y:Float):Bounds;
	function expand(d:Float):Bounds;
	function round():Bounds;
	function translate(dx:Float, dy:Float):Bounds;
	function rotate(angle:Float, x:Float, y:Float):Bounds;
	function union(b:Bounds):Bounds;
	function encloses(b:Bounds):Bool;
	function intersects(b:Bounds):Bool;
	function contains(x:Float, y:Float):Bool;
	function width():Float;
	function height():Float;
};
typedef Model = {
	@:overload(function(defs:Defs):Model { })
	function defs():Defs;
	@:overload(function(data:Runtime.DataSets):Model { })
	function data():Runtime.DataSets;
	function ingest(name:String, tx:Dynamic, input:Dynamic):Void;
	function dependencies(name:String, tx:Dynamic):Void;
	function width(w:Float):Model;
	function height(h:Float):Model;
	@:overload(function(node:Node):Model { })
	function scene():Node;
	function build():Model;
	function encode(?trans:Dynamic, ?request:String, ?item:Dynamic):Model;
	function reset():Model;
};
