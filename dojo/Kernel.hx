extern class __IoCallbackArgs {
	function new():Void;
	var args : Dynamic;
	var canDelete : Bool;
	var handleAs : String;
	var id : String;
	var json : Dynamic;
	var query : String;
	var url : String;
	var xhr : Dynamic;
}
extern class __IoPublish {
	function new():Void;
	var done : String;
	var error : String;
	var load : String;
	var send : String;
	var start : String;
	var stop : String;
}
extern class __IoArgs {
	function new():Void;
	var content : Dynamic;
	var form : HTMLElement;
	var handleAs : String;
	var ioPublish : Bool;
	var preventCache : Bool;
	var rawBody : String;
	var timeout : Float;
	var url : String;
	function error(response:Dynamic, ioArgs:dojo.main.__IoCallbackArgs):Void;
	function handle(loadOrError:String, response:Dynamic, ioArgs:dojo.main.__IoCallbackArgs):Void;
	function load(response:Dynamic, ioArgs:dojo.main.__IoCallbackArgs):Void;
}
extern class __XhrArgs {
	function new():Void;
	var content : Dynamic;
	var contentType : String;
	var failOk : Bool;
	var form : HTMLElement;
	var handleAs : String;
	var headers : Dynamic;
	var ioPublish : Bool;
	var preventCache : Bool;
	var rawBody : String;
	var sync : Bool;
	var timeout : Float;
	var url : String;
	function error(response:Dynamic, ioArgs:dojo.main.__IoCallbackArgs):Void;
	function handle(loadOrError:String, response:Dynamic, ioArgs:dojo.main.__IoCallbackArgs):Void;
	function load(response:Dynamic, ioArgs:dojo.main.__IoCallbackArgs):Void;
}
extern class Stateful {
	function new():Void;
	function get(name:String):Dynamic;
	function postscript(params:Dynamic):Void;
	function set(name:String, value:Dynamic):Dynamic;
	function watch(property:String, callback:{ }):{ function unwatch():Void; };
}
typedef _contentHandlers = {
	function auto(xhr:Dynamic):Void;
	function javascript(xhr:Dynamic):Dynamic;
	function json(xhr:Dynamic):Dynamic;
	function json_comment_filtered(xhr:Dynamic):Dynamic;
	function json_comment_optional(xhr:Dynamic):Dynamic;
	function olson_zoneinfo(xhr:Dynamic):Void;
	function text(xhr:Dynamic):Dynamic;
	function xml(xhr:Dynamic):Dynamic;
};
typedef _hasResource = { };
typedef _nodeDataCache = { };
typedef Back = {
	function addToHistory(args:Dynamic):Void;
	function getHash():Dynamic;
	function goBack():Void;
	function goForward():Void;
	function init():Void;
};
typedef Cldr = {
	var monetary : Dynamic;
	var supplemental : Dynamic;
};
typedef Colors = {
	function makeGrey(g:Float, a:Float):Void;
};
typedef Config = {
	var addOnLoad : haxe.Constraints.Function;
	var afterOnLoad : Bool;
	var baseUrl : Dynamic;
	var callback : haxe.Constraints.Function;
	var debugContainerId : String;
	var debugHeight : Float;
	var defaultDuration : Float;
	var deferredInstrumentation : Bool;
	var deps : haxe.Constraints.Function;
	var dojoBlankHtmlUrl : String;
	var extraLocale : Array<Dynamic>;
	var ioPublish : Dynamic;
	var isDebug : Bool;
	var locale : String;
	var modulePaths : Dynamic;
	var parseOnLoad : Bool;
	var require : Dynamic;
	var transparentColor : Array<Dynamic>;
	var urchin : String;
	var useCustomLogger : Dynamic;
	var useDeferredInstrumentation : Bool;
};
typedef ContentHandlers = {
	function auto(xhr:Dynamic):Void;
	function javascript(xhr:Dynamic):Dynamic;
	function json(xhr:Dynamic):Dynamic;
	function json_comment_filtered(xhr:Dynamic):Dynamic;
	function json_comment_optional(xhr:Dynamic):Dynamic;
	function olson_zoneinfo(xhr:Dynamic):Void;
	function text(xhr:Dynamic):Dynamic;
	function xml(xhr:Dynamic):Dynamic;
};
typedef Dnd = {
	var autoscroll : Dynamic;
	var move : Dynamic;
	function AutoSource():Void;
	function Avatar():Void;
	function Container():Void;
	function Manager():Void;
	function Moveable():Void;
	function Mover():Void;
	function Selector():Void;
	function Source():Void;
	function Target():Void;
	function TimedMoveable():Void;
};
typedef Date = {
	var stamp : Dynamic;
	function add(date:Date, interval:String, amount:Float):Dynamic;
	function compare(date1:Date, date2:Date, portion:String):Float;
	function difference(date1:Date, date2:Date, interval:String):Dynamic;
	function getDaysInMonth(dateObject:Date):Float;
	function getTimezoneName(dateObject:Date):Dynamic;
	function isLeapYear(dateObject:Date):Bool;
};
typedef Doc = {
	var documentElement : Dynamic;
	var dojoClick : Bool;
};
typedef Data = {
	var api : Dynamic;
	var util : Dynamic;
	function ItemFileReadStore():Void;
	function ItemFileWriteStore():Void;
	function ObjectStore():Void;
};
typedef Currency = {
	function format(value:Float, options:dojo.currency.__FormatOptions):Dynamic;
	function parse(expression:String, options:Dynamic):Dynamic;
	function regexp(options:Dynamic):Dynamic;
};
typedef Dijit = {
	var form : Dynamic;
	var layout : Dynamic;
	var range : Dynamic;
	var registry : Dynamic;
	var tree : Dynamic;
	function byId(id:Dynamic):Dynamic;
	function Calendar():Void;
	function CalendarLite():Void;
	function CheckedMenuItem():Void;
	function ColorPalette():Void;
	function Declaration():Void;
	function Destroyable():Void;
	function Dialog():Void;
	function DialogUnderlay():Void;
	function DropDownMenu():Void;
	function Dye():Void;
	function Editor():Void;
	function Fieldset():Void;
	function InlineEditBox():Void;
	function Menu():Void;
	function MenuBar():Void;
	function MenuBarItem():Void;
	function MenuItem():Void;
	function MenuSeparator():Void;
	function PopupMenuBarItem():Void;
	function PopupMenuItem():Void;
	function ProgressBar():Void;
	function RadioButtonMenuItem():Void;
	function TitlePane():Void;
	function Toolbar():Void;
	function ToolbarSeparator():Void;
	function Tooltip():Void;
	function TooltipDialog():Void;
	function Tree():Void;
	function WidgetSet():Void;
};
typedef Global = {
	function $():Dynamic;
	function GoogleSearchStoreCallback_undefined_NaN(start:Dynamic, data:Dynamic, responseCode:Dynamic, errorMsg:Dynamic):Void;
	function jQuery():Dynamic;
	function swfIsInHTML():Void;
	function undefined_onload():Void;
};
typedef Gears = {
	var available : Dynamic;
};
typedef Fx = {
	var easing : Dynamic;
	function chain(animations:Array<dojo._base.fx.Animation>):Dynamic;
	function combine(animations:Array<dojo._base.fx.Animation>):Dynamic;
	function slideTo(args:Dynamic):Dynamic;
	function Toggler():Void;
	function wipeIn(args:Dynamic):Dynamic;
	function wipeOut(args:Dynamic):Dynamic;
};
typedef Html = {
	@:overload(function(node:HTMLElement, cont:HTMLElement, params:Dynamic):Dynamic { })
	@:overload(function(node:HTMLElement, cont:NodeList, params:Dynamic):Dynamic { })
	function set(node:HTMLElement, cont:String, params:Dynamic):Dynamic;
};
typedef Io = {
	var iframe : Dynamic;
	var script : Dynamic;
};
typedef Dojox = {
	var analytics : Dynamic;
	var app : Dynamic;
	var atom : Dynamic;
	var av : Dynamic;
	var BidiComplex : Dynamic;
	var calc : Dynamic;
	var calendar : Dynamic;
	var charting : Dynamic;
	var collections : Dynamic;
	var color : Dynamic;
	var css3 : Dynamic;
	var data : Dynamic;
	var date : Dynamic;
	var dgauges : Dynamic;
	var dnd : Dynamic;
	var drawing : Dynamic;
	var dtl : Dynamic;
	var editor : Dynamic;
	var embed : Dynamic;
	var encoding : Dynamic;
	var enhanced : Dynamic;
	var flash : Dynamic;
	var form : Dynamic;
	var fx : Dynamic;
	var gantt : Dynamic;
	var gauges : Dynamic;
	var geo : Dynamic;
	var gesture : Dynamic;
	var gfx : Dynamic;
	var gfx3d : Dynamic;
	var grid : Dynamic;
	var help : Dynamic;
	var highlight : Dynamic;
	var html : Dynamic;
	var image : Dynamic;
	var io : Dynamic;
	var jq : Dynamic;
	var json : Dynamic;
	var jsonPath : Dynamic;
	var lang : Dynamic;
	var layout : Dynamic;
	var math : Dynamic;
	var mdnd : Dynamic;
	var mobile : Dynamic;
	var mvc : Dynamic;
	var openlayers : Dynamic;
	var rails : Dynamic;
	var robot : Dynamic;
	var rpc : Dynamic;
	var secure : Dynamic;
	var sketch : Dynamic;
	var sql : Dynamic;
	var string : Dynamic;
	var testing : Dynamic;
	var timing : Dynamic;
	var treemap : Dynamic;
	var uuid : Dynamic;
	var validate : Dynamic;
	var widget : Dynamic;
	var xml : Dynamic;
	function socket(argsOrUrl:Dynamic):Dynamic;
	function sprintf(format:String, filler:Dynamic):Void;
};
typedef I18n = {
	var cache : Dynamic;
	var dynamic : Bool;
	var unitTests : Array<Dynamic>;
	function getL10nName(moduleName:Dynamic, bundleName:Dynamic, locale:Dynamic):String;
	function getLocalization(moduleName:Dynamic, bundleName:Dynamic, locale:Dynamic):Dynamic;
	function load(id:Dynamic, require:Dynamic, load:Dynamic):Void;
	function normalize(id:Dynamic, toAbsMid:Dynamic):Dynamic;
	function normalizeLocale(locale:Dynamic):Dynamic;
};
typedef MouseButtons = {
	var LEFT : Float;
	var MIDDLE : Float;
	var RIGHT : Float;
	function isButton(e:Event, button:Float):Bool;
	function isLeft(e:Event):Bool;
	function isMiddle(e:Event):Bool;
	function isRight(e:Event):Bool;
};
typedef Rpc = {
	function JsonpService():Void;
	function JsonService():Void;
	function RpcService():Void;
};
typedef Regexp = {
	@:overload(function(arr:Array<Dynamic>, re:haxe.Constraints.Function, nonCapture:Bool):Dynamic { })
	function buildGroupRE(arr:Dynamic, re:haxe.Constraints.Function, nonCapture:Bool):Dynamic;
	function escapeString(str:String, except:String):Dynamic;
	function group(expression:String, nonCapture:Bool):String;
};
typedef Number_ = {
	function format(value:Float, options:Dynamic):Dynamic;
	function parse(expression:String, options:Dynamic):Float;
	function regexp(options:Dynamic):Dynamic;
	function round(value:Float, places:Float, increment:Float):Float;
};
typedef ScopeMap = {
	var dijit : Array<Dynamic>;
	var dojo : Array<Dynamic>;
	var dojox : Array<Dynamic>;
};
typedef Tests = { };
typedef Keys = {
	var ALT : Float;
	var BACKSPACE : Float;
	var CAPS_LOCK : Float;
	var CLEAR : Float;
	var copyKey : Float;
	var CTRL : Float;
	var DELETE : Float;
	var DOWN_ARROW : Float;
	var DOWN_DPAD : Float;
	var END : Float;
	var ENTER : Float;
	var ESCAPE : Float;
	var F1 : Float;
	var F10 : Float;
	var F11 : Float;
	var F12 : Float;
	var F13 : Float;
	var F14 : Float;
	var F15 : Float;
	var F2 : Float;
	var F3 : Float;
	var F4 : Float;
	var F5 : Float;
	var F6 : Float;
	var F7 : Float;
	var F8 : Float;
	var F9 : Float;
	var HELP : Float;
	var HOME : Float;
	var INSERT : Float;
	var LEFT_ARROW : Float;
	var LEFT_DPAD : Float;
	var LEFT_WINDOW : Float;
	var META : Float;
	var NUM_LOCK : Float;
	var NUMPAD_0 : Float;
	var NUMPAD_1 : Float;
	var NUMPAD_2 : Float;
	var NUMPAD_3 : Float;
	var NUMPAD_4 : Float;
	var NUMPAD_5 : Float;
	var NUMPAD_6 : Float;
	var NUMPAD_7 : Float;
	var NUMPAD_8 : Float;
	var NUMPAD_9 : Float;
	var NUMPAD_DIVIDE : Float;
	var NUMPAD_ENTER : Float;
	var NUMPAD_MINUS : Float;
	var NUMPAD_MULTIPLY : Float;
	var NUMPAD_PERIOD : Float;
	var NUMPAD_PLUS : Float;
	var PAGE_DOWN : Float;
	var PAGE_UP : Float;
	var PAUSE : Float;
	var RIGHT_ARROW : Float;
	var RIGHT_DPAD : Float;
	var RIGHT_WINDOW : Float;
	var SCROLL_LOCK : Float;
	var SELECT : Float;
	var SHIFT : Float;
	var SPACE : Float;
	var TAB : Float;
	var UP_ARROW : Float;
	var UP_DPAD : Float;
};
typedef Store = {
	var util : Dynamic;
	function Cache(masterStore:Dynamic, cachingStore:Dynamic, options:Dynamic):Dynamic;
	function DataStore():Void;
	function JsonRest():Void;
	function Memory():Void;
	function Observable(store:dojo.store.api.Store):Dynamic;
};
typedef String_ = {
	function pad(text:String, size:Float, ch:String, end:Bool):Float;
	function rep(str:String, num:Float):String;
	@:overload(function(template:String, map:Array<Dynamic>, transform:haxe.Constraints.Function, thisObject:Dynamic):Dynamic { })
	function substitute(template:String, map:Dynamic, transform:haxe.Constraints.Function, thisObject:Dynamic):Dynamic;
	function trim(str:String):String;
};
typedef Version = {
	var flag : String;
	var major : Float;
	var minor : Float;
	var patch : Float;
	var revision : Float;
	function toString():String;
};
typedef Touch = {
	function cancel(node:HTMLElement, listener:haxe.Constraints.Function):Dynamic;
	function enter(node:HTMLElement, listener:haxe.Constraints.Function):Dynamic;
	function leave(node:HTMLElement, listener:haxe.Constraints.Function):Dynamic;
	function move(node:HTMLElement, listener:haxe.Constraints.Function):Dynamic;
	function out(node:HTMLElement, listener:haxe.Constraints.Function):Dynamic;
	function over(node:HTMLElement, listener:haxe.Constraints.Function):Dynamic;
	function press(node:HTMLElement, listener:haxe.Constraints.Function):Dynamic;
	function release(node:HTMLElement, listener:haxe.Constraints.Function):Dynamic;
};
typedef Window = {
	function get(doc:HTMLDocument):Dynamic;
	function getBox(doc:HTMLDocument):Dynamic;
	function scrollIntoView(node:HTMLElement, pos:Dynamic):Void;
};
