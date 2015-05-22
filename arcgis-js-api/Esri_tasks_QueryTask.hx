extern class QueryTask {
	var url : String;
	function new(url:String, ?options:esri.QueryTaskOptions):Void;
	function execute(parameters:Query, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function executeForCount(query:Query, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function executeForExtent(query:Query, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function executeForIds(parameters:Query, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function executeRelationshipQuery(parameters:RelationshipQuery, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	@:overload(function(type:Error, listener:{ var error : Error; var target : QueryTask; } -> Void):esri.Handle { })
	@:overload(function(type:Execute-for-count-complete, listener:{ var count : Float; var target : QueryTask; } -> Void):esri.Handle { })
	@:overload(function(type:Execute-for-extent-complete, listener:{ var count : Float; var extent : Dynamic; var target : QueryTask; } -> Void):esri.Handle { })
	@:overload(function(type:Execute-for-ids-complete, listener:{ var objectIds : Array<Float>; var target : QueryTask; } -> Void):esri.Handle { })
	@:overload(function(type:Execute-relationship-query-complete, listener:{ var featureSets : Array<FeatureSet>; var target : QueryTask; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Complete, listener:{ var featureSet : FeatureSet; var target : QueryTask; } -> Void):esri.Handle;
}
