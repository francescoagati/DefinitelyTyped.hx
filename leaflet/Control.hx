typedef ZoomStatic = {
	>ClassStatic,
	function new(?options:ZoomOptions):Zoom;
};
typedef Zoom = {
	>L.Control,
};
typedef AttributionStatic = {
	>ClassStatic,
	function new(?options:AttributionOptions):Attribution;
};
typedef Attribution = {
	>L.Control,
	function setPrefix(prefix:String):Attribution;
	function addAttribution(text:String):Attribution;
	function removeAttribution(text:String):Attribution;
};
typedef LayersStatic = {
	>ClassStatic,
	function new(?baseLayers:Dynamic, ?overlays:Dynamic, ?options:LayersOptions):Layers;
};
typedef Layers = {
	>L.Control,
	>IEventPowered<Layers>,
	function addBaseLayer(layer:ILayer, name:String):Layers;
	function addOverlay(layer:ILayer, name:String):Layers;
	function removeLayer(layer:ILayer):Layers;
	@:overload(function(eventMap:Dynamic, ?context:Dynamic):Layers { })
	function addEventListener(type:String, fn:LeafletEvent -> Void, ?context:Dynamic):Layers;
	function addOneTimeEventListener(type:String, fn:LeafletEvent -> Void, ?context:Dynamic):Layers;
	@:overload(function(?eventMap:Dynamic, ?context:Dynamic):Layers { })
	function removeEventListener(type:String, ?fn:LeafletEvent -> Void, ?context:Dynamic):Layers;
	function hasEventListeners(type:String):Bool;
	function fireEvent(type:String, ?data:Dynamic):Layers;
	@:overload(function(eventMap:Dynamic, ?context:Dynamic):Layers { })
	function on(type:String, fn:LeafletEvent -> Void, ?context:Dynamic):Layers;
	function once(type:String, fn:LeafletEvent -> Void, ?context:Dynamic):Layers;
	@:overload(function(?eventMap:Dynamic, ?context:Dynamic):Layers { })
	function off(type:String, ?fn:LeafletEvent -> Void, ?context:Dynamic):Layers;
	function fire(type:String, ?data:Dynamic):Layers;
	function clearAllEventListeners():Layers;
};
typedef ScaleStatic = {
	>ClassStatic,
	function new(?options:ScaleOptions):Scale;
};
typedef Scale = {
	>L.Control,
};
typedef Control = {
	function function(?options:ControlOptions):Control;
};
