typedef RunResult = {
	var lastID : Float;
	var changes : Float;
};
extern class Statement {
	@:overload(function(params:haxe.extern.Rest<Dynamic>):Statement { })
	function bind(?callback:Error -> Void):Statement;
	function reset(?callback:Error -> Void):Statement;
	function finalize(?callback:Error -> Void):Statement;
	@:overload(function(params:haxe.extern.Rest<Dynamic>):Statement { })
	function run(?callback:Error -> Void):Statement;
	@:overload(function(params:haxe.extern.Rest<Dynamic>):Statement { })
	function get(?callback:Error -> Dynamic -> Void):Statement;
	@:overload(function(params:haxe.extern.Rest<Dynamic>):Statement { })
	function all(?callback:Error -> Array<Dynamic> -> Void):Statement;
	@:overload(function(params:haxe.extern.Rest<Dynamic>):Statement { })
	function each(?callback:Error -> Dynamic -> Void, ?complete:Error -> Float -> Void):Statement;
}
extern class Database extends events.EventEmitter {
	@:overload(function(filename:String, ?mode:Float, ?callback:Error -> Void):Void { })
	function new(filename:String, ?callback:Error -> Void):Void;
	function close(?callback:Error -> Void):Void;
	@:overload(function(sql:String, params:haxe.extern.Rest<Dynamic>):Database { })
	function run(sql:String, ?callback:Error -> Void):Database;
	@:overload(function(sql:String, params:haxe.extern.Rest<Dynamic>):Database { })
	function get(sql:String, ?callback:Error -> Dynamic -> Void):Database;
	@:overload(function(sql:String, params:haxe.extern.Rest<Dynamic>):Database { })
	function all(sql:String, ?callback:Error -> Array<Dynamic> -> Void):Database;
	@:overload(function(sql:String, params:haxe.extern.Rest<Dynamic>):Database { })
	function each(sql:String, ?callback:Error -> Dynamic -> Void, ?complete:Error -> Float -> Void):Database;
	function exec(sql:String, ?callback:Error -> Void):Database;
	@:overload(function(sql:String, params:haxe.extern.Rest<Dynamic>):Statement { })
	function prepare(sql:String, ?callback:Error -> Void):Statement;
	function serialize(?callback:Void -> Void):Void;
	function parallelize(?callback:Void -> Void):Void;
	@:overload(function(event:Profile, listener:String -> Float -> Void):Database { })
	@:overload(function(event:Error, listener:Error -> Void):Database { })
	@:overload(function(event:Open, listener:Void -> Void):Database { })
	@:overload(function(event:Close, listener:Void -> Void):Database { })
	@:overload(function(event:String, listener:haxe.Constraints.Function):Database { })
	function on(event:Trace, listener:String -> Void):Database;
}
extern class Sqlite3TopLevel {
	static var OPEN_READONLY : Float;
	static var OPEN_READWRITE : Float;
	static var OPEN_CREATE : Float;
	static var cached : { @:overload(function(filename:String, ?mode:Float, ?callback:Error -> Void):Database { })
	function Database(filename:String, ?callback:Error -> Void):Database; };
	static function verbose():Void;
}
extern class Sqlite3TopLevel {
	static var OPEN_READONLY : Float;
	static var OPEN_READWRITE : Float;
	static var OPEN_CREATE : Float;
	static var cached : { @:overload(function(filename:String, ?mode:Float, ?callback:Error -> Void):Database { })
	function Database(filename:String, ?callback:Error -> Void):Database; };
	static function verbose():Void;
}
