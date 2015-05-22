extern class MosaicRule {
	static var METHOD_ATTRIBUTE : Dynamic;
	static var METHOD_CENTER : Dynamic;
	static var METHOD_LOCKRASTER : Dynamic;
	static var METHOD_NADIR : Dynamic;
	static var METHOD_NONE : Dynamic;
	static var METHOD_NORTHWEST : Dynamic;
	static var METHOD_SEAMLINE : Dynamic;
	static var METHOD_VIEWPOINT : Dynamic;
	static var OPERATION_BLEND : Dynamic;
	static var OPERATION_FIRST : Dynamic;
	static var OPERATION_LAST : Dynamic;
	static var OPERATION_MAX : Dynamic;
	static var OPERATION_MEAN : Dynamic;
	static var OPERATION_MIN : Dynamic;
	var ascending : Bool;
	var lockRasterIds : Array<Float>;
	var method : String;
	var multidimensionalDefinition : Array<DimensionalDefinition>;
	var objectIds : Array<Float>;
	var operation : String;
	var sortField : String;
	var sortValue : String;
	var viewpoint : Point;
	var where : String;
	@:overload(function(json:Dynamic):Void { })
	function new():Void;
	function toJson():Dynamic;
}
