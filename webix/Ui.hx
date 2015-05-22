typedef BaselayoutConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var cols : Array<Dynamic>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var responsive : String;
	@:optional
	var rows : Array<Dynamic>;
	@:optional
	var visibleBatch : String;
	@:optional
	var width : Float;
};
typedef Baselayout = {
	>webix.ui.Baseview,
	function addView(view:Dynamic, ?index:Float):webix.ui.Baseview;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function index(obj:Dynamic):Float;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function reconstruct():Void;
	function removeView(id:String):Void;
	function resize():Void;
	function resizeChildren():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showBatch(name:String):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : BaselayoutConfig;
	var name : String;
};
typedef BaseviewConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var width : Float;
};
typedef Baseview = {
	function adjust():Void;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function resize():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : BaseviewConfig;
	var name : String;
};
typedef ProtoConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var click : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var pager : Dynamic;
	@:optional
	var ready : WebixCallback;
	@:optional
	var removeMissed : Bool;
	@:optional
	var rules : Dynamic;
	@:optional
	var save : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var url : String;
	@:optional
	var width : Float;
};
typedef Proto = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clearAll():Void;
	function clearCss(css:String, ?silent:Bool):Void;
	function clearValidation():Void;
	function count():Float;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function exists(id:String):Bool;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function getChildViews():Array<Dynamic>;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getLastId():String;
	function getNextId(id:String, step:Float):String;
	function getNode():Dynamic;
	function getPage():Float;
	function getPager():Dynamic;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getTopParentView():webix.ui.Baseview;
	function hasCss(id:String, css:String):Bool;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function remove(id:String):Void;
	function removeCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function serialize():Dynamic;
	function setPage(page:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showItem(id:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function updateItem(id:String, data:Dynamic):Void;
	function validate(?id:String):Bool;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ProtoConfig;
	var name : String;
	var type : { };
	var types : { };
};
typedef ResizeareaConfig = {
	@:optional
	var border : Bool;
	@:optional
	var container : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var cursor : String;
	@:optional
	var dir : String;
	@:optional
	var eventPos : Float;
	@:optional
	var height : Float;
	@:optional
	var id : String;
	@:optional
	var on : Dynamic;
	@:optional
	var start : Float;
	@:optional
	var width : Float;
};
typedef Resizearea = {
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function detachEvent(id:String):Void;
	function hasEvent(name:String):Bool;
	function mapEvent(map:Dynamic):Void;
	function unblockEvent():Void;
	var config : ResizeareaConfig;
	var name : String;
};
typedef ViewConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var width : Float;
};
typedef View = {
	>webix.ui.Baseview,
	function adjust():Void;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function resize():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ViewConfig;
	var name : String;
};
typedef VscrollConfig = {
	@:optional
	var container : HTMLElement;
	@:optional
	var id : String;
	@:optional
	var on : Dynamic;
	@:optional
	var scroll : String;
	@:optional
	var scrollHeight : Float;
	@:optional
	var scrollPos : Float;
	@:optional
	var scrollSize : Float;
	@:optional
	var scrollStep : Float;
	@:optional
	var scrollVisible : Bool;
	@:optional
	var scrollWidth : Float;
	@:optional
	var zoom : Float;
};
typedef Vscroll = {
	>webix.ui.Baseview,
	function activeArea(node:HTMLElement):Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function detachEvent(id:String):Void;
	function getScroll():Float;
	function getSize():Float;
	function hasEvent(name:String):Bool;
	function mapEvent(map:Dynamic):Void;
	function scrollTo(pos:Float):Void;
	function sizeTo(size:Float):Void;
	function unblockEvent():Void;
	var config : VscrollConfig;
	var name : String;
};
typedef AccordionConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var collapsed : Bool;
	@:optional
	var cols : Array<Dynamic>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var isolate : Bool;
	@:optional
	var margin : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var multi : haxe.extern.EitherType<Bool, String>;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Float;
	@:optional
	var paddingX : Float;
	@:optional
	var paddingY : Float;
	@:optional
	var panelClass : String;
	@:optional
	var responsive : String;
	@:optional
	var rows : Array<Dynamic>;
	@:optional
	var type : String;
	@:optional
	var visibleBatch : String;
	@:optional
	var width : Float;
};
typedef Accordion = {
	>webix.ui.Baseview,
	function addView(view:Dynamic, ?index:Float):webix.ui.Baseview;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function index(obj:Dynamic):Float;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function reconstruct():Void;
	function removeView(id:String):Void;
	function resize():Void;
	function resizeChildren():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showBatch(name:String):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : AccordionConfig;
	var name : String;
};
typedef AccordionitemConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var body : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var borderless : Bool;
	@:optional
	var collapsed : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var header : haxe.extern.EitherType<Bool, haxe.extern.EitherType<String, WebixCallback>>;
	@:optional
	var headerAlt : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var headerAltHeight : Float;
	@:optional
	var headerHeight : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var width : Float;
};
typedef Accordionitem = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function collapse():Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function expand():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function resize():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : AccordionitemConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
};
typedef BarcodeConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var color : String;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var paddingX : Float;
	@:optional
	var paddingY : Float;
	@:optional
	var textHeight : Float;
	@:optional
	var type : Dynamic;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Barcode = {
	>webix.ui.Baseview,
	function adjust():Void;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function render():Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : BarcodeConfig;
	var name : String;
	var types : Array<Dynamic>;
};
typedef ButtonConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : Dynamic;
	@:optional
	var popup : Dynamic;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Button = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ButtonConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef CalendarConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var blockDates : WebixCallback;
	@:optional
	var borderless : Bool;
	@:optional
	var calendarHeader : String;
	@:optional
	var calendarTime : String;
	@:optional
	var calendarWeekHeader : String;
	@:optional
	var cellHeight : Float;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var date : Dynamic;
	@:optional
	var dayTemplate : WebixCallback;
	@:optional
	var disabled : Bool;
	@:optional
	var events : WebixCallback;
	@:optional
	var gravity : Float;
	@:optional
	var headerHeight : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var icons : Dynamic;
	@:optional
	var id : String;
	@:optional
	var maxDate : haxe.extern.EitherType<Date, String>;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minDate : haxe.extern.EitherType<Date, String>;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var minuteStep : Float;
	@:optional
	var monthSelect : Bool;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var navigation : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var select : Bool;
	@:optional
	var skipEmptyWeeks : Bool;
	@:optional
	var timepicker : Bool;
	@:optional
	var timepickerHeight : Float;
	@:optional
	var type : String;
	@:optional
	var weekHeader : Bool;
	@:optional
	var weekNumber : Bool;
	@:optional
	var width : Float;
};
typedef Calendar = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getSelectedDate():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():Dynamic;
	function getVisibleDate():Dynamic;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function selectDate(date:Dynamic):Void;
	function setValue(date:Dynamic):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showCalendar(date:Dynamic):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : CalendarConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
};
typedef ChartConfig = {
	@:optional
	var alpha : Float;
	@:optional
	var animate : Dynamic;
	@:optional
	var barWidth : Float;
	@:optional
	var border : Bool;
	@:optional
	var borderColor : String;
	@:optional
	var borderless : Bool;
	@:optional
	var cant : Float;
	@:optional
	var color : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var disableLines : Bool;
	@:optional
	var disabled : Bool;
	@:optional
	var eventRadius : Float;
	@:optional
	var fill : String;
	@:optional
	var fixOverflow : Bool;
	@:optional
	var gradient : haxe.extern.EitherType<Bool, haxe.extern.EitherType<String, WebixCallback>>;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var item : Dynamic;
	@:optional
	var label : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var labelOffset : Float;
	@:optional
	var legend : Dynamic;
	@:optional
	var line : Dynamic;
	@:optional
	var lineColor : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var offset : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var origin : Float;
	@:optional
	var padding : Dynamic;
	@:optional
	var pieHeight : Float;
	@:optional
	var pieInnerText : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var preset : String;
	@:optional
	var radius : Float;
	@:optional
	var ready : WebixCallback;
	@:optional
	var removeMissed : Bool;
	@:optional
	var save : String;
	@:optional
	var scale : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var series : Array<Dynamic>;
	@:optional
	var shadow : Bool;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var type : String;
	@:optional
	var url : String;
	@:optional
	var value : haxe.extern.EitherType<String, WebixTemplate>;
	@:optional
	var width : Float;
	@:optional
	var x : Float;
	@:optional
	var xAxis : Dynamic;
	@:optional
	var xValue : String;
	@:optional
	var y : Float;
	@:optional
	var yAxis : Dynamic;
	@:optional
	var yValue : String;
};
typedef Chart = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addSeries(obj:Dynamic):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clearAll():Void;
	function clearCanvas():Void;
	function count():Float;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function exists(id:String):Bool;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function getChildViews():Array<Dynamic>;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getLastId():String;
	function getNextId(id:String, step:Float):String;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getTopParentView():webix.ui.Baseview;
	function group(config:Dynamic, mode:Bool):Void;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function hideSeries(series:String):Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function remove(id:String):Void;
	function removeAllSeries():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function serialize():Dynamic;
	function show(?force:Bool, ?animation:Bool):Void;
	function showSeries(series:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function ungroup(mode:Bool):Void;
	function updateItem(id:String, data:Dynamic):Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var colormap : { };
	var config : ChartConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var presets : { };
};
typedef CheckboxConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var checkValue : String;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var customCheckbox : Bool;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var uncheckValue : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Checkbox = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function toggle():Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : CheckboxConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef CarouselConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var cols : Array<Dynamic>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var navigation : Dynamic;
	@:optional
	var on : Dynamic;
	@:optional
	var rows : Array<Dynamic>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var type : String;
	@:optional
	var width : Float;
};
typedef Carousel = {
	>webix.ui.Baseview,
	function adjust():Void;
	function adjustScroll(matrix:Dynamic):Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getActiveId():String;
	function getActiveIndex():Float;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getLayout():Dynamic;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function setActive(id:String):Void;
	function setActiveIndex(index:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showNext():Void;
	function showPrev():Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : CarouselConfig;
	var name : String;
};
typedef ColorboardConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var cols : Float;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxLightness : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minLightness : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var palette : Array<Dynamic>;
	@:optional
	var rows : Float;
	@:optional
	var template : WebixCallback;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Colorboard = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):String;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ColorboardConfig;
	var name : String;
};
typedef ColorpickerConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var editable : Bool;
	@:optional
	var format : String;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var icon : String;
	@:optional
	var icons : Dynamic;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var stringResult : Dynamic;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var timeIcon : String;
	@:optional
	var timepicker : Bool;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Colorpicker = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getPopup():webix.ui.Baseview;
	function getText():Void;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ColorpickerConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef ComboConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var icon : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var options : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var popupWidth : Float;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var text : String;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Combo = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getPopup():webix.ui.Baseview;
	function getText():String;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ComboConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef ContextConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autofit : Bool;
	@:optional
	var autofocus : Bool;
	@:optional
	var body : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var head : Dynamic;
	@:optional
	var headHeight : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var left : Float;
	@:optional
	var master : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var modal : Bool;
	@:optional
	var move : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var relative : String;
	@:optional
	var top : Float;
	@:optional
	var width : Float;
	@:optional
	var zIndex : Float;
};
typedef Context = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function attachTo(view:Dynamic):Void;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function close():Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getBody():Dynamic;
	function getChildViews():Array<Dynamic>;
	function getContext():Dynamic;
	function getFormView():webix.ui.Baseview;
	function getHead():Dynamic;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function resize():Void;
	function resizeChildren():Void;
	function setPosition(x:Float, y:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ContextConfig;
	var name : String;
};
typedef ContextmenuConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autofit : Bool;
	@:optional
	var autofocus : Bool;
	@:optional
	var autoheight : Bool;
	@:optional
	var autowidth : Bool;
	@:optional
	var body : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var borderless : Bool;
	@:optional
	var click : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var clipboard : haxe.extern.EitherType<Bool, String>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var drag : haxe.extern.EitherType<Bool, String>;
	@:optional
	var dragscroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var externalData : WebixCallback;
	@:optional
	var gravity : Float;
	@:optional
	var head : Dynamic;
	@:optional
	var headHeight : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var layout : String;
	@:optional
	var left : Float;
	@:optional
	var master : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var modal : Bool;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var move : Bool;
	@:optional
	var navigation : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var padding : Dynamic;
	@:optional
	var pager : Dynamic;
	@:optional
	var position : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var ready : WebixCallback;
	@:optional
	var relative : String;
	@:optional
	var removeMissed : Bool;
	@:optional
	var rules : Dynamic;
	@:optional
	var save : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var select : haxe.extern.EitherType<Bool, String>;
	@:optional
	var subMenuPos : String;
	@:optional
	var submenu : Dynamic;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var templateCopy : WebixCallback;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var top : Float;
	@:optional
	var type : Dynamic;
	@:optional
	var url : String;
	@:optional
	var width : Float;
	@:optional
	var xCount : Float;
	@:optional
	var yCount : Float;
	@:optional
	var zIndex : Float;
};
typedef Contextmenu = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function attachTo(view:Dynamic):Void;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clearAll():Void;
	function clearCss(css:String, ?silent:Bool):Void;
	function clearValidation():Void;
	function close():Void;
	function copy(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):Void;
	function count():Float;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function disableItem(id:String):Void;
	function enable():Void;
	function enableItem(id:String):Void;
	function exists(id:String):Bool;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function getBody():Dynamic;
	function getChildViews():Array<Dynamic>;
	function getContext():Dynamic;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getHead():Dynamic;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getLastId():String;
	function getMenu(id:haxe.extern.EitherType<String, Float>):Dynamic;
	function getMenuItem(id:String):Dynamic;
	function getNextId(id:String, step:Float):String;
	function getNode():Dynamic;
	function getPage():Float;
	function getPager():Dynamic;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getScrollState():Dynamic;
	function getSelectedId(as_array:Bool):haxe.extern.EitherType<String, Array<Dynamic>>;
	function getSelectedItem(?as_array:Bool):Dynamic;
	function getSubMenu(id:haxe.extern.EitherType<String, Float>):Dynamic;
	function getTopMenu():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getVisibleCount():Float;
	function hasCss(id:String, css:String):Bool;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function hideItem(id:String):Void;
	function isEnabled():Bool;
	function isSelected(id:String):Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function move(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):String;
	function moveBottom(id:String):Void;
	function moveDown(id:String, step:Float):Void;
	function moveSelection(direction:String):Void;
	function moveTop(id:String):Void;
	function moveUp(id:String, step:Float):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function remove(id:String):Void;
	function removeCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function resizeChildren():Void;
	function scrollTo(x:Float, y:Float):Void;
	function select(id:haxe.extern.EitherType<String, Array<Dynamic>>, preserve:Bool):Void;
	function selectAll(?from:String, ?to:String):Void;
	function serialize():Dynamic;
	function setPage(page:Float):Void;
	function setPosition(x:Float, y:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showItem(id:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function unselect(?id:String):Void;
	function unselectAll():Void;
	function updateItem(id:String, data:Dynamic):Void;
	function validate(?id:String):Bool;
	function $drag(source:HTMLElement, ev:Event):String;
	var $dragHTML : WebixCallback;
	function $dragIn(source:HTMLElement, target:HTMLElement, ev:Event):HTMLElement;
	function $dragMark(context:Dynamic, ev:Event):Bool;
	function $dragOut(source:HTMLElement, old_target:HTMLElement, new_target:HTMLElement, ev:Event):Void;
	function $drop(source:HTMLElement, target:HTMLElement, ev:Dynamic):Void;
	var $dropAllow : WebixCallback;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ContextmenuConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var type : { };
	var types : { };
};
typedef CounterConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var max : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var min : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var step : Float;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Counter = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():Float;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function next(?step:Float):Void;
	function prev(?step:Float):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:Float):Void;
	function shift(?value:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : CounterConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef DatatableConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autoConfig : Bool;
	@:optional
	var autoheight : Bool;
	@:optional
	var autowidth : Bool;
	@:optional
	var blockselect : Bool;
	@:optional
	var borderless : Bool;
	@:optional
	var checkboxRefresh : Bool;
	@:optional
	var clipboard : haxe.extern.EitherType<Bool, String>;
	@:optional
	var columnWidth : Float;
	@:optional
	var columns : Array<Dynamic>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datafetch : Float;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var delimiter : Dynamic;
	@:optional
	var disabled : Bool;
	@:optional
	var drag : haxe.extern.EitherType<Bool, String>;
	@:optional
	var dragColumn : haxe.extern.EitherType<Bool, String>;
	@:optional
	var dragscroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var editMath : Bool;
	@:optional
	var editValue : String;
	@:optional
	var editable : Bool;
	@:optional
	var editaction : String;
	@:optional
	var externalData : WebixCallback;
	@:optional
	var filterMode : Dynamic;
	@:optional
	var fixedRowHeight : Bool;
	@:optional
	var footer : Bool;
	@:optional
	var form : String;
	@:optional
	var gravity : Float;
	@:optional
	var header : Bool;
	@:optional
	var headerRowHeight : Float;
	@:optional
	var headermenu : Dynamic;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hover : String;
	@:optional
	var id : String;
	@:optional
	var leftSplit : Float;
	@:optional
	var liveValidation : Bool;
	@:optional
	var loadahead : Float;
	@:optional
	var math : Bool;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minColumnHeight : Float;
	@:optional
	var minColumnWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var multiselect : Bool;
	@:optional
	var navigation : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var pager : Dynamic;
	@:optional
	var prerender : Bool;
	@:optional
	var ready : WebixCallback;
	@:optional
	var removeMissed : Bool;
	@:optional
	var resizeColumn : Bool;
	@:optional
	var resizeRow : Bool;
	@:optional
	var rightSplit : Float;
	@:optional
	var rowHeight : Float;
	@:optional
	var rowLineHeight : Float;
	@:optional
	var rules : Dynamic;
	@:optional
	var save : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var scroll : Bool;
	@:optional
	var scrollAlignY : Bool;
	@:optional
	var scrollX : Bool;
	@:optional
	var scrollY : Bool;
	@:optional
	var select : haxe.extern.EitherType<Bool, String>;
	@:optional
	var spans : Array<Dynamic>;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var url : String;
	@:optional
	var width : Float;
	@:optional
	var yCount : Float;
};
typedef Datatable = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addCellCss(id:String, name:String, css:String):Void;
	function addCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function addRowCss(id:String, css:String):Void;
	function addSpan(id:Dynamic, column:String, width:Float, height:Float, ?value:String, ?css:String):Void;
	function adjust():Void;
	function adjustColumn(id:haxe.extern.EitherType<String, Float>, ?header:String):Void;
	function adjustRowHeight(columnId:String, silent:Bool):Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clearAll():Void;
	function clearCss(css:String, ?silent:Bool):Void;
	function clearSelection():Void;
	function clearValidation():Void;
	function collectValues(id:String):Array<Dynamic>;
	function columnId(index:Float):String;
	function copy(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):Void;
	function count():Float;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function eachColumn(handler:WebixCallback, ?all:Bool):Void;
	function eachRow(handler:WebixCallback, ?all:Bool):Void;
	function edit(id:Dynamic):Void;
	function editCancel():Void;
	function editCell(row:String, col:String, ?preserve:Bool, ?show:Bool):Void;
	function editColumn(id:String):Void;
	function editNext():Bool;
	function editRow(id:String):Void;
	function editStop():Void;
	function enable():Void;
	function exists(id:String):Bool;
	function exportToExcel(?url:String):Void;
	function exportToPDF(?url:String):Void;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function filterByAll():Void;
	function find(criterion:WebixCallback, ?first:Bool):Dynamic;
	function focusEditor():Void;
	function getChildViews():Array<Dynamic>;
	function getColumnConfig(id:String):Dynamic;
	function getColumnIndex(id:String):Float;
	function getEditState():Dynamic;
	function getEditor(?row:Dynamic, ?column:haxe.extern.EitherType<String, Float>):Dynamic;
	function getEditorValue():String;
	function getFilter(columnID:String):Dynamic;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getHeaderContent(id:String):{ };
	function getHeaderNode(columnId:String, ?rowIndex:Float):HTMLElement;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getLastId():String;
	function getNextId(id:String, step:Float):String;
	function getNode():Dynamic;
	function getPage():Float;
	function getPager():Dynamic;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getScrollState():Dynamic;
	function getSelectedId(?asArray:Bool, ?asString:Bool):Dynamic;
	function getSelectedItem(?mode:Bool):Void;
	function getState():Dynamic;
	function getText(rowid:String, colid:String):String;
	function getTopParentView():webix.ui.Baseview;
	function getVisibleCount():Float;
	function group(config:Dynamic, mode:Bool):Void;
	function hasCss(id:String, css:String):Bool;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function hideColumn(id:String):Void;
	function hideOverlay():Void;
	function isColumnVisible(id:String):Bool;
	function isEnabled():Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(node:haxe.extern.EitherType<HTMLElement, Event>):Dynamic;
	function mapCells(startrow:Float, startcol:String, numrows:Float, numcols:Float, callback:WebixCallback):Void;
	function mapEvent(map:Dynamic):Void;
	function mapSelection(callback:WebixCallback):Void;
	function markSorting(column_id:String, dir:String):Void;
	function move(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):String;
	function moveBottom(id:String):Void;
	function moveColumn(id:String, index:Float):Void;
	function moveDown(id:String, step:Float):Void;
	function moveSelection(direction:String):Void;
	function moveTop(id:String):Void;
	function moveUp(id:String, step:Float):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function refreshColumns(?config:Array<Dynamic>):Void;
	function refreshFilter(id:String):Void;
	function refreshHeaderContent():Void;
	function registerFilter(node:HTMLElement, config:Dynamic, obj:Dynamic):Void;
	function remove(id:String):Void;
	function removeCellCss(id:String, name:String, css_name:String):Void;
	function removeCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function removeRowCss(id:String, css_name:String):Void;
	function removeSpan(id:haxe.extern.EitherType<String, Float>, column:String):Void;
	function render(id:String, data:Dynamic, operation:String):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function select(row_id:String, preserve:Bool):Void;
	function selectRange(row_id:Dynamic, end_row_id:Dynamic):Void;
	function serialize():Dynamic;
	function setColumnWidth(id:String, width:Float):Void;
	function setPage(page:Float):Void;
	function setRowHeight(id:String, height:Float):Void;
	function setState(state:Dynamic):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showCell(row:String, column:String):Void;
	function showColumn(id:String):Void;
	function showColumnBatch(batch:haxe.extern.EitherType<String, Float>):Void;
	function showItem(id:String):Void;
	function showItemByIndex(index:Float):Void;
	function showOverlay(message:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function ungroup(mode:Bool):Void;
	function unselect(row_id:String):Void;
	function updateItem(id:String, data:Dynamic):Void;
	function validate(?id:String):Bool;
	function validateEditor(?id:String):Bool;
	function $drag(source:HTMLElement, ev:Event):String;
	var $dragHTML : WebixCallback;
	function $dragIn(source:HTMLElement, target:HTMLElement, ev:Event):HTMLElement;
	function $dragMark(context:Dynamic, ev:Event):Bool;
	function $dragOut(source:HTMLElement, old_target:HTMLElement, new_target:HTMLElement, ev:Event):Void;
	function $drop(source:HTMLElement, target:HTMLElement, ev:Dynamic):Void;
	var $dropAllow : WebixCallback;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : DatatableConfig;
	var headerContent : Dynamic;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var waitData : PromisedData;
};
typedef DataviewConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autoheight : Bool;
	@:optional
	var borderless : Bool;
	@:optional
	var click : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datafetch : Float;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var drag : haxe.extern.EitherType<Bool, String>;
	@:optional
	var dragscroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var externalData : WebixCallback;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var loadahead : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var navigation : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var pager : Dynamic;
	@:optional
	var ready : WebixCallback;
	@:optional
	var removeMissed : Bool;
	@:optional
	var rules : Dynamic;
	@:optional
	var save : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var select : haxe.extern.EitherType<Bool, String>;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var url : String;
	@:optional
	var width : Float;
	@:optional
	var xCount : Float;
	@:optional
	var yCount : Float;
};
typedef Dataview = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clearAll():Void;
	function clearCss(css:String, ?silent:Bool):Void;
	function clearValidation():Void;
	function copy(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):Void;
	function count():Float;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function exists(id:String):Bool;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function getChildViews():Array<Dynamic>;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getLastId():String;
	function getNextId(id:String, step:Float):String;
	function getNode():Dynamic;
	function getPage():Float;
	function getPager():Dynamic;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getScrollState():Dynamic;
	function getSelectedId(as_array:Bool):haxe.extern.EitherType<String, Array<Dynamic>>;
	function getSelectedItem(?as_array:Bool):Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasCss(id:String, css:String):Bool;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isSelected(id:String):Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function move(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):String;
	function moveBottom(id:String):Void;
	function moveDown(id:String, step:Float):Void;
	function moveSelection(direction:String):Void;
	function moveTop(id:String):Void;
	function moveUp(id:String, step:Float):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function remove(id:String):Void;
	function removeCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function select(id:haxe.extern.EitherType<String, Array<Dynamic>>, preserve:Bool):Void;
	function selectAll(?from:String, ?to:String):Void;
	function serialize():Dynamic;
	function setPage(page:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showItem(id:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function unselect(?id:String):Void;
	function unselectAll():Void;
	function updateItem(id:String, data:Dynamic):Void;
	function validate(?id:String):Bool;
	function $drag(source:HTMLElement, ev:Event):String;
	var $dragHTML : WebixCallback;
	function $dragIn(source:HTMLElement, target:HTMLElement, ev:Event):HTMLElement;
	function $dragMark(context:Dynamic, ev:Event):Bool;
	function $dragOut(source:HTMLElement, old_target:HTMLElement, new_target:HTMLElement, ev:Event):Void;
	function $drop(source:HTMLElement, target:HTMLElement, ev:Dynamic):Void;
	var $dropAllow : WebixCallback;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : DataviewConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var type : { };
	var types : { };
	var waitData : PromisedData;
};
typedef DatepickerConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var editable : Bool;
	@:optional
	var format : String;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var icon : String;
	@:optional
	var icons : Dynamic;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var stringResult : Dynamic;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var text : String;
	@:optional
	var timeIcon : String;
	@:optional
	var timepicker : Bool;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Datepicker = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getPopup():webix.ui.Baseview;
	function getText():Void;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : DatepickerConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef FieldsetConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var body : webix.ui.Baseview;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var label : Dynamic;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var width : Float;
};
typedef Fieldset = {
	>webix.ui.Baseview,
	function adjust():Void;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function disable():Void;
	function enable():Void;
	function getBody():Dynamic;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function resize():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : FieldsetConfig;
	var name : String;
};
typedef FormConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autoheight : Bool;
	@:optional
	var borderless : Bool;
	@:optional
	var cols : Array<Dynamic>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var elements : Array<Dynamic>;
	@:optional
	var elementsConfig : { };
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var isolate : Bool;
	@:optional
	var margin : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Float;
	@:optional
	var paddingX : Float;
	@:optional
	var paddingY : Float;
	@:optional
	var responsive : String;
	@:optional
	var rows : Array<Dynamic>;
	@:optional
	var rules : Dynamic;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var type : String;
	@:optional
	var url : String;
	@:optional
	var visibleBatch : String;
	@:optional
	var width : Float;
};
typedef Form = {
	>webix.ui.Baseview,
	function addView(view:Dynamic, ?index:Float):webix.ui.Baseview;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clear():Void;
	function clearValidation():Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus(item:String):Void;
	function getChildViews():Array<Dynamic>;
	function getCleanValues():Dynamic;
	function getDirtyValues():Dynamic;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getScrollState():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValues(?details:Dynamic):Dynamic;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function index(obj:Dynamic):Float;
	function isDirty():Bool;
	function isEnabled():Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function mapEvent(map:Dynamic):Void;
	function parse(data:Dynamic, type:String):Void;
	function reconstruct():Void;
	function refresh():Void;
	function removeView(id:String):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function resizeChildren():Void;
	function scrollTo(x:Float, y:Float):Void;
	function setDirty(?mark:Bool):Void;
	function setValues(values:Dynamic, ?update:Bool):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showBatch(name:String):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : FormConfig;
	var name : String;
};
typedef GrouplistConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autoheight : Bool;
	@:optional
	var autowidth : Bool;
	@:optional
	var borderless : Bool;
	@:optional
	var click : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var clipboard : haxe.extern.EitherType<Bool, String>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var drag : haxe.extern.EitherType<Bool, String>;
	@:optional
	var dragscroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var externalData : WebixCallback;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var layout : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var navigation : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var pager : Dynamic;
	@:optional
	var ready : WebixCallback;
	@:optional
	var removeMissed : Bool;
	@:optional
	var rules : Dynamic;
	@:optional
	var save : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var select : haxe.extern.EitherType<Bool, String>;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var templateBack : haxe.extern.EitherType<String, WebixTemplate>;
	@:optional
	var templateCopy : WebixCallback;
	@:optional
	var templateGroup : haxe.extern.EitherType<String, WebixTemplate>;
	@:optional
	var templateItem : haxe.extern.EitherType<String, WebixTemplate>;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var url : String;
	@:optional
	var width : Float;
	@:optional
	var xCount : Float;
	@:optional
	var yCount : Float;
};
typedef Grouplist = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clearAll():Void;
	function clearCss(css:String, ?silent:Bool):Void;
	function clearValidation():Void;
	function copy(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):Void;
	function count():Float;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function exists(id:String):Bool;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function getChildViews():Array<Dynamic>;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getLastId():String;
	function getNextId(id:String, step:Float):String;
	function getNode():Dynamic;
	function getOpenState():Dynamic;
	function getPage():Float;
	function getPager():Dynamic;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getScrollState():Dynamic;
	function getSelectedId(as_array:Bool):haxe.extern.EitherType<String, Array<Dynamic>>;
	function getSelectedItem(?as_array:Bool):Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getVisibleCount():Float;
	function group(config:Dynamic, mode:Bool):Void;
	function hasCss(id:String, css:String):Bool;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isSelected(id:String):Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function move(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):String;
	function moveBottom(id:String):Void;
	function moveDown(id:String, step:Float):Void;
	function moveSelection(direction:String):Void;
	function moveTop(id:String):Void;
	function moveUp(id:String, step:Float):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function remove(id:String):Void;
	function removeCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function select(id:haxe.extern.EitherType<String, Array<Dynamic>>, preserve:Bool):Void;
	function selectAll(?from:String, ?to:String):Void;
	function serialize():Dynamic;
	function setPage(page:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showItem(id:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function ungroup(mode:Bool):Void;
	function unselect(?id:String):Void;
	function unselectAll():Void;
	function updateItem(id:String, data:Dynamic):Void;
	function validate(?id:String):Bool;
	function $drag(source:HTMLElement, ev:Event):String;
	var $dragHTML : WebixCallback;
	function $dragIn(source:HTMLElement, target:HTMLElement, ev:Event):HTMLElement;
	function $dragMark(context:Dynamic, ev:Event):Bool;
	function $dragOut(source:HTMLElement, old_target:HTMLElement, new_target:HTMLElement, ev:Event):Void;
	function $drop(source:HTMLElement, target:HTMLElement, ev:Dynamic):Void;
	var $dropAllow : WebixCallback;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : GrouplistConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var type : { };
	var types : { };
};
typedef HeaderlayoutConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var collapsed : Bool;
	@:optional
	var cols : Array<Dynamic>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var isolate : Bool;
	@:optional
	var margin : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var multi : haxe.extern.EitherType<Bool, String>;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Float;
	@:optional
	var paddingX : Float;
	@:optional
	var paddingY : Float;
	@:optional
	var panelClass : String;
	@:optional
	var responsive : String;
	@:optional
	var rows : Array<Dynamic>;
	@:optional
	var type : String;
	@:optional
	var visibleBatch : String;
	@:optional
	var width : Float;
};
typedef Headerlayout = {
	>webix.ui.Baseview,
	function addView(view:Dynamic, ?index:Float):webix.ui.Baseview;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function index(obj:Dynamic):Float;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function reconstruct():Void;
	function removeView(id:String):Void;
	function resize():Void;
	function resizeChildren():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showBatch(name:String):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : HeaderlayoutConfig;
	var name : String;
};
typedef HtmlformConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autoheight : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var src : String;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var type : String;
	@:optional
	var url : String;
	@:optional
	var width : Float;
};
typedef Htmlform = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clear(?all:Bool):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus(item:String):Void;
	function getChildViews():Array<Dynamic>;
	function getCleanValues():Dynamic;
	function getDirtyValues():Dynamic;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getScrollState():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValues(?details:Dynamic):Array<Dynamic>;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isDirty():Bool;
	function isEnabled():Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function mapEvent(map:Dynamic):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function setContent(node:Dynamic):Void;
	function setDirty(?mark:Bool):Void;
	function setHTML(html:String):Void;
	function setValues(values:Dynamic, ?update:Bool):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : HtmlformConfig;
	var name : String;
};
typedef IconConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : Dynamic;
	@:optional
	var popup : Dynamic;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Icon = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : IconConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef IframeConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var src : String;
	@:optional
	var width : Float;
};
typedef Iframe = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getIframe():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getWindow():HTMLElement;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function load(value:String):Void;
	function mapEvent(map:Dynamic):Void;
	function resize():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : IframeConfig;
	var name : String;
};
typedef LabelConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : Dynamic;
	@:optional
	var popup : Dynamic;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Label = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setHTML(html:String):Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : LabelConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef LayoutConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var cols : Array<Dynamic>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var isolate : Bool;
	@:optional
	var margin : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Float;
	@:optional
	var paddingX : Float;
	@:optional
	var paddingY : Float;
	@:optional
	var responsive : String;
	@:optional
	var rows : Array<Dynamic>;
	@:optional
	var type : String;
	@:optional
	var visibleBatch : String;
	@:optional
	var width : Float;
};
typedef Layout = {
	>webix.ui.Baseview,
	function addView(view:Dynamic, ?index:Float):webix.ui.Baseview;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function index(obj:Dynamic):Float;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function reconstruct():Void;
	function removeView(id:String):Void;
	function resize():Void;
	function resizeChildren():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showBatch(name:String):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : LayoutConfig;
	var name : String;
};
typedef ListConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autoheight : Bool;
	@:optional
	var autowidth : Bool;
	@:optional
	var borderless : Bool;
	@:optional
	var click : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var clipboard : haxe.extern.EitherType<Bool, String>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var drag : haxe.extern.EitherType<Bool, String>;
	@:optional
	var dragscroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var externalData : WebixCallback;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var layout : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var navigation : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var pager : Dynamic;
	@:optional
	var ready : WebixCallback;
	@:optional
	var removeMissed : Bool;
	@:optional
	var rules : Dynamic;
	@:optional
	var save : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var select : haxe.extern.EitherType<Bool, String>;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var templateCopy : WebixCallback;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var url : String;
	@:optional
	var width : Float;
	@:optional
	var xCount : Float;
	@:optional
	var yCount : Float;
};
typedef List = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clearAll():Void;
	function clearCss(css:String, ?silent:Bool):Void;
	function clearValidation():Void;
	function copy(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):Void;
	function count():Float;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function exists(id:String):Bool;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function getChildViews():Array<Dynamic>;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getLastId():String;
	function getNextId(id:String, step:Float):String;
	function getNode():Dynamic;
	function getPage():Float;
	function getPager():Dynamic;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getScrollState():Dynamic;
	function getSelectedId(as_array:Bool):haxe.extern.EitherType<String, Array<Dynamic>>;
	function getSelectedItem(?as_array:Bool):Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getVisibleCount():Float;
	function hasCss(id:String, css:String):Bool;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isSelected(id:String):Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function move(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):String;
	function moveBottom(id:String):Void;
	function moveDown(id:String, step:Float):Void;
	function moveSelection(direction:String):Void;
	function moveTop(id:String):Void;
	function moveUp(id:String, step:Float):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function remove(id:String):Void;
	function removeCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function select(id:haxe.extern.EitherType<String, Array<Dynamic>>, preserve:Bool):Void;
	function selectAll(?from:String, ?to:String):Void;
	function serialize():Dynamic;
	function setPage(page:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showItem(id:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function unselect(?id:String):Void;
	function unselectAll():Void;
	function updateItem(id:String, data:Dynamic):Void;
	function validate(?id:String):Bool;
	function $drag(source:HTMLElement, ev:Event):String;
	var $dragHTML : WebixCallback;
	function $dragIn(source:HTMLElement, target:HTMLElement, ev:Event):HTMLElement;
	function $dragMark(context:Dynamic, ev:Event):Bool;
	function $dragOut(source:HTMLElement, old_target:HTMLElement, new_target:HTMLElement, ev:Event):Void;
	function $drop(source:HTMLElement, target:HTMLElement, ev:Dynamic):Void;
	var $dropAllow : WebixCallback;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ListConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var type : { };
	var types : { };
};
typedef MenuConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autoheight : Bool;
	@:optional
	var autowidth : Bool;
	@:optional
	var borderless : Bool;
	@:optional
	var click : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var clipboard : haxe.extern.EitherType<Bool, String>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var drag : haxe.extern.EitherType<Bool, String>;
	@:optional
	var dragscroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var externalData : WebixCallback;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var layout : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var navigation : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var pager : Dynamic;
	@:optional
	var ready : WebixCallback;
	@:optional
	var removeMissed : Bool;
	@:optional
	var rules : Dynamic;
	@:optional
	var save : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var select : haxe.extern.EitherType<Bool, String>;
	@:optional
	var subMenuPos : String;
	@:optional
	var submenu : Dynamic;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var templateCopy : WebixCallback;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var url : String;
	@:optional
	var width : Float;
	@:optional
	var xCount : Float;
	@:optional
	var yCount : Float;
};
typedef Menu = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clearAll():Void;
	function clearCss(css:String, ?silent:Bool):Void;
	function clearValidation():Void;
	function copy(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):Void;
	function count():Float;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function disableItem(id:String):Void;
	function enable():Void;
	function enableItem(id:String):Void;
	function exists(id:String):Bool;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function getChildViews():Array<Dynamic>;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getLastId():String;
	function getMenu(id:haxe.extern.EitherType<String, Float>):Dynamic;
	function getMenuItem(id:String):Dynamic;
	function getNextId(id:String, step:Float):String;
	function getNode():Dynamic;
	function getPage():Float;
	function getPager():Dynamic;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getScrollState():Dynamic;
	function getSelectedId(as_array:Bool):haxe.extern.EitherType<String, Array<Dynamic>>;
	function getSelectedItem(?as_array:Bool):Dynamic;
	function getSubMenu(id:haxe.extern.EitherType<String, Float>):Dynamic;
	function getTopMenu():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getVisibleCount():Float;
	function hasCss(id:String, css:String):Bool;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function hideItem(id:String):Void;
	function isEnabled():Bool;
	function isSelected(id:String):Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function move(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):String;
	function moveBottom(id:String):Void;
	function moveDown(id:String, step:Float):Void;
	function moveSelection(direction:String):Void;
	function moveTop(id:String):Void;
	function moveUp(id:String, step:Float):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function remove(id:String):Void;
	function removeCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function select(id:haxe.extern.EitherType<String, Array<Dynamic>>, preserve:Bool):Void;
	function selectAll(?from:String, ?to:String):Void;
	function serialize():Dynamic;
	function setPage(page:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showItem(id:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function unselect(?id:String):Void;
	function unselectAll():Void;
	function updateItem(id:String, data:Dynamic):Void;
	function validate(?id:String):Bool;
	function $drag(source:HTMLElement, ev:Event):String;
	var $dragHTML : WebixCallback;
	function $dragIn(source:HTMLElement, target:HTMLElement, ev:Event):HTMLElement;
	function $dragMark(context:Dynamic, ev:Event):Bool;
	function $dragOut(source:HTMLElement, old_target:HTMLElement, new_target:HTMLElement, ev:Event):Void;
	function $drop(source:HTMLElement, target:HTMLElement, ev:Dynamic):Void;
	var $dropAllow : WebixCallback;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : MenuConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var type : { };
	var types : { };
};
typedef MultiviewConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var cells : Dynamic;
	@:optional
	var cols : Array<Dynamic>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var fitBiggest : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var responsive : String;
	@:optional
	var rows : Array<Dynamic>;
	@:optional
	var visibleBatch : String;
	@:optional
	var width : Float;
};
typedef Multiview = {
	>webix.ui.Baseview,
	function addView(view:Dynamic, ?index:Float):webix.ui.Baseview;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function back(step:Float):Void;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getActiveId():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function index(obj:Dynamic):Float;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function reconstruct():Void;
	function removeView(id:String):Void;
	function resize():Void;
	function resizeChildren():Void;
	function setValue(toshow:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showBatch(name:String):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : MultiviewConfig;
	var name : String;
};
typedef OrganogramConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autoheight : Bool;
	@:optional
	var autowidth : Bool;
	@:optional
	var borderless : Bool;
	@:optional
	var click : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var filterMode : Dynamic;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var ready : WebixCallback;
	@:optional
	var removeMissed : Bool;
	@:optional
	var save : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var select : haxe.extern.EitherType<Bool, String>;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var threeState : Bool;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var url : String;
	@:optional
	var width : Float;
};
typedef Organogram = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clearAll():Void;
	function clearCss(css:String, ?silent:Bool):Void;
	function close(id:String):Void;
	function closeAll():Void;
	function count():Float;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function exists(id:String):Bool;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function getBranchIndex(id:String, ?parent:String):Float;
	function getChildViews():Array<Dynamic>;
	function getFirstChildId(id:String):String;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getLastId():String;
	function getNextId(id:String, step:Float):String;
	function getNextSiblingId(id:Dynamic):String;
	function getNode():Dynamic;
	function getOpenItems():Array<Dynamic>;
	function getParentId(id:String):String;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getPrevSiblingId(id:Dynamic):String;
	function getScrollState():Dynamic;
	function getSelectedId(as_array:Bool):haxe.extern.EitherType<String, Array<Dynamic>>;
	function getSelectedItem(?as_array:Bool):Dynamic;
	function getState():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function group(config:Dynamic, mode:Bool):Void;
	function hasCss(id:String, css:String):Bool;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isBranch(id:String):Bool;
	function isBranchOpen(id:String):Bool;
	function isEnabled():Bool;
	function isSelected(id:String):Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadBranch(id:String, callback:WebixCallback, url:String):Void;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function open(id:String):Void;
	function openAll():Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function remove(id:String):Void;
	function removeCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function select(id:haxe.extern.EitherType<String, Array<Dynamic>>, preserve:Bool):Void;
	function selectAll(?from:String, ?to:String):Void;
	function serialize():Dynamic;
	function setState(state:Dynamic):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showItem(id:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function ungroup(mode:Bool):Void;
	function unselect(?id:String):Void;
	function unselectAll():Void;
	function updateItem(id:String, data:Dynamic):Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : OrganogramConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var type : { };
	var types : { };
};
typedef PagerConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var apiOnly : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var count : Float;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var group : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var limit : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var page : Float;
	@:optional
	var size : Float;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var width : Float;
};
typedef Pager = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clone(config:Dynamic):Dynamic;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh(?id:String):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function select(page:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : PagerConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var type : { };
};
typedef PopupConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autofit : Bool;
	@:optional
	var autofocus : Bool;
	@:optional
	var body : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var head : Dynamic;
	@:optional
	var headHeight : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var left : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var modal : Bool;
	@:optional
	var move : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var relative : String;
	@:optional
	var top : Float;
	@:optional
	var width : Float;
	@:optional
	var zIndex : Float;
};
typedef Popup = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function close():Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getBody():Dynamic;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getHead():Dynamic;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function resize():Void;
	function resizeChildren():Void;
	function setPosition(x:Float, y:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : PopupConfig;
	var name : String;
};
typedef PropertyConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autoheight : Bool;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var editValue : String;
	@:optional
	var editable : Bool;
	@:optional
	var editaction : String;
	@:optional
	var elements : Dynamic;
	@:optional
	var form : String;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var nameWidth : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var url : String;
	@:optional
	var width : Float;
};
typedef Property = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function edit(id:Dynamic):Void;
	function editCancel():Void;
	function editNext():Bool;
	function editStop():Void;
	function enable():Void;
	function focusEditor():Void;
	function getChildViews():Array<Dynamic>;
	function getEditState():Dynamic;
	function getEditor(?id:String):Dynamic;
	function getEditorValue():String;
	function getFormView():webix.ui.Baseview;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getScrollState():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValues():Array<Dynamic>;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function registerType(name:String, data:Dynamic):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function setValues(values:Dynamic, ?update:Bool):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showItem(id:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function updateItem():Void;
	function validateEditor(?id:String):Bool;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : PropertyConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_edit : { };
	var on_mouse_move : WebixCallback;
	var on_render : { };
	var type : { };
};
typedef RadioConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var customRadio : Bool;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var optionHeight : Float;
	@:optional
	var options : Array<Dynamic>;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var vertical : Bool;
	@:optional
	var width : Float;
};
typedef Radio = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : RadioConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef ResizerConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var width : Float;
};
typedef Resizer = {
	>webix.ui.Baseview,
	function adjust():Void;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function resize():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ResizerConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
};
typedef RichselectConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var icon : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var options : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var popupWidth : Float;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var text : String;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Richselect = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getPopup():webix.ui.Baseview;
	function getText():String;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : RichselectConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef MultitextConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var icon : String;
	@:optional
	var iconWidth : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var separator : String;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Multitext = {
	>webix.ui.Baseview,
	function addSection():haxe.extern.EitherType<String, Float>;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function getValueHere():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function removeSection(?id:haxe.extern.EitherType<String, Float>):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function setValueHere(value:haxe.extern.EitherType<String, Float>):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	var $cssName : String;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : MultitextConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef MultiselectConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var icon : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var optionWidth : Float;
	@:optional
	var options : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var popupWidth : Float;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var separator : String;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var text : String;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Multiselect = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getPopup():webix.ui.Baseview;
	function getText():String;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	var $cssName : String;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : MultiselectConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef ScrollviewConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var body : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var width : Float;
};
typedef Scrollview = {
	>webix.ui.Baseview,
	function adjust():Void;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function disable():Void;
	function enable():Void;
	function getBody():Dynamic;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getScrollState():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function resize():Void;
	function resizeChildren():Void;
	function scrollTo(x:Float, y:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showView(id:String):Void;
	function unbind():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ScrollviewConfig;
	var name : String;
};
typedef SearchConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var icon : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Search = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : SearchConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef SegmentedConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var multiview : Bool;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var options : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Segmented = {
	>webix.ui.Baseview,
	function addOption(id:String, value:Dynamic, ?show:Bool, ?index:Float):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function optionIndex(ID:String):Float;
	function refresh():Void;
	function removeOption(id:String):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : SegmentedConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef SelectConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var options : haxe.extern.EitherType<Array<Dynamic>, String>;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Select = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : SelectConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef SliderConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var max : Dynamic;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var min : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var step : Float;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var title : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Slider = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $touchCapture : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : SliderConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef SpacerConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var width : Float;
};
typedef Spacer = {
	>webix.ui.Baseview,
	function adjust():Void;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function resize():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : SpacerConfig;
	var name : String;
};
typedef SubmenuConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autofit : Bool;
	@:optional
	var autofocus : Bool;
	@:optional
	var autoheight : Bool;
	@:optional
	var autowidth : Bool;
	@:optional
	var body : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var borderless : Bool;
	@:optional
	var click : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var clipboard : haxe.extern.EitherType<Bool, String>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var drag : haxe.extern.EitherType<Bool, String>;
	@:optional
	var dragscroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var externalData : WebixCallback;
	@:optional
	var gravity : Float;
	@:optional
	var head : Dynamic;
	@:optional
	var headHeight : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var layout : String;
	@:optional
	var left : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var modal : Bool;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var move : Bool;
	@:optional
	var navigation : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var padding : Dynamic;
	@:optional
	var pager : Dynamic;
	@:optional
	var position : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var ready : WebixCallback;
	@:optional
	var relative : String;
	@:optional
	var removeMissed : Bool;
	@:optional
	var rules : Dynamic;
	@:optional
	var save : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var select : haxe.extern.EitherType<Bool, String>;
	@:optional
	var subMenuPos : String;
	@:optional
	var submenu : Dynamic;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var templateCopy : WebixCallback;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var top : Float;
	@:optional
	var type : Dynamic;
	@:optional
	var url : String;
	@:optional
	var width : Float;
	@:optional
	var xCount : Float;
	@:optional
	var yCount : Float;
	@:optional
	var zIndex : Float;
};
typedef Submenu = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clearAll():Void;
	function clearCss(css:String, ?silent:Bool):Void;
	function clearValidation():Void;
	function close():Void;
	function copy(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):Void;
	function count():Float;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function disableItem(id:String):Void;
	function enable():Void;
	function enableItem(id:String):Void;
	function exists(id:String):Bool;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function getBody():Dynamic;
	function getChildViews():Array<Dynamic>;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getHead():Dynamic;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getLastId():String;
	function getMenu(id:haxe.extern.EitherType<String, Float>):Dynamic;
	function getMenuItem(id:String):Dynamic;
	function getNextId(id:String, step:Float):String;
	function getNode():Dynamic;
	function getPage():Float;
	function getPager():Dynamic;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getScrollState():Dynamic;
	function getSelectedId(as_array:Bool):haxe.extern.EitherType<String, Array<Dynamic>>;
	function getSelectedItem(?as_array:Bool):Dynamic;
	function getSubMenu(id:haxe.extern.EitherType<String, Float>):Dynamic;
	function getTopMenu():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getVisibleCount():Float;
	function hasCss(id:String, css:String):Bool;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function hideItem(id:String):Void;
	function isEnabled():Bool;
	function isSelected(id:String):Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function move(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):String;
	function moveBottom(id:String):Void;
	function moveDown(id:String, step:Float):Void;
	function moveSelection(direction:String):Void;
	function moveTop(id:String):Void;
	function moveUp(id:String, step:Float):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function remove(id:String):Void;
	function removeCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function resizeChildren():Void;
	function scrollTo(x:Float, y:Float):Void;
	function select(id:haxe.extern.EitherType<String, Array<Dynamic>>, preserve:Bool):Void;
	function selectAll(?from:String, ?to:String):Void;
	function serialize():Dynamic;
	function setPage(page:Float):Void;
	function setPosition(x:Float, y:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showItem(id:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function unselect(?id:String):Void;
	function unselectAll():Void;
	function updateItem(id:String, data:Dynamic):Void;
	function validate(?id:String):Bool;
	function $drag(source:HTMLElement, ev:Event):String;
	var $dragHTML : WebixCallback;
	function $dragIn(source:HTMLElement, target:HTMLElement, ev:Event):HTMLElement;
	function $dragMark(context:Dynamic, ev:Event):Bool;
	function $dragOut(source:HTMLElement, old_target:HTMLElement, new_target:HTMLElement, ev:Event):Void;
	function $drop(source:HTMLElement, target:HTMLElement, ev:Dynamic):Void;
	var $dropAllow : WebixCallback;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : SubmenuConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var type : { };
	var types : { };
};
typedef SuggestConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autofit : Bool;
	@:optional
	var autofocus : Bool;
	@:optional
	var body : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var filter : WebixCallback;
	@:optional
	var fitMaster : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var head : Dynamic;
	@:optional
	var headHeight : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var input : Dynamic;
	@:optional
	var keyPressTimeout : Float;
	@:optional
	var left : Float;
	@:optional
	var master : webix.ui.Baseview;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var modal : Bool;
	@:optional
	var move : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var relative : String;
	@:optional
	var template : haxe.extern.EitherType<String, WebixTemplate>;
	@:optional
	var textValue : String;
	@:optional
	var top : Float;
	@:optional
	var type : String;
	@:optional
	var width : Float;
	@:optional
	var zIndex : Float;
};
typedef Suggest = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function close():Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getBody():Dynamic;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getHead():Dynamic;
	function getItemText(id:String):String;
	function getList():webix.ui.Baseview;
	function getMasterValue():Dynamic;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getSuggestion():String;
	function getTopParentView():webix.ui.Baseview;
	function getValue():haxe.extern.EitherType<String, Float>;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function linkInput(input:HTMLElement):Void;
	function mapEvent(map:Dynamic):Void;
	function resize():Void;
	function resizeChildren():Void;
	function setMasterValue(value:Dynamic):Void;
	function setPosition(x:Float, y:Float):Void;
	function setValue(value:haxe.extern.EitherType<String, Float>):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : SuggestConfig;
	var name : String;
};
typedef MultisuggestConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autofit : Bool;
	@:optional
	var autofocus : Bool;
	@:optional
	var body : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var borderless : Bool;
	@:optional
	var buttonText : String;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var filter : WebixCallback;
	@:optional
	var fitMaster : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var head : Dynamic;
	@:optional
	var headHeight : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var input : Dynamic;
	@:optional
	var keyPressTimeout : Float;
	@:optional
	var left : Float;
	@:optional
	var master : webix.ui.Baseview;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var modal : Bool;
	@:optional
	var move : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var relative : String;
	@:optional
	var separator : String;
	@:optional
	var template : haxe.extern.EitherType<String, WebixTemplate>;
	@:optional
	var textValue : String;
	@:optional
	var top : Float;
	@:optional
	var type : String;
	@:optional
	var width : Float;
	@:optional
	var zIndex : Float;
};
typedef Multisuggest = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function close():Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getBody():Dynamic;
	function getButton():webix.ui.Baseview;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getHead():Dynamic;
	function getItemText(id:String):String;
	function getList():webix.ui.Baseview;
	function getMasterValue():Dynamic;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getSuggestion():String;
	function getTopParentView():webix.ui.Baseview;
	function getValue():haxe.extern.EitherType<String, Float>;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function linkInput(input:HTMLElement):Void;
	function mapEvent(map:Dynamic):Void;
	function resize():Void;
	function resizeChildren():Void;
	function setMasterValue(value:Dynamic):Void;
	function setPosition(x:Float, y:Float):Void;
	function setValue(value:haxe.extern.EitherType<String, Float>):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : MultisuggestConfig;
	var name : String;
};
typedef DatasuggestConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autofit : Bool;
	@:optional
	var autofocus : Bool;
	@:optional
	var body : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var filter : WebixCallback;
	@:optional
	var fitMaster : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var head : Dynamic;
	@:optional
	var headHeight : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var input : Dynamic;
	@:optional
	var keyPressTimeout : Float;
	@:optional
	var left : Float;
	@:optional
	var master : webix.ui.Baseview;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var modal : Bool;
	@:optional
	var move : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var relative : String;
	@:optional
	var template : haxe.extern.EitherType<String, WebixTemplate>;
	@:optional
	var textValue : String;
	@:optional
	var top : Float;
	@:optional
	var type : String;
	@:optional
	var width : Float;
	@:optional
	var zIndex : Float;
};
typedef Datasuggest = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function close():Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getBody():Dynamic;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getHead():Dynamic;
	function getItemText(id:String):String;
	function getList():webix.ui.Baseview;
	function getMasterValue():Dynamic;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getSuggestion():String;
	function getTopParentView():webix.ui.Baseview;
	function getValue():haxe.extern.EitherType<String, Float>;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function linkInput(input:HTMLElement):Void;
	function mapEvent(map:Dynamic):Void;
	function resize():Void;
	function resizeChildren():Void;
	function setMasterValue(value:Dynamic):Void;
	function setPosition(x:Float, y:Float):Void;
	function setValue(value:haxe.extern.EitherType<String, Float>):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : DatasuggestConfig;
	var name : String;
};
typedef GridsuggestConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autofit : Bool;
	@:optional
	var autofocus : Bool;
	@:optional
	var body : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var filter : WebixCallback;
	@:optional
	var fitMaster : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var head : Dynamic;
	@:optional
	var headHeight : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var input : Dynamic;
	@:optional
	var keyPressTimeout : Float;
	@:optional
	var left : Float;
	@:optional
	var master : webix.ui.Baseview;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var modal : Bool;
	@:optional
	var move : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var relative : String;
	@:optional
	var template : haxe.extern.EitherType<String, WebixTemplate>;
	@:optional
	var textValue : String;
	@:optional
	var top : Float;
	@:optional
	var type : String;
	@:optional
	var width : Float;
	@:optional
	var zIndex : Float;
};
typedef Gridsuggest = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function close():Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getBody():Dynamic;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getHead():Dynamic;
	function getItemText(id:String):String;
	function getList():webix.ui.Baseview;
	function getMasterValue():Dynamic;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getSuggestion():String;
	function getTopParentView():webix.ui.Baseview;
	function getValue():haxe.extern.EitherType<String, Float>;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function linkInput(input:HTMLElement):Void;
	function mapEvent(map:Dynamic):Void;
	function resize():Void;
	function resizeChildren():Void;
	function setMasterValue(value:Dynamic):Void;
	function setPosition(x:Float, y:Float):Void;
	function setValue(value:haxe.extern.EitherType<String, Float>):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : GridsuggestConfig;
	var name : String;
};
typedef TabbarConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var bottomOffset : Float;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var moreTemplate : WebixCallback;
	@:optional
	var multiview : Bool;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var options : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var popupTemplate : WebixCallback;
	@:optional
	var popupWidth : Float;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var tabMargin : Float;
	@:optional
	var tabMinWidth : Float;
	@:optional
	var tabMoreWidth : Float;
	@:optional
	var tabOffset : Float;
	@:optional
	var tabbarPopup : webix.ui.Baseview;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var topOffset : Float;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
	@:optional
	var yCount : Float;
};
typedef Tabbar = {
	>webix.ui.Baseview,
	function addOption(id:String, value:Dynamic, ?show:Bool, ?index:Float):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getPopup():webix.ui.Baseview;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function optionIndex(ID:String):Float;
	function refresh():Void;
	function removeOption(id:String):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : TabbarConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef TabviewConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var cells : Array<Dynamic>;
	@:optional
	var cols : Array<Dynamic>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var isolate : Bool;
	@:optional
	var margin : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var multiview : Dynamic;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Float;
	@:optional
	var paddingX : Float;
	@:optional
	var paddingY : Float;
	@:optional
	var responsive : String;
	@:optional
	var rows : Array<Dynamic>;
	@:optional
	var tabbar : Dynamic;
	@:optional
	var type : String;
	@:optional
	var visibleBatch : String;
	@:optional
	var width : Float;
};
typedef Tabview = {
	>webix.ui.Baseview,
	function addView(view:Dynamic, ?index:Float):webix.ui.Baseview;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getMultiview():Dynamic;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTabbar():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function index(obj:Dynamic):Float;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function reconstruct():Void;
	function removeView(id:String):Void;
	function resize():Void;
	function resizeChildren():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showBatch(name:String):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : TabviewConfig;
	var name : String;
};
typedef TemplateConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autoheight : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var src : String;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var type : String;
	@:optional
	var url : String;
	@:optional
	var width : Float;
};
typedef Template = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getScrollState():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function mapEvent(map:Dynamic):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function setContent(node:Dynamic):Void;
	function setHTML(html:String):Void;
	function setValues(obj:Dynamic, ?update:Bool):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : TemplateConfig;
	var name : String;
};
typedef TextConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Text = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : TextConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef TextareaConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var attributes : { };
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputPadding : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var popup : Dynamic;
	@:optional
	var readonly : Bool;
	@:optional
	var relatedAction : String;
	@:optional
	var relatedView : String;
	@:optional
	var required : Bool;
	@:optional
	var suggest : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var validate : Bool;
	@:optional
	var validateEvent : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Textarea = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $render : WebixCallback;
	var $renderIcon : WebixCallback;
	function $renderInput(obj:Dynamic, html:String, id:String):String;
	function $renderLabel(config:Dynamic, id:String):String;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : TextareaConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef ToggleConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : Dynamic;
	@:optional
	var popup : Dynamic;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Toggle = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function toggle():Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ToggleConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef ToolbarConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var cols : Array<Dynamic>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var elements : Array<Dynamic>;
	@:optional
	var elementsConfig : { };
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var isolate : Bool;
	@:optional
	var margin : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Float;
	@:optional
	var paddingX : Float;
	@:optional
	var paddingY : Float;
	@:optional
	var responsive : String;
	@:optional
	var rows : Array<Dynamic>;
	@:optional
	var rules : Dynamic;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var type : String;
	@:optional
	var url : String;
	@:optional
	var visibleBatch : String;
	@:optional
	var width : Float;
};
typedef Toolbar = {
	>webix.ui.Baseview,
	function addView(view:Dynamic, ?index:Float):webix.ui.Baseview;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clear():Void;
	function clearValidation():Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function focus(item:String):Void;
	function getChildViews():Array<Dynamic>;
	function getCleanValues():Dynamic;
	function getDirtyValues():Dynamic;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getScrollState():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValues(?details:Dynamic):Array<Dynamic>;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function index(obj:Dynamic):Float;
	function isDirty():Bool;
	function isEnabled():Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function mapEvent(map:Dynamic):Void;
	function parse(data:Dynamic, type:String):Void;
	function reconstruct():Void;
	function refresh():Void;
	function removeView(id:String):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function resizeChildren():Void;
	function scrollTo(x:Float, y:Float):Void;
	function setDirty(?mark:Bool):Void;
	function setValues(values:Dynamic, ?update:Bool):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showBatch(name:String):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function validate():Bool;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : ToolbarConfig;
	var name : String;
};
typedef TooltipConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var dx : Float;
	@:optional
	var dy : Float;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var on : Dynamic;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var width : Float;
};
typedef Tooltip = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : TooltipConfig;
	var name : String;
	var type : { };
};
typedef TreeConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var click : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var clipboard : haxe.extern.EitherType<Bool, String>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var drag : Bool;
	@:optional
	var dragscroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var filterMode : Dynamic;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var navigation : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var pager : Dynamic;
	@:optional
	var ready : WebixCallback;
	@:optional
	var removeMissed : Bool;
	@:optional
	var rules : Dynamic;
	@:optional
	var save : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var select : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var templateCopy : WebixCallback;
	@:optional
	var threeState : Bool;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var url : String;
	@:optional
	var width : Float;
};
typedef Tree = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function checkAll(?id:String):Void;
	function checkItem(id:String):Void;
	function clearAll():Void;
	function clearCss(css:String, ?silent:Bool):Void;
	function clearValidation():Void;
	function close(id:String):Void;
	function closeAll():Void;
	function copy(sid:String, tindex:Float, ?tobj:webix.ui.Baseview, ?details:Dynamic):String;
	function count():Float;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function exists(id:String):Bool;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function getBranchIndex(id:String, ?parent:String):Float;
	function getChecked():Array<Dynamic>;
	function getChildViews():Array<Dynamic>;
	function getFirstChildId(id:String):String;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getLastId():String;
	function getNextId(id:String, step:Float):String;
	function getNextSiblingId(id:Dynamic):String;
	function getNode():Dynamic;
	function getOpenItems():Array<Dynamic>;
	function getParentId(id:String):String;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getPrevSiblingId(id:Dynamic):String;
	function getScrollState():Dynamic;
	function getSelectedId(as_array:Bool):haxe.extern.EitherType<String, Array<Dynamic>>;
	function getSelectedItem(?as_array:Bool):Dynamic;
	function getState():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function group(config:Dynamic, mode:Bool):Void;
	function hasCss(id:String, css:String):Bool;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isBranch(id:String):Bool;
	function isBranchOpen(id:String):Bool;
	function isChecked(id:String):Bool;
	function isEnabled():Bool;
	function isSelected(id:String):Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadBranch(id:String, callback:WebixCallback, url:String):Void;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function move(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):String;
	function moveSelection(direction:String):Void;
	function open(id:String):Void;
	function openAll():Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function remove(id:String):Void;
	function removeCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function select(id:haxe.extern.EitherType<String, Array<Dynamic>>, preserve:Bool):Void;
	function selectAll(?from:String, ?to:String):Void;
	function serialize():Dynamic;
	function setState(state:Dynamic):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showItem(id:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function uncheckAll(?id:String):Void;
	function uncheckItem(id:String):Void;
	function ungroup(mode:Bool):Void;
	function unselect(?id:String):Void;
	function unselectAll():Void;
	function updateItem(id:String, data:Dynamic):Void;
	function validate(?id:String):Bool;
	function $drag(source:HTMLElement, ev:Event):String;
	var $dragHTML : WebixCallback;
	function $dragIn(source:HTMLElement, target:HTMLElement, ev:Event):HTMLElement;
	function $dragMark(context:Dynamic, ev:Event):Bool;
	function $dragOut(source:HTMLElement, old_target:HTMLElement, new_target:HTMLElement, ev:Event):Void;
	function $drop(source:HTMLElement, target:HTMLElement, ev:Dynamic):Void;
	var $dropAllow : WebixCallback;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : TreeConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var type : { };
	var types : { };
};
typedef TreetableConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autoConfig : Bool;
	@:optional
	var autoheight : Bool;
	@:optional
	var autowidth : Bool;
	@:optional
	var blockselect : Bool;
	@:optional
	var borderless : Bool;
	@:optional
	var checkboxRefresh : Bool;
	@:optional
	var clipboard : haxe.extern.EitherType<Bool, String>;
	@:optional
	var columnWidth : Float;
	@:optional
	var columns : Array<Dynamic>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datafetch : Float;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var delimiter : Dynamic;
	@:optional
	var disabled : Bool;
	@:optional
	var drag : haxe.extern.EitherType<Bool, String>;
	@:optional
	var dragColumn : haxe.extern.EitherType<Bool, String>;
	@:optional
	var dragscroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var editMath : Bool;
	@:optional
	var editValue : String;
	@:optional
	var editable : Bool;
	@:optional
	var editaction : String;
	@:optional
	var externalData : WebixCallback;
	@:optional
	var filterMode : Dynamic;
	@:optional
	var fixedRowHeight : Bool;
	@:optional
	var footer : Bool;
	@:optional
	var form : String;
	@:optional
	var gravity : Float;
	@:optional
	var header : Bool;
	@:optional
	var headerRowHeight : Float;
	@:optional
	var headermenu : Dynamic;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hover : String;
	@:optional
	var id : String;
	@:optional
	var leftSplit : Float;
	@:optional
	var liveValidation : Bool;
	@:optional
	var loadahead : Float;
	@:optional
	var math : Bool;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minColumnHeight : Float;
	@:optional
	var minColumnWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var multiselect : Bool;
	@:optional
	var navigation : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var pager : Dynamic;
	@:optional
	var prerender : Bool;
	@:optional
	var ready : WebixCallback;
	@:optional
	var removeMissed : Bool;
	@:optional
	var resizeColumn : Bool;
	@:optional
	var resizeRow : Bool;
	@:optional
	var rightSplit : Float;
	@:optional
	var rowHeight : Float;
	@:optional
	var rowLineHeight : Float;
	@:optional
	var rules : Dynamic;
	@:optional
	var save : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var scroll : Bool;
	@:optional
	var scrollAlignY : Bool;
	@:optional
	var scrollX : Bool;
	@:optional
	var scrollY : Bool;
	@:optional
	var select : haxe.extern.EitherType<Bool, String>;
	@:optional
	var spans : Array<Dynamic>;
	@:optional
	var threeState : Bool;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var url : String;
	@:optional
	var width : Float;
	@:optional
	var yCount : Float;
};
typedef Treetable = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addCellCss(id:String, name:String, css:String):Void;
	function addCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function addRowCss(id:String, css:String):Void;
	function adjust():Void;
	function adjustColumn(id:haxe.extern.EitherType<String, Float>, ?header:String):Void;
	function adjustRowHeight(columnId:String, silent:Bool):Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function checkAll(?id:String):Void;
	function checkItem(id:String):Void;
	function clearAll():Void;
	function clearCss(css:String, ?silent:Bool):Void;
	function clearValidation():Void;
	function close(id:String):Void;
	function closeAll():Void;
	function collectValues(id:String):Array<Dynamic>;
	function columnId(index:Float):String;
	function copy(sid:String, tindex:Float, ?tobj:webix.ui.Baseview, ?details:Dynamic):String;
	function count():Float;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function eachColumn(handler:WebixCallback, ?all:Bool):Void;
	function eachRow(handler:WebixCallback, ?all:Bool):Void;
	function edit(id:Dynamic):Void;
	function editCancel():Void;
	function editCell(row:String, col:String, ?preserve:Bool, ?show:Bool):Void;
	function editColumn(id:String):Void;
	function editNext():Bool;
	function editRow(id:String):Void;
	function editStop():Void;
	function enable():Void;
	function exists(id:String):Bool;
	function exportToExcel(?url:String):Void;
	function exportToPDF(?url:String):Void;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function filterByAll():Void;
	function find(criterion:WebixCallback, ?first:Bool):Dynamic;
	function focusEditor():Void;
	function getBranchIndex(id:String, ?parent:String):Float;
	function getChecked():Array<Dynamic>;
	function getChildViews():Array<Dynamic>;
	function getColumnConfig(id:String):Dynamic;
	function getColumnIndex(id:String):Float;
	function getEditState():Dynamic;
	function getEditor(?row:Dynamic, ?column:haxe.extern.EitherType<String, Float>):Dynamic;
	function getEditorValue():String;
	function getFilter(columnID:String):Dynamic;
	function getFirstChildId(id:String):String;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getHeaderContent(id:String):{ };
	function getHeaderNode(columnId:String, ?rowIndex:Float):HTMLElement;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getLastId():String;
	function getNextId(id:String, step:Float):String;
	function getNextSiblingId(id:Dynamic):String;
	function getNode():Dynamic;
	function getOpenItems():Array<Dynamic>;
	function getPage():Float;
	function getPager():Dynamic;
	function getParentId(id:String):String;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getPrevSiblingId(id:Dynamic):String;
	function getScrollState():Dynamic;
	function getSelectedId(?asArray:Bool, ?asString:Bool):Dynamic;
	function getSelectedItem(?mode:Bool):Void;
	function getState():Dynamic;
	function getText(rowid:String, colid:String):String;
	function getTopParentView():webix.ui.Baseview;
	function getVisibleCount():Float;
	function group(config:Dynamic, mode:Bool):Void;
	function hasCss(id:String, css:String):Bool;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function hideColumn(id:String):Void;
	function hideOverlay():Void;
	function isBranch(id:String):Bool;
	function isBranchOpen(id:String):Bool;
	function isChecked(id:String):Bool;
	function isColumnVisible(id:String):Bool;
	function isEnabled():Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadBranch(id:String, callback:WebixCallback, url:String):Void;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(node:haxe.extern.EitherType<HTMLElement, Event>):Dynamic;
	function mapCells(startrow:Float, startcol:String, numrows:Float, numcols:Float, callback:WebixCallback):Void;
	function mapEvent(map:Dynamic):Void;
	function markSorting(column_id:String, dir:String):Void;
	function move(sid:String, tindex:Float, ?tobj:webix.ui.Baseview, ?details:Dynamic):String;
	function moveBottom(id:String):Void;
	function moveColumn(id:String, index:Float):Void;
	function moveDown(id:String, step:Float):Void;
	function moveSelection(direction:String):Void;
	function moveTop(id:String):Void;
	function moveUp(id:String, step:Float):Void;
	function open(id:String):Void;
	function openAll():Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function refreshColumns(?config:Array<Dynamic>):Void;
	function refreshFilter(id:String):Void;
	function refreshHeaderContent():Void;
	function registerFilter(node:HTMLElement, config:Dynamic, obj:Dynamic):Void;
	function remove(id:String):Void;
	function removeCellCss(id:String, name:String, css_name:String):Void;
	function removeCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function removeRowCss(id:String, css_name:String):Void;
	function render(id:String, data:Dynamic, operation:String):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function serialize():Dynamic;
	function setColumnWidth(id:String, width:Float):Void;
	function setPage(page:Float):Void;
	function setRowHeight(id:String, height:Float):Void;
	function setState(state:Dynamic):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showCell(row:String, column:String):Void;
	function showColumn(id:String):Void;
	function showColumnBatch(batch:haxe.extern.EitherType<String, Float>):Void;
	function showItem(id:String):Void;
	function showItemByIndex(index:Float):Void;
	function showOverlay(message:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function uncheckAll(?id:String):Void;
	function uncheckItem(id:String):Void;
	function ungroup(mode:Bool):Void;
	function updateItem(id:String, data:Dynamic):Void;
	function validate(?id:String):Bool;
	function validateEditor(?id:String):Bool;
	function $drag(source:HTMLElement, ev:Event):String;
	var $dragHTML : WebixCallback;
	function $dragIn(source:HTMLElement, target:HTMLElement, ev:Event):HTMLElement;
	function $dragMark(context:Dynamic, ev:Event):Bool;
	function $dragOut(source:HTMLElement, old_target:HTMLElement, new_target:HTMLElement, ev:Event):Void;
	function $drop(source:HTMLElement, target:HTMLElement, ev:Dynamic):Void;
	var $dropAllow : WebixCallback;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : TreetableConfig;
	var headerContent : Dynamic;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var waitData : PromisedData;
};
typedef UnitlistConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autoheight : Bool;
	@:optional
	var autowidth : Bool;
	@:optional
	var borderless : Bool;
	@:optional
	var click : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var clipboard : haxe.extern.EitherType<Bool, String>;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
	@:optional
	var dataFeed : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var datathrottle : Float;
	@:optional
	var datatype : String;
	@:optional
	var disabled : Bool;
	@:optional
	var drag : haxe.extern.EitherType<Bool, String>;
	@:optional
	var dragscroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var externalData : WebixCallback;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var layout : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var mouseEventDelay : Float;
	@:optional
	var navigation : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var onClick : { };
	@:optional
	var onContext : { };
	@:optional
	var onDblClick : WebixCallback;
	@:optional
	var onMouseMove : WebixCallback;
	@:optional
	var pager : Dynamic;
	@:optional
	var ready : WebixCallback;
	@:optional
	var removeMissed : Bool;
	@:optional
	var rules : Dynamic;
	@:optional
	var save : String;
	@:optional
	var scheme : Dynamic;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, String>;
	@:optional
	var scrollSpeed : String;
	@:optional
	var select : haxe.extern.EitherType<Bool, String>;
	@:optional
	var sort : WebixCallback;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var templateCopy : WebixCallback;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var uniteBy : WebixCallback;
	@:optional
	var url : String;
	@:optional
	var width : Float;
	@:optional
	var xCount : Float;
	@:optional
	var yCount : Float;
};
typedef Unitlist = {
	>webix.ui.Baseview,
	function add(obj:Dynamic, ?index:Float):String;
	function addCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function clearAll():Void;
	function clearCss(css:String, ?silent:Bool):Void;
	function clearValidation():Void;
	function copy(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):Void;
	function count():Float;
	function customize(obj:Dynamic):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function exists(id:String):Bool;
	function filter(text:haxe.extern.EitherType<String, haxe.extern.EitherType<WebixTemplate, WebixCallback>>, value:String, preserve:Bool):Void;
	function getChildViews():Array<Dynamic>;
	function getFirstId():String;
	function getFormView():webix.ui.Baseview;
	function getIdByIndex(index:Float):String;
	function getIndexById(id:String):Float;
	function getItem(id:String):Dynamic;
	function getItemNode(id:String):Void;
	function getLastId():String;
	function getNextId(id:String, step:Float):String;
	function getNode():Dynamic;
	function getPage():Float;
	function getPager():Dynamic;
	function getParentView():Dynamic;
	function getPrevId(id:String, step:Float):String;
	function getScrollState():Dynamic;
	function getSelectedId(as_array:Bool):haxe.extern.EitherType<String, Array<Dynamic>>;
	function getSelectedItem(?as_array:Bool):Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getUnitList(name:String):Array<Dynamic>;
	function getUnits():Array<Dynamic>;
	function getVisibleCount():Float;
	function hasCss(id:String, css:String):Bool;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isSelected(id:String):Bool;
	function isVisible():Bool;
	function load(url:String, ?type:String, ?callback:WebixCallback):PromisedData;
	function loadNext(count:Float, start:Float, callback:WebixCallback, url:String, now:Bool):Void;
	function locate(e:Event):String;
	function mapEvent(map:Dynamic):Void;
	function move(sid:String, tindex:Float, ?tobj:Dynamic, ?details:Dynamic):String;
	function moveBottom(id:String):Void;
	function moveDown(id:String, step:Float):Void;
	function moveSelection(direction:String):Void;
	function moveTop(id:String):Void;
	function moveUp(id:String, step:Float):Void;
	function parse(data:Dynamic, type:String):Void;
	function refresh(?id:String):Void;
	function remove(id:String):Void;
	function removeCss(id:haxe.extern.EitherType<String, Float>, css:String, ?silent:Bool):Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function scrollTo(x:Float, y:Float):Void;
	function select(id:haxe.extern.EitherType<String, Array<Dynamic>>, preserve:Bool):Void;
	function selectAll(?from:String, ?to:String):Void;
	function serialize():Dynamic;
	function setPage(page:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function showItem(id:String):Void;
	function sort(by:String, ?dir:String, ?as:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function unselect(?id:String):Void;
	function unselectAll():Void;
	function updateItem(id:String, data:Dynamic):Void;
	function validate(?id:String):Bool;
	function $drag(source:HTMLElement, ev:Event):String;
	var $dragHTML : WebixCallback;
	function $dragIn(source:HTMLElement, target:HTMLElement, ev:Event):HTMLElement;
	function $dragMark(context:Dynamic, ev:Event):Bool;
	function $dragOut(source:HTMLElement, old_target:HTMLElement, new_target:HTMLElement, ev:Event):Void;
	function $drop(source:HTMLElement, target:HTMLElement, ev:Dynamic):Void;
	var $dropAllow : WebixCallback;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : UnitlistConfig;
	var name : String;
	var on_click : WebixCallback;
	var on_context : { };
	var on_dblclick : WebixCallback;
	var on_mouse_move : WebixCallback;
	var type : { };
	var types : { };
};
typedef UploaderConfig = {
	@:optional
	var align : String;
	@:optional
	var animate : Dynamic;
	@:optional
	var apiOnly : Bool;
	@:optional
	var autosend : Bool;
	@:optional
	var borderless : Bool;
	@:optional
	var click : WebixCallback;
	@:optional
	var container : HTMLElement;
	@:optional
	var content : haxe.extern.EitherType<String, HTMLElement>;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var formData : { };
	function getValue():String;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hotkey : String;
	@:optional
	var id : String;
	@:optional
	var inputHeight : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var label : String;
	@:optional
	var labelPosition : String;
	@:optional
	var link : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var multiple : Bool;
	@:optional
	var name : String;
	@:optional
	var on : Dynamic;
	@:optional
	var placeholder : Dynamic;
	@:optional
	var popup : Dynamic;
	@:optional
	var tabFocus : Bool;
	@:optional
	var template : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var tooltip : String;
	@:optional
	var type : String;
	@:optional
	var value : String;
	@:optional
	var width : Float;
};
typedef Uploader = {
	>webix.ui.Baseview,
	function addDropZone(element:HTMLElement):Void;
	function addFile(name:String, size:Float, ?type:String):Void;
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function blur():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function fileDialog(?content:Dynamic):Void;
	function focus():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getInputNode():HTMLElement;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getValue():String;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isUploaded():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function refresh():Void;
	function render(id:String, data:Dynamic, type:String):Void;
	function resize():Void;
	function send(id:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, WebixCallback>>, details:Dynamic):Void;
	function setValue(value:String):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function stopUpload(id:String):Void;
	function sync(source:Dynamic, filter:WebixCallback, silent:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	var $cssName : String;
	function $getSize():Array<Dynamic>;
	function $getValue():String;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	function $setValue(value:String):Void;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : UploaderConfig;
	var name : String;
	var on_click : WebixCallback;
	var touchable : Dynamic;
};
typedef VideoConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var controls : Bool;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var src : Dynamic;
	@:optional
	var width : Float;
};
typedef Video = {
	>webix.ui.Baseview,
	function adjust():Void;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function disable():Void;
	function enable():Void;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function getVideo():Void;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function resize():Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : VideoConfig;
	var name : String;
};
typedef WindowConfig = {
	@:optional
	var animate : Dynamic;
	@:optional
	var autofit : Bool;
	@:optional
	var autofocus : Bool;
	@:optional
	var body : haxe.extern.EitherType<String, webix.ui.Baseview>;
	@:optional
	var borderless : Bool;
	@:optional
	var container : HTMLElement;
	@:optional
	var css : String;
	@:optional
	var disabled : Bool;
	@:optional
	var fullscreen : Bool;
	@:optional
	var gravity : Float;
	@:optional
	var head : Dynamic;
	@:optional
	var headHeight : Float;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var id : String;
	@:optional
	var left : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var modal : Bool;
	@:optional
	var move : Bool;
	@:optional
	var on : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : haxe.extern.EitherType<String, WebixCallback>;
	@:optional
	var relative : String;
	@:optional
	var top : Float;
	@:optional
	var width : Float;
	@:optional
	var zIndex : Float;
};
typedef Window = {
	>webix.ui.Baseview,
	function adjust():Void;
	function attachEvent(type:String, functor:WebixCallback, ?id:String):String;
	function bind(target:Dynamic, ?rule:WebixCallback, ?format:String):Void;
	function blockEvent():Void;
	function callEvent(name:String, params:Array<Dynamic>):Bool;
	function close():Void;
	function define(property:String, value:Dynamic):Void;
	function destructor():Void;
	function detachEvent(id:String):Void;
	function disable():Void;
	function enable():Void;
	function getBody():Dynamic;
	function getChildViews():Array<Dynamic>;
	function getFormView():webix.ui.Baseview;
	function getHead():Dynamic;
	function getNode():Dynamic;
	function getParentView():Dynamic;
	function getTopParentView():webix.ui.Baseview;
	function hasEvent(name:String):Bool;
	function hide():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function mapEvent(map:Dynamic):Void;
	function resize():Void;
	function resizeChildren():Void;
	function setPosition(x:Float, y:Float):Void;
	function show(?force:Bool, ?animation:Bool):Void;
	function unbind():Void;
	function unblockEvent():Void;
	function $getSize():Array<Dynamic>;
	var $height : Float;
	var $scope : Dynamic;
	function $setSize(x:Float, y:Float):Bool;
	var $skin : Dynamic;
	var $view : HTMLElement;
	var $width : Float;
	var config : WindowConfig;
	var name : String;
};
extern class UiTopLevel {
	static function delay(config:Dynamic):Void;
	static function fullScreen():Void;
	static function hasMethod(name:String, method_name:String):Bool;
	static function resize():Void;
	static function zIndex():Float;
	static var scrollSize : Float;
	static var zIndexBase : Float;
	static function $$(id:haxe.extern.EitherType<String, haxe.extern.EitherType<Event, HTMLElement>>):webix.ui.Baseview;
}
