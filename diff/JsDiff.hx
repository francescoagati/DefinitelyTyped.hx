typedef IDiffResult = {
	var value : String;
	@:optional
	var added : Bool;
	@:optional
	var removed : Bool;
};
typedef IBestPath = {
	var newPos : Float;
	var componenets : Array<IDiffResult>;
};
extern class Diff {
	var ignoreWhitespace : Bool;
	function new(?ignoreWhitespace:Bool):Void;
	function diff(oldString:String, newString:String):Array<IDiffResult>;
	function pushComponent(components:Array<IDiffResult>, value:String, added:Bool, removed:Bool):Void;
	function extractCommon(basePath:IBestPath, newString:String, oldString:String, diagonalPath:Float):Float;
	function equals(left:String, right:String):Bool;
	function join(left:String, right:String):String;
	function tokenize(value:String):Dynamic;
}
extern class JsDiffTopLevel {
	static function diffChars(oldStr:String, newStr:String):Array<IDiffResult>;
	static function diffWords(oldStr:String, newStr:String):Array<IDiffResult>;
	static function diffWordsWithSpace(oldStr:String, newStr:String):Array<IDiffResult>;
	static function diffLines(oldStr:String, newStr:String):Array<IDiffResult>;
	static function diffCss(oldStr:String, newStr:String):Array<IDiffResult>;
	static function createPatch(fileName:String, oldStr:String, newStr:String, oldHeader:String, newHeader:String):String;
	static function applyPatch(oldStr:String, uniDiff:String):String;
	static function convertChangesToXML(changes:Array<IDiffResult>):String;
	static function convertChangesToDMP(changes:Array<IDiffResult>):Array<{ var _0 : Float; var _1 : String; }>;
}
