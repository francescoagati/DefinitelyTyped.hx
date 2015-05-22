extern class UtilsTopLevel {
	static function escapeExpression(str:String):String;
}
typedef Logger = {
	var DEBUG : Float;
	var INFO : Float;
	var WARN : Float;
	var ERROR : Float;
	var level : Float;
	var methodMap : { };
	function log(level:Float, obj:String):Void;
};
