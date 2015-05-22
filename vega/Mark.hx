typedef From = {
	@:optional
	var data : String;
	@:optional
	var transform : Array<Data.Transform>;
};
typedef PropertySets = {
	@:optional
	var enter : PropertySet;
	@:optional
	var exit : PropertySet;
	@:optional
	var update : PropertySet;
	@:optional
	var hover : PropertySet;
};
typedef PropertySet = {
	@:optional
	var x : ValueRef;
	@:optional
	var x2 : ValueRef;
	@:optional
	var width : ValueRef;
	@:optional
	var y : ValueRef;
	@:optional
	var y2 : ValueRef;
	@:optional
	var height : ValueRef;
	@:optional
	var opacity : ValueRef;
	@:optional
	var fill : ValueRef;
	@:optional
	var fillOpacity : ValueRef;
	@:optional
	var stroke : ValueRef;
	@:optional
	var strokeWidth : ValueRef;
	@:optional
	var strokeOpacity : ValueRef;
	@:optional
	var strokeDash : ValueRef;
	@:optional
	var strokeDashOffset : ValueRef;
	@:optional
	var size : ValueRef;
	@:optional
	var shape : ValueRef;
	@:optional
	var path : ValueRef;
	@:optional
	var innerRadius : ValueRef;
	@:optional
	var outerRadius : ValueRef;
	@:optional
	var startAngle : ValueRef;
	@:optional
	var endAngle : ValueRef;
	@:optional
	var interpolate : ValueRef;
	@:optional
	var tension : ValueRef;
	@:optional
	var align : ValueRef;
	@:optional
	var baseline : ValueRef;
	@:optional
	var url : ValueRef;
	@:optional
	var text : ValueRef;
	@:optional
	var dx : ValueRef;
	@:optional
	var dy : ValueRef;
	@:optional
	var angle : ValueRef;
	@:optional
	var font : ValueRef;
	@:optional
	var fontSize : ValueRef;
	@:optional
	var fontWeight : ValueRef;
	@:optional
	var fontStyle : ValueRef;
};
typedef ValueRef = {
	@:optional
	var value : Dynamic;
	@:optional
	var field : Dynamic;
	@:optional
	var group : Dynamic;
	@:optional
	var scale : Dynamic;
	@:optional
	var mult : Float;
	@:optional
	var offset : Float;
	@:optional
	var band : Bool;
};
