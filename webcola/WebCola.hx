typedef Adaptor = {
	function new(options:{ }):Adaptor;
	function avoidOverlaps(avodOverLaps:Bool):Adaptor;
	function constraints(constraints:Dynamic):Adaptor;
	function convergenceThreshold(convergenceThreshold:Float):Adaptor;
	function flowLayout(axis:String, minSeparation:Float):Adaptor;
	function handleDisconnected(handleDisconnected:Bool):Adaptor;
	function links(links:Dynamic):Adaptor;
	function linkDistance(linkLength:Float):Adaptor;
	function nodes(nodes:Dynamic):Adaptor;
	function resume():Void;
	function size(dimension:Array<Float>):Adaptor;
	function start(initialUnconstrainedIterations:Float, initialUserConstraintIterations:Float, initialAllConstraintsIterations:Float):Void;
	function stop():Void;
	function tick():Dynamic;
};
typedef Cola = {
	var adaptor : Adaptor;
	function colaDragstart(node:{ }):Void;
	function colaDragend(node:{ }):Void;
	function start():Void;
	function stop():Void;
};
typedef Constraint = {
	var axis : String;
	var gap : Float;
	var left : Float;
	var right : Float;
};
typedef FlowLayout = {
	var axis : String;
	@:optional
	var minSeparation : Float;
};
typedef Node = {
	var height : Float;
	var id : String;
	var size : Float;
	var width : Float;
	var x : Float;
	var y : Float;
};
typedef Options = {
	@:optional
	var avoidOverlaps : Bool;
	@:optional
	var convergenceThreshold : Float;
	@:optional
	var constraints : Array<{ }>;
	@:optional
	var flowLayout : FlowLayout;
	@:optional
	var handleDisconnected : Bool;
	@:optional
	var linkDistance : Float;
	@:optional
	var initialUnconstrainedIterations : Float;
	@:optional
	var initialUserConstraintIterations : Float;
	@:optional
	var initialAllConstraintsIterations : Float;
	@:optional
	var symmetricDiffLinkLengths : Float;
};
