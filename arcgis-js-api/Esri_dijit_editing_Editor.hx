extern class Editor {
	static var CREATE_TOOL_ARROW : Dynamic;
	static var CREATE_TOOL_AUTOCOMPLETE : Dynamic;
	static var CREATE_TOOL_CIRCLE : Dynamic;
	static var CREATE_TOOL_ELLIPSE : Dynamic;
	static var CREATE_TOOL_FREEHAND_POLYGON : Dynamic;
	static var CREATE_TOOL_FREEHAND_POLYLINE : Dynamic;
	static var CREATE_TOOL_POLYGON : Dynamic;
	static var CREATE_TOOL_POLYLINE : Dynamic;
	static var CREATE_TOOL_RECTANGLE : Dynamic;
	static var CREATE_TOOL_TRIANGLE : Dynamic;
	@:overload(function(params:esri.EditorOptions, srcNodeRef:String):Void { })
	function new(params:esri.EditorOptions, srcNodeRef:Node):Void;
	function startup():Void;
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Load, listener:{ var target : Editor; } -> Void):esri.Handle;
}
