typedef Viewporter = {
	var preventPageScroll : Bool;
	var forceDetection : Bool;
	var ACTIVE : Bool;
	var READY : Bool;
	function isLandscape():Bool;
	function ready(callback:EventListener):Void;
	function change(callback:EventListener):Void;
	function refresh():Void;
};
extern class ViewporterTopLevel {
	static var viewporter : Viewporter;
}
