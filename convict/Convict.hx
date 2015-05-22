typedef Schema = { };
typedef Config = {
	function get(name:String):Dynamic;
	function default(name:String):Dynamic;
	function has(name:String):Bool;
	function set(name:String, value:Dynamic):Void;
	function load(conf:Dynamic):Void;
	@:overload(function(files:Array<String>):Void { })
	function loadFile(file:String):Void;
	function validate():Void;
};
extern class ConvictTopLevel {
	static function convict(schema:convict.Schema):convict.Config;
}
extern class ConvictTopLevel {
	static function convict(schema:convict.Schema):convict.Config;
}
extern class ConvictTopLevel {
	static function convict(schema:convict.Schema):convict.Config;
}
