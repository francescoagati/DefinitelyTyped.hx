typedef CustomPanel = {
	var name : String;
	var template : String;
	function process(locals:Dynamic):Dynamic;
	@:optional
	var standalone : Bool;
	@:optional
	function initialize(req:express.Request):Void;
	@:optional
	function finalize(req:express.Request):Void;
	@:optional
	function pre_render(req:express.Request):Void;
	@:optional
	function post_render(req:express.Request):Void;
	@:optional
	var options : Dynamic;
};
extern class Express-debugTopLevel {
	static function debug(app:express.Application, ?settings:{ @:optional
	var depth : Float; @:optional
	var theme : String; @:optional
	var extra_panels : Array<CustomPanel>; @:optional
	var panels : Array<String>; @:optional
	var path : String; @:optional
	var extra_attrs : String; @:optional
	var sort : haxe.extern.EitherType<Bool, Float -> Float -> Float>; }):Void;
}
extern class Express-debugTopLevel {
	static function debug(app:express.Application, ?settings:{ @:optional
	var depth : Float; @:optional
	var theme : String; @:optional
	var extra_panels : Array<CustomPanel>; @:optional
	var panels : Array<String>; @:optional
	var path : String; @:optional
	var extra_attrs : String; @:optional
	var sort : haxe.extern.EitherType<Bool, Float -> Float -> Float>; }):Void;
}
