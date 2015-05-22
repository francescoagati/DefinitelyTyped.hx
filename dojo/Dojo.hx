typedef Request = { };
typedef Request = {
	function del(url:String, ?options:dojo.request.__BaseOptions):dojo.request.__Promise;
	function get(url:String, ?options:dojo.request.__BaseOptions):dojo.request.__Promise;
	function post(url:String, ?options:dojo.request.__BaseOptions):Dynamic;
	function put(url:String, ?options:dojo.request.__BaseOptions):dojo.request.__Promise;
};
extern class DojoTopLevel {
	static function define(dependencies:Array<String>, factory:haxe.Constraints.Function):Dynamic;
	static function require(?config:Dynamic, ?dependencies:Array<String>, ?callback:haxe.Constraints.Function):Dynamic;
}
extern class DojoTopLevel {
	static function define(dependencies:Array<String>, factory:haxe.Constraints.Function):Dynamic;
	static function require(?config:Dynamic, ?dependencies:Array<String>, ?callback:haxe.Constraints.Function):Dynamic;
}
