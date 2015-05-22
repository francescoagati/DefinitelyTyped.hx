extern class InfoWindowBase {
	var domNode : Dynamic;
	var isShowing : Bool;
	function destroyDijits():Void;
	function hide():Void;
	@:overload(function(value:HTMLElement, parentNode:Node):Void { })
	function place(value:String, parentNode:Node):Void;
	function resize(width:Float, height:Float):Void;
	@:overload(function(content:Dynamic):Void { })
	function setContent(content:String):Void;
	function setMap(map:Map):Void;
	@:overload(function(title:Dynamic):Void { })
	function setTitle(title:String):Void;
	function show(location:Point):Void;
	function startupDijits():Void;
	function unsetMap(map:Map):Void;
	@:overload(function(type:Show, listener:{ var target : InfoWindowBase; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Hide, listener:{ var target : InfoWindowBase; } -> Void):esri.Handle;
}
