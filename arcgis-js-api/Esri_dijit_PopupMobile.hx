extern class PopupMobile extends InfoWindowBase {
	var location : Point;
	@:overload(function(options:esri.PopupMobileOptions, srcNodeRef:String):Void { })
	function new(options:esri.PopupMobileOptions, srcNodeRef:Node):Void;
	function clearFeatures():Void;
	function destroy():Void;
	function getSelectedFeature():Graphic;
	function hide():Void;
	function select(index:Float):Void;
	function selectNext():Void;
	function selectPrevious():Void;
	@:overload(function(content:haxe.Constraints.Function):Void { })
	function setContent(content:String):Void;
	@:overload(function(features:Array<Dynamic>):Dynamic { })
	function setFeatures(features:Array<Graphic>):Dynamic;
	@:overload(function(title:haxe.Constraints.Function):Void { })
	function setTitle(title:String):Void;
	function show(location:Point):Void;
	function startup():Void;
	@:overload(function(type:Hide, listener:{ var target : PopupMobile; } -> Void):esri.Handle { })
	@:overload(function(type:Selection-change, listener:{ var target : PopupMobile; } -> Void):esri.Handle { })
	@:overload(function(type:Set-features, listener:{ var target : PopupMobile; } -> Void):esri.Handle { })
	@:overload(function(type:Show, listener:{ var target : PopupMobile; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Clear-features, listener:{ var target : PopupMobile; } -> Void):esri.Handle;
}
