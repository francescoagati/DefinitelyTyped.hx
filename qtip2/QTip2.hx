typedef Content = {
	@:optional
	var title : haxe.extern.EitherType<Title, { var text : Title; }>;
	@:optional
	var text : Text;
	@:optional
	var attr : String;
	@:optional
	var button : haxe.extern.EitherType<String, haxe.extern.EitherType<JQuery, Bool>>;
};
typedef PositionAdjust = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var mouse : Bool;
	@:optional
	var resize : Bool;
	@:optional
	var scroll : Bool;
	@:optional
	var method : String;
};
typedef Position = {
	@:optional
	var my : haxe.extern.EitherType<String, Bool>;
	@:optional
	var at : haxe.extern.EitherType<String, Bool>;
	@:optional
	var target : haxe.extern.EitherType<Target, Bool>;
	@:optional
	var container : haxe.extern.EitherType<JQuery, Bool>;
	@:optional
	var viewport : haxe.extern.EitherType<JQuery, Bool>;
	@:optional
	var effect : haxe.extern.EitherType<Bool, Api -> Dynamic -> Dynamic -> Void>;
	@:optional
	var adjust : PositionAdjust;
};
typedef Show = {
	@:optional
	var target : haxe.extern.EitherType<JQuery, Bool>;
	@:optional
	var event : haxe.extern.EitherType<String, Bool>;
	@:optional
	var delay : Float;
	@:optional
	var solo : haxe.extern.EitherType<JQuery, haxe.extern.EitherType<String, Bool>>;
	@:optional
	var ready : Bool;
	@:optional
	var effect : haxe.extern.EitherType<Bool, Dynamic -> Void>;
	@:optional
	var modal : haxe.extern.EitherType<Bool, Modal>;
};
typedef Modal = {
	@:optional
	var on : Bool;
	@:optional
	var blur : Bool;
	@:optional
	var escape : Bool;
	@:optional
	var stealfocus : Bool;
	@:optional
	var effect : haxe.extern.EitherType<Bool, Dynamic -> Void>;
};
typedef Hide = {
	@:optional
	var target : haxe.extern.EitherType<JQuery, Bool>;
	@:optional
	var event : haxe.extern.EitherType<String, Bool>;
	@:optional
	var delay : Float;
	@:optional
	var inactive : haxe.extern.EitherType<Float, Bool>;
	@:optional
	var fixed : Bool;
	@:optional
	var leave : haxe.extern.EitherType<String, Bool>;
	@:optional
	var distance : haxe.extern.EitherType<Float, Bool>;
	@:optional
	var effect : haxe.extern.EitherType<Bool, Dynamic -> Void>;
};
typedef Style = {
	@:optional
	var classes : haxe.extern.EitherType<String, Bool>;
	@:optional
	var def : Bool;
	@:optional
	var widget : Bool;
	@:optional
	var width : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>>;
	@:optional
	var height : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>>;
	@:optional
	var tip : haxe.extern.EitherType<String, haxe.extern.EitherType<Bool, Tip>>;
};
typedef Tip = {
	@:optional
	var corner : haxe.extern.EitherType<String, Bool>;
	@:optional
	var mimic : haxe.extern.EitherType<String, Bool>;
	@:optional
	var border : haxe.extern.EitherType<Float, Bool>;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var offset : Float;
};
typedef Events = {
	@:optional
	var render : EventApiFunc;
	@:optional
	var show : EventApiFunc;
	@:optional
	var hide : EventApiFunc;
	@:optional
	var toggle : EventApiFunc;
	@:optional
	var visible : EventApiFunc;
	@:optional
	var hidden : EventApiFunc;
	@:optional
	var move : EventApiFunc;
	@:optional
	var focus : EventApiFunc;
	@:optional
	var blur : EventApiFunc;
};
typedef QTipOptions = {
	@:optional
	var id : haxe.extern.EitherType<String, Bool>;
	@:optional
	var prerender : Bool;
	@:optional
	var overwrite : Bool;
	@:optional
	var suppress : Bool;
	@:optional
	var metadata : Dynamic;
	@:optional
	var content : haxe.extern.EitherType<Text, Content>;
	@:optional
	var position : haxe.extern.EitherType<String, Position>;
	@:optional
	var style : haxe.extern.EitherType<String, Style>;
	@:optional
	var show : haxe.extern.EitherType<String, haxe.extern.EitherType<Bool, haxe.extern.EitherType<JQuery, Show>>>;
	@:optional
	var hide : haxe.extern.EitherType<String, haxe.extern.EitherType<JQuery, Hide>>;
	@:optional
	var events : Events;
};
typedef Api = {
	@:overload(function(propertyName:Prerender):Bool { })
	@:overload(function(propertyName:Overwrite):Bool { })
	@:overload(function(propertyName:Suppress):Bool { })
	@:overload(function(propertyName:Metadata):Dynamic { })
	@:overload(function(propertyName:Content):Content { })
	@:overload(function(propertyName:Content.text):Text { })
	@:overload(function(propertyName:Content.attr):String { })
	@:overload(function(propertyName:Content.title):Title { })
	@:overload(function(propertyName:Content.button):haxe.extern.EitherType<String, haxe.extern.EitherType<JQuery, Bool>> { })
	@:overload(function(propertyName:Position):Position { })
	@:overload(function(propertyName:Position.my):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(propertyName:Position.at):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(propertyName:Position.target):haxe.extern.EitherType<Target, Bool> { })
	@:overload(function(propertyName:Position.container):haxe.extern.EitherType<JQuery, Bool> { })
	@:overload(function(propertyName:Position.viewport):haxe.extern.EitherType<JQuery, Bool> { })
	@:overload(function(propertyName:Position.effect):haxe.extern.EitherType<Bool, Dynamic -> Dynamic -> Dynamic -> Void> { })
	@:overload(function(propertyName:Position.adjust):PositionAdjust { })
	@:overload(function(propertyName:Show):Show { })
	@:overload(function(propertyName:Show.target):haxe.extern.EitherType<JQuery, Bool> { })
	@:overload(function(propertyName:Show.event):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(propertyName:Show.delay):Float { })
	@:overload(function(propertyName:Show.solo):haxe.extern.EitherType<JQuery, haxe.extern.EitherType<String, Bool>> { })
	@:overload(function(propertyName:Show.ready):Bool { })
	@:overload(function(propertyName:Show.effect):haxe.extern.EitherType<Bool, Dynamic -> Void> { })
	@:overload(function(propertyName:Show.modal):haxe.extern.EitherType<Bool, Modal> { })
	@:overload(function(propertyName:Hide):Hide { })
	@:overload(function(propertyName:Hide.target):haxe.extern.EitherType<JQuery, Bool> { })
	@:overload(function(propertyName:Hide.event):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(propertyName:Hide.delay):Float { })
	@:overload(function(propertyName:Hide.leave):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(propertyName:Hide.distance):haxe.extern.EitherType<Float, Bool> { })
	@:overload(function(propertyName:Hide.effect):haxe.extern.EitherType<Bool, Dynamic -> Void> { })
	@:overload(function(propertyName:Style):Style { })
	@:overload(function(propertyName:Style.classes):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(propertyName:Style.def):Bool { })
	@:overload(function(propertyName:Style.widget):Bool { })
	@:overload(function(propertyName:Style.width):haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>> { })
	@:overload(function(propertyName:Style.height):haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>> { })
	@:overload(function(propertyName:Style.tip):haxe.extern.EitherType<String, haxe.extern.EitherType<Bool, Tip>> { })
	@:overload(function(propertyName:Events):Events { })
	@:overload(function(propertyName:Events.render):EventApiFunc { })
	@:overload(function(propertyName:Events.show):EventApiFunc { })
	@:overload(function(propertyName:Events.hide):EventApiFunc { })
	@:overload(function(propertyName:Events.toggle):EventApiFunc { })
	@:overload(function(propertyName:Events.visible):EventApiFunc { })
	@:overload(function(propertyName:Events.hidden):EventApiFunc { })
	@:overload(function(propertyName:Events.move):EventApiFunc { })
	@:overload(function(propertyName:Events.focus):EventApiFunc { })
	@:overload(function(propertyName:Events.blur):EventApiFunc { })
	@:overload(function(propertyName:String):Dynamic { })
	function get(propertyName:Id):haxe.extern.EitherType<String, Bool>;
	@:overload(function(propertyName:Id, value:haxe.extern.EitherType<String, Bool>):Api { })
	@:overload(function(propertyName:Prerender, value:Bool):Api { })
	@:overload(function(propertyName:Overwrite, value:Bool):Api { })
	@:overload(function(propertyName:Suppress, value:Bool):Api { })
	@:overload(function(propertyName:Metadata, value:Dynamic):Api { })
	@:overload(function(propertyName:Content, value:haxe.extern.EitherType<Text, Content>):Api { })
	@:overload(function(propertyName:Content.title, value:haxe.extern.EitherType<Title, { var text : Title; }>):Api { })
	@:overload(function(propertyName:Content.text, value:Text):Api { })
	@:overload(function(propertyName:Content.attr, value:String):Api { })
	@:overload(function(propertyName:Content.button, value:haxe.extern.EitherType<String, haxe.extern.EitherType<JQuery, Bool>>):Api { })
	@:overload(function(propertyName:Position, value:Position):Api { })
	@:overload(function(propertyName:Position.my, value:haxe.extern.EitherType<String, Bool>):Api { })
	@:overload(function(propertyName:Position.at, value:haxe.extern.EitherType<String, Bool>):Api { })
	@:overload(function(propertyName:Position.target, value:haxe.extern.EitherType<Target, Bool>):Api { })
	@:overload(function(propertyName:Position.container, value:haxe.extern.EitherType<JQuery, Bool>):Api { })
	@:overload(function(propertyName:Position.viewport, value:haxe.extern.EitherType<JQuery, Bool>):Api { })
	@:overload(function(propertyName:Position.effect, value:haxe.extern.EitherType<Bool, Api -> Dynamic -> Dynamic -> Void>):Api { })
	@:overload(function(propertyName:Position.adjust, value:PositionAdjust):Api { })
	@:overload(function(propertyName:Show, value:Show):Api { })
	@:overload(function(propertyName:Show.target, value:haxe.extern.EitherType<JQuery, Bool>):Api { })
	@:overload(function(propertyName:Show.event, value:haxe.extern.EitherType<String, Bool>):Api { })
	@:overload(function(propertyName:Show.delay, value:Float):Api { })
	@:overload(function(propertyName:Show.solo, value:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<String, Bool>>):Api { })
	@:overload(function(propertyName:Show.ready, value:Bool):Api { })
	@:overload(function(propertyName:Show.effect, value:haxe.extern.EitherType<Bool, Dynamic -> Void>):Api { })
	@:overload(function(propertyName:Show.modal, value:haxe.extern.EitherType<Bool, Modal>):Api { })
	@:overload(function(propertyName:Hide, value:Hide):Api { })
	@:overload(function(propertyName:Hide.target, value:haxe.extern.EitherType<JQuery, Bool>):Api { })
	@:overload(function(propertyName:Hide.event, value:haxe.extern.EitherType<String, Bool>):Api { })
	@:overload(function(propertyName:Hide.inactive, value:haxe.extern.EitherType<Float, Bool>):Api { })
	@:overload(function(propertyName:Hide.fixed, value:Bool):Api { })
	@:overload(function(propertyName:Hide.leave, value:haxe.extern.EitherType<String, Bool>):Api { })
	@:overload(function(propertyName:Hide.distance, value:haxe.extern.EitherType<Float, Bool>):Api { })
	@:overload(function(propertyName:Hide.effect, value:haxe.extern.EitherType<Bool, Dynamic -> Void>):Api { })
	@:overload(function(propertyName:Style, value:Style):Api { })
	@:overload(function(propertyName:Style.classes, value:haxe.extern.EitherType<String, Bool>):Api { })
	@:overload(function(propertyName:Style.def, value:Bool):Api { })
	@:overload(function(propertyName:Style.widget, value:Bool):Api { })
	@:overload(function(propertyName:Style.width, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>>):Api { })
	@:overload(function(propertyName:Style.height, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>>):Api { })
	@:overload(function(propertyName:Style.tip, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Bool, Tip>>):Api { })
	@:overload(function(propertyName:Events, value:Events):Api { })
	@:overload(function(propertyName:Events.render, value:EventApiFunc):Api { })
	@:overload(function(propertyName:Events.show, value:EventApiFunc):Api { })
	@:overload(function(propertyName:Events.hide, value:EventApiFunc):Api { })
	@:overload(function(propertyName:Events.toggle, value:EventApiFunc):Api { })
	@:overload(function(propertyName:Events.visible, value:EventApiFunc):Api { })
	@:overload(function(propertyName:Events.hidden, value:EventApiFunc):Api { })
	@:overload(function(propertyName:Events.move, value:EventApiFunc):Api { })
	@:overload(function(propertyName:Events.focus, value:EventApiFunc):Api { })
	@:overload(function(propertyName:Events.blur, value:EventApiFunc):Api { })
	@:overload(function(propertyName:String, value:Dynamic):Api { })
	function set(properties:QTipOptions):Api;
	function toggle(?state:Bool, ?event:Event):Api;
	function show(?event:Event):Api;
	function hide(?event:Event):Api;
	function disable(?state:Bool):Api;
	function enable():Api;
	function reposition(?event:Event, ?effect:Bool):Api;
	function focus(?event:Event):Api;
	function blur(?event:Event):Api;
	function destroy(?immediate:Bool):Api;
};
typedef JQuery = {
	@:overload(function(methodName:Api):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Id):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(methodName:Option, propertyName:Prerender):Bool { })
	@:overload(function(methodName:Option, propertyName:Overwrite):Bool { })
	@:overload(function(methodName:Option, propertyName:Suppress):Bool { })
	@:overload(function(methodName:Option, propertyName:Metadata):Dynamic { })
	@:overload(function(methodName:Option, propertyName:Content):QTip2.Content { })
	@:overload(function(methodName:Option, propertyName:Content.text):QTip2.Text { })
	@:overload(function(methodName:Option, propertyName:Content.attr):String { })
	@:overload(function(methodName:Option, propertyName:Content.title):QTip2.Title { })
	@:overload(function(methodName:Option, propertyName:Content.button):haxe.extern.EitherType<String, haxe.extern.EitherType<JQuery, Bool>> { })
	@:overload(function(methodName:Option, propertyName:Position):QTip2.Position { })
	@:overload(function(methodName:Option, propertyName:Position.my):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(methodName:Option, propertyName:Position.at):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(methodName:Option, propertyName:Position.target):haxe.extern.EitherType<QTip2.Target, Bool> { })
	@:overload(function(methodName:Option, propertyName:Position.container):haxe.extern.EitherType<JQuery, Bool> { })
	@:overload(function(methodName:Option, propertyName:Position.viewport):haxe.extern.EitherType<JQuery, Bool> { })
	@:overload(function(methodName:Option, propertyName:Position.effect):haxe.extern.EitherType<Bool, QTip2.Api -> Dynamic -> Dynamic -> Void> { })
	@:overload(function(methodName:Option, propertyName:Position.adjust):QTip2.PositionAdjust { })
	@:overload(function(methodName:Option, propertyName:Show):QTip2.Show { })
	@:overload(function(methodName:Option, propertyName:Show.target):haxe.extern.EitherType<JQuery, Bool> { })
	@:overload(function(methodName:Option, propertyName:Show.event):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(methodName:Option, propertyName:Show.delay):Float { })
	@:overload(function(methodName:Option, propertyName:Show.solo):haxe.extern.EitherType<JQuery, haxe.extern.EitherType<String, Bool>> { })
	@:overload(function(methodName:Option, propertyName:Show.ready):Bool { })
	@:overload(function(methodName:Option, propertyName:Show.effect):haxe.extern.EitherType<Bool, Dynamic -> Void> { })
	@:overload(function(methodName:Option, propertyName:Show.modal):haxe.extern.EitherType<Bool, QTip2.Modal> { })
	@:overload(function(methodName:Option, propertyName:Hide):QTip2.Hide { })
	@:overload(function(methodName:Option, propertyName:Hide.target):haxe.extern.EitherType<JQuery, Bool> { })
	@:overload(function(methodName:Option, propertyName:Hide.event):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(methodName:Option, propertyName:Hide.delay):Float { })
	@:overload(function(methodName:Option, propertyName:Hide.leave):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(methodName:Option, propertyName:Hide.distance):haxe.extern.EitherType<Float, Bool> { })
	@:overload(function(methodName:Option, propertyName:Hide.effect):haxe.extern.EitherType<Bool, Dynamic -> Void> { })
	@:overload(function(methodName:Option, propertyName:Style):QTip2.Style { })
	@:overload(function(methodName:Option, propertyName:Style.classes):haxe.extern.EitherType<String, Bool> { })
	@:overload(function(methodName:Option, propertyName:Style.def):Bool { })
	@:overload(function(methodName:Option, propertyName:Style.widget):Bool { })
	@:overload(function(methodName:Option, propertyName:Style.width):haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>> { })
	@:overload(function(methodName:Option, propertyName:Style.height):haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>> { })
	@:overload(function(methodName:Option, propertyName:Style.tip):haxe.extern.EitherType<String, haxe.extern.EitherType<Bool, QTip2.Tip>> { })
	@:overload(function(methodName:Option, propertyName:Events):QTip2.Events { })
	@:overload(function(methodName:Option, propertyName:Events.render):QTip2.EventApiFunc { })
	@:overload(function(methodName:Option, propertyName:Events.show):QTip2.EventApiFunc { })
	@:overload(function(methodName:Option, propertyName:Events.hide):QTip2.EventApiFunc { })
	@:overload(function(methodName:Option, propertyName:Events.toggle):QTip2.EventApiFunc { })
	@:overload(function(methodName:Option, propertyName:Events.visible):QTip2.EventApiFunc { })
	@:overload(function(methodName:Option, propertyName:Events.hidden):QTip2.EventApiFunc { })
	@:overload(function(methodName:Option, propertyName:Events.move):QTip2.EventApiFunc { })
	@:overload(function(methodName:Option, propertyName:Events.focus):QTip2.EventApiFunc { })
	@:overload(function(methodName:Option, propertyName:Events.blur):QTip2.EventApiFunc { })
	@:overload(function(methodName:Option, properties:QTip2.QTipOptions):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Id, value:haxe.extern.EitherType<String, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Prerender, value:Bool):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Overwrite, value:Bool):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Suppress, value:Bool):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Metadata, value:Dynamic):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Content, value:haxe.extern.EitherType<QTip2.Text, QTip2.Content>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Content.title, value:haxe.extern.EitherType<QTip2.Title, { var text : QTip2.Title; }>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Content.text, value:QTip2.Text):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Content.attr, value:String):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Content.button, value:haxe.extern.EitherType<String, haxe.extern.EitherType<JQuery, Bool>>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Position, value:QTip2.Position):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Position.my, value:haxe.extern.EitherType<String, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Position.at, value:haxe.extern.EitherType<String, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Position.target, value:haxe.extern.EitherType<QTip2.Target, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Position.container, value:haxe.extern.EitherType<JQuery, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Position.viewport, value:haxe.extern.EitherType<JQuery, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Position.effect, value:haxe.extern.EitherType<Bool, QTip2.Api -> Dynamic -> Dynamic -> Void>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Position.adjust, value:QTip2.PositionAdjust):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Show, value:QTip2.Show):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Show.target, value:haxe.extern.EitherType<JQuery, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Show.event, value:haxe.extern.EitherType<String, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Show.delay, value:Float):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Show.solo, value:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<String, Bool>>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Show.ready, value:Bool):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Show.effect, value:haxe.extern.EitherType<Bool, Dynamic -> Void>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Show.modal, value:haxe.extern.EitherType<Bool, QTip2.Modal>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Hide, value:QTip2.Hide):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Hide.target, value:haxe.extern.EitherType<JQuery, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Hide.event, value:haxe.extern.EitherType<String, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Hide.inactive, value:haxe.extern.EitherType<Float, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Hide.fixed, value:Bool):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Hide.leave, value:haxe.extern.EitherType<String, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Hide.distance, value:haxe.extern.EitherType<Float, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Hide.effect, value:haxe.extern.EitherType<Bool, Dynamic -> Void>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Style, value:QTip2.Style):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Style.classes, value:haxe.extern.EitherType<String, Bool>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Style.def, value:Bool):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Style.widget, value:Bool):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Style.width, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Style.height, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Style.tip, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Bool, QTip2.Tip>>):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Events, value:QTip2.Events):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Events.render, value:QTip2.EventApiFunc):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Events.show, value:QTip2.EventApiFunc):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Events.hide, value:QTip2.EventApiFunc):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Events.toggle, value:QTip2.EventApiFunc):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Events.visible, value:QTip2.EventApiFunc):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Events.hidden, value:QTip2.EventApiFunc):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Events.move, value:QTip2.EventApiFunc):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Events.focus, value:QTip2.EventApiFunc):QTip2.Api { })
	@:overload(function(methodName:Option, propertyName:Events.blur, value:QTip2.EventApiFunc):QTip2.Api { })
	@:overload(function(methodName:Toggle, ?state:Bool, ?event:Event):JQuery { })
	@:overload(function(methodName:Show, ?event:Event):JQuery { })
	@:overload(function(methodName:Hide, ?event:Event):JQuery { })
	@:overload(function(methodName:Disable, ?state:Bool):JQuery { })
	@:overload(function(methodName:Enable):JQuery { })
	@:overload(function(methodName:Reposition, ?event:Event, ?effect:Bool):JQuery { })
	@:overload(function(methodName:Focus, ?event:Event):JQuery { })
	@:overload(function(methodName:Blur, ?event:Event):JQuery { })
	@:overload(function(methodName:Destroy, ?immediate:Bool):JQuery { })
	@:overload(function(methodName:String, ?p1:Dynamic, ?p2:Dynamic, ?p3:Dynamic):Dynamic { })
	function qtip(?options:QTip2.QTipOptions):JQuery;
};
