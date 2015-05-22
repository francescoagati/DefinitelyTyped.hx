extern class Basemap {
	var id : String;
	var thumbnailUrl : String;
	var title : String;
	function new(params:esri.BasemapOptions):Void;
	function getLayers():Array<BasemapLayer>;
	function startup():Void;
}
