typedef Cheerio = {
	var length : Float;
	@:overload(function(name:String, value:Dynamic):Cheerio { })
	function attr(name:String):String;
	function data():Dynamic;
	@:overload(function(value:String):Cheerio { })
	function val():String;
	function removeAttr(name:String):Cheerio;
	function hasClass(className:String):Bool;
	function addClass(classNames:String):Cheerio;
	@:overload(function(className:String):Cheerio { })
	@:overload(function(func:Float -> String -> String):Cheerio { })
	function removeClass():Cheerio;
	@:overload(function(className:String, toggleSwitch:Bool):Cheerio { })
	@:overload(function(?toggleSwitch:Bool):Cheerio { })
	@:overload(function(func:Float -> String -> Bool -> String, ?toggleSwitch:Bool):Cheerio { })
	function toggleClass(className:String):Cheerio;
	@:overload(function(element:CheerioElement):Bool { })
	@:overload(function(element:Array<CheerioElement>):Bool { })
	@:overload(function(selection:Cheerio):Bool { })
	@:overload(function(func:Float -> CheerioElement -> Bool):Bool { })
	function is(selector:String):Bool;
	function find(selector:String):Cheerio;
	function parent(?selector:String):Cheerio;
	function parents(?selector:String):Cheerio;
	@:overload(function(element:CheerioElement, ?filter:String):Cheerio { })
	@:overload(function(element:Cheerio, ?filter:String):Cheerio { })
	function parentsUntil(?selector:String, ?filter:String):Cheerio;
	function closest(selector:String):Cheerio;
	function next(?selector:String):Cheerio;
	function nextAll():Cheerio;
	@:overload(function(element:CheerioElement, ?filter:String):Cheerio { })
	@:overload(function(element:Cheerio, ?filter:String):Cheerio { })
	function nextUntil(?selector:String, ?filter:String):Cheerio;
	function prev(?selector:String):Cheerio;
	function prevAll():Cheerio;
	@:overload(function(element:CheerioElement, ?filter:String):Cheerio { })
	@:overload(function(element:Cheerio, ?filter:String):Cheerio { })
	function prevUntil(?selector:String, ?filter:String):Cheerio;
	function slice(start:Float, ?end:Float):Cheerio;
	function siblings(?selector:String):Cheerio;
	function children(?selector:String):Cheerio;
	function each(func:Float -> CheerioElement -> Dynamic):Cheerio;
	function map(func:Float -> CheerioElement -> Dynamic):Cheerio;
	@:overload(function(selection:Cheerio):Cheerio { })
	@:overload(function(element:CheerioElement):Cheerio { })
	@:overload(function(elements:Array<CheerioElement>):Cheerio { })
	@:overload(function(func:Float -> Bool):Cheerio { })
	function filter(selector:String):Cheerio;
	function first():Cheerio;
	function last():Cheerio;
	function eq(index:Float):Cheerio;
	@:overload(function(index:Float):Document { })
	function get():Array<Document>;
	function end():Cheerio;
	@:overload(function(selector:String, context:Document):Cheerio { })
	@:overload(function(element:CheerioElement):Cheerio { })
	@:overload(function(elements:Array<CheerioElement>):Cheerio { })
	@:overload(function(selection:Cheerio):Cheerio { })
	function add(selectorOrHtml:String):Cheerio;
	@:overload(function(content:Document, contents:haxe.extern.Rest<Dynamic>):Cheerio { })
	@:overload(function(content:Array<Document>, contents:haxe.extern.Rest<Dynamic>):Cheerio { })
	@:overload(function(content:Cheerio, contents:haxe.extern.Rest<Dynamic>):Cheerio { })
	function append(content:String, contents:haxe.extern.Rest<Dynamic>):Cheerio;
	@:overload(function(content:Document, contents:haxe.extern.Rest<Dynamic>):Cheerio { })
	@:overload(function(content:Array<Document>, contents:haxe.extern.Rest<Dynamic>):Cheerio { })
	@:overload(function(content:Cheerio, contents:haxe.extern.Rest<Dynamic>):Cheerio { })
	function prepend(content:String, contents:haxe.extern.Rest<Dynamic>):Cheerio;
	@:overload(function(content:Document, contents:haxe.extern.Rest<Dynamic>):Cheerio { })
	@:overload(function(content:Array<Document>, contents:haxe.extern.Rest<Dynamic>):Cheerio { })
	@:overload(function(content:Cheerio, contents:haxe.extern.Rest<Dynamic>):Cheerio { })
	function after(content:String, contents:haxe.extern.Rest<Dynamic>):Cheerio;
	@:overload(function(content:Document, contents:haxe.extern.Rest<Dynamic>):Cheerio { })
	@:overload(function(content:Array<Document>, contents:haxe.extern.Rest<Dynamic>):Cheerio { })
	@:overload(function(content:Cheerio, contents:haxe.extern.Rest<Dynamic>):Cheerio { })
	function before(content:String, contents:haxe.extern.Rest<Dynamic>):Cheerio;
	function remove(?selector:String):Cheerio;
	@:overload(function(content:CheerioElement):Cheerio { })
	@:overload(function(content:Array<CheerioElement>):Cheerio { })
	@:overload(function(content:Cheerio):Cheerio { })
	function replaceWith(content:String):Cheerio;
	function empty():Cheerio;
	@:overload(function(html:String):Cheerio { })
	function html():String;
	@:overload(function(text:String):Cheerio { })
	function text():String;
	@:overload(function(propertyNames:Array<String>):Array<String> { })
	@:overload(function(propertyName:String, value:String):Cheerio { })
	@:overload(function(propertyName:String, value:Float):Cheerio { })
	@:overload(function(propertyName:String, func:Float -> String -> String):Cheerio { })
	@:overload(function(propertyName:String, func:Float -> String -> Float):Cheerio { })
	@:overload(function(properties:Dynamic):Cheerio { })
	function css(propertyName:String):String;
	function clone():Cheerio;
	function toArray():Array<CheerioElement>;
};
typedef CheerioOptionsInterface = {
	@:optional
	var xmlMode : Bool;
	@:optional
	var decodeEntities : Bool;
	@:optional
	var lowerCaseTags : Bool;
	@:optional
	var lowerCaseAttributeNames : Bool;
	@:optional
	var recognizeCDATA : Bool;
	@:optional
	var recognizeSelfClosing : Bool;
	@:optional
	var normalizeWhitespace : Bool;
};
typedef CheerioStatic = {
	function xml():String;
	function root():Cheerio;
	function contains(container:CheerioElement, contained:CheerioElement):Bool;
	function parseHTML(data:String, ?context:Document, ?keepScripts:Bool):Array<Document>;
	@:overload(function(selector:String, ?options:CheerioOptionsInterface):String { })
	@:overload(function(element:Cheerio, ?options:CheerioOptionsInterface):String { })
	@:overload(function(element:CheerioElement, ?options:CheerioOptionsInterface):String { })
	function html(?options:CheerioOptionsInterface):String;
};
typedef CheerioElement = {
	var type : String;
	var name : String;
	var attribs : Dynamic;
	var children : Array<CheerioElement>;
	var next : CheerioElement;
	var prev : CheerioElement;
	var parent : CheerioElement;
	var root : CheerioElement;
};
extern class CheerioTopLevel {
	static function load(html:String, ?options:CheerioOptionsInterface):CheerioStatic;
}
extern class CheerioTopLevel {
	static function load(html:String, ?options:CheerioOptionsInterface):CheerioStatic;
}
