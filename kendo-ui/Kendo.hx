typedef TemplateOptions = {
	@:optional
	var paramName : String;
	@:optional
	var useWithBlock : Bool;
};
extern class Class {
	static var fn : Class;
	static function extend(prototype:Dynamic):Class;
}
extern class Observable extends Class {
	static var fn : Observable;
	static function extend(prototype:Dynamic):Observable;
	function bind(eventName:String, handler:haxe.Constraints.Function):Observable;
	function one(eventName:String, handler:haxe.Constraints.Function):Observable;
	function trigger(eventName:String, ?e:Dynamic):Bool;
	function unbind(eventName:String, ?handler:Dynamic):Observable;
}
typedef ViewOptions = {
	@:optional
	var tagName : String;
	@:optional
	var wrap : Bool;
	@:optional
	var model : Dynamic;
	@:optional
	var init : ViewEvent -> Void;
	@:optional
	var show : ViewEvent -> Void;
	@:optional
	var hide : ViewEvent -> Void;
};
typedef ViewEvent = {
	var sender : View;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class View extends Observable {
	@:overload(function(element:String, ?options:ViewOptions):Void { })
	function new(element:Element, ?options:ViewOptions):Void;
	@:overload(function(element:String, ?options:ViewOptions):Void { })
	function init(element:Element, ?options:ViewOptions):Void;
	function render(?container:Dynamic):JQuery;
	function destroy():Void;
	var element : JQuery;
	var content : Dynamic;
	var tagName : String;
	var model : Dynamic;
}
extern class ViewContainer extends Observable {
	var view : View;
}
extern class Layout extends View {
	function showIn(selector:String, view:View):Void;
	var containers : { };
}
extern class History extends Observable {
	function start(options:Dynamic):Void;
	function stop():Void;
	var current : String;
	var root : String;
	function change(callback:haxe.Constraints.Function):Void;
	function navigate(location:String, ?silent:Bool):Void;
}
typedef RouterOptions = {
	@:optional
	var init : RouterEvent -> Void;
	@:optional
	var routeMissing : RouterEvent -> Void;
	@:optional
	var change : RouterEvent -> Void;
};
typedef RouterEvent = {
	var sender : Router;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
	var url : String;
};
extern class Route extends Class {
	var route : js.RegExp;
	function callback(url:String):Void;
	function worksWith(url:String):Void;
}
extern class Router extends Observable {
	function new(?options:RouterOptions):Void;
	function init(?options:RouterOptions):Void;
	function start():Void;
	function destroy():Void;
	function route(route:String, callback:haxe.Constraints.Function):Void;
	function navigate(location:String, ?silent:Bool):Void;
	var routes : Array<Route>;
}
extern class KendoTopLevel {
	static function culture():{ var name : String; var calendar : { var AM : Array<String>; var PM : Array<String>; var days : { var names : Array<String>; var namesAbbr : Array<String>; var namesShort : Array<String>; var firstDay : Float; }; var months : { var names : Array<String>; var namesAbbr : Array<String>; }; var patterns : { var D : String; var F : String; var G : String; var M : String; var T : String; var Y : String; var d : String; var g : String; var m : String; var s : String; var t : String; var u : String; var y : String; }; var twoDigitYearMax : Float; }; var calendars : { var standard : { var AM : Array<String>; var PM : Array<String>; var days : { var names : Array<String>; var namesAbbr : Array<String>; var namesShort : Array<String>; var firstDay : Float; }; var months : { var names : Array<String>; var namesAbbr : Array<String>; }; var patterns : { var D : String; var F : String; var G : String; var M : String; var T : String; var Y : String; var d : String; var g : String; var m : String; var s : String; var t : String; var u : String; var y : String; }; var twoDigitYearMax : Float; }; }; var numberFormat : { var currency : { var decimals : Float; var groupSize : Array<Float>; var pattern : Array<String>; var symbol : String; }; var decimals : Float; var groupSize : Array<Float>; var pattern : Array<String>; var percent : { var decimals : Float; var groupSize : Array<Float>; var pattern : Array<String>; var symbol : String; }; }; };
	static var cultures : { };
	static function format(format:String, values:haxe.extern.Rest<Dynamic>):String;
	static function fx(selector:String):effects.Element;
	static function fx(element:Element):effects.Element;
	static function fx(element:JQuery):effects.Element;
	static function init(selector:String, namespaces:haxe.extern.Rest<Dynamic>):Void;
	static function init(element:JQuery, namespaces:haxe.extern.Rest<Dynamic>):Void;
	static function init(element:Element, namespaces:haxe.extern.Rest<Dynamic>):Void;
	static function observable(data:Dynamic):kendo.data.ObservableObject;
	static function observableHierarchy(array:Array<Dynamic>):kendo.data.ObservableArray;
	static function render(template:Dynamic -> String, data:Array<Dynamic>):String;
	static function template(template:String, ?options:TemplateOptions):Dynamic -> String;
	static function guid():String;
	static function widgetInstance(element:JQuery, suite:Dynamic):kendo.ui.Widget;
	static function widgetInstance(element:JQuery, suite:Dynamic):kendo.ui.Widget;
	static function widgetInstance(element:JQuery, suite:Dynamic):kendo.ui.Widget;
	static var ns : String;
	static var keys : { var INSERT : Float; var DELETE : Float; var BACKSPACE : Float; var TAB : Float; var ENTER : Float; var ESC : Float; var LEFT : Float; var UP : Float; var RIGHT : Float; var DOWN : Float; var END : Float; var HOME : Float; var SPACEBAR : Float; var PAGEUP : Float; var PAGEDOWN : Float; var F2 : Float; var F10 : Float; var F12 : Float; };
	static var support : { var touch : Bool; var pointers : Bool; function scrollbar():Float; var hasHW3D : Bool; var hasNativeScrolling : Bool; var devicePixelRatio : Float; var placeHolder : Bool; var zoomLevel : Float; var mobileOS : { var device : String; var tablet : Dynamic; var browser : String; var name : String; var majorVersion : String; var minorVersion : String; var flatVersion : Float; var appMode : Bool; }; var browser : { var msie : Bool; var webkit : Bool; var safari : Bool; var opera : Bool; var version : String; }; };
	static var history : History;
}
extern class Color extends Observable {
	var options : ColorOptions;
	function diff():Float;
	function equals():Bool;
}
typedef ColorOptions = {
	@:optional
	var name : String;
};
typedef ColorEvent = {
	var sender : Color;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class KendoTopLevel {
	static function culture():{ var name : String; var calendar : { var AM : Array<String>; var PM : Array<String>; var days : { var names : Array<String>; var namesAbbr : Array<String>; var namesShort : Array<String>; var firstDay : Float; }; var months : { var names : Array<String>; var namesAbbr : Array<String>; }; var patterns : { var D : String; var F : String; var G : String; var M : String; var T : String; var Y : String; var d : String; var g : String; var m : String; var s : String; var t : String; var u : String; var y : String; }; var twoDigitYearMax : Float; }; var calendars : { var standard : { var AM : Array<String>; var PM : Array<String>; var days : { var names : Array<String>; var namesAbbr : Array<String>; var namesShort : Array<String>; var firstDay : Float; }; var months : { var names : Array<String>; var namesAbbr : Array<String>; }; var patterns : { var D : String; var F : String; var G : String; var M : String; var T : String; var Y : String; var d : String; var g : String; var m : String; var s : String; var t : String; var u : String; var y : String; }; var twoDigitYearMax : Float; }; }; var numberFormat : { var currency : { var decimals : Float; var groupSize : Array<Float>; var pattern : Array<String>; var symbol : String; }; var decimals : Float; var groupSize : Array<Float>; var pattern : Array<String>; var percent : { var decimals : Float; var groupSize : Array<Float>; var pattern : Array<String>; var symbol : String; }; }; };
	static var cultures : { };
	static function format(format:String, values:haxe.extern.Rest<Dynamic>):String;
	static function fx(selector:String):effects.Element;
	static function fx(element:Element):effects.Element;
	static function fx(element:JQuery):effects.Element;
	static function init(selector:String, namespaces:haxe.extern.Rest<Dynamic>):Void;
	static function init(element:JQuery, namespaces:haxe.extern.Rest<Dynamic>):Void;
	static function init(element:Element, namespaces:haxe.extern.Rest<Dynamic>):Void;
	static function observable(data:Dynamic):kendo.data.ObservableObject;
	static function observableHierarchy(array:Array<Dynamic>):kendo.data.ObservableArray;
	static function render(template:Dynamic -> String, data:Array<Dynamic>):String;
	static function template(template:String, ?options:TemplateOptions):Dynamic -> String;
	static function guid():String;
	static function widgetInstance(element:JQuery, suite:Dynamic):kendo.ui.Widget;
	static function widgetInstance(element:JQuery, suite:Dynamic):kendo.ui.Widget;
	static function widgetInstance(element:JQuery, suite:Dynamic):kendo.ui.Widget;
	static var ns : String;
	static var keys : { var INSERT : Float; var DELETE : Float; var BACKSPACE : Float; var TAB : Float; var ENTER : Float; var ESC : Float; var LEFT : Float; var UP : Float; var RIGHT : Float; var DOWN : Float; var END : Float; var HOME : Float; var SPACEBAR : Float; var PAGEUP : Float; var PAGEDOWN : Float; var F2 : Float; var F10 : Float; var F12 : Float; };
	static var support : { var touch : Bool; var pointers : Bool; function scrollbar():Float; var hasHW3D : Bool; var hasNativeScrolling : Bool; var devicePixelRatio : Float; var placeHolder : Bool; var zoomLevel : Float; var mobileOS : { var device : String; var tablet : Dynamic; var browser : String; var name : String; var majorVersion : String; var minorVersion : String; var flatVersion : Float; var appMode : Bool; }; var browser : { var msie : Bool; var webkit : Bool; var safari : Bool; var opera : Bool; var version : String; }; };
	static var history : History;
}
