extern class _Media {
	function new():Void;
	var allowFullScreen : Bool;
	var allowNetworking : String;
	var allowScriptAccess : String;
	var autoPlay : Dynamic;
	var bufferTime : Dynamic;
	var flashMedia : Dynamic;
	var id : Dynamic;
	var initialVolume : Dynamic;
	var isDebug : Dynamic;
	var mediaUrl : String;
	var minBufferTime : Float;
	var percentDownloaded : Float;
	var updateTime : Float;
	var wmode : String;
	function destroy():Void;
	function getTime():Dynamic;
	function onBuffer(isBuffering:Bool):Void;
	function onClick(evt:Dynamic):Void;
	function onDownloaded(percent:Float):Void;
	function onEnd(data:Dynamic):Void;
	function onError(data:Dynamic, url:String):Void;
	function onLoad(mov:Dynamic):Void;
	function onMetaData(data:Dynamic, evt:Dynamic):Void;
	function onPause(data:Dynamic):Void;
	function onPlay(data:Dynamic):Void;
	function onPlayerStatus(data:Dynamic):Void;
	function onPosition(time:Float):Void;
	function onResize():Void;
	function onStart(data:Dynamic):Void;
	function onStatus(data:Dynamic):Void;
	function onStop():Void;
	function onSwfSized(data:Dynamic):Void;
}
extern class FLAudio {
	function new(options:Dynamic):Void;
	var allowNetworking : String;
	var allowScriptAccess : String;
	var id : Dynamic;
	var initialPan : Float;
	var initialVolume : Float;
	var isDebug : Dynamic;
	var statusInterval : Float;
	function destroy():Void;
	function doPlay(options:Dynamic):Void;
	function getPan(options:Dynamic):Dynamic;
	function getPosition(options:Dynamic):Dynamic;
	function getVolume(options:Dynamic):Dynamic;
	function init():Void;
	function load(options:Dynamic):Dynamic;
	function pause(options:Dynamic):Void;
	function setPan(options:Dynamic):Void;
	function setVolume(options:Dynamic):Void;
	function stop(options:Dynamic):Void;
	function onAllLoaded():Void;
	function onComplete(events:Array<Dynamic>):Void;
	function onError(msg:Dynamic):Void;
	function onID3(evt:Dynamic):Void;
	function onLoad():Void;
	function onLoadStatus(events:Array<Dynamic>):Void;
	function onPlayStatus(events:Array<Dynamic>):Void;
}
extern class FLVideo extends dijit._Widget {
	function new(options:Dynamic):Void;
	var allowFullScreen : Bool;
	@:overload(function(property:AllowNetworking, value:String):Void { })
	@:overload(function(property:AllowScriptAccess, value:String):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoPlay, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:BufferTime, value:Dynamic):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:FlashMedia, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InitialVolume, value:Dynamic):Void { })
	@:overload(function(property:IsDebug, value:Dynamic):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MediaUrl, value:String):Void { })
	@:overload(function(property:MinBufferTime, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PercentDownloaded, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UpdateTime, value:Float):Void { })
	@:overload(function(property:Wmode, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AllowFullScreen, value:Bool):Void;
	@:overload(function(property:AllowNetworking):String { })
	@:overload(function(property:AllowScriptAccess):String { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoPlay):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:BufferTime):Dynamic { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:FlashMedia):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InitialVolume):Dynamic { })
	@:overload(function(property:IsDebug):Dynamic { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MediaUrl):String { })
	@:overload(function(property:MinBufferTime):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PercentDownloaded):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UpdateTime):Float { })
	@:overload(function(property:Wmode):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AllowFullScreen):Bool;
	@:overload(function(property:AllowNetworking, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowScriptAccess, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoPlay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BufferTime, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FlashMedia, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InitialVolume, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsDebug, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MediaUrl, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinBufferTime, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PercentDownloaded, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UpdateTime, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Wmode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AllowFullScreen, callback:{ }):{ function unwatch():Void; };
	var allowNetworking : String;
	var allowScriptAccess : String;
	var attributeMap : Dynamic;
	var autoPlay : Dynamic;
	var baseClass : String;
	var bufferTime : Dynamic;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var flashMedia : Dynamic;
	var focused : Bool;
	var id : String;
	var initialVolume : Dynamic;
	var isDebug : Dynamic;
	var lang : String;
	var mediaUrl : String;
	var minBufferTime : Float;
	var ownerDocument : Dynamic;
	var percentDownloaded : Float;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	var updateTime : Float;
	var wmode : String;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function getTime():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function own():Dynamic;
	function pause():Void;
	@:overload(function(reference:HTMLElement, position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:String):Dynamic { })
	@:overload(function(reference:String, position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	function play(newUrl:String):Void;
	function postCreate():Void;
	function postMixInProperties():Void;
	function seek(time:Float):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function volume(vol:Float):Dynamic;
	function onBlur():Void;
	function onBuffer(isBuffering:Dynamic):Void;
	function onClick(evt:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDownloaded(percent:Dynamic):Void;
	function onEnd(data:Dynamic):Void;
	function onError(data:Dynamic, url:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onLoad(mov:Dynamic):Void;
	function onMetaData(data:Dynamic, evt:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onPause(data:Dynamic):Void;
	function onPlay(data:Dynamic):Void;
	function onPlayerStatus(data:Dynamic):Void;
	function onPosition(time:Dynamic):Void;
	function onResize():Void;
	function onShow():Void;
	function onStart(data:Dynamic):Void;
	function onStatus(data:Dynamic):Void;
	function onStop():Void;
	function onSwfSized(data:Dynamic):Void;
}
