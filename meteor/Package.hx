extern class PackageTopLevel {
	static function describe(options:{ @:optional
	var summary : String; @:optional
	var version : String; @:optional
	var name : String; @:optional
	var git : String; @:optional
	var documentation : String; }):Void;
	static function onTest(func:haxe.Constraints.Function):Void;
	static function onUse(func:haxe.Constraints.Function):Void;
	static function registerBuildPlugin(?options:{ @:optional
	var name : String; @:optional
	var use : haxe.extern.EitherType<String, Array<String>>; @:optional
	var sources : Array<String>; @:optional
	var npmDependencies : Dynamic; }):Void;
}
