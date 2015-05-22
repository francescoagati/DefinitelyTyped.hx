typedef RavenOptions = {
	@:optional
	var logger : String;
	@:optional
	var ignoreErrors : Array<String>;
	@:optional
	var ignoreUrls : Array<js.RegExp>;
	@:optional
	var whitelistUrls : Array<js.RegExp>;
	@:optional
	var includePaths : Array<js.RegExp>;
	@:optional
	var tags : Dynamic;
	@:optional
	var extra : Dynamic;
};
typedef RavenStatic = {
	var VERSION : String;
	function afterLoad():Void;
	function noConflict():RavenStatic;
	function config(dsn:String, ?options:RavenOptions):RavenStatic;
	function install():RavenStatic;
	@:overload(function(options:RavenOptions, func:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Void { })
	function context(func:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(options:RavenOptions, func:haxe.Constraints.Function):haxe.Constraints.Function { })
	function wrap(func:haxe.Constraints.Function):haxe.Constraints.Function;
	function uninstall():RavenStatic;
	function captureException(ex:Error, ?options:RavenOptions):RavenStatic;
	function captureMessage(msg:String, ?options:RavenOptions):RavenStatic;
	function setUser(?user:Dynamic):RavenStatic;
};
extern class RavenjsTopLevel {
	static var Raven : RavenStatic;
}
