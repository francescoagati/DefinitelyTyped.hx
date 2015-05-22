typedef AppFrameworkStatic = {
	function is$(obj:Dynamic):Bool;
	function map(collection:Array<Dynamic>, fn:Dynamic -> Float -> Dynamic):Array<Dynamic>;
	@:overload(function(collection:Dynamic, fn:String -> Dynamic -> Dynamic):Void { })
	function each(collection:Array<Dynamic>, fn:Float -> Dynamic -> Dynamic):Void;
	function extend(target:Dynamic, sources:haxe.extern.Rest<Dynamic>):Dynamic;
	function isArray(object:Dynamic):Bool;
	function isFunction(object:Dynamic):Bool;
	function isObject(object:Dynamic):Bool;
	var fn : Dynamic;
	var ajaxSettings : AppFrameworkAjaxSettings;
	function jsonP(options:AppFrameworkAjaxSettings):{ };
	function ajax(options:AppFrameworkAjaxSettings):XMLHttpRequest;
	function get(url:String, fn:Dynamic -> ?String -> ?XMLHttpRequest -> Void):XMLHttpRequest;
	@:overload(function(url:String, data:Dynamic, fn:Dynamic -> ?String -> ?XMLHttpRequest -> Void, ?dataType:String):XMLHttpRequest { })
	function post(url:String, fn:Dynamic -> ?String -> ?XMLHttpRequest -> Void, ?dataType:String):XMLHttpRequest;
	@:overload(function(url:String, data:Dynamic, fn:Dynamic -> String -> XMLHttpRequest -> Void):XMLHttpRequest { })
	function getJSON(url:String, fn:Dynamic -> ?String -> ?XMLHttpRequest -> Void):XMLHttpRequest;
	function param(object:Dynamic, ?prefix:String):String;
	function parseJSON(str:String):Dynamic;
	function parseXML(str:String):Dynamic;
	function uuid():String;
	@:overload(function(elem:AppFrameworkCollection):AppFrameworkCssMatrix { })
	function getCssMatrix(node:HTMLElement):AppFrameworkCssMatrix;
	function create(type:String, ?params:Dynamic):AppFrameworkCollection;
	function query(selector:String, ?context:Dynamic):AppFrameworkCollection;
	function Event(type:String, props:Dynamic):Dynamic;
	function bind(object:Dynamic, event:String, fn:haxe.Constraints.Function):Void;
	function trigger(object:Dynamic, event:String, ?args:Array<Dynamic>):Void;
	function unbind(object:Dynamic, event:String, fn:haxe.Constraints.Function):Void;
	function proxy(callback:haxe.Constraints.Function, context:Dynamic):Void;
	function cleanUpContent(node:HTMLElement, ?itself:Bool, ?kill:Bool):Void;
	function asap(callback:haxe.Constraints.Function, ?context:Dynamic, ?args:Array<Dynamic>):Void;
	@:overload(function(content:HTMLElement):Void { })
	function parseJS(content:String):Void;
	var os : { var webkit : Bool; var android : Bool; var androidICS : Bool; var ipad : Bool; var iphone : Bool; var ios7 : Bool; var webos : Bool; var touchpad : Bool; var ios : Bool; var playbook : Bool; var blackberry : Bool; var blackberry10 : Bool; var chrome : Bool; var opera : Bool; var fennec : Bool; var ie : Bool; var ieTouch : Bool; var supportsTouch : Bool; };
	var feat : { var nativeTouchScroll : Bool; var cssPrefix : String; var cssTransformStart : String; var cssTransformEnd : String; };
};
typedef AppFrameworkCollection = {
	function reduce(callbackfn:AppFrameworkCollection -> AppFrameworkCollection -> Float -> Array<AppFrameworkCollection> -> AppFrameworkCollection, ?initialValue:AppFrameworkCollection):AppFrameworkCollection;
	function push(items:haxe.extern.Rest<AppFrameworkCollection>):Float;
	function indexOf(searchElement:AppFrameworkCollection, ?fromIndex:Float):Float;
	function concat(items:haxe.extern.Rest<AppFrameworkCollection>):Array<AppFrameworkCollection>;
	function slice(start:Float, ?end:Float):Array<AppFrameworkCollection>;
	var length : Float;
	function map(fn:Float -> Dynamic -> Dynamic):AppFrameworkCollection;
	function each(fn:Float -> Dynamic -> Dynamic):AppFrameworkCollection;
	function forEach(fn:Dynamic -> Float -> Dynamic):Void;
	function ready(fn:haxe.Constraints.Function):AppFrameworkStatic;
	function find(selector:String):AppFrameworkCollection;
	@:overload(function(html:String):AppFrameworkCollection { })
	@:overload(function(html:String, cleanup:Bool):AppFrameworkCollection { })
	function html():String;
	@:overload(function(text:String):AppFrameworkCollection { })
	function text():String;
	@:overload(function(property:String, value:Dynamic):AppFrameworkCollection { })
	@:overload(function(properties:Dynamic):AppFrameworkCollection { })
	function css(property:String):Dynamic;
	function vendorCss(transform:String):AppFrameworkCollection;
	function computedStyle(css:String):AppFrameworkCollection;
	function empty():AppFrameworkCollection;
	function hide():AppFrameworkCollection;
	function show():AppFrameworkCollection;
	function toggle(?show:Bool):AppFrameworkCollection;
	@:overload(function(value:String):AppFrameworkCollection { })
	function val():String;
	@:overload(function(attributeHash:Dynamic):AppFrameworkCollection { })
	@:overload(function(attribute:String, value:String):AppFrameworkCollection { })
	@:overload(function(attribute:String, value:Dynamic):AppFrameworkCollection { })
	function attr(attribute:String):Dynamic;
	function removeAttr(attribute:String):AppFrameworkCollection;
	@:overload(function(attributeHash:Dynamic):AppFrameworkCollection { })
	@:overload(function(attribute:String, value:String):AppFrameworkCollection { })
	@:overload(function(attribute:String, value:Dynamic):AppFrameworkCollection { })
	function prop(attribute:String):Dynamic;
	function removeProp(attribute:String):AppFrameworkCollection;
	@:overload(function(selector:String):AppFrameworkCollection { })
	@:overload(function(element:HTMLElement):AppFrameworkCollection { })
	@:overload(function(elements:Array<Dynamic>):AppFrameworkCollection { })
	@:overload(function(elements:AppFrameworkCollection):AppFrameworkCollection { })
	function remove():AppFrameworkCollection;
	function addClass(className:String):AppFrameworkCollection;
	function removeClass(className:String):AppFrameworkCollection;
	function toggleClass(name:String, ?state:Bool):AppFrameworkCollection;
	function replaceClass(oldClassName:String, newClassName:String):AppFrameworkCollection;
	function hasClass(className:String, element:HTMLElement):Bool;
	function append(content:Dynamic):AppFrameworkCollection;
	function appendTo(target:Dynamic):AppFrameworkCollection;
	function prependTo(target:Dynamic):AppFrameworkCollection;
	function prepend(content:Dynamic):AppFrameworkCollection;
	function insertBefore(target:Dynamic):AppFrameworkCollection;
	function insertAfter(target:Dynamic):Void;
	@:overload(function(index:Float):HTMLElement { })
	function get():Array<HTMLElement>;
	function offset():{ var left : Float; var top : Float; var right : Float; var bottom : Float; var width : Float; var height : Float; };
	function height():String;
	function width():String;
	function parent(?selector:Dynamic):AppFrameworkCollection;
	function parents(?selector:Dynamic):AppFrameworkCollection;
	function children(?selector:Dynamic):AppFrameworkCollection;
	function siblings(?selector:Dynamic):AppFrameworkCollection;
	function closest(?selector:Dynamic):AppFrameworkCollection;
	function filter(?selector:Dynamic):AppFrameworkCollection;
	function not(?selector:Dynamic):AppFrameworkCollection;
	@:overload(function(attribute:String, value:String):AppFrameworkCollection { })
	@:overload(function(attribute:String, value:Dynamic):AppFrameworkCollection { })
	function data(attribute:String):Dynamic;
	function end():AppFrameworkCollection;
	function clone(?deep:Bool):AppFrameworkCollection;
	function size():Float;
	function serialize():String;
	function eq(index:Float):AppFrameworkCollection;
	@:overload(function(selector:Dynamic):Float { })
	function index():Float;
	function is(selector:Dynamic):Float;
	@:overload(function(eventName:String, fn:Event -> Dynamic):AppFrameworkCollection { })
	function bind(eventHash:Dynamic):AppFrameworkCollection;
	@:overload(function(?eventName:String):AppFrameworkCollection { })
	@:overload(function(eventName:String, ?fn:Event -> Dynamic):AppFrameworkCollection { })
	function unbind(eventHash:{ }):AppFrameworkCollection;
	@:overload(function(eventName:String, fn:Event -> Dynamic):AppFrameworkCollection { })
	function one(eventHash:{ }):AppFrameworkCollection;
	@:overload(function(selector:Dynamic, eventName:String, fn:Event -> Dynamic):AppFrameworkCollection { })
	function delegate(selector:Dynamic, eventHash:{ }):AppFrameworkCollection;
	@:overload(function(selector:Dynamic, eventName:String, fn:Event -> Dynamic):AppFrameworkCollection { })
	function undelegate(selector:Dynamic, eventHash:{ }):AppFrameworkCollection;
	@:overload(function(eventName:String, fn:Event -> Dynamic):AppFrameworkCollection { })
	@:overload(function(eventName:String, selector:String, fn:Event -> Dynamic):AppFrameworkCollection { })
	function on(eventHash:{ }, ?selector:Dynamic):AppFrameworkCollection;
	@:overload(function(eventName:String, fn:Event -> Dynamic):AppFrameworkCollection { })
	@:overload(function(eventName:String, selector:String, fn:Event -> Dynamic):AppFrameworkCollection { })
	function off(eventHash:{ }, ?selector:Dynamic):AppFrameworkCollection;
	@:overload(function(eventHash:{ }, ?data:Dynamic):AppFrameworkCollection { })
	function trigger(eventName:String, ?data:Dynamic):AppFrameworkCollection;
	function click(?fn:Event -> Dynamic):AppFrameworkCollection;
	function keydown(?fn:Event -> Dynamic):AppFrameworkCollection;
	function keyup(?fn:Event -> Dynamic):AppFrameworkCollection;
	function keypress(?fn:Event -> Dynamic):AppFrameworkCollection;
	function submit(?fn:Event -> Dynamic):AppFrameworkCollection;
	function load(?fn:Event -> Dynamic):AppFrameworkCollection;
	function resize(?fn:Event -> Dynamic):AppFrameworkCollection;
	function change(?fn:Event -> Dynamic):AppFrameworkCollection;
	function select(?fn:Event -> Dynamic):AppFrameworkCollection;
	function error(?fn:Event -> Dynamic):AppFrameworkCollection;
	function focus(?fn:Event -> Dynamic):AppFrameworkCollection;
	function blur(?fn:Event -> Dynamic):AppFrameworkCollection;
};
typedef AppFrameworkAjaxSettings = {
	@:optional
	var type : String;
	@:optional
	var beforeSend : XMLHttpRequest -> AppFrameworkAjaxSettings -> Bool;
	@:optional
	var success : Dynamic -> String -> XMLHttpRequest -> Void;
	@:optional
	var error : XMLHttpRequest -> String -> Error -> Void;
	@:optional
	var complete : XMLHttpRequest -> String -> Void;
	@:optional
	var timeout : Float;
	@:optional
	var url : String;
	@:optional
	var contentType : String;
	@:optional
	var headers : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var context : Dynamic;
	@:optional
	var crossDomain : Bool;
};
typedef AppFrameworkCssMatrix = {
	var a : Float;
	var b : Float;
	var c : Float;
	var d : Float;
	var e : Float;
	var f : Float;
};
extern class AppframeworkTopLevel {
	static var af : AppFrameworkStatic -> Void -> Void;
	static var $ : AppFrameworkStatic;
}
