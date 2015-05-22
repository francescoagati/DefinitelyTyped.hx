typedef IOptions = {
	>minimatch.IOptions,
	@:optional
	var cwd : String;
	@:optional
	var sync : Bool;
	@:optional
	var nomount : Bool;
	@:optional
	var matchBase : Dynamic;
	@:optional
	var noglobstar : Dynamic;
	@:optional
	var strict : Bool;
	@:optional
	var dot : Bool;
	@:optional
	var mark : Bool;
	@:optional
	var nounique : Bool;
	@:optional
	var nonull : Bool;
	@:optional
	var nosort : Bool;
	@:optional
	var nocase : Bool;
	@:optional
	var stat : Bool;
	@:optional
	var debug : Bool;
	@:optional
	var globDebug : Bool;
	@:optional
	var silent : Bool;
};
typedef IGlobStatic = {
	>events.EventEmitter,
	@:overload(function(pattern:String, options:Dynamic, ?cb:Error -> Array<String> -> Void):IGlob { })
	function new(pattern:String, ?cb:Error -> Array<String> -> Void):IGlob;
};
typedef IGlob = {
	var EOF : Dynamic;
	var paused : Bool;
	var maxDepth : Float;
	var maxLength : Float;
	var cache : Dynamic;
	var statCache : Dynamic;
	var changedCwd : Bool;
	var cwd : String;
	var root : String;
	var error : Dynamic;
	var aborted : Bool;
	var minimatch : minimatch.IMinimatch;
	var matches : Array<String>;
	function log(args:haxe.extern.Rest<Dynamic>):Void;
	function abort():Void;
	function pause():Void;
	function resume():Void;
	function emitMatch(m:Dynamic):Void;
};
extern class GTopLevel {
	static function sync(pattern:String, ?options:IOptions):Array<String>;
	static var Glob : IGlobStatic;
}
