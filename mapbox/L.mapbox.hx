typedef MapOptions = {
	>L.MapOptions,
	@:optional
	var featureLayer : FeatureLayerOptions;
	@:optional
	var gridLayer : Dynamic;
	@:optional
	var tileLayer : TileLayerOptions;
	@:optional
	var infoControl : ControlOptions;
	@:optional
	var legendControl : ControlOptions;
	@:optional
	var shareControl : ShareControlOptions;
};
typedef FilterFunction = { };
typedef Map = {
	>L.Map,
	var tileLayer : L.mapbox.TileLayer;
	var gridLayer : L.mapbox.GridLayer;
	var featureLayer : L.mapbox.FeatureLayer;
	var gridControl : L.mapbox.GridControl;
	var infoControl : L.mapbox.InfoControl;
	var legendControl : L.mapbox.LegendControl;
	var shareControl : L.mapbox.ShareControl;
	function addLayer(layer:Dynamic):Dynamic;
	function getTileJSON():Dynamic;
};
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
typedef TileLayerOptions = {
	>L.TileLayerOptions,
	@:optional
	var retinaVersion : String;
};
typedef TileLayer = {
	>L.TileLayer,
	function getTileJSON():Dynamic;
	function setFormat(format:String):TileLayer;
};
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
typedef GridLayer = {
	function active():Bool;
	function addTo(map:L.mapbox.Map):Dynamic;
	function onAdd(map:L.mapbox.Map):Dynamic;
	function onRemove():Dynamic;
	function on(event:String, handler:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
	function getTileJSON():Dynamic;
	function getData(latlng:L.LatLng, callback:haxe.Constraints.Function):Dynamic;
};
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
typedef FeatureLayerOptions = {
	@:optional
	var filter : FilterFunction;
	@:optional
	var sanitizer : String -> String;
};
typedef FeatureLayer = {
	>L.FeatureGroup<L.ILayer>,
	function loadURL(url:String):Dynamic;
	function loadID(id:String):Dynamic;
	function setFilter(filter:FilterFunction):Dynamic;
	function getFilter():FilterFunction;
	function setGeoJSON(geojson:Dynamic):L.mapbox.FeatureLayer;
	function getGeoJSON():Dynamic;
};
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
typedef Geocoder = {
	function getURL():String;
	function setURL(url:String):Dynamic;
	function setID(id:String):Dynamic;
	function setTileJSON(tilejson:Dynamic):Dynamic;
	function queryURL(url:String):String;
	function query(queryString:String, callback:haxe.Constraints.Function):Dynamic;
	function reverseQuery(location:Dynamic, callback:haxe.Constraints.Function):Dynamic;
};
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
typedef ControlOptions = {
	>L.ControlOptions,
	@:optional
	var sanitizer : String -> String;
};
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
typedef InfoControl = {
	>L.Control,
	function onAdd(map:L.mapbox.Map):Dynamic;
	function onRemove(map:L.mapbox.Map):Dynamic;
	function addInfo(info:String):Dynamic;
	function removeInfo(info:String):Dynamic;
};
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
typedef LegendControl = {
	>L.Control,
	function onAdd(map:L.mapbox.Map):Dynamic;
	function addLegend(legend:String):Dynamic;
	function removeLegend(legend:String):Dynamic;
};
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
typedef GridControlOptions = {
	>ControlOptions,
	@:optional
	var template : String;
	@:optional
	var follow : Bool;
	@:optional
	var pinnable : Bool;
	@:optional
	var touchTeaser : Bool;
	@:optional
	var location : Bool;
};
typedef GridControl = {
	>L.Control,
	function onAdd(map:L.mapbox.Map):Dynamic;
	function onRemove(map:L.mapbox.Map):Dynamic;
	function hide():Dynamic;
	function setTemplate(template:String):Dynamic;
};
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
typedef GeocoderControlOptions = {
	>L.ControlOptions,
	@:optional
	var keepOpen : Bool;
};
typedef GeocoderControl = {
	function getURL():String;
	function onAdd(map:L.mapbox.Map):Dynamic;
	function setURL(url:String):Dynamic;
	function setID(id:String):Dynamic;
	function setTileJSON(tilejson:Dynamic):Dynamic;
	function on(event:String, callback:haxe.Constraints.Function):Dynamic;
};
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
typedef ShareControlOptions = {
	>L.ControlOptions,
	@:optional
	var url : String;
};
typedef ShareControl = {
	>L.Control,
	function onAdd(map:L.mapbox.Map):Dynamic;
};
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
extern class Config {
	static var FORCE_HTTPS : Bool;
	static var HTTP_URLS : Array<String>;
	static var HTTPS_URLS : Array<String>;
}
extern class L.mapboxTopLevel {
	static var accessToken : String;
	static function map(element:String, id:String, ?options:MapOptions):L.mapbox.Map;
	static function map(element:String, tilejson:Dynamic, ?options:MapOptions):L.mapbox.Map;
	static function tileLayer(id:String, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function tileLayer(tilejson:Dynamic, ?options:TileLayerOptions):L.mapbox.TileLayer;
	static function gridLayer(id:String):L.mapbox.GridLayer;
	static function gridLayer(tilejson:Dynamic):L.mapbox.GridLayer;
	static function featureLayer():L.mapbox.FeatureLayer;
	static function featureLayer(id:String, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function featureLayer(geojson:Dynamic, ?options:FeatureLayerOptions):L.mapbox.FeatureLayer;
	static function geocoder(id:String):L.mapbox.Geocoder;
	static function infoControl(?options:ControlOptions):InfoControl;
	static function legendControl(?options:ControlOptions):LegendControl;
	static function gridControl(layer:String, ?options:GridControlOptions):GridControl;
	static function geocoderControl(id:String, ?options:GeocoderControlOptions):GeocoderControl;
	static function shareControl(id:String, ?options:ShareControlOptions):ShareControl;
	static function sanitize(text:String):String;
	static function template(template:String, ?data:Dynamic):String;
}
