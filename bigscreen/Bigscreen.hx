typedef BigScreenStatic = {
	var element : Element;
	var enabled : Bool;
	function exit():Void;
	function onchange(element:Element):Void;
	function onenter(element:Element):Void;
	function onerror(element:Element, reason:String):Void;
	function onexit():Void;
	function request(element:Element, ?onEnter:Element -> Void, ?onExit:Void -> Void, ?onError:Element -> String -> Void):Void;
	function toggle(element:Element, ?onEnter:Element -> Void, ?onExit:Void -> Void, ?onError:Element -> String -> Void):Void;
	function videoEnabled(video:HTMLVideoElement):Bool;
};
extern class BigscreenTopLevel {
	static var bigscreen : BigScreenStatic;
}
extern class BigscreenTopLevel {
	static var bigscreen : BigScreenStatic;
}
