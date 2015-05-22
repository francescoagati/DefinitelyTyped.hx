typedef Errors = {
	var validation : { };
};
typedef Options = {
	@:optional
	var checkRequired : Bool;
	@:optional
	var useDefault : Bool;
	@:optional
	var useCoerce : Bool;
	@:optional
	var removeAdditional : Bool;
};
typedef Env = {
	var defaultOptions : Options;
	function addSchema(name:String, schema:Dynamic):Void;
	function addType(name:String, parse:Dynamic -> Dynamic):Void;
	function addFormat(name:String, parse:Dynamic -> Dynamic):Void;
	function addCheck(name:String, check:Dynamic -> Dynamic -> Dynamic):Void;
	function addTypeCoercion(name:String, coerce:Dynamic -> Dynamic):Void;
	@:overload(function(schema:Dynamic, object:Dynamic, ?options:Options):Errors { })
	function validate(name:String, object:Dynamic, ?options:Options):Errors;
};
extern class JjvTopLevel {
	static function jjv():jjv.Env;
}
extern class JjvTopLevel {
	static function jjv():jjv.Env;
}
extern class JjvTopLevel {
	static function jjv():jjv.Env;
}
