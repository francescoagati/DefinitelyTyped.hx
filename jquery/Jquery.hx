typedef JQueryAjaxSettings = {
	@:optional
	var accepts : Dynamic;
	@:optional
	var async : Bool;
	@:optional
	function beforeSend(jqXHR:JQueryXHR, settings:JQueryAjaxSettings):Dynamic;
	@:optional
	var cache : Bool;
	@:optional
	function complete(jqXHR:JQueryXHR, textStatus:String):Dynamic;
	@:optional
	var contents : { };
	@:optional
	var contentType : Dynamic;
	@:optional
	var context : Dynamic;
	@:optional
	var converters : { };
	@:optional
	var crossDomain : Bool;
	@:optional
	var data : Dynamic;
	@:optional
	function dataFilter(data:Dynamic, ty:Dynamic):Dynamic;
	@:optional
	var dataType : String;
	@:optional
	function error(jqXHR:JQueryXHR, textStatus:String, errorThrown:String):Dynamic;
	@:optional
	var global : Bool;
	@:optional
	var headers : { };
	@:optional
	var ifModified : Bool;
	@:optional
	var isLocal : Bool;
	@:optional
	var jsonp : Dynamic;
	@:optional
	var jsonpCallback : Dynamic;
	@:optional
	var mimeType : String;
	@:optional
	var password : String;
	@:optional
	var processData : Bool;
	@:optional
	var scriptCharset : String;
	@:optional
	var statusCode : { };
	@:optional
	function success(data:Dynamic, textStatus:String, jqXHR:JQueryXHR):Dynamic;
	@:optional
	var timeout : Float;
	@:optional
	var traditional : Bool;
	@:optional
	var type : String;
	@:optional
	var url : String;
	@:optional
	var username : String;
	@:optional
	var xhr : Dynamic;
	@:optional
	var xhrFields : { };
};
typedef JQueryXHR = {
	>XMLHttpRequest,
	>JQueryPromise<Dynamic>,
	function overrideMimeType(mimeType:String):Dynamic;
	function abort(?statusText:String):Void;
	function then(doneCallback:Dynamic -> String -> JQueryXHR -> Void, ?failCallback:JQueryXHR -> String -> Dynamic -> Void):JQueryPromise<Dynamic>;
	@:optional
	var responseJSON : Dynamic;
};
typedef JQueryCallback = {
	@:overload(function(callbacks:Array<haxe.Constraints.Function>):JQueryCallback { })
	function add(callbacks:haxe.Constraints.Function):JQueryCallback;
	function disable():JQueryCallback;
	function disabled():Bool;
	function empty():JQueryCallback;
	function fire(arguments:haxe.extern.Rest<Dynamic>):JQueryCallback;
	function fired():Bool;
	function fireWith(?context:Dynamic, args:haxe.extern.Rest<Dynamic>):JQueryCallback;
	function has(callback:haxe.Constraints.Function):Bool;
	function lock():JQueryCallback;
	function locked():Bool;
	@:overload(function(callbacks:Array<haxe.Constraints.Function>):JQueryCallback { })
	function remove(callbacks:haxe.Constraints.Function):JQueryCallback;
};
typedef JQueryGenericPromise<T> = {
	@:overload(function(doneFilter:?T -> haxe.extern.Rest<Dynamic> -> Void, ?failFilter:haxe.extern.Rest<Dynamic> -> Dynamic, ?progressFilter:haxe.extern.Rest<Dynamic> -> Dynamic):JQueryPromise<Void> { })
	function then<U>(doneFilter:?T -> haxe.extern.Rest<Dynamic> -> haxe.extern.EitherType<U, JQueryPromise<U>>, ?failFilter:haxe.extern.Rest<Dynamic> -> Dynamic, ?progressFilter:haxe.extern.Rest<Dynamic> -> Dynamic):JQueryPromise<U>;
};
typedef JQueryPromiseCallback<T> = { };
typedef JQueryPromiseOperator<T, U> = { };
typedef JQueryPromise<T> = {
	>JQueryGenericPromise<T>,
	function state():String;
	function always(?alwaysCallback1:haxe.extern.EitherType<JQueryPromiseCallback<Dynamic>, Array<JQueryPromiseCallback<Dynamic>>>, alwaysCallbacksN:haxe.extern.Rest<haxe.extern.EitherType<JQueryPromiseCallback<Dynamic>, Array<JQueryPromiseCallback<Dynamic>>>>):JQueryPromise<T>;
	function done(?doneCallback1:haxe.extern.EitherType<JQueryPromiseCallback<T>, Array<JQueryPromiseCallback<T>>>, doneCallbackN:haxe.extern.Rest<haxe.extern.EitherType<JQueryPromiseCallback<T>, Array<JQueryPromiseCallback<T>>>>):JQueryPromise<T>;
	function fail(?failCallback1:haxe.extern.EitherType<JQueryPromiseCallback<Dynamic>, Array<JQueryPromiseCallback<Dynamic>>>, failCallbacksN:haxe.extern.Rest<haxe.extern.EitherType<JQueryPromiseCallback<Dynamic>, Array<JQueryPromiseCallback<Dynamic>>>>):JQueryPromise<T>;
	function progress(?progressCallback1:haxe.extern.EitherType<JQueryPromiseCallback<Dynamic>, Array<JQueryPromiseCallback<Dynamic>>>, progressCallbackN:haxe.extern.Rest<haxe.extern.EitherType<JQueryPromiseCallback<Dynamic>, Array<JQueryPromiseCallback<Dynamic>>>>):JQueryPromise<T>;
	function pipe(?doneFilter:Dynamic -> Dynamic, ?failFilter:Dynamic -> Dynamic, ?progressFilter:Dynamic -> Dynamic):JQueryPromise<Dynamic>;
};
typedef JQueryDeferred<T> = {
	>JQueryGenericPromise<T>,
	function state():String;
	function always(?alwaysCallback1:haxe.extern.EitherType<JQueryPromiseCallback<Dynamic>, Array<JQueryPromiseCallback<Dynamic>>>, alwaysCallbacksN:haxe.extern.Rest<haxe.extern.EitherType<JQueryPromiseCallback<Dynamic>, Array<JQueryPromiseCallback<Dynamic>>>>):JQueryDeferred<T>;
	function done(?doneCallback1:haxe.extern.EitherType<JQueryPromiseCallback<T>, Array<JQueryPromiseCallback<T>>>, doneCallbackN:haxe.extern.Rest<haxe.extern.EitherType<JQueryPromiseCallback<T>, Array<JQueryPromiseCallback<T>>>>):JQueryDeferred<T>;
	function fail(?failCallback1:haxe.extern.EitherType<JQueryPromiseCallback<Dynamic>, Array<JQueryPromiseCallback<Dynamic>>>, failCallbacksN:haxe.extern.Rest<haxe.extern.EitherType<JQueryPromiseCallback<Dynamic>, Array<JQueryPromiseCallback<Dynamic>>>>):JQueryDeferred<T>;
	function progress(?progressCallback1:haxe.extern.EitherType<JQueryPromiseCallback<Dynamic>, Array<JQueryPromiseCallback<Dynamic>>>, progressCallbackN:haxe.extern.Rest<haxe.extern.EitherType<JQueryPromiseCallback<Dynamic>, Array<JQueryPromiseCallback<Dynamic>>>>):JQueryDeferred<T>;
	function notify(?value:Dynamic, args:haxe.extern.Rest<Dynamic>):JQueryDeferred<T>;
	function notifyWith(context:Dynamic, ?value:Dynamic, args:haxe.extern.Rest<Dynamic>):JQueryDeferred<T>;
	function reject(?value:Dynamic, args:haxe.extern.Rest<Dynamic>):JQueryDeferred<T>;
	function rejectWith(context:Dynamic, ?value:Dynamic, args:haxe.extern.Rest<Dynamic>):JQueryDeferred<T>;
	function resolve(?value:T, args:haxe.extern.Rest<Dynamic>):JQueryDeferred<T>;
	function resolveWith(context:Dynamic, ?value:T, args:haxe.extern.Rest<Dynamic>):JQueryDeferred<T>;
	function promise(?target:Dynamic):JQueryPromise<T>;
	function pipe(?doneFilter:Dynamic -> Dynamic, ?failFilter:Dynamic -> Dynamic, ?progressFilter:Dynamic -> Dynamic):JQueryPromise<Dynamic>;
};
typedef BaseJQueryEventObject = {
	>Event,
	var data : Dynamic;
	var delegateTarget : Element;
	function isDefaultPrevented():Bool;
	function isImmediatePropagationStopped():Bool;
	function isPropagationStopped():Bool;
	var namespace : String;
	var originalEvent : Event;
	function preventDefault():Dynamic;
	var relatedTarget : Element;
	var result : Dynamic;
	function stopImmediatePropagation():Void;
	function stopPropagation():Void;
	var target : Element;
	var pageX : Float;
	var pageY : Float;
	var which : Float;
	var metaKey : Bool;
};
typedef JQueryInputEventObject = {
	>BaseJQueryEventObject,
	var altKey : Bool;
	var ctrlKey : Bool;
	var metaKey : Bool;
	var shiftKey : Bool;
};
typedef JQueryMouseEventObject = {
	>JQueryInputEventObject,
	var button : Float;
	var clientX : Float;
	var clientY : Float;
	var offsetX : Float;
	var offsetY : Float;
	var pageX : Float;
	var pageY : Float;
	var screenX : Float;
	var screenY : Float;
};
typedef JQueryKeyEventObject = {
	>JQueryInputEventObject,
	var char : Dynamic;
	var charCode : Float;
	var key : Dynamic;
	var keyCode : Float;
};
typedef JQueryEventObject = {
	>BaseJQueryEventObject,
	>JQueryInputEventObject,
	>JQueryMouseEventObject,
	>JQueryKeyEventObject,
};
typedef JQuerySupport = {
	@:optional
	var ajax : Bool;
	@:optional
	var boxModel : Bool;
	@:optional
	var changeBubbles : Bool;
	@:optional
	var checkClone : Bool;
	@:optional
	var checkOn : Bool;
	@:optional
	var cors : Bool;
	@:optional
	var cssFloat : Bool;
	@:optional
	var hrefNormalized : Bool;
	@:optional
	var htmlSerialize : Bool;
	@:optional
	var leadingWhitespace : Bool;
	@:optional
	var noCloneChecked : Bool;
	@:optional
	var noCloneEvent : Bool;
	@:optional
	var opacity : Bool;
	@:optional
	var optDisabled : Bool;
	@:optional
	var optSelected : Bool;
	@:optional
	function scriptEval():Bool;
	@:optional
	var style : Bool;
	@:optional
	var submitBubbles : Bool;
	@:optional
	var tbody : Bool;
};
typedef JQueryParam = { };
typedef JQueryEventConstructor = {
	function new(name:String, ?eventProperties:Dynamic):JQueryEventObject;
};
typedef JQueryCoordinates = {
	var left : Float;
	var top : Float;
};
typedef JQuerySerializeArrayElement = {
	var name : String;
	var value : String;
};
typedef JQueryAnimationOptions = {
	@:optional
	var duration : Dynamic;
	@:optional
	var easing : String;
	@:optional
	var complete : haxe.Constraints.Function;
	@:optional
	var step : Float -> Dynamic -> Dynamic;
	@:optional
	var progress : JQueryPromise<Dynamic> -> Float -> Float -> Dynamic;
	@:optional
	var start : JQueryPromise<Dynamic> -> Dynamic;
	@:optional
	var done : JQueryPromise<Dynamic> -> Bool -> Dynamic;
	@:optional
	var fail : JQueryPromise<Dynamic> -> Bool -> Dynamic;
	@:optional
	var always : JQueryPromise<Dynamic> -> Bool -> Dynamic;
	@:optional
	var queue : Dynamic;
	@:optional
	var specialEasing : Dynamic;
};
typedef JQueryStatic = {
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
	@:overload(function(element:Element, queueName:String, newQueue:Array<haxe.Constraints.Function>):JQuery { })
	@:overload(function(element:Element, queueName:String, callback:haxe.Constraints.Function):JQuery { })
	function queue(element:Element, ?queueName:String):Array<Dynamic>;
	function removeData(element:Element, ?name:String):JQuery;
	function Deferred<T>(?beforeStart:JQueryDeferred<T> -> Dynamic):JQueryDeferred<T>;
	var fx : { var tick : Void -> Void; var interval : Float; var stop : Void -> Void; var speeds : { var slow : Float; var fast : Float; }; var off : Bool; var step : Dynamic; };
	@:overload(function(context:Dynamic, name:String, additionalArguments:haxe.extern.Rest<Dynamic>):Dynamic { })
	function proxy(fnction:haxe.extern.Rest<Dynamic> -> Dynamic, context:Dynamic, additionalArguments:haxe.extern.Rest<Dynamic>):Dynamic;
	var Event : JQueryEventConstructor;
	function error(message:Dynamic):JQuery;
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
typedef JQuery = {
	function ajaxComplete(handler:JQueryEventObject -> XMLHttpRequest -> Dynamic -> Dynamic):JQuery;
	function ajaxError(handler:JQueryEventObject -> JQueryXHR -> JQueryAjaxSettings -> Dynamic -> Dynamic):JQuery;
	function ajaxSend(handler:JQueryEventObject -> JQueryXHR -> JQueryAjaxSettings -> Dynamic):JQuery;
	function ajaxStart(handler:Void -> Dynamic):JQuery;
	function ajaxStop(handler:Void -> Dynamic):JQuery;
	function ajaxSuccess(handler:JQueryEventObject -> XMLHttpRequest -> JQueryAjaxSettings -> Dynamic):JQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):JQuery { })
	function load(url:String, ?data:haxe.extern.EitherType<String, Dynamic>, ?complete:String -> String -> XMLHttpRequest -> Dynamic):JQuery;
	function serialize():String;
	function serializeArray():Array<JQuerySerializeArrayElement>;
	@:overload(function(func:Float -> String -> String):JQuery { })
	function addClass(className:String):JQuery;
	function addBack(?selector:String):JQuery;
	@:overload(function(attributeName:String, value:haxe.extern.EitherType<String, Float>):JQuery { })
	@:overload(function(attributeName:String, func:Float -> String -> haxe.extern.EitherType<String, Float>):JQuery { })
	@:overload(function(attributes:Dynamic):JQuery { })
	function attr(attributeName:String):String;
	function hasClass(className:String):Bool;
	@:overload(function(htmlString:String):JQuery { })
	@:overload(function(func:Float -> String -> String):JQuery { })
	function html():String;
	@:overload(function(propertyName:String, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>>):JQuery { })
	@:overload(function(properties:Dynamic):JQuery { })
	@:overload(function(propertyName:String, func:Float -> Dynamic -> Dynamic):JQuery { })
	function prop(propertyName:String):Dynamic;
	function removeAttr(attributeName:String):JQuery;
	@:overload(function(func:Float -> String -> String):JQuery { })
	function removeClass(?className:String):JQuery;
	function removeProp(propertyName:String):JQuery;
	@:overload(function(?swtch:Bool):JQuery { })
	@:overload(function(func:Float -> String -> Bool -> String, ?swtch:Bool):JQuery { })
	function toggleClass(className:String, ?swtch:Bool):JQuery;
	@:overload(function(value:haxe.extern.EitherType<String, Array<String>>):JQuery { })
	@:overload(function(func:Float -> String -> String):JQuery { })
	function val():Dynamic;
	@:overload(function(propertyName:String, value:haxe.extern.EitherType<String, Float>):JQuery { })
	@:overload(function(propertyName:String, value:Float -> String -> haxe.extern.EitherType<String, Float>):JQuery { })
	@:overload(function(properties:Dynamic):JQuery { })
	function css(propertyName:String):String;
	@:overload(function(value:haxe.extern.EitherType<Float, String>):JQuery { })
	@:overload(function(func:Float -> Float -> haxe.extern.EitherType<Float, String>):JQuery { })
	function height():Float;
	@:overload(function(height:haxe.extern.EitherType<Float, String>):JQuery { })
	function innerHeight():Float;
	@:overload(function(width:haxe.extern.EitherType<Float, String>):JQuery { })
	function innerWidth():Float;
	@:overload(function(coordinates:JQueryCoordinates):JQuery { })
	@:overload(function(func:Float -> JQueryCoordinates -> JQueryCoordinates):JQuery { })
	function offset():JQueryCoordinates;
	@:overload(function(height:haxe.extern.EitherType<Float, String>):JQuery { })
	function outerHeight(?includeMargin:Bool):Float;
	@:overload(function(width:haxe.extern.EitherType<Float, String>):JQuery { })
	function outerWidth(?includeMargin:Bool):Float;
	function position():JQueryCoordinates;
	@:overload(function(value:Float):JQuery { })
	function scrollLeft():Float;
	@:overload(function(value:Float):JQuery { })
	function scrollTop():Float;
	@:overload(function(value:haxe.extern.EitherType<Float, String>):JQuery { })
	@:overload(function(func:Float -> Float -> haxe.extern.EitherType<Float, String>):JQuery { })
	function width():Float;
	function clearQueue(?queueName:String):JQuery;
	@:overload(function(obj:{ }):JQuery { })
	@:overload(function(key:String):Dynamic { })
	@:overload(function():Dynamic { })
	function data(key:String, value:Dynamic):JQuery;
	function dequeue(?queueName:String):JQuery;
	@:overload(function(list:Array<String>):JQuery { })
	function removeData(name:String):JQuery;
	function promise(?type:String, ?target:Dynamic):JQueryPromise<Dynamic>;
	@:overload(function(properties:Dynamic, ?duration:haxe.extern.EitherType<String, Float>, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(properties:Dynamic, options:JQueryAnimationOptions):JQuery { })
	function animate(properties:Dynamic, ?duration:haxe.extern.EitherType<String, Float>, ?complete:haxe.Constraints.Function):JQuery;
	function delay(duration:Float, ?queueName:String):JQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(options:JQueryAnimationOptions):JQuery { })
	function fadeIn(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):JQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(options:JQueryAnimationOptions):JQuery { })
	function fadeOut(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):JQuery;
	@:overload(function(duration:haxe.extern.EitherType<String, Float>, opacity:Float, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	function fadeTo(duration:haxe.extern.EitherType<String, Float>, opacity:Float, ?complete:haxe.Constraints.Function):JQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(options:JQueryAnimationOptions):JQuery { })
	function fadeToggle(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):JQuery;
	function finish(?queue:String):JQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(options:JQueryAnimationOptions):JQuery { })
	function hide(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):JQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(options:JQueryAnimationOptions):JQuery { })
	function show(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):JQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(options:JQueryAnimationOptions):JQuery { })
	function slideDown(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):JQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(options:JQueryAnimationOptions):JQuery { })
	function slideToggle(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):JQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(options:JQueryAnimationOptions):JQuery { })
	function slideUp(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):JQuery;
	@:overload(function(?queue:String, ?clearQueue:Bool, ?jumpToEnd:Bool):JQuery { })
	function stop(?clearQueue:Bool, ?jumpToEnd:Bool):JQuery;
	@:overload(function(?duration:haxe.extern.EitherType<Float, String>, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(options:JQueryAnimationOptions):JQuery { })
	@:overload(function(showOrHide:Bool):JQuery { })
	function toggle(?duration:haxe.extern.EitherType<Float, String>, ?complete:haxe.Constraints.Function):JQuery;
	@:overload(function(eventType:String, handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(eventType:String, eventData:Dynamic, preventBubble:Bool):JQuery { })
	@:overload(function(eventType:String, preventBubble:Bool):JQuery { })
	@:overload(function(events:Dynamic):JQuery { })
	function bind(eventType:String, eventData:Dynamic, handler:JQueryEventObject -> Dynamic):JQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):JQuery { })
	function blur():JQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):JQuery { })
	function change():JQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):JQuery { })
	function click():JQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):JQuery { })
	function dblclick():JQuery;
	@:overload(function(selector:Dynamic, eventType:String, eventData:Dynamic, handler:JQueryEventObject -> Dynamic):JQuery { })
	function delegate(selector:Dynamic, eventType:String, handler:JQueryEventObject -> Dynamic):JQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):JQuery { })
	function focus():JQuery;
	@:overload(function(eventData:Dynamic, handler:JQueryEventObject -> Dynamic):JQuery { })
	function focusin(handler:JQueryEventObject -> Dynamic):JQuery;
	@:overload(function(eventData:Dynamic, handler:JQueryEventObject -> Dynamic):JQuery { })
	function focusout(handler:JQueryEventObject -> Dynamic):JQuery;
	@:overload(function(handlerInOut:JQueryEventObject -> Dynamic):JQuery { })
	function hover(handlerIn:JQueryEventObject -> Dynamic, handlerOut:JQueryEventObject -> Dynamic):JQuery;
	@:overload(function(handler:JQueryKeyEventObject -> Dynamic):JQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryKeyEventObject -> Dynamic):JQuery { })
	function keydown():JQuery;
	@:overload(function(handler:JQueryKeyEventObject -> Dynamic):JQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryKeyEventObject -> Dynamic):JQuery { })
	function keypress():JQuery;
	@:overload(function(handler:JQueryKeyEventObject -> Dynamic):JQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryKeyEventObject -> Dynamic):JQuery { })
	function keyup():JQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	function mousedown():JQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	function mouseenter():JQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	function mouseleave():JQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	function mousemove():JQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	function mouseout():JQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	function mouseover():JQuery;
	@:overload(function(handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryMouseEventObject -> Dynamic):JQuery { })
	function mouseup():JQuery;
	@:overload(function(events:String, ?selector:String, ?handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(events:String, handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(events:{ }, ?selector:String):JQuery { })
	function off():JQuery;
	@:overload(function(events:String, data:Dynamic, handler:JQueryEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery { })
	@:overload(function(events:String, selector:String, handler:JQueryEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery { })
	@:overload(function(events:String, selector:String, data:Dynamic, handler:JQueryEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery { })
	@:overload(function(events:{ }, ?selector:String, ?data:Dynamic):JQuery { })
	@:overload(function(events:{ }, ?data:Dynamic):JQuery { })
	function on(events:String, handler:JQueryEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery;
	@:overload(function(events:String, data:Dynamic, handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(events:String, selector:String, handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(events:String, selector:String, data:Dynamic, handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(events:{ }, ?selector:String, ?data:Dynamic):JQuery { })
	@:overload(function(events:{ }, ?data:Dynamic):JQuery { })
	function one(events:String, handler:JQueryEventObject -> Dynamic):JQuery;
	function ready(handler:?JQueryStatic -> Dynamic):JQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryEventObject -> Dynamic):JQuery { })
	function resize():JQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryEventObject -> Dynamic):JQuery { })
	function scroll():JQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(eventData:Dynamic, handler:JQueryEventObject -> Dynamic):JQuery { })
	function select():JQuery;
	@:overload(function(handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):JQuery { })
	function submit():JQuery;
	@:overload(function(event:JQueryEventObject, ?extraParameters:haxe.extern.EitherType<Array<Dynamic>, Dynamic>):JQuery { })
	function trigger(eventType:String, ?extraParameters:haxe.extern.EitherType<Array<Dynamic>, Dynamic>):JQuery;
	function triggerHandler(eventType:String, extraParameters:haxe.extern.Rest<Dynamic>):Dynamic;
	@:overload(function(eventType:String, fls:Bool):JQuery { })
	@:overload(function(evt:Dynamic):JQuery { })
	function unbind(?eventType:String, ?handler:JQueryEventObject -> Dynamic):JQuery;
	@:overload(function(selector:String, eventType:String, ?handler:JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(selector:String, events:Dynamic):JQuery { })
	@:overload(function(namespace:String):JQuery { })
	function undelegate():JQuery;
	@:overload(function(?eventData:Dynamic, ?handler:JQueryEventObject -> Dynamic):JQuery { })
	function unload(handler:JQueryEventObject -> Dynamic):JQuery;
	var context : Element;
	var jquery : String;
	@:overload(function(eventData:Dynamic, handler:JQueryEventObject -> Dynamic):JQuery { })
	function error(handler:JQueryEventObject -> Dynamic):JQuery;
	@:overload(function(elements:Array<Dynamic>, name:String, arguments:Array<Dynamic>):JQuery { })
	function pushStack(elements:Array<Dynamic>):JQuery;
	@:overload(function(func:Float -> String -> haxe.extern.EitherType<String, haxe.extern.EitherType<Element, JQuery>>):JQuery { })
	function after(content1:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>, content2:haxe.extern.Rest<Dynamic>):JQuery;
	@:overload(function(func:Float -> String -> haxe.extern.EitherType<String, haxe.extern.EitherType<Element, JQuery>>):JQuery { })
	function append(content1:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>, content2:haxe.extern.Rest<Dynamic>):JQuery;
	function appendTo(target:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, String>>>):JQuery;
	@:overload(function(func:Float -> String -> haxe.extern.EitherType<String, haxe.extern.EitherType<Element, JQuery>>):JQuery { })
	function before(content1:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>, content2:haxe.extern.Rest<Dynamic>):JQuery;
	function clone(?withDataAndEvents:Bool, ?deepWithDataAndEvents:Bool):JQuery;
	function detach(?selector:String):JQuery;
	function empty():JQuery;
	function insertAfter(target:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>):JQuery;
	function insertBefore(target:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>):JQuery;
	@:overload(function(func:Float -> String -> haxe.extern.EitherType<String, haxe.extern.EitherType<Element, JQuery>>):JQuery { })
	function prepend(content1:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>, content2:haxe.extern.Rest<Dynamic>):JQuery;
	function prependTo(target:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, String>>>):JQuery;
	function remove(?selector:String):JQuery;
	function replaceAll(target:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, String>>>):JQuery;
	@:overload(function(func:Void -> haxe.extern.EitherType<Element, JQuery>):JQuery { })
	function replaceWith(newContent:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, haxe.extern.EitherType<Text, String>>>>):JQuery;
	@:overload(function(text:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>>):JQuery { })
	@:overload(function(func:Float -> String -> String):JQuery { })
	function text():String;
	function toArray():Array<Dynamic>;
	function unwrap():JQuery;
	@:overload(function(func:Float -> haxe.extern.EitherType<String, JQuery>):JQuery { })
	function wrap(wrappingElement:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Element, String>>):JQuery;
	@:overload(function(func:Float -> String):JQuery { })
	function wrapAll(wrappingElement:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Element, String>>):JQuery;
	@:overload(function(func:Float -> String):JQuery { })
	function wrapInner(wrappingElement:haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Element, String>>):JQuery;
	function each(func:Float -> Element -> Dynamic):JQuery;
	@:overload(function():Array<Dynamic> { })
	function get(index:Float):HTMLElement;
	@:overload(function(selector:haxe.extern.EitherType<String, haxe.extern.EitherType<JQuery, Element>>):Float { })
	function index():Float;
	var length : Float;
	var selector : String;
	@:overload(function(elements:haxe.extern.Rest<Element>):JQuery { })
	@:overload(function(html:String):JQuery { })
	@:overload(function(obj:JQuery):JQuery { })
	function add(selector:String, ?context:Element):JQuery;
	function children(?selector:String):JQuery;
	@:overload(function(selector:String, ?context:Element):JQuery { })
	@:overload(function(obj:JQuery):JQuery { })
	@:overload(function(element:Element):JQuery { })
	@:overload(function(selectors:Dynamic, ?context:Element):Array<Dynamic> { })
	function closest(selector:String):JQuery;
	function contents():JQuery;
	function end():JQuery;
	function eq(index:Float):JQuery;
	@:overload(function(func:Float -> Element -> Dynamic):JQuery { })
	@:overload(function(element:Element):JQuery { })
	@:overload(function(obj:JQuery):JQuery { })
	function filter(selector:String):JQuery;
	@:overload(function(element:Element):JQuery { })
	@:overload(function(obj:JQuery):JQuery { })
	function find(selector:String):JQuery;
	function first():JQuery;
	@:overload(function(contained:Element):JQuery { })
	function has(selector:String):JQuery;
	@:overload(function(func:Float -> Element -> Bool):Bool { })
	@:overload(function(obj:JQuery):Bool { })
	@:overload(function(elements:Dynamic):Bool { })
	function is(selector:String):Bool;
	function last():JQuery;
	function map(callback:Float -> Element -> Dynamic):JQuery;
	function next(?selector:String):JQuery;
	function nextAll(?selector:String):JQuery;
	@:overload(function(?element:Element, ?filter:String):JQuery { })
	@:overload(function(?obj:JQuery, ?filter:String):JQuery { })
	function nextUntil(?selector:String, ?filter:String):JQuery;
	@:overload(function(func:Float -> Element -> Bool):JQuery { })
	@:overload(function(elements:haxe.extern.Rest<Element>):JQuery { })
	@:overload(function(obj:JQuery):JQuery { })
	function not(selector:String):JQuery;
	function offsetParent():JQuery;
	function parent(?selector:String):JQuery;
	function parents(?selector:String):JQuery;
	@:overload(function(?element:Element, ?filter:String):JQuery { })
	@:overload(function(?obj:JQuery, ?filter:String):JQuery { })
	function parentsUntil(?selector:String, ?filter:String):JQuery;
	function prev(?selector:String):JQuery;
	function prevAll(?selector:String):JQuery;
	@:overload(function(?element:Element, ?filter:String):JQuery { })
	@:overload(function(?obj:JQuery, ?filter:String):JQuery { })
	function prevUntil(?selector:String, ?filter:String):JQuery;
	function siblings(?selector:String):JQuery;
	function slice(start:Float, ?end:Float):JQuery;
	@:overload(function(newQueue:Array<haxe.Constraints.Function>):JQuery { })
	@:overload(function(callback:haxe.Constraints.Function):JQuery { })
	@:overload(function(queueName:String, newQueue:Array<haxe.Constraints.Function>):JQuery { })
	@:overload(function(queueName:String, callback:haxe.Constraints.Function):JQuery { })
	function queue(?queueName:String):Array<Dynamic>;
};
extern class JqueryTopLevel {
	static var jQuery : JQueryStatic;
	static var $ : JQueryStatic;
}
