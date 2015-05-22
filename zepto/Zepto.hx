typedef ZeptoStatic = {
	function camelCase(str:String):String;
	function contains(parent:HTMLElement, node:HTMLElement):Bool;
	@:overload(function(collection:Dynamic, fn:String -> Dynamic -> Bool):Void { })
	function each(collection:Array<Dynamic>, fn:Float -> Dynamic -> Bool):Void;
	@:overload(function(deep:Bool, target:Dynamic, sources:haxe.extern.Rest<Dynamic>):Dynamic { })
	function extend(target:Dynamic, sources:haxe.extern.Rest<Dynamic>):Dynamic;
	var fn : Dynamic;
	function grep(items:Array<Dynamic>, fn:Dynamic -> Bool):Array<Dynamic>;
	function inArray(element:Dynamic, array:Array<Dynamic>, ?fromIndex:Float):Float;
	function isArray(object:Dynamic):Bool;
	function isFunction(object:Dynamic):Bool;
	function isPlainObject(object:Dynamic):Bool;
	function isWindow(object:Dynamic):Bool;
	function map(collection:Array<Dynamic>, fn:Dynamic -> Float -> Dynamic):Array<Dynamic>;
	function parseJSON(str:String):Dynamic;
	function trim(str:String):String;
	function type(object:Dynamic):String;
	function Event(type:String, properties:Dynamic):Event;
	function proxy(fn:haxe.Constraints.Function, context:Dynamic):haxe.Constraints.Function;
	function ajax(options:ZeptoAjaxSettings):XMLHttpRequest;
	function ajaxJSONP(options:ZeptoAjaxSettings):XMLHttpRequest;
	var ajaxSettings : ZeptoAjaxSettings;
	@:overload(function(url:String, data:Dynamic, fn:Dynamic -> String -> XMLHttpRequest -> Void):XMLHttpRequest { })
	function get(url:String, fn:Dynamic -> String -> XMLHttpRequest -> Void):XMLHttpRequest;
	@:overload(function(url:String, data:Dynamic, fn:Dynamic -> String -> XMLHttpRequest -> Void):XMLHttpRequest { })
	function getJSON(url:String, fn:Dynamic -> String -> XMLHttpRequest -> Void):XMLHttpRequest;
	function param(object:Dynamic, ?shallow:Bool):String;
	@:overload(function(url:String, data:Dynamic, fn:Dynamic -> String -> XMLHttpRequest -> Void, ?dataType:String):XMLHttpRequest { })
	function post(url:String, fn:Dynamic -> String -> XMLHttpRequest -> Void, ?dataType:String):XMLHttpRequest;
	var fx : ZeptoEffects;
	var os : { var version : String; var phone : Bool; var tablet : Bool; var ios : Bool; var android : Bool; var webos : Bool; var blackberry : Bool; var bb10 : Bool; var rimtabletos : Bool; var iphone : Bool; var ipad : Bool; var touchpad : Bool; var kindle : Bool; };
	var browser : { var version : String; var chrome : Bool; var firefox : Bool; var silk : Bool; var playbook : Bool; };
};
typedef ZeptoEffects = {
	var off : Bool;
	var speeds : ZeptoEffectsSpeeds;
};
typedef ZeptoEffectsSpeeds = {
	var _default : Float;
	var fast : Float;
	var slow : Float;
};
typedef ZeptoCollection = {
	function add(selector:String, ?context:Dynamic):ZeptoCollection;
	function addClass(name:String):ZeptoCollection;
	@:overload(function(content:HTMLElement):ZeptoCollection { })
	@:overload(function(content:Array<HTMLElement>):ZeptoCollection { })
	@:overload(function(content:ZeptoCollection):ZeptoCollection { })
	function after(content:String):ZeptoCollection;
	@:overload(function(content:HTMLElement):ZeptoCollection { })
	@:overload(function(content:Array<HTMLElement>):ZeptoCollection { })
	@:overload(function(content:ZeptoCollection):ZeptoCollection { })
	function append(content:String):ZeptoCollection;
	@:overload(function(target:HTMLElement):ZeptoCollection { })
	@:overload(function(target:Array<HTMLElement>):ZeptoCollection { })
	@:overload(function(target:ZeptoCollection):ZeptoCollection { })
	function appendTo(target:String):ZeptoCollection;
	@:overload(function(name:String, value:Dynamic):ZeptoCollection { })
	@:overload(function(name:String, fn:Float -> Dynamic -> Void):ZeptoCollection { })
	@:overload(function(object:Dynamic):ZeptoCollection { })
	function attr(name:String):String;
	@:overload(function(content:HTMLElement):ZeptoCollection { })
	@:overload(function(content:Array<HTMLElement>):ZeptoCollection { })
	@:overload(function(content:ZeptoCollection):ZeptoCollection { })
	function before(content:String):ZeptoCollection;
	function children(?selector:String):ZeptoCollection;
	function clone():ZeptoCollection;
	function closest(selector:String, ?context:Dynamic):ZeptoCollection;
	function concat(nodes:haxe.extern.Rest<Dynamic>):ZeptoCollection;
	function contents():ZeptoCollection;
	@:overload(function(property:String, value:Dynamic):ZeptoCollection { })
	@:overload(function(properties:Dynamic):ZeptoCollection { })
	function css(property:String):Dynamic;
	@:overload(function(name:String, value:Dynamic):ZeptoCollection { })
	function data(name:String):Dynamic;
	function each(fn:Float -> Dynamic -> Bool):ZeptoCollection;
	function empty():ZeptoCollection;
	function eq(index:Float):ZeptoCollection;
	@:overload(function(fn:Float -> Bool):ZeptoCollection { })
	function filter(selector:String):ZeptoCollection;
	@:overload(function(collection:ZeptoCollection):ZeptoCollection { })
	@:overload(function(element:Element):ZeptoCollection { })
	function find(selector:String):ZeptoCollection;
	function first():ZeptoCollection;
	function forEach(fn:Dynamic -> Float -> Array<Dynamic> -> Void):ZeptoCollection;
	@:overload(function(index:Float):HTMLElement { })
	function get():Array<HTMLElement>;
	@:overload(function(node:HTMLElement):ZeptoCollection { })
	function has(selector:String):ZeptoCollection;
	function hasClass(name:String):Bool;
	@:overload(function(value:Float):ZeptoCollection { })
	@:overload(function(fn:Float -> Float -> Void):ZeptoCollection { })
	function height():Float;
	function hide():ZeptoCollection;
	@:overload(function(content:String):ZeptoCollection { })
	@:overload(function(content:HTMLElement):ZeptoCollection { })
	@:overload(function(content:Array<HTMLElement>):ZeptoCollection { })
	@:overload(function(fn:Float -> String -> Void):ZeptoCollection { })
	function html():String;
	@:overload(function(?element:HTMLElement):Float { })
	@:overload(function(?element:Dynamic):Float { })
	function index(?element:String):Float;
	@:overload(function(element:HTMLElement, ?fromIndex:Float):Float { })
	@:overload(function(element:Dynamic, ?fromIndex:Float):Float { })
	function indexOf(element:String, ?fromIndex:Float):Float;
	@:overload(function(target:HTMLElement):ZeptoCollection { })
	function insertAfter(target:String):ZeptoCollection;
	@:overload(function(target:HTMLElement):ZeptoCollection { })
	function insertBefore(target:String):ZeptoCollection;
	function is(?selector:String):Bool;
	function last():ZeptoCollection;
	function map(fn:Float -> Dynamic -> Dynamic):ZeptoCollection;
	function next(?selector:String):ZeptoCollection;
	@:overload(function(collection:ZeptoCollection):ZeptoCollection { })
	@:overload(function(fn:Float -> Bool):ZeptoCollection { })
	function not(selector:String):ZeptoCollection;
	@:overload(function(coordinates:ZeptoCoordinates):ZeptoCollection { })
	@:overload(function(fn:Float -> Float -> Void):ZeptoCollection { })
	function offset():ZeptoCoordinates;
	function offsetParent():ZeptoCollection;
	function parent(?selector:String):ZeptoCollection;
	function parents(?selector:String):ZeptoCollection;
	function pluck(property:String):Array<String>;
	function position():ZeptoPosition;
	@:overload(function(content:HTMLElement):ZeptoCollection { })
	@:overload(function(content:Array<HTMLElement>):ZeptoCollection { })
	@:overload(function(content:ZeptoCollection):ZeptoCollection { })
	function prepend(content:String):ZeptoCollection;
	@:overload(function(content:HTMLElement):ZeptoCollection { })
	@:overload(function(content:Array<HTMLElement>):ZeptoCollection { })
	@:overload(function(content:ZeptoCollection):ZeptoCollection { })
	function prependTo(content:String):ZeptoCollection;
	function prev(?selector:String):ZeptoCollection;
	@:overload(function(name:String, value:Dynamic):ZeptoCollection { })
	@:overload(function(name:String, fn:Float -> Dynamic -> Void):ZeptoCollection { })
	function prop(name:String):Dynamic;
	function push(elements:haxe.extern.Rest<Dynamic>):ZeptoCollection;
	function ready(fn:ZeptoStatic -> Void):ZeptoCollection;
	function reduce(fn:Dynamic -> Dynamic -> Float -> Array<Dynamic> -> Dynamic -> Dynamic):Dynamic;
	function remove():ZeptoCollection;
	function removeAttr(name:String):ZeptoCollection;
	@:overload(function(fn:Float -> String -> Void):ZeptoCollection { })
	function removeClass(?name:String):ZeptoCollection;
	@:overload(function(content:HTMLElement):ZeptoCollection { })
	@:overload(function(content:Array<HTMLElement>):ZeptoCollection { })
	function replaceWith(content:String):ZeptoCollection;
	function scrollTop():Float;
	function show():ZeptoCollection;
	function siblings(?selector:String):ZeptoCollection;
	function size():Float;
	var length : Float;
	function slice(?start:Float, ?end:Float):Array<ZeptoCollection>;
	@:overload(function(content:String):ZeptoCollection { })
	function text():String;
	function toggle(?setting:Bool):ZeptoCollection;
	@:overload(function(fn:Float -> String -> Void, ?setting:Bool):ZeptoCollection { })
	function toggleClass(names:String, ?setting:Bool):ZeptoCollection;
	function unwrap():ZeptoCollection;
	@:overload(function(value:Dynamic):ZeptoCollection { })
	@:overload(function(fn:Float -> Dynamic -> Void):ZeptoCollection { })
	function val():String;
	@:overload(function(value:Float):ZeptoCollection { })
	@:overload(function(fn:Float -> Float -> Void):ZeptoCollection { })
	function width():Float;
	@:overload(function(structure:HTMLElement):ZeptoCollection { })
	@:overload(function(fn:Float -> String):ZeptoCollection { })
	function wrap(structure:String):ZeptoCollection;
	@:overload(function(structure:HTMLElement):ZeptoCollection { })
	function wrapAll(structure:String):ZeptoCollection;
	@:overload(function(structure:HTMLElement):ZeptoCollection { })
	@:overload(function(fn:Float -> String):ZeptoCollection { })
	function wrapInner(structure:String):ZeptoCollection;
	function bind(type:String, fn:Event -> Void):ZeptoCollection;
	function delegate(selector:String, type:String, fn:Event -> Void):ZeptoCollection;
	@:overload(function(types:Dynamic):ZeptoCollection { })
	function die(type:String, fn:Event -> Void):ZeptoCollection;
	function live(type:String, fn:Event -> Void):ZeptoCollection;
	@:overload(function(type:String, fn:Event -> Bool):ZeptoCollection { })
	@:overload(function(type:String, ?selector:String):ZeptoCollection { })
	@:overload(function():ZeptoCollection { })
	@:overload(function(events:ZeptoEventHandlers, ?selector:String):ZeptoCollection { })
	function off(type:String, selector:String, fn:Event -> Bool):ZeptoCollection;
	@:overload(function(type:String, fn:Event -> Bool):ZeptoCollection { })
	@:overload(function(events:ZeptoEventHandlers, ?selector:String):ZeptoCollection { })
	function on(type:String, selector:String, fn:Event -> Bool):ZeptoCollection;
	@:overload(function(events:ZeptoEventHandlers):ZeptoCollection { })
	function one(type:String, fn:Event -> Void):ZeptoCollection;
	function trigger(event:String, ?data:Array<Dynamic>):ZeptoCollection;
	function triggerHandler(event:String, ?data:Array<Dynamic>):ZeptoCollection;
	function unbind(type:String, fn:Event -> Bool):ZeptoCollection;
	function undelegate(selector:String, type:String, fn:Event -> Bool):ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function focusin():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function focusout():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	@:overload(function(url:String, ?fn:Dynamic -> String -> XMLHttpRequest -> Void):ZeptoCollection { })
	function load():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function resize():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function scroll():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function unload():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function click():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function dblclick():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function mousedown():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function mouseup():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function mousemove():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function mouseover():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function mouseout():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function mouseenter():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function mouseleave():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function change():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function select():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function keydown():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function keypress():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function keyup():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function error():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function focus():ZeptoCollection;
	@:overload(function(fn:Event -> Dynamic):ZeptoCollection { })
	function blur():ZeptoCollection;
	function serialize():String;
	function serializeArray():Array<Dynamic>;
	@:overload(function(fn:Dynamic -> Void):ZeptoCollection { })
	function submit():ZeptoCollection;
	@:overload(function(properties:Dynamic, options:ZeptoAnimateSettings):ZeptoCollection { })
	function animate(properties:Dynamic, ?duration:Float, ?easing:String, ?complete:Void -> Void):ZeptoCollection;
};
typedef ZeptoAjaxSettings = {
	@:optional
	var type : String;
	@:optional
	var url : String;
	@:optional
	var data : Dynamic;
	@:optional
	var processData : Bool;
	@:optional
	var contentType : String;
	@:optional
	var mimeType : String;
	@:optional
	var dataType : String;
	@:optional
	var jsonp : String;
	@:optional
	var jsonpCallback : Dynamic;
	@:optional
	var timeout : Float;
	@:optional
	var headers : { };
	@:optional
	var async : Bool;
	@:optional
	var global : Bool;
	@:optional
	var context : Dynamic;
	@:optional
	var traditional : Bool;
	@:optional
	var cache : Bool;
	@:optional
	var xhrFields : { };
	@:optional
	var username : String;
	@:optional
	var password : String;
	@:optional
	var beforeSend : XMLHttpRequest -> ZeptoAjaxSettings -> Bool;
	@:optional
	var success : Dynamic -> String -> XMLHttpRequest -> Void;
	@:optional
	var error : XMLHttpRequest -> String -> Error -> Void;
	@:optional
	var complete : XMLHttpRequest -> String -> Void;
};
typedef ZeptoAjaxStartEvent = { };
typedef ZeptoAjaxBeforeSendEvent = { };
typedef ZeptoAjaxSendEvent = { };
typedef ZeptoAjaxSuccessEvent = { };
typedef ZeptoAjaxErrorEvent = { };
typedef ZeptoAjaxCompleteEvent = { };
typedef ZeptoAjaxStopEvent = { };
typedef ZeptoAnimateSettings = {
	@:optional
	var duration : Float;
	@:optional
	var easing : String;
	@:optional
	var complete : Void -> Void;
};
typedef ZeptoPosition = {
	var top : Float;
	var left : Float;
};
typedef ZeptoCoordinates = {
	>ZeptoPosition,
	var width : Float;
	var height : Float;
};
typedef ZeptoEventHandlers = { };
extern class ZeptoTopLevel {
	static var Zepto : ZeptoStatic -> Void -> Void;
	static var $ : ZeptoStatic;
}
