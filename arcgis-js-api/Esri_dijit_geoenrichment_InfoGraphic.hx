extern class Infographic {
	var cacheLimit : Float;
	var countryID : String;
	var datasetID : String;
	var expanded : Bool;
	var returnGeometry : Bool;
	var studyArea : GeometryStudyArea;
	var studyAreaOptions : Dynamic;
	var subtitle : String;
	var title : String;
	var type : String;
	var variables : Array<String>;
	@:overload(function(params:Dynamic, srcNodeRef:String):Void { })
	function new(params:Dynamic, srcNodeRef:Node):Void;
	function setData(data:FeatureSet, ?metadata:Dynamic):Void;
	function startup():Void;
	@:overload(function(type:Data-load, listener:{ var target : Infographic; } -> Void):esri.Handle { })
	@:overload(function(type:Data-ready, listener:{ var provider : Dynamic; var target : Infographic; } -> Void):esri.Handle { })
	@:overload(function(type:Data-request, listener:{ var target : Infographic; } -> Void):esri.Handle { })
	@:overload(function(type:Resize, listener:{ var size : Array<Float>; var target : Infographic; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Data-error, listener:{ var error : Dynamic; var target : Infographic; } -> Void):esri.Handle;
}
