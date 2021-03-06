typedef RxJQueryAjaxResult<T> = {
	var data : T;
	var textStatus : String;
	var jqXHR : JQueryXHR;
};
typedef JQueryStatic = {
	function ajaxAsObservable<T>(settings:JQueryAjaxSettings):Rx.Observable<RxJQueryAjaxResult<T>>;
	function getAsObservable<T>(url:String, data:Dynamic, dataType:String):Rx.Observable<RxJQueryAjaxResult<T>>;
	function getJSONAsObservable<T>(url:String, data:Dynamic):Rx.Observable<RxJQueryAjaxResult<T>>;
	function getScriptAsObservable<T>(url:String, data:Dynamic):Rx.Observable<RxJQueryAjaxResult<T>>;
	function postAsObservable<T>(url:String, data:Dynamic, dataType:String):Rx.Observable<RxJQueryAjaxResult<T>>;
};
typedef JQuery = {
	function onAsObservable<T:(BaseJQueryEventObject)>(events:String, ?selector:String, ?eventData:Dynamic):Rx.Observable<T>;
	function bindAsObservable<T:(BaseJQueryEventObject)>(eventType:String, ?eventData:Dynamic):Rx.Observable<T>;
	function delegateAsObservable<T:(BaseJQueryEventObject)>(selector:String, eventType:String, ?eventData:Dynamic):Rx.Observable<T>;
	function changeAsObservable(?eventData:Dynamic):Rx.Observable<JQueryInputEventObject>;
	function clickAsObservable(?eventData:Dynamic):Rx.Observable<JQueryMouseEventObject>;
	function dblclickAsObservable(?eventData:Dynamic):Rx.Observable<JQueryMouseEventObject>;
	function focusAsObservable(?eventData:Dynamic):Rx.Observable<JQueryInputEventObject>;
	function focusinAsObservable(?eventData:Dynamic):Rx.Observable<JQueryInputEventObject>;
	function focusoutAsObservable(?eventData:Dynamic):Rx.Observable<JQueryInputEventObject>;
	function keydownAsObservable(?eventData:Dynamic):Rx.Observable<JQueryKeyEventObject>;
	function keyupAsObservable(?eventData:Dynamic):Rx.Observable<JQueryKeyEventObject>;
	function loadAsObservable(?eventData:Dynamic):Rx.Observable<BaseJQueryEventObject>;
	function mousedownAsObservable(?eventData:Dynamic):Rx.Observable<JQueryMouseEventObject>;
	function mouseenterAsObservable(?eventData:Dynamic):Rx.Observable<JQueryMouseEventObject>;
	function mouseleaveAsObservable(?eventData:Dynamic):Rx.Observable<JQueryMouseEventObject>;
	function mousemoveAsObservable(?eventData:Dynamic):Rx.Observable<JQueryMouseEventObject>;
	function mouseoutAsObservable(?eventData:Dynamic):Rx.Observable<JQueryMouseEventObject>;
	function mouseoverAsObservable(?eventData:Dynamic):Rx.Observable<JQueryMouseEventObject>;
	function mouseupAsObservable(?eventData:Dynamic):Rx.Observable<JQueryMouseEventObject>;
	function resizeAsObservable(?eventData:Dynamic):Rx.Observable<BaseJQueryEventObject>;
	function scrollAsObservable(?eventData:Dynamic):Rx.Observable<BaseJQueryEventObject>;
	function selectAsObservable(?eventData:Dynamic):Rx.Observable<BaseJQueryEventObject>;
	function submitAsObservable(?eventData:Dynamic):Rx.Observable<BaseJQueryEventObject>;
	function unloadAsObservable(?eventData:Dynamic):Rx.Observable<BaseJQueryEventObject>;
	function hideAsObservable(duration:Float):Rx.Observable<BaseJQueryEventObject>;
	function showAsObservable(duration:Float):Rx.Observable<BaseJQueryEventObject>;
	function readyAsObservable():Rx.Observable<Dynamic>;
	function animateAsObservable(properties:Dynamic, duration:Float, ?easing:String):Rx.Observable<Dynamic>;
	function fadeInAsObservable(duration:Float, ?easing:String):Rx.Observable<Dynamic>;
	function fadeToAsObservable(duration:Float, opacity:Float, ?easing:String):Rx.Observable<Dynamic>;
	function fadeOutAsObservable(duration:Float, ?easing:String):Rx.Observable<Dynamic>;
	function fadeToggleAsObservable(duration:Float, ?easing:String):Rx.Observable<Dynamic>;
	function slideDownAsObservable(duration:Float):Rx.Observable<Dynamic>;
	function slideUpAsObservable(duration:Float):Rx.Observable<Dynamic>;
	function slideToggleAsObservable(duration:Float):Rx.Observable<Dynamic>;
	function toggleAsObservable(duration:Float):Rx.Observable<Dynamic>;
};
