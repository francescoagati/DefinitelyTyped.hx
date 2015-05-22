extern class Builder {
	function new(?options:BuilderOptions):Void;
	function buildObject(rootObj:Dynamic):String;
}
extern class Parser {
	function new(?options:Options):Void;
	function processAsync():Dynamic;
	function assignOrPush(obj:Dynamic, key:String, newValue:Dynamic):Dynamic;
	function reset():Dynamic;
	function parseString(str:String, ?cb:haxe.Constraints.Function):Void;
}
typedef RenderOptions = {
	@:optional
	var indent : String;
	@:optional
	var newline : String;
	@:optional
	var pretty : Bool;
};
typedef XMLDeclarationOptions = {
	@:optional
	var encoding : String;
	@:optional
	var standalone : Bool;
	@:optional
	var version : String;
};
typedef BuilderOptions = {
	@:optional
	var doctype : Dynamic;
	@:optional
	var headless : Bool;
	@:optional
	var indent : String;
	@:optional
	var newline : String;
	@:optional
	var pretty : Bool;
	@:optional
	var renderOpts : RenderOptions;
	@:optional
	var rootName : String;
	@:optional
	var xmldec : XMLDeclarationOptions;
};
typedef Options = {
	@:optional
	var async : Bool;
	@:optional
	var attrkey : String;
	@:optional
	var attrNameProcessors : String -> String;
	@:optional
	var charkey : String;
	@:optional
	var charsAsChildren : Bool;
	@:optional
	var childkey : String;
	@:optional
	var emptyTag : Dynamic;
	@:optional
	var explicitArray : Bool;
	@:optional
	var explicitCharkey : Bool;
	@:optional
	var explicitChildren : Bool;
	@:optional
	var explicitRoot : Bool;
	@:optional
	var ignoreAttrs : Bool;
	@:optional
	var mergeAttrs : Bool;
	@:optional
	var normalize : Bool;
	@:optional
	var normalizeTags : Bool;
	@:optional
	var strict : Bool;
	@:optional
	var tagNameProcessors : String -> String;
	@:optional
	var trim : Bool;
	@:optional
	var validator : haxe.Constraints.Function;
	@:optional
	var xmlns : Bool;
};
extern class Xml2jsTopLevel {
	static function parseString(xml:String, callback:Dynamic -> Dynamic -> Void):Void;
	static function parseString(xml:String, options:Options, callback:Dynamic -> Dynamic -> Void):Void;
}
extern class Xml2jsTopLevel {
	static function parseString(xml:String, callback:Dynamic -> Dynamic -> Void):Void;
	static function parseString(xml:String, options:Options, callback:Dynamic -> Dynamic -> Void):Void;
}
extern class Xml2jsTopLevel {
	static function parseString(xml:String, callback:Dynamic -> Dynamic -> Void):Void;
	static function parseString(xml:String, options:Options, callback:Dynamic -> Dynamic -> Void):Void;
}
