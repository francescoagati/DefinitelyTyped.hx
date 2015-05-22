extern class Edit {
	static var EDIT_TEXT : Dynamic;
	static var EDIT_VERTICES : Dynamic;
	static var MOVE : Dynamic;
	static var ROTATE : Dynamic;
	static var SCALE : Dynamic;
	function new(map:Map, ?options:esri.EditOptions):Void;
	function activate(tool:String, graphic:Graphic, ?options:Dynamic):Void;
	function deactivate():Void;
	function getCurrentState():Dynamic;
	function refresh():Void;
	@:overload(function(type:Deactivate, listener:{ var graphic : Graphic; var info : Dynamic; var tool : String; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Graphic-click, listener:{ var graphic : Graphic; var info : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Graphic-first-move, listener:{ var graphic : Graphic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Graphic-move, listener:{ var graphic : Graphic; var transform : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Graphic-move-start, listener:{ var graphic : Graphic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Graphic-move-stop, listener:{ var graphic : Graphic; var transform : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Rotate, listener:{ var graphic : Graphic; var info : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Rotate-first-move, listener:{ var graphic : Graphic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Rotate-start, listener:{ var graphic : Graphic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Rotate-stop, listener:{ var graphic : Graphic; var info : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Scale, listener:{ var graphic : Graphic; var info : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Scale-first-move, listener:{ var graphic : Graphic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Scale-start, listener:{ var graphic : Graphic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Scale-stop, listener:{ var graphic : Graphic; var info : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Vertex-add, listener:{ var graphic : Graphic; var vertexinfo : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Vertex-click, listener:{ var graphic : Graphic; var vertexinfo : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Vertex-delete, listener:{ var graphic : Graphic; var vertexinfo : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Vertex-first-move, listener:{ var graphic : Graphic; var vertexinfo : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Vertex-mouse-out, listener:{ var graphic : Graphic; var vertexinfo : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Vertex-mouse-over, listener:{ var graphic : Graphic; var vertexinfo : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Vertex-move, listener:{ var graphic : Graphic; var transform : Dynamic; var vertexinfo : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Vertex-move-start, listener:{ var graphic : Graphic; var vertexinfo : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:Vertex-move-stop, listener:{ var graphic : Graphic; var transform : Dynamic; var vertexinfo : Dynamic; var target : Edit; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Activate, listener:{ var graphic : Graphic; var tool : String; var target : Edit; } -> Void):esri.Handle;
}
