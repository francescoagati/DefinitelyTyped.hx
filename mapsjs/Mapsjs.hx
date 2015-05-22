extern class Envelope {
	function new(minX:Float, minY:Float, maxX:Float, maxY:Float):Void;
	function getMinX():Float;
	function getMinY():Float;
	function getMaxX():Float;
	function getMaxY():Float;
	function clone():Envelope;
	function createFromMargins(marginX:Float, marginY:Float):Envelope;
	function createFromBleed(bleed:Float):Envelope;
	function getCenter():Point;
	function getWidth():Float;
	function getHeight():Float;
	function getArea():Float;
	function toObject():EnvObject;
	function getUL():Point;
	function getUR():Point;
	function getLL():Point;
	function getLR():Point;
	function getAspect():Float;
	function equals(env:Envelope):Bool;
	function toString():String;
	function toGeometry():Geometry;
	function contains(pt:Point):Bool;
}
extern class MapsjsTopLevel {
	static function clusterPoints(options:{ var data : Array<{ }>; var pointKey : String; @:optional
	var valueFunction : Dynamic -> Float; var radiusFunction : Dynamic -> Float; @:optional
	var aggregateFunction : Dynamic -> Dynamic -> Dynamic -> Void; var mapUnitsPerPixel : Float; @:optional
	var marginPixels : Float; }):Array<{ }>;
}
extern class MapsjsTopLevel {
	static function clusterPoints(options:{ var data : Array<{ }>; var pointKey : String; @:optional
	var valueFunction : Dynamic -> Float; var radiusFunction : Dynamic -> Float; @:optional
	var aggregateFunction : Dynamic -> Dynamic -> Dynamic -> Void; var mapUnitsPerPixel : Float; @:optional
	var marginPixels : Float; }):Array<{ }>;
}
