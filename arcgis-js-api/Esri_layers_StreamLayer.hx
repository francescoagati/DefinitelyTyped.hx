extern class StreamLayer extends FeatureLayer {
	var maximumTrackPoints : Float;
	var purgeInterval : Float;
	var socket : Dynamic;
	var socketUrl : String;
	@:overload(function(featureCollectionObject:Dynamic, ?options:esri.StreamLayerOptions2):Void { })
	function new(url:String, ?options:esri.StreamLayerOptions1):Void;
	function connect(?callback:haxe.Constraints.Function):Void;
	function disconnect(?callback:haxe.Constraints.Function):Void;
	function getDefinitionExpression():String;
	function getGeometryDefinition():Extent;
	function getUniqueValues(fieldName:String):Array<Dynamic>;
	function setGeometryDefinition(extent:Extent):Void;
	function setMaximumTrackPoints(value:Float):Void;
	function setPurgeInterval(interval:Float):Layer;
	@:overload(function(type:Connect, listener:{ var target : StreamLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Connection-error, listener:{ var error : Error; var target : StreamLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Disconnect, listener:{ var target : StreamLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Filter-change, listener:{ var error : Error; var filter : Dynamic; var target : StreamLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Message, listener:{ var message : Dynamic; var target : StreamLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Purge-interval-change, listener:{ var target : StreamLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Update-start, listener:{ var target : StreamLayer; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Attempt-reconnect, listener:{ var count : Float; var url : String; var target : StreamLayer; } -> Void):esri.Handle;
}
