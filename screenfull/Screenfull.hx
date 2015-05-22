typedef IScreenfullRaw = {
	@:optional
	var requestFullscreen : String;
	@:optional
	var exitFullscreen : String;
	@:optional
	var fullscreenElement : String;
	@:optional
	var fullscreenEnabled : String;
	@:optional
	var fullscreenchange : String;
	@:optional
	var fullscreenerror : String;
};
typedef IScreenfull = {
	var isFullscreen : Bool;
	var element : Element;
	var enabled : Bool;
	var raw : IScreenfullRaw;
	function request(?elem:Element):Void;
	function toggle(?elem:Element):Void;
	function exit():Void;
};
extern class ScreenfullTopLevel {
	static var screenfull : IScreenfull;
}
