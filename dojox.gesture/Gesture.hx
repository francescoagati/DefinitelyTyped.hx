extern class Base {
	function new(args:Dynamic):Void;
	var defaultEvent : String;
	var subEvents : Array<Dynamic>;
	var touchOnly : Bool;
	function cancel(data:Dynamic, e:Dynamic):Void;
	function destroy():Void;
	function fire(node:HTMLElement, event:Dynamic):Void;
	function init():Void;
	function isLocked(node:Dynamic):Bool;
	function lock(node:HTMLElement):Void;
	function move(data:Dynamic, e:Dynamic):Void;
	function press(data:Dynamic, e:Dynamic):Void;
	function release(data:Dynamic, e:Dynamic):Void;
	function unLock():Void;
}
