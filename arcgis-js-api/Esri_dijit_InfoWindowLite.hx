extern class InfoWindowLite extends InfoWindowBase {
	var anchor : String;
	var coords : Point;
	var fixedAnchor : String;
	var isShowing : Bool;
	function hide():Void;
	function move(point:Point):Void;
	function resize(width:Float, height:Float):Void;
	function setContent(content:Dynamic):Void;
	function setFixedAnchor(anchor:String):Void;
	function setTitle(title:String):InfoWindow;
	function show(point:Point, ?placement:String):Void;
	function startup():Void;
	@:overload(function(type:Show, listener:{ var target : InfoWindowLite; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Hide, listener:{ var target : InfoWindowLite; } -> Void):esri.Handle;
}
