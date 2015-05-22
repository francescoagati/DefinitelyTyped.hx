typedef Format = {
	@:optional
	var type : String;
};
typedef Transform = { };
typedef Scale = {
	@:optional
	var name : String;
	@:optional
	var type : String;
	@:optional
	var domain : Dynamic;
	@:optional
	var domainMin : Dynamic;
	@:optional
	var domainMax : Dynamic;
	@:optional
	var range : Dynamic;
	@:optional
	var rangeMin : Dynamic;
	@:optional
	var rangeMax : Dynamic;
	@:optional
	var reverse : Bool;
	@:optional
	var round : Bool;
	@:optional
	var points : Bool;
	@:optional
	var padding : Float;
	@:optional
	var sort : Bool;
	@:optional
	var clamp : Bool;
	@:optional
	var nice : Dynamic;
	@:optional
	var exponent : Float;
	@:optional
	var zero : Bool;
};
typedef Axis = {
	var type : String;
	var scale : String;
	@:optional
	var orient : String;
	@:optional
	var title : String;
	@:optional
	var titleOffset : Float;
	@:optional
	var format : String;
	@:optional
	var ticks : Float;
	@:optional
	var values : Array<Dynamic>;
	@:optional
	var subdivide : Float;
	@:optional
	var tickPadding : Float;
	@:optional
	var tickSize : Float;
	@:optional
	var tickSizeMajor : Float;
	@:optional
	var tickSizeMinor : Float;
	@:optional
	var tickSizeEnd : Float;
	@:optional
	var offset : Dynamic;
	@:optional
	var layer : String;
	@:optional
	var grid : Bool;
	@:optional
	var properties : Axis.Properties;
};
