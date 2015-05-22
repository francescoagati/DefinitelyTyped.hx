extern class Measurement {
	@:overload(function(params:esri.MeasurementOptions, srcNodeRef:String):Void { })
	function new(params:esri.MeasurementOptions, srcNodeRef:Node):Void;
	function clearResult():Void;
	function destroy():Void;
	function getTool():Dynamic;
	function getUnit():String;
	function hide():Void;
	function hideTool(toolName:String):Void;
	@:overload(function(geometry:Polyline):Void { })
	@:overload(function(geometry:Polygon):Void { })
	function measure(geometry:Point):Void;
	function setTool(toolName:String, activate:Bool):Void;
	function show():Void;
	function showTool(toolName:String):Void;
	function startup():Void;
	@:overload(function(type:Measure-end, listener:{ var geometry : Geometry; var toolName : String; var unitName : String; var values : Dynamic; var target : Measurement; } -> Void):esri.Handle { })
	@:overload(function(type:Measure-start, listener:{ var toolName : String; var unitName : String; var target : Measurement; } -> Void):esri.Handle { })
	@:overload(function(type:Tool-change, listener:{ var toolName : String; var unitName : String; var target : Measurement; } -> Void):esri.Handle { })
	@:overload(function(type:Unit-change, listener:{ var toolName : String; var unitName : String; var target : Measurement; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Measure, listener:{ var geometry : Geometry; var toolName : String; var unitName : String; var values : Float; var target : Measurement; } -> Void):esri.Handle;
}
