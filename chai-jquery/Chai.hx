typedef Assertion = {
	var attr : String -> ?String -> Assertion;
	var css : String -> ?String -> Assertion;
	var data : String -> ?String -> Assertion;
	function class(className:String):Assertion;
	function id(id:String):Assertion;
	function html(html:String):Assertion;
	function text(text:String):Assertion;
	function value(text:String):Assertion;
	var visible : Assertion;
	var hidden : Assertion;
	var selected : Assertion;
	var checked : Assertion;
	var disabled : Assertion;
};
typedef ChaiJQueryStatic = {
	@:overload(function(url:String, ?settings:JQueryAjaxSettings):JQueryXHR { })
	function ajax(settings:JQueryAjaxSettings):JQueryXHR;
	@:overload(function(handler:Dynamic -> JQueryAjaxSettings -> JQueryXHR -> Dynamic):Void { })
	function ajaxPrefilter(dataTypes:String, handler:Dynamic -> JQueryAjaxSettings -> JQueryXHR -> Dynamic):Void;
	var ajaxSettings : JQueryAjaxSettings;
	function ajaxSetup(options:JQueryAjaxSettings):Void;
	@:overload(function(url:String, ?data:haxe.extern.EitherType<Dynamic, String>, ?success:Dynamic -> String -> JQueryXHR -> Dynamic, ?dataType:String):JQueryXHR { })
	function get(url:String, ?success:Dynamic -> String -> JQueryXHR -> Dynamic, ?dataType:String):JQueryXHR;
	@:overload(function(url:String, ?data:haxe.extern.EitherType<Dynamic, String>, ?success:Dynamic -> String -> JQueryXHR -> Dynamic):JQueryXHR { })
	function getJSON(url:String, ?success:Dynamic -> String -> JQueryXHR -> Dynamic):JQueryXHR;
	function getScript(url:String, ?success:String -> String -> JQueryXHR -> Dynamic):JQueryXHR;
	var param : JQueryParam;
	@:overload(function(url:String, ?data:haxe.extern.EitherType<Dynamic, String>, ?success:Dynamic -> String -> JQueryXHR -> Dynamic, ?dataType:String):JQueryXHR { })
	function post(url:String, ?success:Dynamic -> String -> JQueryXHR -> Dynamic, ?dataType:String):JQueryXHR;
	function Callbacks(?flags:String):JQueryCallback;
	function holdReady(hold:Bool):Void;
	function noConflict(?removeAll:Bool):Dynamic;
	function when<T>(deferreds:haxe.extern.Rest<haxe.extern.EitherType<T, JQueryPromise<T>>>):JQueryPromise<T>;
	var cssHooks : { };
	var cssNumber : Dynamic;
	@:overload(function(element:Element, key:String):Dynamic { })
	@:overload(function(element:Element):Dynamic { })
	function data<T>(element:Element, key:String, value:T):T;
	function dequeue(element:Element, ?queueName:String):Void;
	function hasData(element:Element):Bool;
	@:overload(function(element:Element, queueName:String, newQueue:Array<haxe.Constraints.Function>):ChaiJQuery { })
	@:overload(function(element:Element, queueName:String, callback:haxe.Constraints.Function):ChaiJQuery { })
	function queue(element:Element, ?queueName:String):Array<Dynamic>;
	function removeData(element:Element, ?name:String):ChaiJQuery;
	function Deferred<T>(?beforeStart:JQueryDeferred<T> -> Dynamic):JQueryDeferred<T>;
	var fx : { var tick : Void -> Void; var interval : Float; var stop : Void -> Void; var speeds : { var slow : Float; var fast : Float; }; var off : Bool; var step : Dynamic; };
	@:overload(function(context:Dynamic, name:String, additionalArguments:haxe.extern.Rest<Dynamic>):Dynamic { })
	function proxy(fnction:haxe.extern.Rest<Dynamic> -> Dynamic, context:Dynamic, additionalArguments:haxe.extern.Rest<Dynamic>):Dynamic;
	var Event : JQueryEventConstructor;
	function error(message:Dynamic):ChaiJQuery;
	var expr : Dynamic;
	var fn : Dynamic;
	var isReady : Bool;
	var support : JQuerySupport;
	function contains(container:Element, contained:Element):Bool;
	@:overload(function(collection:Dynamic, callback:Dynamic -> Dynamic -> Dynamic):Dynamic { })
	function each<T>(collection:Array<T>, callback:Float -> T -> Dynamic):Dynamic;
	@:overload(function(deep:Bool, target:Dynamic, ?object1:Dynamic, objectN:haxe.extern.Rest<Dynamic>):Dynamic { })
	function extend(target:Dynamic, ?object1:Dynamic, objectN:haxe.extern.Rest<Dynamic>):Dynamic;
	function globalEval(code:String):Dynamic;
	function grep<T>(array:Array<T>, func:T -> Float -> Bool, ?invert:Bool):Array<T>;
	function inArray<T>(value:T, array:Array<T>, ?fromIndex:Float):Float;
	function isArray(obj:Dynamic):Bool;
	function isEmptyObject(obj:Dynamic):Bool;
	function isFunction(obj:Dynamic):Bool;
	function isNumeric(value:Dynamic):Bool;
	function isPlainObject(obj:Dynamic):Bool;
	function isWindow(obj:Dynamic):Bool;
	function isXMLDoc(node:Node):Bool;
	function makeArray(obj:Dynamic):Array<Dynamic>;
	@:overload(function(arrayOrObject:Dynamic, callback:Dynamic -> Dynamic -> Dynamic):Dynamic { })
	function map<T, U>(array:Array<T>, callback:T -> Float -> U):Array<U>;
	function merge<T>(first:Array<T>, second:Array<T>):Array<T>;
	function noop():Dynamic;
	function now():Float;
	function parseJSON(json:String):Dynamic;
	function parseXML(data:String):XMLDocument;
	function trim(str:String):String;
	function type(obj:Dynamic):String;
	function unique(array:Array<Element>):Array<Element>;
	@:overload(function(data:String, ?context:Document, ?keepScripts:Bool):Array<Dynamic> { })
	function parseHTML(data:String, ?context:HTMLElement, ?keepScripts:Bool):Array<Dynamic>;
};
typedef ChaiJQuery = {
	function ajaxComplete(handler:JQueryEventObject -> XMLHttpRequest -> Dynamic -> Dynamic):ChaiJQuery;
	function ajaxError(handler:JQueryEventObject -> JQueryXHR -> JQueryAjaxSettings -> Dynamic -> Dynamic):ChaiJQuery;
	function ajaxSend(handler:JQueryEventObject -> JQueryXHR -> JQueryAjaxSettings -> Dynamic):ChaiJQuery;
	function ajaxStart(handler:Void -> Dynamic):ChaiJQuery;
	function ajaxStop(handler:Void -> Dynamic):ChaiJQuery;
	function ajaxSuccess(handler:JQueryEventObject -> XMLHttpRequest -> JQueryAjaxSettings -> Dynamic):ChaiJQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function load(url:String, ?data:haxe.extern.EitherType<String, Dynamic>, ?complete:String -> String -> XMLHttpRequest -> Dynamic):ChaiJQuery;
	function serialize():String;
	function serializeArray():Array<JQuerySerializeArrayElement>;
	@:overload(function(func:Float -> String -> String):ChaiJQuery { })
	function addClass(className:String):ChaiJQuery;
	function addBack(?selector:String):ChaiJQuery;
	@:overload(function(attributeName:String, value:haxe.extern.EitherType<String, Float>):ChaiJQuery { })
	@:overload(function(attributeName:String, func:Float -> String -> haxe.extern.EitherType<String, Float>):ChaiJQuery { })
	@:overload(function(attributes:Dynamic):ChaiJQuery { })
	function attr(attributeName:String):String;
	function hasClass(className:String):Bool;
	@:overload(function(htmlString:String):ChaiJQuery { })
	@:overload(function(func:Float -> String -> String):ChaiJQuery { })
	function html():String;
	@:overload(function(propertyName:String, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>>):ChaiJQuery { })
	@:overload(function(properties:Dynamic):ChaiJQuery { })
	@:overload(function(propertyName:String, func:Float -> Dynamic -> Dynamic):ChaiJQuery { })
	function prop(propertyName:String):Dynamic;
	function removeAttr(attributeName:String):ChaiJQuery;
	@:overload(function(func:Float -> String -> String):ChaiJQuery { })
	function removeClass(?className:String):ChaiJQuery;
	function removeProp(propertyName:String):ChaiJQuery;
	@:overload(function(?swtch:Bool):ChaiJQuery { })
	@:overload(function(func:Float -> String -> Bool -> String, ?swtch:Bool):ChaiJQuery { })
	function toggleClass(className:String, ?swtch:Bool):ChaiJQuery;
	@:overload(function(value:haxe.extern.EitherType<String, Array<String>>):ChaiJQuery { })
	@:overload(function(func:Float -> String -> String):ChaiJQuery { })
	function val():Dynamic;
	@:overload(function(propertyName:String, value:haxe.extern.EitherType<String, Float>):ChaiJQuery { })
	@:overload(function(propertyName:String, value:Float -> String -> haxe.extern.EitherType<String, Float>):ChaiJQuery { })
	@:overload(function(properties:Dynamic):ChaiJQuery { })
	function css(propertyName:String):String;
	@:overload(function(value:haxe.extern.EitherType<Float, String>):ChaiJQuery { })
	@:overload(function(func:Float -> Float -> haxe.extern.EitherType<Float, String>):ChaiJQuery { })
	function height():Float;
	@:overload(function(height:haxe.extern.EitherType<Float, String>):ChaiJQuery { })
	function innerHeight():Float;
	@:overload(function(width:haxe.extern.EitherType<Float, String>):ChaiJQuery { })
	function innerWidth():Float;
	@:overload(function(coordinates:JQueryCoordinates):ChaiJQuery { })
	@:overload(function(func:Float -> JQueryCoordinates -> JQueryCoordinates):ChaiJQuery { })
	function offset():JQueryCoordinates;
	@:overload(function(height:haxe.extern.EitherType<Float, String>):ChaiJQuery { })
	function outerHeight(?includeMargin:Bool):Float;
	@:overload(function(width:haxe.extern.EitherType<Float, String>):ChaiJQuery { })
	function outerWidth(?includeMargin:Bool):Float;
	function position():JQueryCoordinates;
	@:overload(function(value:Float):ChaiJQuery { })
	function scrollLeft():Float;
	@:overload(function(value:Float):ChaiJQuery { })
	function scrollTop():Float;
	@:overload(function(value:haxe.extern.EitherType<Float, String>):ChaiJQuery { })
	@:overload(function(func:Float -> Float -> haxe.extern.EitherType<Float, String>):ChaiJQuery { })
	function width():Float;
	function clearQueue(?queueName:String):ChaiJQuery;
	@:overload(function(obj:{ }):ChaiJQuery { })
	@:overload(function(key:String):Dynamic { })
	@:overload(function():Dynamic { })
	function data(key:String, value:Dynamic):ChaiJQuery;
	function dequeue(?queueName:String):ChaiJQuery;
	@:overload(function(list:Array<String>):ChaiJQuery { })
	function removeData(name:String):ChaiJQuery;
	function promise(?type:String, ?target:Dynamic):JQueryPromise<Dynamic>;
	@:overload(function(properties:Dynamic, ?duration:haxe.extern.EitherType<String, Float>, ?easing:String, ?complete:haxe.Constraints.Function):ChaiJQuery { })
	@:overload(function(properties:Dynamic, options:JQueryAnimationOptions):ChaiJQuery { })
	function animate(properties:Dynamic, ?duration:haxe.extern.EitherType<String, Float>, ?complete:haxe.Constraints.Function):ChaiJQuery;
	function delay(duration:Float, ?queueName:String):ChaiJQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):ChaiJQuery { })
	@:overload(function(options:JQueryAnimationOptions):ChaiJQuery { })
	function fadeIn(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):ChaiJQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):ChaiJQuery { })
	@:overload(function(options:JQueryAnimationOptions):ChaiJQuery { })
	function fadeOut(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):ChaiJQuery;
	@:overload(function(duration:haxe.extern.EitherType<String, Float>, opacity:Float, ?easing:String, ?complete:haxe.Constraints.Function):ChaiJQuery { })
	function fadeTo(duration:haxe.extern.EitherType<String, Float>, opacity:Float, ?complete:haxe.Constraints.Function):ChaiJQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):ChaiJQuery { })
	@:overload(function(options:JQueryAnimationOptions):ChaiJQuery { })
	function fadeToggle(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):ChaiJQuery;
	function finish(?queue:String):ChaiJQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):ChaiJQuery { })
	@:overload(function(options:JQueryAnimationOptions):ChaiJQuery { })
	function hide(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):ChaiJQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):ChaiJQuery { })
	@:overload(function(options:JQueryAnimationOptions):ChaiJQuery { })
	function show(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):ChaiJQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):ChaiJQuery { })
	@:overload(function(options:JQueryAnimationOptions):ChaiJQuery { })
	function slideDown(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):ChaiJQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):ChaiJQuery { })
	@:overload(function(options:JQueryAnimationOptions):ChaiJQuery { })
	function slideToggle(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):ChaiJQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):ChaiJQuery { })
	@:overload(function(options:JQueryAnimationOptions):ChaiJQuery { })
	function slideUp(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):ChaiJQuery;
	@:overload(function(?queue:String, ?clearQueue:Bool, ?jumpToEnd:Bool):ChaiJQuery { })
	function stop(?clearQueue:Bool, ?jumpToEnd:Bool):ChaiJQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):ChaiJQuery { })
	@:overload(function(options:JQueryAnimationOptions):ChaiJQuery { })
	@:overload(function(showOrHide:Bool):ChaiJQuery { })
	function toggle(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):ChaiJQuery;
	@:overload(function(eventType:String, handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(eventType:String, eventData:Dynamic, preventBubble:Bool):ChaiJQuery { })
	@:overload(function(eventType:String, preventBubble:Bool):ChaiJQuery { })
	@:overload(function(events:Dynamic):ChaiJQuery { })
	function bind(eventType:String, eventData:Dynamic, handler:JQueryEventObject -> Dynamic):ChaiJQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function blur():ChaiJQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function change():ChaiJQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function click():ChaiJQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function dblclick():ChaiJQuery;
	@:overload(function(selector:Dynamic, eventType:String, eventData:Dynamic, handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function delegate(selector:Dynamic, eventType:String, handler:JQueryEventObject -> Dynamic):ChaiJQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function focus():ChaiJQuery;
	@:overload(function(eventData:Dynamic, handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function focusin(handler:JQueryEventObject -> Dynamic):ChaiJQuery;
	@:overload(function(eventData:Dynamic, handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function focusout(handler:JQueryEventObject -> Dynamic):ChaiJQuery;
	@:overload(function(handlerInOut:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function hover(handlerIn:JQueryEventObject -> Dynamic, handlerOut:JQueryEventObject -> Dynamic):ChaiJQuery;
	@:overload(function(handler:JQueryKeyEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryKeyEventObject -> Dynamic):ChaiJQuery { })
	function keydown():ChaiJQuery;
	@:overload(function(handler:JQueryKeyEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryKeyEventObject -> Dynamic):ChaiJQuery { })
	function keypress():ChaiJQuery;
	@:overload(function(handler:JQueryKeyEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryKeyEventObject -> Dynamic):ChaiJQuery { })
	function keyup():ChaiJQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	function mousedown():ChaiJQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	function mouseenter():ChaiJQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	function mouseleave():ChaiJQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	function mousemove():ChaiJQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	function mouseout():ChaiJQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	function mouseover():ChaiJQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):ChaiJQuery { })
	function mouseup():ChaiJQuery;
	@:overload(function(events:String, ?selector:String, ?handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(events:String, handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(events:{ }, ?selector:String):ChaiJQuery { })
	function off():ChaiJQuery;
	@:overload(function(events:String, data:Dynamic, handler:JQueryEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):ChaiJQuery { })
	@:overload(function(events:String, selector:String, handler:JQueryEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):ChaiJQuery { })
	@:overload(function(events:String, selector:String, data:Dynamic, handler:JQueryEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):ChaiJQuery { })
	@:overload(function(events:{ }, ?selector:String, ?data:Dynamic):ChaiJQuery { })
	@:overload(function(events:{ }, ?data:Dynamic):ChaiJQuery { })
	function on(events:String, handler:JQueryEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):ChaiJQuery;
	@:overload(function(events:String, data:Dynamic, handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(events:String, selector:String, handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(events:String, selector:String, data:Dynamic, handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(events:{ }, ?selector:String, ?data:Dynamic):ChaiJQuery { })
	@:overload(function(events:{ }, ?data:Dynamic):ChaiJQuery { })
	function one(events:String, handler:JQueryEventObject -> Dynamic):ChaiJQuery;
	function ready(handler:haxe.Constraints.Function):ChaiJQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function resize():ChaiJQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function scroll():ChaiJQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function select():ChaiJQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function submit():ChaiJQuery;
	@:overload(function(event:JQueryEventObject, ?extraParameters:haxe.extern.EitherType<Array<Dynamic>, Dynamic>):ChaiJQuery { })
	function trigger(eventType:String, ?extraParameters:haxe.extern.EitherType<Array<Dynamic>, Dynamic>):ChaiJQuery;
	function triggerHandler(eventType:String, extraParameters:haxe.extern.Rest<Dynamic>):Dynamic;
	@:overload(function(eventType:String, fls:Bool):ChaiJQuery { })
	@:overload(function(evt:Dynamic):ChaiJQuery { })
	function unbind(?eventType:String, ?handler:JQueryEventObject -> Dynamic):ChaiJQuery;
	@:overload(function(selector:String, eventType:String, ?handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	@:overload(function(selector:String, events:Dynamic):ChaiJQuery { })
	@:overload(function(namespace:String):ChaiJQuery { })
	function undelegate():ChaiJQuery;
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function unload(handler:JQueryEventObject -> Dynamic):ChaiJQuery;
	var context : Element;
	var jquery : String;
	@:overload(function(eventData:Dynamic, handler:JQueryEventObject -> Dynamic):ChaiJQuery { })
	function error(handler:JQueryEventObject -> Dynamic):ChaiJQuery;
	@:overload(function(elements:Array<Dynamic>, name:String, arguments:Array<Dynamic>):ChaiJQuery { })
	function pushStack(elements:Array<Dynamic>):ChaiJQuery;
	@:overload(function(func:Float -> String -> haxe.extern.EitherType<String, haxe.extern.EitherType<Element, JQuery>>):ChaiJQuery { })
	function after(content1:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>, content2:haxe.extern.Rest<Dynamic>):ChaiJQuery;
	@:overload(function(func:Float -> String -> haxe.extern.EitherType<String, haxe.extern.EitherType<Element, JQuery>>):ChaiJQuery { })
	function append(content1:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>, content2:haxe.extern.Rest<Dynamic>):ChaiJQuery;
	function appendTo(target:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, String>>>):ChaiJQuery;
	@:overload(function(func:Float -> String -> haxe.extern.EitherType<String, haxe.extern.EitherType<Element, JQuery>>):ChaiJQuery { })
	function before(content1:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>, content2:haxe.extern.Rest<Dynamic>):ChaiJQuery;
	function clone(?withDataAndEvents:Bool, ?deepWithDataAndEvents:Bool):ChaiJQuery;
	function detach(?selector:String):ChaiJQuery;
	function empty():ChaiJQuery;
	function insertAfter(target:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>):ChaiJQuery;
	function insertBefore(target:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>):ChaiJQuery;
	@:overload(function(func:Float -> String -> haxe.extern.EitherType<String, haxe.extern.EitherType<Element, JQuery>>):ChaiJQuery { })
	function prepend(content1:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>, content2:haxe.extern.Rest<Dynamic>):ChaiJQuery;
	function prependTo(target:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, String>>>):ChaiJQuery;
	function remove(?selector:String):ChaiJQuery;
	function replaceAll(target:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, String>>>):ChaiJQuery;
	@:overload(function(func:Void -> haxe.extern.EitherType<Element, JQuery>):ChaiJQuery { })
	function replaceWith(newContent:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>):ChaiJQuery;
	@:overload(function(text:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>>):ChaiJQuery { })
	@:overload(function(func:Float -> String -> String):ChaiJQuery { })
	function text():String;
	function toArray():Array<Dynamic>;
	function unwrap():ChaiJQuery;
	@:overload(function(func:Float -> haxe.extern.EitherType<String, JQuery>):ChaiJQuery { })
	function wrap(wrappingElement:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Element, String>>):ChaiJQuery;
	@:overload(function(func:Float -> String):ChaiJQuery { })
	function wrapAll(wrappingElement:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Element, String>>):ChaiJQuery;
	@:overload(function(func:Float -> String):ChaiJQuery { })
	function wrapInner(wrappingElement:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Element, String>>):ChaiJQuery;
	function each(func:Float -> Element -> Dynamic):ChaiJQuery;
	@:overload(function():Array<Dynamic> { })
	function get(index:Float):HTMLElement;
	@:overload(function(selector:haxe.extern.EitherType<String, haxe.extern.EitherType<JQuery, Element>>):Float { })
	function index():Float;
	var length : Float;
	var selector : String;
	@:overload(function(elements:haxe.extern.Rest<Element>):ChaiJQuery { })
	@:overload(function(html:String):ChaiJQuery { })
	@:overload(function(obj:JQuery):ChaiJQuery { })
	function add(selector:String, ?context:Element):ChaiJQuery;
	function children(?selector:String):ChaiJQuery;
	@:overload(function(selector:String, ?context:Element):ChaiJQuery { })
	@:overload(function(obj:JQuery):ChaiJQuery { })
	@:overload(function(element:Element):ChaiJQuery { })
	@:overload(function(selectors:Dynamic, ?context:Element):Array<Dynamic> { })
	function closest(selector:String):ChaiJQuery;
	function contents():ChaiJQuery;
	function end():ChaiJQuery;
	function eq(index:Float):ChaiJQuery;
	@:overload(function(func:Float -> Element -> Dynamic):ChaiJQuery { })
	@:overload(function(element:Element):ChaiJQuery { })
	@:overload(function(obj:JQuery):ChaiJQuery { })
	function filter(selector:String):ChaiJQuery;
	@:overload(function(element:Element):ChaiJQuery { })
	@:overload(function(obj:JQuery):ChaiJQuery { })
	function find(selector:String):ChaiJQuery;
	function first():ChaiJQuery;
	@:overload(function(contained:Element):ChaiJQuery { })
	function has(selector:String):ChaiJQuery;
	@:overload(function(func:Float -> Element -> Bool):Bool { })
	@:overload(function(obj:JQuery):Bool { })
	@:overload(function(elements:Dynamic):Bool { })
	function is(selector:String):Bool;
	function last():ChaiJQuery;
	function map(callback:Float -> Element -> Dynamic):ChaiJQuery;
	function next(?selector:String):ChaiJQuery;
	function nextAll(?selector:String):ChaiJQuery;
	@:overload(function(?element:Element, ?filter:String):ChaiJQuery { })
	@:overload(function(?obj:JQuery, ?filter:String):ChaiJQuery { })
	function nextUntil(?selector:String, ?filter:String):ChaiJQuery;
	@:overload(function(func:Float -> Element -> Bool):ChaiJQuery { })
	@:overload(function(elements:haxe.extern.Rest<Element>):ChaiJQuery { })
	@:overload(function(obj:JQuery):ChaiJQuery { })
	function not(selector:String):ChaiJQuery;
	function offsetParent():ChaiJQuery;
	function parent(?selector:String):ChaiJQuery;
	function parents(?selector:String):ChaiJQuery;
	@:overload(function(?element:Element, ?filter:String):ChaiJQuery { })
	@:overload(function(?obj:JQuery, ?filter:String):ChaiJQuery { })
	function parentsUntil(?selector:String, ?filter:String):ChaiJQuery;
	function prev(?selector:String):ChaiJQuery;
	function prevAll(?selector:String):ChaiJQuery;
	@:overload(function(?element:Element, ?filter:String):ChaiJQuery { })
	@:overload(function(?obj:JQuery, ?filter:String):ChaiJQuery { })
	function prevUntil(?selector:String, ?filter:String):ChaiJQuery;
	function siblings(?selector:String):ChaiJQuery;
	function slice(start:Float, ?end:Float):ChaiJQuery;
	@:overload(function(newQueue:Array<haxe.Constraints.Function>):ChaiJQuery { })
	@:overload(function(callback:haxe.Constraints.Function):ChaiJQuery { })
	@:overload(function(queueName:String, newQueue:Array<haxe.Constraints.Function>):ChaiJQuery { })
	@:overload(function(queueName:String, callback:haxe.Constraints.Function):ChaiJQuery { })
	function queue(?queueName:String):Array<Dynamic>;
	var should : Chai.Assertion;
};
