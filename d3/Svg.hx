typedef Svg = {
	function symbol():Symbol;
	function axis():Axis;
	function arc():Arc;
	var line : { function radial():LineRadial; };
	var area : { function radial():AreaRadial; };
	function brush():Brush;
	function chord():Chord;
	var diagonal : { function radial():Diagonal; };
	var symbolTypes : Array<String>;
};
typedef Symbol = {
	var type : haxe.extern.EitherType<String, Dynamic -> Float -> String> -> Symbol;
	var size : haxe.extern.EitherType<Float, Dynamic -> Float -> Float> -> Symbol;
};
typedef Brush = {
	var x : { };
	var y : { };
	var extent : { };
	function clear():Brush;
	function empty():Bool;
	var on : { };
};
typedef Axis = {
	var scale : { };
	var orient : { };
	var ticks : { };
	var tickPadding : { };
	var tickValues : { };
	function tickSubdivide(count:Float):Axis;
	var tickSize : { };
	var innerTickSize : { };
	var outerTickSize : { };
	function tickFormat(formatter:Dynamic -> ?Float -> String):Axis;
	function nice(?count:Float):Axis;
};
typedef Arc = {
	var innerRadius : { };
	var outerRadius : { };
	var startAngle : { };
	var endAngle : { };
	function centroid(data:Dynamic, ?index:Float):Array<Float>;
};
typedef Line = {
	var x : { };
	var y : { };
	var interpolate : { };
	var tension : { };
	var defined : { };
};
typedef LineRadial = {
	var x : { };
	var y : { };
	var interpolate : { };
	var tension : { };
	var defined : { };
	var radius : { };
	var angle : { };
};
typedef Area = {
	var x : { };
	var x0 : { };
	var x1 : { };
	var y : { };
	var y0 : { };
	var y1 : { };
	var interpolate : { };
	var tension : { };
	var defined : { };
};
typedef AreaRadial = {
	var x : { };
	var x0 : { };
	var x1 : { };
	var y : { };
	var y0 : { };
	var y1 : { };
	var interpolate : { };
	var tension : { };
	var defined : { };
	var radius : { };
	var innerRadius : { };
	var outerRadius : { };
	var angle : { };
	var startAngle : { };
	var endAngle : { };
};
typedef Chord = {
	var radius : { };
	var startAngle : { };
	var endAngle : { };
	var source : { };
	var target : { };
};
typedef Diagonal = {
	var projection : { };
	var source : { };
	var target : { };
};
