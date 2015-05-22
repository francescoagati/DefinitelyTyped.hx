typedef GiraffeObject = {
	var app : App;
	@:optional
	var appEvents : StringMap;
	@:optional
	var dataEvents : StringMap;
	@:optional
	var defaultOptions : DefaultOptions;
	@:optional
	function initialize():Dynamic;
	@:optional
	function beforeInitialize():Dynamic;
	@:optional
	function afterInitialize():Dynamic;
	@:optional
	function dispose():Dynamic;
	@:optional
	function beforeDispose():Dynamic;
	@:optional
	function afterDispose():Dynamic;
};
typedef AttachmentOptions = {
	@:optional
	var method : String;
	@:optional
	var forceRender : Bool;
	@:optional
	var suppressRender : Bool;
};
typedef DefaultOptions = {
	@:optional
	var disposeOnDetach : Bool;
	@:optional
	var alwaysRender : Bool;
	@:optional
	var saveScrollPosition : Bool;
	@:optional
	var documentTitle : String;
};
typedef AppMap = { };
typedef ViewMap<TModel:(Model)> = { };
typedef StringMap = { };
extern class Collection<TModel:(Model)> extends Backbone.Collection<TModel> {
	var app : App;
	var model : { function new():TModel; };
}
extern class Model extends Backbone.Model {
	var app : App;
}
extern class Router extends Backbone.Router {
	var app : App;
	var namespace : String;
	var triggers : StringMap;
	function cause(appEvent:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	function isCaused(appEvent:String, args:haxe.extern.Rest<Dynamic>):Bool;
	function getRoute(appEvent:String, args:haxe.extern.Rest<Dynamic>):String;
	function reload(url:String):Dynamic;
}
extern class View<TModel:(Model)> extends Backbone.View<TModel> {
	var app : App;
	var appEvents : StringMap;
	var children : Array<View<TModel>>;
	var dataEvents : StringMap;
	var defaultOptions : DefaultOptions;
	var documentTitle : String;
	var parent : View<TModel>;
	var template : Dynamic;
	var ui : StringMap;
	function attachTo(el:Dynamic, ?options:AttachmentOptions):View<TModel>;
	function attach(view:View<TModel>, ?options:AttachmentOptions):View<TModel>;
	function isAttached(el:Dynamic):Bool;
	function render(?options:Dynamic):View<TModel>;
	function beforeRender():Dynamic;
	function afterRender():Dynamic;
	function templateStrategy():String;
	function serialize():Dynamic;
	function setParent(parent:View<TModel>):View<TModel>;
	function addChild(child:View<TModel>):View<TModel>;
	function addChildren(children:Array<View<TModel>>):View<TModel>;
	function removeChild(child:View<TModel>, ?preserve:Bool):View<TModel>;
	function removeChildren(?preserve:Bool):View<TModel>;
	function detach(?preserve:Bool):View<TModel>;
	function detachChildren(?preserve:Bool):View<TModel>;
	function invoke(method:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	function dispose():View<TModel>;
	function beforeDispose():View<TModel>;
	function afterDispose():View<TModel>;
	static function detachByElement(el:Dynamic, ?preserve:Bool):View<Model>;
	static function getClosestView<TModel>(el:Dynamic):View<Model>;
	static function getByCid(cid:String):View<Model>;
	static function to$El(el:Dynamic, ?parent:Dynamic, ?allowParentMatch:Bool):JQuery;
	static function setDocumentEvents(events:Array<String>, ?prefix:String):Array<String>;
	static function removeDocumentEvents(?prefix:String):Dynamic;
	static function setDocumentEventPrefix(?prefix:String):Dynamic;
	static function setTemplateStrategy(strategy:Dynamic, ?instance:Dynamic):Dynamic;
}
extern class App extends View<Model> {
	var routes : StringMap;
	function addInitializer(initializer:?Dynamic -> ?Void -> Void -> Void):App;
	function start(?options:Dynamic):App;
}
extern class GiraffeTopLevel {
	static var app : App;
	static var apps : AppMap;
	static var defaultOptions : DefaultOptions;
	static var version : String;
	static var views : ViewMap<Model>;
	static function bindAppEvents(instance:GiraffeObject):GiraffeObject;
	static function bindDataEvents(instance:GiraffeObject):GiraffeObject;
	static function bindEvent(context:Backbone.Events, target:Backbone.Events, event:Dynamic, callback:haxe.Constraints.Function):Dynamic;
	static function unbindEvent(context:Backbone.Events, target:Backbone.Events, event:Dynamic, callback:haxe.Constraints.Function):Dynamic;
	static function bindEventMap(context:Backbone.Events, target:Backbone.Events, eventMap:Dynamic):Dynamic;
	static function unbindEventMap(context:Backbone.Events, target:Backbone.Events, eventMap:Dynamic):Dynamic;
	static function configure(instance:Dynamic, ?options:Dynamic):Dynamic;
	static function dispose(instance:GiraffeObject, args:haxe.extern.Rest<Dynamic>):GiraffeObject;
	static function disposeThis(args:haxe.extern.Rest<Dynamic>):GiraffeObject;
	static function wrapFn(obj:Dynamic, name:String, before:haxe.Constraints.Function, after:haxe.Constraints.Function):Dynamic;
}
