extern class XMLDocument {
	function new(version:Float, encoding:String):Void;
	function child(idx:Float):Element;
	function childNodes():Array<Element>;
	function errors():Array<SyntaxError>;
	@:overload(function(enc:String):Void { })
	function encoding():String;
	function find(xpath:String):Array<Element>;
	function get(xpath:String):Element;
	function node(name:String, content:String):Element;
	function root():Element;
	function toString():String;
	function version():Number;
}
extern class HTMLDocument extends XMLDocument {

}
extern class Element {
	function new(doc:XMLDocument, name:String, ?content:String):Void;
	@:overload(function(newName:String):Void { })
	function name():String;
	function text():String;
	@:overload(function(attr:Attribute):Dynamic { })
	@:overload(function(attrObject:{ }):Void { })
	function attr(name:String):String;
	function attrs():Array<Attribute>;
	function parent():Element;
	function doc():XMLDocument;
	function child(idx:Float):Element;
	function childNodes():Array<Element>;
	function addChild(child:Element):Dynamic;
	function nextSibling():Element;
	function nextElement():Element;
	function addNextSibling(siblingNode:Element):Element;
	function prevSibling():Element;
	function prevElement():Element;
	function addPrevSibling(siblingNode:Element):Dynamic;
	@:overload(function(xpath:String, ns_uri:String):Array<Element> { })
	@:overload(function(xpath:String, namespaces:{ }):Array<Element> { })
	function find(xpath:String):Array<Element>;
	@:overload(function(xpath:Dynamic, ns_uri:{ }):Element { })
	function get(xpath:String, ns_uri:String):Element;
	@:overload(function(prefix:String, href:String):Namespace { })
	function defineNamespace(href:String):Namespace;
	@:overload(function(ns:Namespace):Void { })
	@:overload(function(href:String):Void { })
	@:overload(function(prefix:String, href:String):Void { })
	function namespace():Namespace;
	function remove():Void;
	function path():String;
	function type():String;
}
extern class Attribute {
	@:overload(function(node:Element, name:String, value:String, ns:Namespace):Void { })
	function new(node:Element, name:String, value:String):Void;
	function name():String;
	@:overload(function(ns:Namespace):Namespace { })
	function namespace():Namespace;
	function nextSibling():Attribute;
	function node():Element;
	function prevSibling():Attribute;
	function remove():Void;
	function value():String;
}
extern class Namespace {
	function new(node:Element, prefix:String, href:String):Void;
	function href():String;
	function prefix():String;
}
extern class SaxParser {
	function parseString(source:String):Bool;
	function addListener(event:String, listener:haxe.Constraints.Function):Dynamic;
	function on(event:String, listener:haxe.Constraints.Function):Dynamic;
	function once(event:String, listener:haxe.Constraints.Function):Void;
	function removeListener(event:String, listener:haxe.Constraints.Function):Void;
	function removeAllListener(event:String):Void;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<{ var Function : Dynamic; }>;
	function emit(event:String, ?arg1:Dynamic, ?arg2:Dynamic):Void;
}
extern class SaxPushParser {
	function push(source:String):Bool;
	function addListener(event:String, listener:haxe.Constraints.Function):Dynamic;
	function on(event:String, listener:haxe.Constraints.Function):Dynamic;
	function once(event:String, listener:haxe.Constraints.Function):Void;
	function removeListener(event:String, listener:haxe.Constraints.Function):Void;
	function removeAllListener(event:String):Void;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<{ var Function : Dynamic; }>;
	function emit(event:String, ?arg1:Dynamic, ?arg2:Dynamic):Void;
}
extern class LibxmljsTopLevel {
	static function parseXmlString(source:String):XMLDocument;
	static function parseHtmlString(source:String):HTMLDocument;
}
extern class LibxmljsTopLevel {
	static function parseXmlString(source:String):XMLDocument;
	static function parseHtmlString(source:String):HTMLDocument;
}
