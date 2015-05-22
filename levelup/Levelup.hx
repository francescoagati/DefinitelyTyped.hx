typedef Batch = {
	var type : String;
	var key : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	var keyEncoding : String;
	@:optional
	var valueEncoding : String;
};
typedef LevelUp = {
	function open(?callback:Dynamic -> Dynamic):Void;
	function close(?callback:Dynamic -> Dynamic):Void;
	@:overload(function(key:Dynamic, value:Dynamic, ?options:{ @:optional
	var sync : Bool; }, ?callback:Dynamic -> Dynamic):Void { })
	function put(key:Dynamic, value:Dynamic, ?callback:Dynamic -> Dynamic):Void;
	@:overload(function(key:Dynamic, ?options:{ @:optional
	var keyEncoding : String; @:optional
	var fillCache : Bool; }, ?callback:Dynamic -> Dynamic -> Dynamic):Void { })
	function get(key:Dynamic, ?callback:Dynamic -> Dynamic -> Dynamic):Void;
	@:overload(function(key:Dynamic, ?options:{ @:optional
	var keyEncoding : String; @:optional
	var sync : Bool; }, ?callback:Dynamic -> Dynamic):Void { })
	function del(key:Dynamic, ?callback:Dynamic -> Dynamic):Void;
	@:overload(function(array:Array<Batch>, ?callback:?Dynamic -> Dynamic):Dynamic { })
	@:overload(function():LevelUpChain { })
	function batch(array:Array<Batch>, ?options:{ @:optional
	var keyEncoding : String; @:optional
	var valueEncoding : String; @:optional
	var sync : Bool; }, ?callback:?Dynamic -> Dynamic):Dynamic;
	function isOpen():Bool;
	function isClosed():Bool;
	function createReadStream(?options:Dynamic):Dynamic;
	function createKeyStream(?options:Dynamic):Dynamic;
	function createValueStream(?options:Dynamic):Dynamic;
	function createWriteStream(?options:Dynamic):Dynamic;
	function destroy(location:String, ?callback:haxe.Constraints.Function):Void;
	function repair(location:String, ?callback:haxe.Constraints.Function):Void;
};
typedef LevelUpChain = {
	@:overload(function(key:Dynamic, value:Dynamic, ?options:{ @:optional
	var sync : Bool; }):LevelUpChain { })
	function put(key:Dynamic, value:Dynamic):LevelUpChain;
	@:overload(function(key:Dynamic, ?options:{ @:optional
	var keyEncoding : String; @:optional
	var sync : Bool; }):LevelUpChain { })
	function del(key:Dynamic):LevelUpChain;
	function clear():LevelUpChain;
	function write(?callback:?Dynamic -> Dynamic):LevelUpChain;
};
typedef LevelupOptions = {
	@:optional
	var createIfMissing : Bool;
	@:optional
	var errorIfExists : Bool;
	@:optional
	var compression : Bool;
	@:optional
	var cacheSize : Float;
	@:optional
	var keyEncoding : String;
	@:optional
	var valueEncoding : String;
	@:optional
	var db : String;
};
extern class LevelupTopLevel {
	static function levelup(hostname:String, ?options:LevelupOptions):LevelUp;
}
extern class LevelupTopLevel {
	static function levelup(hostname:String, ?options:LevelupOptions):LevelUp;
}
