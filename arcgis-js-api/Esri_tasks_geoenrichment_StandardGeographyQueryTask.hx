extern class StandardGeographyQueryTask {
	function new(?url:String):Void;
	function execute(GeographyQuery:GeographyQueryBase):Dynamic;
	@:overload(function(type:Execute-complete, listener:{ var features : FeatureSet; var target : StandardGeographyQueryTask; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Error, listener:{ var error : Error; var target : StandardGeographyQueryTask; } -> Void):esri.Handle;
}
