typedef PlatformStatic = {
	@:optional
	var description : String;
	@:optional
	var layout : String;
	@:optional
	var manufacturer : String;
	@:optional
	var name : String;
	@:optional
	var prerelease : String;
	@:optional
	var product : String;
	@:optional
	var ua : String;
	@:optional
	var version : String;
	@:optional
	var os : PlatformOS;
	@:optional
	function parse(ua:String):PlatformStatic;
	@:optional
	function toString():String;
};
typedef PlatformOS = {
	@:optional
	var architecture : Float;
	@:optional
	var family : String;
	@:optional
	var version : String;
	function toString():String;
};
extern class PlatformTopLevel {
	static var platform : PlatformStatic;
}
