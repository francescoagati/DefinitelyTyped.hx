typedef HandlebarsTemplatable = {
	var template : HandlebarsTemplateDelegate;
};
typedef HandlebarsTemplateDelegate = { };
typedef HandlebarsCommon = {
	function registerHelper(name:String, fn:haxe.Constraints.Function, ?inverse:Bool):Void;
	function registerPartial(name:String, str:Dynamic):Void;
	function K():Void;
	function createFrame(object:Dynamic):Dynamic;
	function Exception(message:String):Void;
	var SafeString : Dynamic;
	var Utils : Dynamic;
	var logger : Logger;
	function log(level:Float, obj:Dynamic):Void;
};
typedef HandlebarsStatic = {
	>HandlebarsCommon,
	function parse(input:String):hbs.AST.ProgramNode;
	function compile(input:Dynamic, ?options:Dynamic):HandlebarsTemplateDelegate;
};
typedef HandlebarsTemplates = { };
typedef HandlebarsRuntimeStatic = {
	>HandlebarsCommon,
	var templates : HandlebarsTemplates;
};
extern class HandlebarsTopLevel {
	static var Handlebars : HandlebarsStatic;
}
extern class HandlebarsTopLevel {
	static var Handlebars : HandlebarsStatic;
}
