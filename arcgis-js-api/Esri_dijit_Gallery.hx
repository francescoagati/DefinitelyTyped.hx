extern class Gallery {
	@:overload(function(params:esri.GalleryOptions, srcNodeRef:String):Void { })
	function new(params:esri.GalleryOptions, srcNodeRef:Node):Void;
	function destroy():Void;
	function getFocusedItem():Dynamic;
	function getSelectedItem():Dynamic;
	function next():Void;
	function previous():Void;
	function select(item:Dynamic):Void;
	function setFocus(item:Dynamic):Void;
	function startup():Void;
	@:overload(function(type:Select, listener:{ var item : Dynamic; var target : Gallery; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Focus, listener:{ var item : Dynamic; var target : Gallery; } -> Void):esri.Handle;
}
