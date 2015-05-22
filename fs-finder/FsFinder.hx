extern class Finder extends Base {
	static var TIME_FORMAT : String;
	static function in(path:String):Finder;
	static function from(path:String):Finder;
	@:overload(function(?mask:Mask, ?fn:AsyncFunction, ?type:Type):Array<String> { })
	static function find(path:String, ?fn:AsyncFunction, ?type:Type):Finder;
	@:overload(function(?mask:Mask, ?fn:AsyncFunction):Array<String> { })
	static function findFiles(?path:String, ?fn:AsyncFunction):Finder;
	@:overload(function(?mask:Mask, ?fn:AsyncFunction):Array<String> { })
	static function findDirectories(?path:String, ?fn:AsyncFunction):Finder;
	@:overload(function(?mask:Mask, ?fn:AsyncFunction):Array<String> { })
	static function findFile(?path:String, ?fn:AsyncFunction):Finder;
	@:overload(function(?mask:Mask, ?fn:AsyncFunction):Array<String> { })
	static function findDirectory(?path:String, ?fn:AsyncFunction):Finder;
	function size(?operation:Dynamic, ?value:Dynamic):Finder;
	function date(?operation:Dynamic, ?value:Dynamic):Finder;
}
extern class Base {
	function recursively(?recursive:Bool):Finder;
	function exclude(excludes:haxe.extern.EitherType<String, Array<String>>, ?exactly:Bool):Finder;
	function showSystemFiles(?systemFiles:Bool):Finder;
	function lookUp(?up:Bool):Finder;
	function findFirst(?findFirst:Bool):Finder;
	function filter(fn:haxe.Constraints.Function):Finder;
	function getPathsSync(?type:Type, ?mask:Mask, ?dir:Directory):Array<String>;
	function getPathsAsync(fn:AsyncFunction, ?type:Type, ?mask:Mask, ?dir:Directory):Void;
	function checkExcludes(path:String):Bool;
	function checkSystemFiles(path:String):Bool;
	function checkFilters(path:String, stats:Dynamic):Bool;
	function checkFile(path:String, stats:Dynamic, mask:Mask, type:Type):Float;
	function getPathsFromParentsSync(?mask:Mask, ?type:Type):Array<String>;
	function getPathsFromParentsAsync(fn:AsyncFunction, ?mask:Mask, ?type:Type):Void;
}
