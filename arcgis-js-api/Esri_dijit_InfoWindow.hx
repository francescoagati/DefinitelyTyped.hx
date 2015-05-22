extern class InfoWindow extends InfoWindowBase {
	static var ANCHOR_LOWERLEFT : Dynamic;
	static var ANCHOR_LOWERRIGHT : Dynamic;
	static var ANCHOR_UPPERLEFT : Dynamic;
	static var ANCHOR_UPPERRIGHT : Dynamic;
	var anchor : String;
	var coords : Point;
	var fixedAnchor : String;
	var isShowing : Bool;
	@:overload(function(params:Dynamic, srcNodeRef:String):Void { })
	function new(params:Dynamic, srcNodeRef:Node):Void;
	function hide():Void;
	function move(point:Point):Void;
	function resize(width:Float, height:Float):Void;
	function setContent(content:Dynamic):InfoWindow;
	function setFixedAnchor(anchor:String):Void;
	function setTitle(title:String):InfoWindow;
	function show(point:Point, ?placement:String):Void;
	function startup():Void;
	@:overload(function(type:Show, listener:{ var target : InfoWindow; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Hide, listener:{ var target : InfoWindow; } -> Void):esri.Handle;
}
