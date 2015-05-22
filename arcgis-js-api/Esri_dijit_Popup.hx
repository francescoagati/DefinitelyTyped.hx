extern class Popup extends InfoWindowBase {
	var anchor : String;
	var count : Float;
	var deferreds : Array<Dynamic>;
	var domNode : Dynamic;
	var features : Array<Graphic>;
	var fillSymbol : FillSymbol;
	var hideDelay : Float;
	var highlight : Bool;
	var isShowing : Bool;
	var keepHighlightOnHide : Bool;
	var lineSymbol : LineSymbol;
	var location : Point;
	var marginLeft : Float;
	var marginTop : Float;
	var markerSymbol : MarkerSymbol;
	var offsetX : Float;
	var offsetY : Float;
	var pagingControls : Bool;
	var pagingInfo : Bool;
	var popupWindow : Bool;
	var selectedIndex : Float;
	var titleInBody : Bool;
	var visibleWhenEmpty : Bool;
	var zoomFactor : Float;
	@:overload(function(options:esri.PopupOptions, srcNodeRef:String):Void { })
	function new(options:esri.PopupOptions, srcNodeRef:Node):Void;
	function clearFeatures():Void;
	function destroy():Void;
	function getSelectedFeature():Graphic;
	function hide():Void;
	function maximize():Void;
	function reposition():Void;
	function resize(width:Float, height:Float):Void;
	function restore():Void;
	function select(index:Float):Void;
	function selectNext():Void;
	function selectPrevious():Void;
	function set(name:String, value:Dynamic):Popup;
	@:overload(function(content:haxe.Constraints.Function):Void { })
	function setContent(content:String):Void;
	@:overload(function(features:Array<Dynamic>):Void { })
	function setFeatures(features:Array<Graphic>):Void;
	@:overload(function(title:haxe.Constraints.Function):Void { })
	function setTitle(title:String):Void;
	function show(location:Point, ?options:Dynamic):Void;
	function startup():Void;
	@:overload(function(type:Hide, listener:{ var target : Popup; } -> Void):esri.Handle { })
	@:overload(function(type:Maximize, listener:{ var target : Popup; } -> Void):esri.Handle { })
	@:overload(function(type:Restore, listener:{ var target : Popup; } -> Void):esri.Handle { })
	@:overload(function(type:Selection-change, listener:{ var target : Popup; } -> Void):esri.Handle { })
	@:overload(function(type:Set-features, listener:{ var target : Popup; } -> Void):esri.Handle { })
	@:overload(function(type:Show, listener:{ var target : Popup; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Clear-features, listener:{ var target : Popup; } -> Void):esri.Handle;
}
