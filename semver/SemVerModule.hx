extern class SemVerBase {
	var raw : String;
	var loose : Bool;
	function format():String;
	function inspect():String;
	function toString():String;
}
extern class SemVer extends SemVerBase {
	function new(version:String, ?loose:Bool):Void;
	var major : Float;
	var minor : Float;
	var patch : Float;
	var version : String;
	var build : Array<String>;
	var prerelease : Array<String>;
	function compare(other:SemVer):Float;
	function compareMain(other:SemVer):Float;
	function comparePre(other:SemVer):Float;
	function inc(release:String):SemVer;
}
extern class Comparator extends SemVerBase {
	function new(comp:String, ?loose:Bool):Void;
	var semver : SemVer;
	var operator : String;
	var value : Bool;
	function parse(comp:String):Void;
	function test(version:SemVer):Bool;
}
extern class Range extends SemVerBase {
	function new(range:String, ?loose:Bool):Void;
	var set : Array<Array<Comparator>>;
	function parseRange(range:String):Array<Comparator>;
	function test(version:SemVer):Bool;
}
extern class SemVerModuleTopLevel {
	static function valid(v:String, ?loose:Bool):String;
	static function inc(v:String, release:String, ?loose:Bool):String;
	static function gt(v1:String, v2:String, ?loose:Bool):Bool;
	static function gte(v1:String, v2:String, ?loose:Bool):Bool;
	static function lt(v1:String, v2:String, ?loose:Bool):Bool;
	static function lte(v1:String, v2:String, ?loose:Bool):Bool;
	static function eq(v1:String, v2:String, ?loose:Bool):Bool;
	static function neq(v1:String, v2:String, ?loose:Bool):Bool;
	static function cmp(v1:String, comparator:Dynamic, v2:String, ?loose:Bool):Bool;
	static function compare(v1:String, v2:String, ?loose:Bool):Float;
	static function rcompare(v1:String, v2:String, ?loose:Bool):Float;
	static function validRange(range:String, ?loose:Bool):String;
	static function satisfies(version:String, range:String, ?loose:Bool):Bool;
	static function maxSatisfying(versions:Array<String>, range:String, ?loose:Bool):String;
	static function gtr(version:String, range:String, ?loose:Bool):Bool;
	static function ltr(version:String, range:String, ?loose:Bool):Bool;
	static function outside(version:String, range:String, hilo:String, ?loose:Bool):Bool;
}
