extern class GeoRSSLayer extends Layer {
	var copyright : String;
	var defaultVisibility : Bool;
	var description : String;
	var items : Array<Graphic>;
	var name : String;
	function new(url:String, ?options:esri.GeoRSSLayerOptions):Void;
	function getFeatureLayers():Array<FeatureLayer>;
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Refresh, listener:{ var target : GeoRSSLayer; } -> Void):esri.Handle;
}
