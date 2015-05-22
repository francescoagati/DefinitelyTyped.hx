typedef ParseReturn = {
	var name : String;
	var parent : Dynamic;
	var tokens : Array<Dynamic>;
	var blocks : Dynamic;
};
typedef SwigOptions = {
	@:optional
	var autoescape : Bool;
	@:optional
	var cache : Dynamic;
	@:optional
	var cmtControls : Array<String>;
	@:optional
	var loader : TemplateLoader;
	@:optional
	var locals : Dynamic;
	@:optional
	var tagControls : Array<String>;
	@:optional
	var varControls : Array<String>;
};
typedef TemplateLoader = {
	function resolve(to:String, from:String):String;
	@:overload(function(identifier:String):Dynamic { })
	function load(identifier:String, ?callback:Error -> Dynamic -> Void):Void;
};
