extern class Layer {
	function new(id:String, ?useBackdrop:Bool, ?maxConcurrentRequests:Float):Void;
	function getId():String;
	function getUseBackdrop():Bool;
	function getDescriptor():Dynamic;
	function setDescriptor(d:Dynamic):Void;
	function notifyDescriptorChange():Void;
	function getRequestor():tile.Requestor;
	function setRequestor(req:tile.Requestor, ?desc:Dynamic):Void;
	function getRenderer():tile.Renderer;
	function setRenderer(r:Dynamic):Void;
	function notifyRendererChange():Void;
	function getIsVisible():Bool;
	function setIsVisible(v:Bool):Void;
	function getOpacity():Float;
	function setOpacity(o:Float):Void;
	function getMinZoomLevel():Float;
	function setMinZoomLevel(minZ:Float):Void;
	function getMaxZoomLevel():Float;
	function setMaxZoomLevel(maxZ:Float):Void;
	function setTileBleedPix(bleed:Float):Void;
	function setRetainInterlevelContent(retain:Bool):Void;
	function setEnableTileFadeIn(fadeIn:Bool):Void;
	function setNotifyErrorAction(action:Void -> Void):Void;
	function setNotifyLoadingQueueHasEmptiedAction(action:Void -> Void):Void;
	function setNotifyLoadingQueueProgressAction(action:Float -> Float -> Void):Void;
	function setRequestProcessor(processorFunc:tile.Requestor -> Dynamic -> tile.Quad -> Float -> HTMLElement -> Void -> String -> Void -> Void):Void;
	function preload(extents:Envelope, startZoomLevel:Float, endZoomLevel:Float):Void;
	function compose(extentsMapUnits:Envelope, extentsDeviceUnits:Envelope):{ var quadCollection : Array<tile.Quad>; var endpointCollection : Array<String>; var idxMinX : Float; var idxMinY : Float; var ulX : Float; var ulY : Float; };
	function dispose():Void;
}
extern class LayerOptions {
	function new(id:String, options:{ @:optional
	var useBackdrop : Bool; @:optional
	var maxConcurrentRequests : Float; @:optional
	var requestor : tile.Requestor; @:optional
	var descriptor : Dynamic; @:optional
	var renderer : tile.Renderer; @:optional
	var requestProcessor : Dynamic; @:optional
	var visible : Bool; @:optional
	var opacity : Float; @:optional
	var minZoomLevel : Float; @:optional
	var maxZoomLevel : Float; @:optional
	var tileBleedPix : Float; @:optional
	var retainInterlevelContent : Bool; @:optional
	var enableTileFadeIn : Bool; @:optional
	var notifyErrorAction : ?String -> Void; @:optional
	var notifyLoadingQueueHasEmptiedAction : Void -> Void; }):Void;
	function getTileLayer():tile.Layer;
	function getId():String;
	function getOptions():Dynamic;
}
extern class Quad {
	function getX():Float;
	function getY():Float;
	function getLevel():Float;
	function getEnvelope():Envelope;
	function toString():String;
	function getKey():String;
	function equals(q:Quad):Bool;
	function factoryParent(ancestorsBack:Float):Quad;
}
