typedef Router = {
	>PolymerElement,
	>HTMLElement,
	function init():Void;
	function go(path:String, ?options:{ @:optional
	var replace : Bool; }):Void;
};
