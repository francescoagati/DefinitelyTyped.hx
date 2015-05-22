typedef Behavior = {
	function drag():Drag;
	function zoom():Zoom;
};
typedef Zoom = {
	var on : String -> Dynamic -> ?Float -> Dynamic -> Zoom;
	var scale : { };
	var translate : { };
	var scaleExtent : { };
	var x : { };
	var y : { };
};
typedef Drag = {
	var on : String -> Dynamic -> ?Float -> Dynamic -> Drag;
	var origin : { };
};
