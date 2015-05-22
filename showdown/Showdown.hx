typedef Replace = {
	function replace(substring:String, args:haxe.extern.Rest<Dynamic>):String;
};
typedef Extension = {
	@:optional
	var type : String;
};
typedef LangExtension = {
	>Extension,
	@:optional
	function filter(text:String):String;
};
typedef OutputModifier = {
	>Extension,
	@:optional
	var regex : String;
	@:optional
	var replace : Dynamic;
};
typedef ShowdownExtension = {
	>LangExtension,
	>OutputModifier,
};
typedef Plugin = { };
typedef ConverterOptions = {
	var extensions : Array<Dynamic>;
};
typedef Converter = {
	function makeHtml(text:String):String;
};
typedef ConverterStatic = {
	function new(?converter_options:ConverterOptions):Converter;
};
extern class ShowdownTopLevel {
	static var converter : ConverterStatic;
	static var extensions : { };
	static function forEach<T>(obj:Array<T>, callback:T -> Float -> Array<T> -> Dynamic):Void;
}
