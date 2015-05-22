typedef Geo = {
	function path():Path;
	function circle():Circle;
	function area(feature:Dynamic):Float;
	function bounds(feature:Dynamic):Array<Array<Float>>;
	function centroid(feature:Dynamic):Array<Float>;
	function distance(a:Array<Float>, b:Array<Float>):Float;
	function interpolate(a:Array<Float>, b:Array<Float>):Float -> Array<Float>;
	function length(feature:Dynamic):Float;
	function projection(raw:RawProjection):Projection;
	function projectionMutator(rawFactory:RawProjection):ProjectionMutator;
	function albers():Projection;
	function albersUsa():Projection;
	var azimuthalEqualArea : { var raw : RawProjection; };
	var azimuthalEquidistant : { var raw : RawProjection; };
	var conicConformal : { function raw(phi1:Float, phi2:Float):RawProjection; };
	var conicEquidistant : { function raw(phi1:Float, phi2:Float):RawProjection; };
	var conicEqualArea : { function raw(phi1:Float, phi2:Float):RawProjection; };
	var equirectangular : { var raw : RawProjection; };
	var gnomonic : { var raw : RawProjection; };
	var mercator : { var raw : RawProjection; };
	var orthographic : { var raw : RawProjection; };
	var stereographic : { var raw : RawProjection; };
	var transverseMercator : { var raw : RawProjection; };
	function stream(object:GeoJSON, listener:Stream):Void;
	function graticule():Graticule;
	function greatArc():GreatArc;
	function rotation(rotation:Array<Float>):Rotation;
};
typedef Path = {
	var projection : { };
	var context : { };
	function area(feature:Dynamic):Dynamic;
	function centroid(feature:Dynamic):Dynamic;
	function bounds(feature:Dynamic):Dynamic;
	var pointRadius : { };
};
typedef Context = {
	function beginPath():Dynamic;
	function moveTo(x:Float, y:Float):Dynamic;
	function lineTo(x:Float, y:Float):Dynamic;
	function arc(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float):Dynamic;
	function closePath():Dynamic;
};
typedef Circle = {
	var origin : { };
	var angle : { };
	var precision : { };
};
typedef Graticule = {
	function lines():Array<GeoJSON>;
	function outline():GeoJSON;
	var extent : { };
	var minorExtent : { };
	var majorExtent : { };
	var step : { };
	var minorStep : { };
	var majorStep : { };
	var precision : { };
};
typedef GreatArc = {
	function distance():Float;
	var source : { };
	var target : { };
	var precision : { };
};
typedef GeoJSON = {
	var coordinates : Array<Array<Float>>;
	var type : String;
};
typedef RawProjection = {
	@:optional
	function invert(x:Float, y:Float):Array<Float>;
};
typedef Projection = {
	@:optional
	function invert(point:Array<Float>):Array<Float>;
	var rotate : { };
	var center : { };
	var parallels : { };
	var translate : { };
	var scale : { };
	var clipAngle : { };
	var clipExtent : { };
	var precision : { };
	function stream(?listener:Stream):Stream;
};
typedef Stream = {
	function point(x:Float, y:Float, ?z:Float):Void;
	function lineStart():Void;
	function lineEnd():Void;
	function polygonStart():Void;
	function polygonEnd():Void;
	function sphere():Void;
};
typedef Rotation = {
	>Array<Dynamic>,
	function invert(location:Array<Float>):Rotation;
};
typedef ProjectionMutator = { };
