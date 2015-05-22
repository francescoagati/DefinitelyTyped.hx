extern class InfographicsCarousel {
	var expanded : Bool;
	var options : InfographicsOptions;
	var returnGeometry : Bool;
	var selectedIndex : Float;
	var studyArea : GeometryStudyArea;
	var studyAreaTitle : String;
	@:overload(function(params:Dynamic, srcNodeRef:String):Void { })
	function new(params:Dynamic, srcNodeRef:Node):Void;
	function startup():Void;
	@:overload(function(type:Data-load, listener:{ var target : InfographicsCarousel; } -> Void):esri.Handle { })
	@:overload(function(type:Data-ready, listener:{ var provider : Dynamic; var target : InfographicsCarousel; } -> Void):esri.Handle { })
	@:overload(function(type:Resize, listener:{ var size : Array<Float>; var target : InfographicsCarousel; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Data-error, listener:{ var error : Dynamic; var target : InfographicsCarousel; } -> Void):esri.Handle;
}
