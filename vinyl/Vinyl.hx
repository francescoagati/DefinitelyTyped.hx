extern class File {
	function new(?options:{ @:optional
	var cwd : String; @:optional
	var base : String; @:optional
	var path : String; @:optional
	var contents : Dynamic; }):Void;
	var cwd : String;
	var base : String;
	var path : String;
	var stat : fs.Stats;
	var contents : Dynamic;
	var relative : String;
	function isBuffer():Bool;
	function isStream():Bool;
	function isNull():Bool;
	function isDirectory():Bool;
	function clone(?opts:{ @:optional
	var contents : Bool; }):File;
	function pipe<T:(NodeJS.ReadWriteStream)>(stream:T, ?opts:{ @:optional
	var end : Bool; }):T;
	function inspect():String;
}
