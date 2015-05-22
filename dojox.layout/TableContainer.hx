typedef ChildWidgetProperties = {
	var colspan : Float;
	var label : String;
	var spanLabel : Bool;
	var title : String;
};
extern class ToggleSplitter {
	function new():Void;
	var baseClass : String;
	var child : Dynamic;
	var container : Dynamic;
	var region : String;
	var state : String;
	var templateString : String;
	function postCreate():Void;
	function startup():haxe.Constraints.Function;
	function onClosed(pane:Dynamic):Void;
	function onCollapsed(pane:Dynamic):Void;
	function onOpen(pane:Dynamic):Void;
}
