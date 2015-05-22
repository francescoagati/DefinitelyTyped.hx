extern class AtomItem {
	function new(args:Dynamic):Void;
	function accept(tag:Dynamic):Dynamic;
	function addAttribute(name:Dynamic, value:Dynamic):Void;
	function addAuthor(name:String, email:String, uri:String):Void;
	function addCategory(scheme:String, term:String, label:String):Void;
	function addContent(content:Dynamic):Void;
	function addContributor(name:String, email:String, uri:String):Void;
	function addExtension(name_space:String, name:String, attributes:Array<Dynamic>, content:String, shortNS:String):Void;
	function addLink(href:String, rel:String, hrefLang:String, title:String, type:String):Void;
	function addNamespace(fullName:Dynamic, shortName:Dynamic):Void;
	function buildFromDom(node:Dynamic):Void;
	function destroy():Void;
	function getAttribute(name:Dynamic):Dynamic;
	function getCategories(scheme:String):Dynamic;
	function getExtensions(name_space:String, name:String):Array<Dynamic>;
	function removeBasicLinks():Float;
	function removeCategories(scheme:String, term:String):Float;
	function removeExtensions(name_space:String, name:String):Void;
	function removeLink(href:String, rel:String):Float;
	function setTitle(str:String, type:String):Void;
	function toString():Dynamic;
}
extern class Category {
	function new(scheme:String, term:String, label:String):Void;
	function addAttribute(name:Dynamic, value:Dynamic):Void;
	function addContent(content:Dynamic):Void;
	function buildFromDom(node:HTMLElement):Void;
	function getAttribute(name:Dynamic):Dynamic;
	function toString():Dynamic;
}
extern class Collection {
	function new(href:Dynamic, title:Dynamic):Void;
	function accept(tag:Dynamic):Dynamic;
	function addAttribute(name:Dynamic, value:Dynamic):Void;
	function addAuthor(name:String, email:String, uri:String):Void;
	function addCategory(scheme:String, term:String, label:String):Void;
	function addContent(content:Dynamic):Void;
	function addContributor(name:String, email:String, uri:String):Void;
	function addExtension(name_space:String, name:String, attributes:Array<Dynamic>, content:String, shortNS:String):Void;
	function addLink(href:String, rel:String, hrefLang:String, title:String, type:String):Void;
	function addNamespace(fullName:Dynamic, shortName:Dynamic):Void;
	function buildFromDom(node:HTMLElement):Void;
	function destroy():Void;
	function getAttribute(name:Dynamic):Dynamic;
	function getCategories(scheme:String):Dynamic;
	function getExtensions(name_space:String, name:String):Array<Dynamic>;
	function removeBasicLinks():Float;
	function removeCategories(scheme:String, term:String):Float;
	function removeExtensions(name_space:String, name:String):Void;
	function removeLink(href:String, rel:String):Float;
	function setTitle(str:String, type:String):Void;
	function toString():Dynamic;
}
extern class Content {
	function new(tagName:Dynamic, value:Dynamic, src:Dynamic, type:Dynamic, xmlLang:Dynamic):Void;
	function addAttribute(name:Dynamic, value:Dynamic):Void;
	function addContent(content:Dynamic):Void;
	function buildFromDom(node:HTMLElement):Void;
	function getAttribute(name:Dynamic):Dynamic;
	function toString():Dynamic;
}
extern class Entry {
	function new(id:String):Void;
	function accept(tag:Dynamic):Dynamic;
	function addAttribute(name:Dynamic, value:Dynamic):Void;
	function addAuthor(name:String, email:String, uri:String):Void;
	function addCategory(scheme:String, term:String, label:String):Void;
	function addContent(content:Dynamic):Void;
	function addContributor(name:String, email:String, uri:String):Void;
	function addExtension(name_space:String, name:String, attributes:Array<Dynamic>, content:String, shortNS:String):Void;
	function addLink(href:String, rel:String, hrefLang:String, title:String, type:String):Void;
	function addNamespace(fullName:Dynamic, shortName:Dynamic):Void;
	function buildFromDom(node:Dynamic):Void;
	function destroy():Void;
	function getAttribute(name:Dynamic):Dynamic;
	function getCategories(scheme:String):Dynamic;
	function getEditHref():Dynamic;
	function getExtensions(name_space:String, name:String):Array<Dynamic>;
	function removeBasicLinks():Float;
	function removeCategories(scheme:String, term:String):Float;
	function removeExtensions(name_space:String, name:String):Void;
	function removeLink(href:String, rel:String):Float;
	function setEditHref(url:Dynamic):Void;
	function setTitle(str:String, type:String):Void;
	function toString(amPrimary:Dynamic):Dynamic;
}
extern class Generator {
	function new(uri:String, version:String, value:String):Void;
	function addAttribute(name:Dynamic, value:Dynamic):Void;
	function addContent(content:Dynamic):Void;
	function buildFromDom(node:Dynamic):Void;
	function getAttribute(name:Dynamic):Dynamic;
	function toString():Dynamic;
}
extern class Feed {
	function new(args:Dynamic):Void;
	function accept(tag:Dynamic):Dynamic;
	function addAttribute(name:Dynamic, value:Dynamic):Void;
	function addAuthor(name:String, email:String, uri:String):Void;
	function addCategory(scheme:String, term:String, label:String):Void;
	function addContent(content:Dynamic):Void;
	function addContributor(name:String, email:String, uri:String):Void;
	function addEntry(entry:Dynamic):Void;
	function addExtension(name_space:String, name:String, attributes:Array<Dynamic>, content:String, shortNS:String):Void;
	function addLink(href:String, rel:String, hrefLang:String, title:String, type:String):Void;
	function addNamespace(fullName:Dynamic, shortName:Dynamic):Void;
	function buildFromDom(node:Dynamic):Void;
	function createEntry():Dynamic;
	function destroy():Void;
	function getAttribute(name:Dynamic):Dynamic;
	function getCategories(scheme:String):Dynamic;
	function getEntry(entryId:String):Dynamic;
	function getExtensions(name_space:String, name:String):Array<Dynamic>;
	function getFirstEntry():Dynamic;
	function getSelfHref():Dynamic;
	function removeBasicLinks():Float;
	function removeCategories(scheme:String, term:String):Float;
	function removeEntry(entry:Dynamic):Float;
	function removeExtensions(name_space:String, name:String):Void;
	function removeLink(href:String, rel:String):Float;
	function setEntries(arrayOfEntry:Array<Dynamic>):Void;
	function setTitle(str:String, type:String):Void;
	function toString():Dynamic;
}
extern class Link {
	function new(href:Dynamic, rel:Dynamic, hrefLang:Dynamic, title:Dynamic, type:Dynamic):Void;
	function addAttribute(name:Dynamic, value:Dynamic):Void;
	function addContent(content:Dynamic):Void;
	function buildFromDom(node:Dynamic):Void;
	function getAttribute(name:Dynamic):Dynamic;
	function toString():Dynamic;
}
extern class Node {
	function new(name_space:Dynamic, name:Dynamic, attributes:Dynamic, content:Dynamic, shortNs:Dynamic):Void;
	function addAttribute(name:Dynamic, value:Dynamic):Void;
	function addContent(content:Dynamic):Void;
	function buildFromDom(node:Dynamic):Void;
	function getAttribute(name:Dynamic):Dynamic;
	function toString():Dynamic;
}
extern class Person {
	function new(personType:Dynamic, name:Dynamic, email:Dynamic, uri:Dynamic):Void;
	function accept(tag:Dynamic):Dynamic;
	function addAttribute(name:Dynamic, value:Dynamic):Void;
	function addContent(content:Dynamic):Void;
	function buildFromDom(node:Dynamic):Void;
	function getAttribute(name:Dynamic):Dynamic;
	function toString():Dynamic;
}
extern class Service {
	function new(href:Dynamic):Void;
	function accept(tag:Dynamic):Dynamic;
	function addAttribute(name:Dynamic, value:Dynamic):Void;
	function addAuthor(name:String, email:String, uri:String):Void;
	function addCategory(scheme:String, term:String, label:String):Void;
	function addContent(content:Dynamic):Void;
	function addContributor(name:String, email:String, uri:String):Void;
	function addExtension(name_space:String, name:String, attributes:Array<Dynamic>, content:String, shortNS:String):Void;
	function addLink(href:String, rel:String, hrefLang:String, title:String, type:String):Void;
	function addNamespace(fullName:Dynamic, shortName:Dynamic):Void;
	function buildFromDom(node:HTMLElement):Void;
	function destroy():Void;
	function getAttribute(name:Dynamic):Dynamic;
	function getCategories(scheme:String):Dynamic;
	function getCollection(url:String):Dynamic;
	function getExtensions(name_space:String, name:String):Array<Dynamic>;
	function removeBasicLinks():Float;
	function removeCategories(scheme:String, term:String):Float;
	function removeExtensions(name_space:String, name:String):Void;
	function removeLink(href:String, rel:String):Float;
	function setTitle(str:String, type:String):Void;
	function toString():Dynamic;
}
extern class Workspace {
	function new(title:Dynamic):Void;
	function accept(tag:Dynamic):Dynamic;
	function addAttribute(name:Dynamic, value:Dynamic):Void;
	function addAuthor(name:String, email:String, uri:String):Void;
	function addCategory(scheme:String, term:String, label:String):Void;
	function addContent(content:Dynamic):Void;
	function addContributor(name:String, email:String, uri:String):Void;
	function addExtension(name_space:String, name:String, attributes:Array<Dynamic>, content:String, shortNS:String):Void;
	function addLink(href:String, rel:String, hrefLang:String, title:String, type:String):Void;
	function addNamespace(fullName:Dynamic, shortName:Dynamic):Void;
	function buildFromDom(node:HTMLElement):Void;
	function destroy():Void;
	function getAttribute(name:Dynamic):Dynamic;
	function getCategories(scheme:String):Dynamic;
	function getExtensions(name_space:String, name:String):Array<Dynamic>;
	function removeBasicLinks():Float;
	function removeCategories(scheme:String, term:String):Float;
	function removeExtensions(name_space:String, name:String):Void;
	function removeLink(href:String, rel:String):Float;
	function setTitle(str:String, type:String):Void;
	function toString():Dynamic;
}
typedef _actions = {
	var node : Dynamic;
	var obj : Dynamic;
	function author(obj:Dynamic, node:Dynamic):Void;
	function category(obj:Dynamic, node:Dynamic):Void;
	function content(obj:Dynamic, node:Dynamic):Void;
	function contributor(obj:Dynamic, node:Dynamic):Void;
	function email(obj:Dynamic, node:Dynamic):Void;
	function entry(obj:Dynamic, node:Dynamic):Void;
	function generator(obj:Dynamic, node:Dynamic):Void;
	function icon(obj:Dynamic, node:Dynamic):Void;
	function id(obj:Dynamic, node:Dynamic):Void;
	function issued(obj:Dynamic, node:Dynamic):Void;
	function link(obj:Dynamic, node:Dynamic):Void;
	function modified(obj:Dynamic, node:Dynamic):Void;
	function name(obj:Dynamic, node:Dynamic):Void;
	function published(obj:Dynamic, node:Dynamic):Void;
	function rights(obj:Dynamic, node:Dynamic):Void;
	function subtitle(obj:Dynamic, node:Dynamic):Void;
	function summary(obj:Dynamic, node:Dynamic):Void;
	function title(obj:Dynamic, node:Dynamic):Void;
	function updated(obj:Dynamic, node:Dynamic):Void;
	function uri(obj:Dynamic, node:Dynamic):Void;
};
typedef _Constants = {
	var APP_NS : String;
	var ATOM_NS : String;
	var ATOM_URI : String;
	var PURL_NS : String;
};
typedef Util = {
	function createDate(node:HTMLElement):Dynamic;
	function escapeHtml(str:String):Dynamic;
	function getNodename(node:HTMLElement):String;
	function unEscapeHtml(str:String):Dynamic;
};
