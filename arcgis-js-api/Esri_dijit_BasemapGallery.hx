extern class BasemapGallery {
	var basemaps : Array<Basemap>;
	var loaded : Bool;
	var portalUrl : String;
	@:overload(function(params:esri.BasemapGalleryOptions, ?srcNodeRef:String):Void { })
	function new(params:esri.BasemapGalleryOptions, ?srcNodeRef:Node):Void;
	function add(basemap:Basemap):Bool;
	function destroy():Void;
	function get(id:String):Basemap;
	function getSelected():Basemap;
	function remove(id:String):Basemap;
	function select(id:String):Basemap;
	function startup():Void;
	@:overload(function(type:Error, listener:{ var target : BasemapGallery; } -> Void):esri.Handle { })
	@:overload(function(type:Load, listener:{ var target : BasemapGallery; } -> Void):esri.Handle { })
	@:overload(function(type:Remove, listener:{ var basemap : Basemap; var target : BasemapGallery; } -> Void):esri.Handle { })
	@:overload(function(type:Selection-change, listener:{ var target : BasemapGallery; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Add, listener:{ var basemap : Basemap; var target : BasemapGallery; } -> Void):esri.Handle;
}
