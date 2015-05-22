typedef Properties = {
	@:optional
	var majorTicks : PropertySet;
	@:optional
	var minorTicks : PropertySet;
	@:optional
	var grid : PropertySet;
	@:optional
	var labels : PropertySet;
	@:optional
	var title : PropertySet;
	@:optional
	var axis : PropertySet;
};
typedef Legend = { };
typedef Mark = {
	var type : String;
	@:optional
	var name : String;
	@:optional
	var description : String;
	@:optional
	var from : Mark.From;
	@:optional
	var properties : PropertySets;
	@:optional
	var key : String;
	@:optional
	var delay : ValueRef;
};
