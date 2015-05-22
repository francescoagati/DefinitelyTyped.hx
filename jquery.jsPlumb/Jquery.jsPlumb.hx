typedef JsPlumbInstance = {
	function setRenderMode(renderMode:String):String;
	function bind(event:String, callback:Dynamic -> Void):Void;
	function unbind(?event:String):Void;
	function ready(callback:Void -> Void):Void;
	function importDefaults(defaults:Defaults):Void;
	var Defaults : Defaults;
	function restoreDefaults():Void;
	function addClass(el:Dynamic, clazz:String):Void;
	function addEndpoint(ep:String):Dynamic;
	function removeClass(el:Dynamic, clazz:String):Void;
	function hasClass(el:Dynamic, clazz:String):Void;
	@:overload(function(ids:Array<String>, ?options:DragOptions):JsPlumbInstance { })
	function draggable(el:String, ?options:DragOptions):JsPlumbInstance;
	function connect(connection:ConnectParams, ?referenceParams:ConnectParams):Connection;
	function makeSource(el:String, options:SourceOptions):Void;
	function makeTarget(el:String, options:TargetOptions):Void;
	function repaintEverything():Void;
	function detachEveryConnection():Void;
	function detachAllConnections(el:String):Void;
	@:overload(function(el:Element, ?recurse:Bool):JsPlumbInstance { })
	function removeAllEndpoints(el:String, ?recurse:Bool):JsPlumbInstance;
	function select(params:SelectParams):Connections;
	function getConnections(?options:Dynamic, ?flat:Dynamic):Array<Dynamic>;
	@:overload(function(endpoint:Endpoint, ?doNotRepaintAfterwards:Bool):JsPlumbInstance { })
	function deleteEndpoint(uuid:String, ?doNotRepaintAfterwards:Bool):JsPlumbInstance;
	@:overload(function(el:Element):JsPlumbInstance { })
	function repaint(el:String):JsPlumbInstance;
	@:overload(function(defaults:Defaults):JsPlumbInstance { })
	function getInstance():JsPlumbInstance;
	function getInstanceIndex():Float;
	var SVG : String;
	var CANVAS : String;
	var VML : String;
};
typedef Defaults = {
	@:optional
	var Endpoint : Array<Dynamic>;
	@:optional
	var PaintStyle : PaintStyle;
	@:optional
	var HoverPaintStyle : PaintStyle;
	@:optional
	var ConnectionsDetachable : Bool;
	@:optional
	var ReattachConnections : Bool;
	@:optional
	var ConnectionOverlays : Array<Array<Dynamic>>;
	@:optional
	var Container : Dynamic;
	@:optional
	var DragOptions : DragOptions;
};
typedef PaintStyle = {
	var strokeStyle : String;
	var lineWidth : Float;
};
typedef ArrowOverlay = {
	var location : Float;
	var id : String;
	var length : Float;
	var foldback : Float;
};
typedef LabelOverlay = {
	var label : String;
	var id : String;
	var location : Float;
};
typedef Connections = {
	function detach():Void;
	var length : Float;
};
typedef ConnectParams = {
	@:optional
	var source : Dynamic;
	@:optional
	var target : Dynamic;
	@:optional
	var detachable : Bool;
	@:optional
	var deleteEndpointsOnDetach : Bool;
	@:optional
	var endPoint : String;
	@:optional
	var anchor : String;
	@:optional
	var anchors : Array<Dynamic>;
	@:optional
	var label : String;
};
typedef DragOptions = {
	@:optional
	var containment : String;
};
typedef SourceOptions = {
	var parent : String;
	@:optional
	var endpoint : String;
	@:optional
	var anchor : String;
	@:optional
	var connector : Array<Dynamic>;
	@:optional
	var connectorStyle : PaintStyle;
};
typedef TargetOptions = {
	@:optional
	var isTarget : Bool;
	@:optional
	var maxConnections : Float;
	@:optional
	var uniqueEndpoint : Bool;
	@:optional
	var deleteEndpointsOnDetach : Bool;
	@:optional
	var endpoint : String;
	@:optional
	var dropOptions : DropOptions;
	@:optional
	var anchor : Dynamic;
};
typedef DropOptions = {
	var hoverClass : String;
};
typedef SelectParams = {
	@:optional
	var scope : String;
	var source : String;
	var target : String;
};
typedef Connection = {
	function setDetachable(detachable:Bool):Void;
	function setParameter<T>(name:String, value:T):Void;
	var endpoints : Array<Endpoint>;
};
typedef Endpoint = { };
extern class Jquery.jsPlumbTopLevel {
	static var jsPlumb : JsPlumbInstance;
}
