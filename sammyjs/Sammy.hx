typedef SammyFunc = { };
extern class Object {
	function new(obj:Dynamic):Void;
	function escapeHTML(s:String):String;
	function h(s:String):String;
	function has(key:String):Bool;
	function join(args:haxe.extern.Rest<Dynamic>):String;
	function keys(?attributes_only:Bool):Array<String>;
	function log(args:haxe.extern.Rest<Dynamic>):Void;
	function toHTML():String;
	function toHash():Dynamic;
	function toString(?include_functions:Bool):String;
}
typedef Application = {
	>Dynamic,
	var ROUTE_VERBS : Array<String>;
	var APP_EVENTS : Array<String>;
	function $element(?selector:String):JQuery;
	function after(callback:haxe.Constraints.Function):Application;
	function any(verb:String, path:String, callback:haxe.Constraints.Function):Void;
	function around(callback:haxe.Constraints.Function):Application;
	@:overload(function(options:Dynamic, callback:haxe.Constraints.Function):Application { })
	function before(callback:haxe.Constraints.Function):Application;
	@:overload(function(name:String, data:Dynamic, callback:haxe.Constraints.Function):Application { })
	function bind(name:String, callback:haxe.Constraints.Function):Application;
	function bindToAllEvents(callback:haxe.Constraints.Function):Application;
	function clearTemplateCache():Dynamic;
	function contextMatchesOptions(context:Dynamic, match_options:Dynamic, ?positive:Bool):Bool;
	@:overload(function(path:js.RegExp, callback:haxe.Constraints.Function):Application { })
	function del(path:String, callback:haxe.Constraints.Function):Application;
	function destroy():Application;
	function error(message:String, original_error:Error):Void;
	function eventNamespace():String;
	@:overload(function(path:js.RegExp, callback:haxe.Constraints.Function):Application { })
	function get(path:String, callback:haxe.Constraints.Function):Application;
	function getLocation():String;
	function helper(name:String, method:haxe.Constraints.Function):Dynamic;
	function helpers(extensions:Dynamic):Dynamic;
	function isRunning():Bool;
	function log(params:haxe.extern.Rest<Dynamic>):Void;
	function lookupRoute(verb:String, path:String):Dynamic;
	function mapRoutes(route_array:Array<Dynamic>):Application;
	function notFound(verb:String, path:String):Dynamic;
	@:overload(function(path:js.RegExp, callback:haxe.Constraints.Function):Application { })
	function post(path:String, callback:haxe.Constraints.Function):Application;
	@:overload(function(path:js.RegExp, callback:haxe.Constraints.Function):Application { })
	function put(path:String, callback:haxe.Constraints.Function):Application;
	function refresh():Application;
	function routablePath(path:String):String;
	@:overload(function(verb:String, path:js.RegExp, callback:haxe.Constraints.Function):Application { })
	function route(verb:String, path:String, callback:haxe.Constraints.Function):Application;
	function run(?start_url:String):Application;
	function runRoute(verb:String, ?path:String, ?params:Dynamic, ?target:Dynamic):Dynamic;
	function send(params:haxe.extern.Rest<Dynamic>):Dynamic;
	function setLocation(new_location:String):String;
	function setLocationProxy(new_proxy:DataLocationProxy):Void;
	function swap(content:Dynamic, callback:haxe.Constraints.Function):Dynamic;
	function templateCache(key:String, value:Dynamic):Dynamic;
	function toString():String;
	function trigger(name:String, ?data:Dynamic):Application;
	function unload():Application;
	function use(params:haxe.extern.Rest<Dynamic>):Void;
	var last_location : Array<String>;
	var oauthorize : String;
	@:overload(function(?path:String):Dynamic { })
	@:overload(function(?callback:haxe.Constraints.Function):Dynamic { })
	function requireOAuth():Dynamic;
};
typedef DataLocationProxy = {
	@:overload(function(app:Dynamic, data_name:Dynamic, href_attribute:Dynamic):DataLocationProxy { })
	function new(app:Dynamic, ?run_interval_every:Dynamic):DataLocationProxy;
	function fullPath(location_obj:Dynamic):String;
	function bind():Void;
	function unbind():Void;
	function setLocation(new_location:String):String;
	function _startPolling(every:Float):Void;
};
typedef EventContext = {
	>Dynamic,
	function new(app:Dynamic, verb:Dynamic, path:Dynamic, params:Dynamic, target:Dynamic):Dynamic;
	function $element():JQuery;
	function engineFor(engine:Dynamic):Dynamic;
	function eventNamespace():String;
	function interpolate(content:Dynamic, data:Dynamic, engine:Dynamic, partials:Dynamic):EventContext;
	@:overload(function(str:String):Dynamic { })
	function json(str:Dynamic):Dynamic;
	function load(location:Dynamic, ?options:Dynamic, ?callback:haxe.Constraints.Function):Dynamic;
	function loadPartials(partials:Dynamic):Dynamic;
	function notFound():Dynamic;
	function partial(location:String, ?data:Dynamic, ?callback:haxe.Constraints.Function, ?partials:Dynamic):RenderContext;
	var partials : Dynamic;
	var params : Dynamic;
	function redirect(params:haxe.extern.Rest<Dynamic>):Void;
	function render(location:String, ?data:Dynamic, ?callback:haxe.Constraints.Function, ?partials:Dynamic):RenderContext;
	function renderEach(location:Dynamic, ?data:Array<{ var name : String; @:optional
	var data : Dynamic; }>, ?callback:haxe.Constraints.Function):RenderContext;
	function send(params:haxe.extern.Rest<Dynamic>):RenderContext;
	function swap(contents:Dynamic, callback:haxe.Constraints.Function):String;
	function toString():String;
	function trigger(name:String, ?data:Dynamic):EventContext;
	var name : Dynamic;
	var title : Dynamic;
};
typedef FormBuilder = {
	function new(name:Dynamic, object:Dynamic):Dynamic;
	function checkbox(keypath:String, value:Dynamic, attributes:haxe.extern.Rest<Dynamic>):String;
	function close():String;
	function hidden(keypath:String, attributes:haxe.extern.Rest<Dynamic>):String;
	function label(keypath:String, content:Dynamic, attributes:haxe.extern.Rest<Dynamic>):String;
	function open(attributes:haxe.extern.Rest<Dynamic>):Dynamic;
	function password(keypath:String, attributes:haxe.extern.Rest<Dynamic>):String;
	function radio(keypath:String, value:Dynamic, attributes:haxe.extern.Rest<Dynamic>):String;
	function select(keypath:String, options:Dynamic, attributes:haxe.extern.Rest<Dynamic>):String;
	function submit(attributes:haxe.extern.Rest<Dynamic>):String;
	function text(keypath:String, attributes:haxe.extern.Rest<Dynamic>):String;
	function textarea(keypath:String, attributes:haxe.extern.Rest<Dynamic>):String;
};
typedef Form = {
	function formFor(name:String, object:Dynamic, content_callback:haxe.Constraints.Function):FormBuilder;
};
typedef GoogleAnalytics = {
	function new(app:Dynamic, tracker:Dynamic):Dynamic;
	function noTrack():Dynamic;
	function track(path:Dynamic):Dynamic;
};
typedef Haml = {
	>EventContext,
};
typedef Handlebars = {
	>EventContext,
};
typedef Hogan = {
	>EventContext,
};
typedef JSON = {
	>EventContext,
};
typedef Mustache = {
	>EventContext,
};
typedef RenderContext = {
	>Dynamic,
	function new(event_context:Dynamic):Dynamic;
	function appendTo(selector:String):RenderContext;
	function collect(array:Array<Dynamic>, callback:haxe.Constraints.Function, ?now:Bool):RenderContext;
	function interpolate(data:Dynamic, ?engine:Dynamic, ?retain:Bool):RenderContext;
	function load(location:String, ?options:Dynamic, ?callback:haxe.Constraints.Function):RenderContext;
	function loadPartials(?partials:Dynamic):RenderContext;
	function next(content:Dynamic):Void;
	@:overload(function(location:String, data:Dynamic, callback:haxe.Constraints.Function, partials:Dynamic):RenderContext { })
	function partial(location:String, callback:haxe.Constraints.Function, partials:Dynamic):RenderContext;
	function prependTo(selector:String):RenderContext;
	@:overload(function(location:String, data:Dynamic):RenderContext { })
	@:overload(function(location:String, callback:haxe.Constraints.Function, ?partials:Dynamic):RenderContext { })
	@:overload(function(location:String, data:Dynamic, callback:haxe.Constraints.Function):RenderContext { })
	@:overload(function(location:String, data:Dynamic, callback:haxe.Constraints.Function, partials:Dynamic):RenderContext { })
	function render(callback:haxe.Constraints.Function):RenderContext;
	function renderEach(location:String, ?name:String, ?data:Dynamic, ?callback:haxe.Constraints.Function):RenderContext;
	function replace(selector:String):RenderContext;
	function send(params:haxe.extern.Rest<Dynamic>):RenderContext;
	function swap(?callback:haxe.Constraints.Function):RenderContext;
	function then(callback:haxe.Constraints.Function):RenderContext;
	function trigger(name:Dynamic, data:Dynamic):Dynamic;
	function wait():Void;
};
typedef StoreOptions = {
	@:optional
	var name : String;
	@:optional
	var element : String;
	@:optional
	var type : String;
	@:optional
	var memory : Dynamic;
	@:optional
	var data : Dynamic;
	@:optional
	var cookie : Dynamic;
	@:optional
	var local : Dynamic;
	@:optional
	var session : Dynamic;
};
typedef Store = {
	var stores : Dynamic;
	function new(?options:Dynamic):Dynamic;
	function clear(key:String):Dynamic;
	function clearAll():Void;
	function each(callback:haxe.Constraints.Function):Bool;
	function exists(key:String):Bool;
	function fetch(key:String, callback:haxe.Constraints.Function):Dynamic;
	function filter(callback:haxe.Constraints.Function):Bool;
	function first(callback:haxe.Constraints.Function):Bool;
	function get(key:String):Dynamic;
	@:overload(function(type:Dynamic):Dynamic { })
	function isAvailable():Bool;
	function keys():Array<String>;
	function load(key:String, path:String, callback:haxe.Constraints.Function):Void;
	function set(key:String, value:Dynamic):Dynamic;
	function Cookie(name:Dynamic, element:Dynamic, options:Dynamic):Dynamic;
	function Data(name:Dynamic, element:Dynamic):Dynamic;
	function LocalStorage(name:Dynamic, element:Dynamic):Dynamic;
	function Memory(name:Dynamic, element:Dynamic):Dynamic;
	function SessionStorage(name:Dynamic, element:Dynamic):Dynamic;
	function Template(app:Dynamic, method_alias:Dynamic):Dynamic;
};
extern class SammyTopLevel {
	static function Cache(app:Dynamic, options:Dynamic):Dynamic;
	static function DataCacheProxy(initial:Dynamic, $element:Dynamic):Dynamic;
	static var DataLocationProxy : DataLocationProxy;
	static function DefaultLocationProxy(app:Dynamic, run_interval_every:Dynamic):Dynamic;
	static function EJS(app:Dynamic, method_alias:Dynamic):Dynamic;
	static function Exceptional(app:Dynamic, errorReporter:Dynamic):Dynamic;
	static function Flash(app:Dynamic):Dynamic;
	static var FormBuilder : FormBuilder;
	static function Form(app:Dynamic):Dynamic;
	static function Haml(app:Dynamic, method_alias:Dynamic):Dynamic;
	static function Handlebars(app:Dynamic, method_alias:Dynamic):Dynamic;
	static function Hogan(app:Dynamic, method_alias:Dynamic):Dynamic;
	static function Hoptoad(app:Dynamic, errorReporter:Dynamic):Dynamic;
	static function JSON(app:Dynamic):Dynamic;
	static function Meld(app:Dynamic, method_alias:Dynamic):Dynamic;
	static function MemoryCacheProxy(initial:Dynamic):Dynamic;
	static function Mustache(app:Dynamic, method_alias:Dynamic):Dynamic;
	static function NestedParams(app:Dynamic):Dynamic;
	static function OAuth2(app:Dynamic):Dynamic;
	static function PathLocationProxy(app:Dynamic):Dynamic;
	static function Pure(app:Dynamic, method_alias:Dynamic):Dynamic;
	static function PushLocationProxy(app:Dynamic):Dynamic;
	static function Session(app:Dynamic, options:Dynamic):Dynamic;
	static function Storage(app:Dynamic):Dynamic;
	static var Store : Store;
	static function Title():Dynamic;
	static function Template(app:Dynamic, method_alias:Dynamic):Dynamic;
	static function Tmpl(app:Dynamic, method_alias:Dynamic):Dynamic;
	static function addLogger(logger:Dynamic):Dynamic;
	static function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
typedef JQueryStatic = {
	var sammy : Sammy.SammyFunc;
	var log : haxe.Constraints.Function;
};
