extern class FeatureTemplate {
	static var TOOL_ARROW : Dynamic;
	static var TOOL_AUTO_COMPLETE_POLYGON : Dynamic;
	static var TOOL_CIRCLE : Dynamic;
	static var TOOL_ELLIPSE : Dynamic;
	static var TOOL_FREEHAND : Dynamic;
	static var TOOL_LINE : Dynamic;
	static var TOOL_NONE : Dynamic;
	static var TOOL_POINT : Dynamic;
	static var TOOL_POLYGON : Dynamic;
	static var TOOL_RECTANGLE : Dynamic;
	static var TOOL_TRIANGLE : Dynamic;
	var description : String;
	var drawingTool : String;
	var name : String;
	var prototype : Graphic;
	function toJson():Dynamic;
}
